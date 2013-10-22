local cjson = require "cjson"
require "UserCenterScene"
require "YesNoDialog2"
require "YesNoDialog"
require "MarketScene"
require "MenuDialog"
require "GamingScene"
require "InitPlayerInfoLayer"
require "FeedbackScene"
require "PlayerProductsScene"

HallSceneUPlugin = {}

function HallSceneUPlugin.bind(theClass)
	
	function theClass:scene_on_become_vip()
		local is_vip = (GlobalSetting.vip ~= cjson.null)
		print("scene_on_vip set vip menu visible to " .. tostring(is_vip))
		self.hall_vip_menu:setVisible(is_vip)
	end

	function theClass:onKeypad(key)
		print("hall scene on key pad")
		if key == "menuClicked" then

			self.menu_layer = createMenu(__bind(self.menu_dismiss_callback, self), __bind(self.show_set_dialog, self))
			self.rootNode:addChild(self.menu_layer, 1001, 908)
			print("[HallSceneUPlugin:display_player_info] menu_layer:show")
			self.menu_layer:show()

		elseif key == "backClicked" then
			if self.menu_layer and self.menu_layer:isShowing() then
				self.menu_layer:dismiss(true)
			elseif self.set_dialog_layer then
				if not self.set_dialog_layer:isShowing() then
					self.set_dialog_layer = nil
				end
			else
				self:doShowExitDialog()
			end
		end
	end
	
	function theClass:doShare()
		self.share_dialog_layer = createShare()
		self.rootNode:addChild(self.share_dialog_layer, 1001, 907)
		print("[HallSceneUPlugin:share] share:show")
		self.share_dialog_layer:show()
	end
	
	function theClass:doShowExitDialog()
		endtolua_guifan()
		
	end
	
	function theClass:online_time_beans_update()
		self:update_player_beans_with_gl()
	end
	
	function theClass:on_vip_click()
		self:do_to_vip()
	end
	
	function theClass:do_to_vip()
		local scene = createVIP()
		self.VIP = scene
		CCDirector:sharedDirector():pushScene(scene)
	end
	
	--通过global setting存储的user来更新
	function theClass:update_player_beans_with_gl()
		cclog("update_player_beans_with_gl()")
		local user = GlobalSetting.current_user
		if user and user.score then
			local player_beans_lb = tolua.cast(self.player_beans_lb, "CCLabelTTF")
			player_beans_lb:setString(user.score)
		end
	end
	
	function theClass:updateTimeTask()
		local task = GlobalSetting.time_task
		if not task then return end
		dump(task, 'time task is ')
		self.task_lbl:setString(task.name)
		self.task_layer:setVisible(true)
	end
	
	function theClass:do_on_task_btn_clicked()
		local tm = createTimeTask() self.rootNode:addChild(tm) tm:show()
	end
	
	function theClass:menu_dismiss_callback()
		self.rootNode:removeChild(self.menu_layer, true)
		self.menu_layer = nil
	end
	
	function theClass:set_dialog_dismiss_callback()
		self.rootNode:removeChild(self.set_dialog_layer, true)
		self.set_dialog_layer = nil
	end
	
	function theClass:show_set_dialog()
		self.set_dialog_layer = createSetDialog(__bind(self.set_dialog_dismiss_callback, self))
		self.rootNode:addChild(self.set_dialog_layer, 1001, 907)
		print("[HallSceneUPlugin:show_set_dialog] set_dialog_layer:show")
		self.set_dialog_layer:show()
	end
	
	function theClass:onShareClick(tag, sender)
		self:doShare()
	end
	
	function theClass:onMenuClick(tag, sender)
	--DDZJniHelper:create():messageJava('share_intent_3')
		self:onKeypad("menuClicked")
	end
	
	function theClass:onInfoClick(tag, sender)
	--DDZJniHelper:create():messageJava('share_intent_1')
		self:doToInfo()
	end
	
	function theClass:onAvatarClick(tag, sender)
		self:doToInfo()
	end
	
	function theClass:onMarketClick(tag, sender)
	--DDZJniHelper:create():messageJava('share_intent_2')
		self:doToMarket()
	end
	
	function theClass:do_ui_prop_btn_clicked(tag, sender)
		print("[HallSceneUPlugin:do_ui_prop_btn_clicked]")
		--local scene = createPlayerProductsScene()
		local scene = createUserCenterScene(__bind(self.init_current_player_info, self),"player_cats")
		CCDirector:sharedDirector():pushScene(scene)
	end
	
	function theClass:doToMarket()
		local scene = createMarketScene(__bind(self.inactive_market_scene, self))
		self.matket_scene = scene
		CCDirector:sharedDirector():pushScene(scene)
	end
	
	function theClass:inactive_market_scene()
		print("[HallSceneUPlugin:inactive_market_scene]")
		self.matket_scene = nil
	end
	
	function theClass:doToInfo()
		local scene = createUserCenterScene(__bind(self.init_current_player_info, self))
		CCDirector:sharedDirector():pushScene(scene)
	end
	
	function theClass:do_on_enter()
		print("[HallSceneUPlugin:do_on_enter]")
		if GlobalSetting.hall_server_websocket == nil then
			self:show_progress_message_box("连接大厅服务器...")
			self:connect_to_hall_server()
		else
			if GlobalSetting.need_init_hall_rooms == 1 then
				self:init_channel()
				self:init_hall_info()
			end
		end
		
	end
	
	function theClass:do_ui_feedback_btn_clicked()
		local scene = createFeedbackScene()
		CCDirector:sharedDirector():pushScene(scene)
	end
	
	function theClass:init_hall_info(data)
		print("[HallSceneUPlugin:init_hall_info]")
		GlobalSetting.need_init_hall_rooms = 0
		self:get_all_rooms()
		self.after_trigger_success = __bind(self.init_room_tabview, self)
		
	end
	
	function theClass:init_player_info_callback(need_refresh_player_info)
		local layer = self.rootNode:getChildByTag(909)
		self.rootNode:removeChild(layer, true)
		layer = nil
		if need_refresh_player_info then
			self:init_current_player_info()
		end
	end
	
	function theClass:display_player_avatar()
		local avatar_btn = tolua.cast(self.avatar_btn, "CCMenuItemImage")
		local avatar_png = self:get_player_avatar_png_name()

		print("[HallSceneUPlugin:display_player_avatar] avatar_png: "..avatar_png)
		avatar_btn:setNormalSpriteFrame(CCSpriteFrameCache:sharedSpriteFrameCache():spriteFrameByName(avatar_png))
		avatar_btn:setSelectedSpriteFrame(CCSpriteFrameCache:sharedSpriteFrameCache():spriteFrameByName(avatar_png))
	end
	
	function theClass:display_player_info(data)
		self:init_current_player_info()
		self:update_global_player_score_ifno(data)
		if tonumber(GlobalSetting.current_user.flag) == 0 and GlobalSetting.show_init_player_info_box == 1 then
			local init_player_info_layer = createInitPlayerInfoLayer(__bind(self.init_player_info_callback, self))
			self.rootNode:addChild(init_player_info_layer, 1001, 909)
			print("[HallSceneUPlugin:display_player_info] init_player_info_layer:show")
			init_player_info_layer:show()
			GlobalSetting.show_init_player_info_box = 0
		end
		
		self:get_today_activity()
		self.after_trigger_success = __bind(self.init_today_activity, self)
	end
	
	function theClass:on_activity_update(data)
		self:updateTimeTask()
	end
	
	function theClass:init_today_activity(data)
		dump(data, 'init_today_activity')
		if tonumber(data.result_code) == 0 then
			cclog('init_today_activity result code is 0')
			GlobalSetting.time_task = data
			--[[GlobalSetting.time_task = {}
			GlobalSetting.time_task.name = data.name
			GlobalSetting.time_task.content = data.content
			GlobalSetting.time_task.week = data.week
			GlobalSetting.time_task.object = data.object]]
			GlobalSetting.time_task.weekday = get_weekday(data.week)
			dump(GlobalSetting.time_task, 'GlobalSetting.time_task')
			self:updateTimeTask()
		end
		Stats:flush(GlobalSetting.hall_server_websocket)
		--then call online_time_get_beans
		self:start_online_time_get_beans()
		
		self:check_tech_msg("sign")
	end
	
	
	
	function theClass:init_current_player_info()
		local cache = CCSpriteFrameCache:sharedSpriteFrameCache();
		cache:addSpriteFramesWithFile(Res.info_plist)
		
		print("[HallSceneUPlugin:init_current_player_info]")
		
		local cur_user = GlobalSetting.current_user
		dump(cur_user, "[HallSceneUPlugin:init_current_player_info] cur_user: ")
		local nick_name_lb = tolua.cast(self.nick_name_lb, "CCLabelTTF")
		nick_name_lb:setString(cur_user.nick_name)

		self:display_player_avatar()
		
	end
	
	function theClass:update_global_player_score_ifno(score_info)
	
		local player_beans_lb = tolua.cast(self.player_beans_lb, "CCLabelTTF")
		player_beans_lb:setString(score_info.score)
		
		GlobalSetting.current_user.score = score_info.score
		GlobalSetting.current_user.win_count = score_info.win_count
		GlobalSetting.current_user.lost_count = score_info.lost_count	
	end
	
	function theClass:init_room_tabview(data)
		print("[HallSceneUPlugin:init_room_tabview]")
		local h = LuaEventHandler:create(function(fn, table, a1, a2)
			local r
			if fn == "cellSize" then
				r = CCSizeMake(260,260)
			elseif fn == "cellAtIndex" then
				if not a2 then
					a2 = CCTableViewCell:create()
					local a3 = createRoomItem()
					print("[HallSceneUPlugin:init_room_tabview] a1: "..a1)
					a3:init_room_info(data.room[a1], a1)
					a2:addChild(a3, 0, 1)
				else
					local a3 = tolua.cast(a2:getChildByTag(1), "CCLayer")
					local room_index = a1 + 1
					a3:init_room_info(data.room[room_index], room_index)
				end
				r = a2
			elseif fn == "numberOfCells" then
				if data and data.room then
					r = #(data.room)
				end
			elseif fn == "cellTouched" then
				print("[HallSceneUPlugin:init_room_tabview] room_cell_couched")
				local a3 = tolua.cast(a1:getChildByTag(1), "CCLayer")
				dump(a3.room_info, "[HallSceneUPlugin:init_room_tabview] room_cell_couched, room_info: ")
				self:do_on_room_touched(a3.room_info)
			end
			return r
		end)
		
		local t = LuaTableView:createWithHandler(h, CCSizeMake(800,260))
		t:setDirection(kCCScrollViewDirectionHorizontal)
		t:reloadData()
	--	t:setAnchorPoint(ccp(0.5, 0.5))
		t:setPosition(CCPointMake(0,0))
		self.middle_layer:addChild(t)
		
		for index=#(data.room), 1, -1 do
			t:updateCellAtIndex(index-1)
		end

		self:get_user_profile()
		self.after_trigger_success = __bind(self.display_player_info, self)
		
	end
	
	
	
	function theClass:do_quick_game_btn_clicked(tag, sender)
		print("[HallSceneUPlugin:do_quick_game_btn_clicked]")
		self:show_progress_message_box("请求房间信息...")
		self:fast_begin_game()
		self.after_trigger_success = __bind(self.do_connect_game_server, self)
	end
	
	function theClass:do_on_room_touched(room_info)
		print("[HallSceneUPlugin:do_on_room_touched]")
		local enter_info = {user_id=GlobalSetting.current_user.user_id, room_id=room_info.room_id}
		self:show_progress_message_box("请求房间信息...")
		self:request_enter_room(enter_info)
		self.after_trigger_success = __bind(self.do_connect_game_server, self)
	end
	
	function theClass:do_on_websocket_ready()
		print("[HallSceneUPlugin:do_on_websocket_ready]")
		self:check_connection()
		self.after_trigger_success = __bind(self.init_hall_info, self)
	end
	
	
	function theClass:do_on_trigger_success(data)
		print("[HallSceneUPlugin:do_on_trigger_success]")
		self:hide_progress_message_box()
		
		if "function" == type(self.after_trigger_success) then
			self.after_trigger_success(data)
		end
		
	end
	
	function theClass:do_on_trigger_failure(data)
		print("[HallSceneUPlugin:do_on_trigger_failure]")
		self:hide_progress_message_box()
		if not is_blank(data.result_message) then
			self.failure_msg = data.result_message
		end 
		self:show_back_message_box(self.failure_msg)
		if "function" == type(self.after_trigger_failure) then
			self.after_trigger_failure(data)
		end
	end
	
	function theClass:do_on_connection_game_server_failure()
		print("[HallSceneUPlugin:do_on_connection_game_server_failure]")
		self:hide_progress_message_box()
		self:show_message_box("连接游戏服务器失败.")
	end
	
	function theClass:enter_game_room()
		local game = createGamingScene()
		CCDirector:sharedDirector():replaceScene(game)
		self:close_hall_websocket()
		if GlobalSetting.online_time_get_beans_handle then
			cclog('cancel previous online_time_get_beans handler while enter game')
			Timer.cancel_timer(GlobalSetting.online_time_get_beans_handle)
			GlobalSetting.online_time_get_beans_handle = nil
		end
	end
	
	function theClass:updateSocket(status)
		print("update socket status to " .. status)
		self.socket_label:setString(status)
	end
	
	function theClass:exit()
		local exit_hall_scene = function()
			CCDirector:sharedDirector():endToLua()
		end
		Timer.add_timer(1, exit_gaming_scene)
	end
	
	--print("theClass.registerCleanup ==> ", theClass.registerCleanup)
	if theClass.registerCleanup then
		print("HallServerConnectionPlugin register cleanup")
		theClass:registerCleanup("HallServerConnectionPlugin.close_hall_websocket", theClass.close_hall_websocket)
	end
end