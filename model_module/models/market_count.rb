class MarketCount < ActiveRecord::Base
  def self.columns
    @columns ||=[]
  end
end