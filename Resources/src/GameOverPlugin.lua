GameOverPlugin = {}

function GameOverPlugin.bind(theClass)

	--名字不规范的地方是为了方便js代码直接转化过来，以后再更正
	function theClass:initWith(gaming_layer, data)
		self.gaming_layer = gaming_layer
		local frameCache = CCSpriteFrameCache:sharedSpriteFrameCache()
		frameCache:addSpriteFramesWithFile(Res.common3_plist)
		local game_result = data.game_result
		dump(game_result, "game_result")
		local win_flag = false
		local win_user = nil
		
		local self_user_win_value = game_result.self_balance[tostring(gaming_layer.self_user.user_id)]
		self_user_win_value = tonumber(self_user_win_value)

		win_flag = self_user_win_value > 0
		if win_flag then
			--self.lbl_self_user_chong:setPosition(ccp(539,413))
			self.lbl_self_user_win:setDisplayFrame(frameCache:spriteFrameByName("win.png"))
			--self.lbl_self_user_chong:setDisplayFrame(frameCache:spriteFrameByName("shenglichong.png"))
			gaming_layer:playWinEffect()
		else 
			--self.lbl_self_user_chong:setPosition(ccp(525,388))
			self.lbl_self_user_win:setDisplayFrame(frameCache:spriteFrameByName("lose.png"))
			--self.lbl_self_user_chong:setDisplayFrame(frameCache:spriteFrameByName("shibaichong.png"))
			
			gaming_layer:playLoseEffect()
		end
		local self_role = 1
		for _,v in pairs(data.players) do
			if tonumber(v.user_id) == tonumber(gaming_layer.self_user.user_id) then
				self_role = tonumber(v.player_role)
				print('self_role is', self_role)
			end
		end
		local is_self_dz = (self_role == 2)
		
		local is_nongming_win = (is_self_dz and win_flag) or (not is_self_dz and not win_flag)
		is_nongming_win = not is_nongming_win
		print('is_self_dz ', is_self_dz, ', is_self_win', win_flag, 'is_nongming_win', is_nongming_win)
		if is_nongming_win then
			self.game_over_bg:setDisplayFrame(frameCache:spriteFrameByName("nongmingwin.png"))
		end
		self.lbl_base:setString("" .. game_result.base)
		self.lbl_base_x:setString("" .. game_result.lord_value)
		self.lbl_bomb:setString("" .. (1+tonumber(game_result.bombs)))
		self.lbl_spring:setString("" .. (1+tonumber(game_result.spring)))
		self.lbl_anti_spring:setString("" .. (1+tonumber(game_result.anti_spring)))
		
		local self_name = gaming_layer.self_user.nick_name .. "[" .. gaming_layer.self_user.user_id .. "]"
		self.lbl_self_user_name:setString(self_name)
		self.lbl_self_user_win_value:setString("" ..  self_user_win_value)
		
		local next_balance = game_result.balance[tostring(gaming_layer.next_user.user_id)]
		local next_user_name = gaming_layer.next_user.nick_name .. "[" .. gaming_layer.next_user.user_id .. "]"
		self.lbl_next_user_name:setString(next_user_name)
		--local next_user_win = "胜利"
		--if tonumber(gaming_layer.next_user.user_id) ~= tonumber(game_result.winner_player_id) then
		if next_balance <= 0 then
		--	next_user_win = "失败"
			self.next_user_win_flag:setDisplayFrame(frameCache:spriteFrameByName("shibai.png"))
		end
		--self.lbl_next_user_win:setString(next_user_win)
		self.lbl_next_user_win_value:setString("" .. next_balance)
		
		local prev_user_name = gaming_layer.prev_user.nick_name .. "[" .. gaming_layer.prev_user.user_id .. "]"
		local prev_balance = game_result.balance[tostring(gaming_layer.prev_user.user_id)]
		self.lbl_prev_user_name:setString(prev_user_name)
		--local prev_user_win = "胜利"
		--if tonumber(gaming_layer.prev_user.user_id) ~= tonumber(game_result.winner_player_id) then
		if prev_balance <= 0 then
		--	prev_user_win = "失败"
			self.prev_user_win_flag:setDisplayFrame(frameCache:spriteFrameByName("shibai.png"))
		end
		--self.lbl_prev_user_win:setString(prev_user_win)
		self.lbl_prev_user_win_value:setString("" .. prev_balance)
	
		local avatarFrame = Avatar.getUserAvatarFrame(gaming_layer.self_user)
		self.game_over_avatar:setDisplayFrame(avatarFrame)
		self.game_over_avatar:setScale(0.7 * GlobalSetting.content_scale_factor)
	end
	
	function theClass:onToHallClicked()
		self:doToHall()
	end
	
	function theClass:onChangeDeskClicked()
		self:doGameOverChangeDesk()
	end
	
	function theClass:onGameOverCloseClicked()
		self:doClose()
	end
	
	function theClass:doToHall()
		self.gaming_layer:exit()
	end
	
	function theClass:doGameOverChangeDesk()
		self.gaming_layer:doChangeDesk()
	end
	
	function theClass:doClose()
		self.gaming_layer:onReturn()
	end
end