require "redis/connection/synchrony"
require "redis"
require "redis/connection/ruby"

module  DdzGameServer
  class Synchronization
    attr_accessor :synchronizing

    def self.publish(event)
      singleton.publish event
    end

    def self.synchronize!
      singleton.synchronize! unless singleton.synchronizing
    end

    def self.shutdown!
      singleton.shutdown!
    end

    def self.singleton
      @singleton ||= new
    end

    def self.synchronizing?
      singleton.synchronizing
    end

    def self.clear_user(event)
      singleton.clear_user event
    end

    #include Logging

    def redis
      @redis ||= Redis.new(WebsocketRails.config.redis_options)
    end

    def ruby_redis
      @ruby_redis ||= begin
        redis_options = WebsocketRails.config.redis_options.merge(:driver => :ruby)
        Redis.new(redis_options)
      end
    end

    def publish(notify_data)
      fredis_client = EM.reactor_running? ? redis : ruby_redis
      Rails.logger.debug("[Synchronization.publish] fredis_client=>"+fredis_client.to_json)
      Fiber.new do
        #event.server_token = server_token
        fredis_client.publish "game.timing_notify", notify_data.to_json
      end.resume
    end



    def server_token
      @server_token
    end

    def synchronize!
      unless @synchronizing
        synchro = Fiber.new do
          Dir[File.expand_path("app/models/game_table.rb")].each do |file|
            require file
          end
          fiber_redis = Redis.connect(WebsocketRails.config.redis_options)
          fiber_redis.subscribe "game.timing_notify" do |on|
            Rails.logger.debug("game.timing_notify")
            on.message do |channel, encoded_event|
              data = JSON.parse(encoded_event)
              Rails.logger.debug("[game.timing_notify] user_id=>#{data["user_id"]}, notify_type=>#{data["notify_type"]}")
              ::GameLogic.on_player_timing(data)
            end
          end
        end

        synchro_match = Fiber.new do
          Dir[File.expand_path("app/models/game_table.rb")].each do |file|
            require file
          end
          Dir[File.expand_path("lib/result_code.rb")].each do |file|
            require file
          end
          fiber_redis = Redis.connect(WebsocketRails.config.redis_options)
          fiber_redis.subscribe "game.match_notify" do |on|
            Rails.logger.debug("game.match_notify")
            on.message do |channel, encoded_event|
              Rails.logger.debug("[game.match_notify] encoded_event=>#{encoded_event.to_json}")
              data = JSON.parse(encoded_event)
              ::GameLogic.on_match_notify(data)
            end
          end
        end

        clear_user = Fiber.new do

          fiber_redis = Redis.connect(WebsocketRails.config.redis_options)
          fiber_redis.subscribe "game.clear_user" do |on|
            Rails.logger.debug("game.clear_user")
            on.message do |channel, encoded_event|
              Rails.logger.debug("[game.game.clear_user] encoded_event=>#{encoded_event.to_json}")
              data = JSON.parse(encoded_event)
              ::GameCleaner.clear_game(data)
            end
          end
        end




        @synchronizing = true

        EM.next_tick { synchro.resume }
        EM.next_tick { synchro_match.resume }
        EM.next_tick { clear_user.resume }

        trap('TERM') do
          shutdown!
        end
        trap('INT') do
          shutdown!
        end
        trap('QUIT') do
          shutdown!
        end
      end
    end

    def shutdown!
      #remove_server(server_token)
    end

    def generate_unique_token
      begin
        token = SecureRandom.urlsafe_base64
      end while redis.sismember("game.timing_notify_servers", token)

      token
    end

    #def register_server(token)
    #  Fiber.new do
    #    redis.sadd "game.timing_notify_servers", token
    #    info "Server Registered: #{token}"
    #  end.resume
    #end
    #
    #def remove_server(token)
    #  Fiber.new do
    #    redis.srem "game.timing_notify_servers", token
    #    info "Server Removed: #{token}"
    #    EM.stop
    #  end.resume
    #end
  end
end


