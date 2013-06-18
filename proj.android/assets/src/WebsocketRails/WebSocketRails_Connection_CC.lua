WebSocketRails = WebSocketRails or {}

--require "CCWebSocketBridge"

local function __bind(fn, obj)
    return function(...) 
    	return fn(obj, ...) 
    end
end

local json = require "cjson"
--local json = cjson_safe.new

WebSocketRails.WebSocketConnectionCC = {
MAX_CONNECTION_RETRIES = 10,

   
new = function(self, url, dispatcher)
    local this_obj = { url = url, dispatcher = dispatcher }
    setmetatable(this_obj, self)
    self.__index = self
    
    if string.find( this_obj.url, "wss?://" ) ~= 1 then
        this_obj.url = "ws://" .. this_obj.url
    end
    
    this_obj.message_queue = {}

	this_obj.state = wsConnecting
	
	this_obj.websocket = nil

	this_obj:connect()
    
    return this_obj
end,

trigger = function(self, event)

	if GlobalSetting.debug_dump_outgoing_event then
		if (not GlobalSetting.debug_dump_internal_event and event:is_internal_event()) then
    		return nil
    	end
    	
    	print("[<" .. self.url .. ">.trigger] sending event => ", event:serialize())
	end

    if self.dispatcher.state ~= "connected" or self.websocket == nil then
    	print("[<" .. self.url .. ">.trigger] websocket not ready. enqueue event => ", event:serialize())
        table.insert(self.message_queue, #self.message_queue + 1, event)
    else
    	self.websocket:sendTextMsg(event:serialize())
        --self._conn.send(event:serialize())
        --WebsocketManager:sharedWebsocketManager():send(self._websocket_id, event:serialize())
    end
end,
    
on_message = function(self, event)
	if GlobalSetting.debug_dump_websocket_raw and not (event:find("\"websocket_rails.") or event:find("\"server_ack")) then
		print("[<" .. self.url .. ">.on_message] event => " , event)
	end
--	
--	if self._websocket_id ~= websocket_id then
--		print("[WebSocketConnection.on_message] event not own by me, self._websocket_id: ", 
--			self._websocket_id, " , event.websocket: " , websocket_id)
--		return
--	end
	
    local data = json.decode(event)
    --data = self:fix_json_data(data)
    self.dispatcher:new_message(data)
end,

on_open = function(self, event)
	print("[<" .. self.url .. ">.on_open] " , event)
--	if self._websocket_id ~= websocket_id then
--		print("[WebSocketConnection.on_open] event not own by me, self._websocket_id: ", 
--			self._websocket_id, " , event.websocket: " , websocket_id)
--		return
--	end
	
	self:cancel_connection_timout()
	self._connection_retries = 0
	
end,

on_close = function(self, event)
	print("[<" .. self.url .. ">.on_close] " , event)
--	if self._websocket_id ~= websocket_id then
--		print("[WebSocketConnection.on_close] event not own by me, self._websocket_id: ", 
--			self._websocket_id, " , event.websocket: " , websocket_id)
--		return
--	end

    local close_event = nil
    close_event = WebSocketRails.Event:new({ "connection_closed", {} })
    self.dispatcher:dispatch(close_event)
	self.dispatcher.state = "closed"
    
    if not self._self_close and self._connection_retries < WebSocketRails.config.CONNECTION_MAX_RETRIES then
    	self:cancel_connection_timout()
    	local delay_seconds = 2 * (self._connection_retries + 1)
    	print("connection broken, start to reconnect after ", delay_seconds , " seconds.")
    	Timer.add_timer( delay_seconds, function()
    		self:connect()
    	end)
    end 
        
end,

on_error = function(self, event)
	print("[<" .. self.url .. ">.on_error] ", event)
--	if self._websocket_id ~= websocket_id then
--		print("[WebSocketConnection.on_error] event not own by me, self._websocket_id: ", 
--			self._websocket_id, " , event.websocket: " , websocket_id)
--		return
--	end

    local error_event = nil
    local error_data = nil
    if event ~= nil then
        error_data = event.data
    end
    error_event = WebSocketRails.Event:new({"connection_error", error_data})
    
	self.dispatcher:dispatch(error_event)
	self.dispatcher.state = "closed"
    
    if not self._self_close and self._connection_retries < WebSocketRails.config.CONNECTION_MAX_RETRIES then
    	self:cancel_connection_timout()
    	local delay_seconds = 2 * (self._connection_retries + 1)
    	
    	print("connection error, start to reconnect after ", delay_seconds , " seconds.")
    	Timer.add_timer( delay_seconds, function()
    		self:connect()
    	end)
    end 
    
end,

flush_queue = function(self)
    local event
    if self.websocket ~= nil then
		for _, event in ipairs(self.message_queue) do
		    --self._conn.send(event:serialize())
		    --WebsocketManager:sharedWebsocketManager():send(self._websocket_id, event:serialize())
		    self.websocket:sendTextMsg(event:serialize())
		end
		while #self.message_queue > 0 do
		    table.remove(self.message_queue)
		end
    end
end,

fix_json_data = function(self, the_table, level, fixed_objects)
    level = level or 1
    fixed_objects = fixed_objects or {}
    for k, v in pairs(the_table) do
        print( string.rep("  ", level) .. k, v, type(v) )
        if v == json.null then
        	print( "key: ", k , " is lightuserdata : ", v)
        	the_table[k] = nil
        end
        
        if type(v) == "table" and fixed_objects[v] == nil then
            fixed_objects[v] = true
            the_table[k] = self:fix_json_data(v, level + 1, fixed_objects)
        end
        fixed_objects[v] = true
    end
    
    return the_table
end,

close = function(self, self_close)
	self._self_close = self_close or false
	print("[WebSocketRails.WebSocketConnection] close")
	self:unbind_websocket_handlers()
	if self.websocket ~= nil then
		self.websocket:close()
		self.websocket = nil
	end
end,

cancel_connection_timout = function(self)
	local handle = self._connect_timeout
	if handle ~= 0 then
		Timer.cancel_timer(handle)
		self._connect_timeout = 0
	end
end,

bind_websocket_handlers = function(self)
	if self.websocket ~= nil then
	    self.websocket:registerScriptHandler(__bind(self.on_open, self),    kWebSocketScriptHandlerOpen)
	    self.websocket:registerScriptHandler(__bind(self.on_message, self), kWebSocketScriptHandlerMessage)
	    self.websocket:registerScriptHandler(__bind(self.on_close, self),   kWebSocketScriptHandlerClose)
	    self.websocket:registerScriptHandler(__bind(self.on_error, self),   kWebSocketScriptHandlerError)
	end
end,

unbind_websocket_handlers = function(self)
	if self.websocket ~= nil then
	    self.websocket:unregisterScriptHandler(kWebSocketScriptHandlerOpen)
	    self.websocket:unregisterScriptHandler(kWebSocketScriptHandlerMessage)
	    self.websocket:unregisterScriptHandler(kWebSocketScriptHandlerClose)
	    self.websocket:unregisterScriptHandler(kWebSocketScriptHandlerError)
	end
end,

connect = function(self)
	self._connection_retries = self._connection_retries or 0
	
	if self._connection_retries >= WebSocketRails.config.CONNECTION_MAX_RETRIES then
		self.state = wsClosed
		print("****ERROR: failed to connect to <", self.url , "> after " , WebSocketRails.config.CONNECTION_MAX_RETRIES , "retries !!!!!")
		self:close()
		--WebsocketManager:sharedWebsocketManager():close(self._websocket_id)
		self._websocket_id = 0
	    
	    local error_event = WebSocketRails.Event:new({"connection_error", {message="Connection failed!"} })
	    self.dispatcher:dispatch(error_event)
	    self.dispatcher.state = "closed"
		
		return
	end

	self._connection_retries = self._connection_retries + 1
	
	self.dispatcher.state = 'connecting'
	
	self.state = wsConnecting
	self.websocket = WebSocket:create(self.url)
	self:bind_websocket_handlers()

    --print(string.format("self._websocket_id => %d", self._websocket_id))
    local reconnect_times = self._connection_retries
    self._connect_timeout = Timer.add_timer(WebSocketRails.config.CONNECTION_TIMEOUT or 20, function()
		self._connect_timeout = 0
		print("****ERROR: connect timeout in ", WebSocketRails.config.CONNECTION_TIMEOUT," sec. retry ", reconnect_times , " ...")
		--WebsocketManager:sharedWebsocketManager():close(self._websocket_id)
		self:close()
		self:connect()
    end)
    
end

}