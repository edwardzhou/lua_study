ConnectivityPlugin = {}

--require and bind this, and call function init_connectivity in ctor()
--ConnectivityPlugin.bind(GamingScene)
--in GamingScene:ctor() self:init_connectivity()
function ConnectivityPlugin.bind(theClass)
	
	function theClass:network_check()
		Timer.add_timer(0, __bind(self.do_network_check, self))
	end
	
	function theClass:do_network_check()
		local jni_helper = DDZJniHelper:create()
		local network_state = jni_helper:get("IsNetworkConnected")
		print("network_state=> ", network_state, string.len(network_state))
		network_state = string.sub(network_state, 1, 1)
		if network_state == "t" then
			cclog("resume_check network is connected")
			if self.network_disconnected_dialog and self.network_disconnected_dialog:isShowing() then
				self.network_disconnected_dialog:dismiss()
			end
			return
		end
		if self.network_disconnected_dialog and self.network_disconnected_dialog:isShowing() then
			cclog("is already dialog showing")
			return
		end
		local str = "nework_check root node is nil"
			if self.rootNode then str = "nework_check root node is not nil" end
			print(str)
		self:show_network_disconnected()
	end
	
	function theClass:show_network_disconnected()
		local jni_helper = DDZJniHelper:create()
		local str = "root node is nil"
		if self.rootNode then str = "root node is not nil" end
		print(str)
		local dialog = createYesNoDialog(self.rootNode)
		dialog:setMessage("网络连接已断开，请设置网络！")
		dialog:setYesButton(function()
			jni_helper:messageJava("on_set_network_intent")
		end)
		dialog:setNoButton(function() 
			CCDirector:sharedDirector():endToLua()
		end)
		dialog:setOnKeypad(function(key) end)
		dialog:show()
		self.network_disconnected_dialog = dialog
	end
	
	function theClass:init_connectivity()
		local nwck = function() 
			self:network_check() 
		end

		NotificationProxy.registerScriptObserver(nwck,"on_resume")
		NotificationProxy.registerScriptObserver(nwck,"on_network_change_available")
		NotificationProxy.registerScriptObserver(nwck,"on_network_change_disable")
	end

end