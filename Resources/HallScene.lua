require "src.HallSceneUPlugin"
require "src.HallServerConnectionPlugin"
require "src.HallGameConnectionPlugin"
require "src.UIControllerPlugin"
require "RoomItem"
require "Menu"
require "src.WidgetPlugin"



HallScene = class("HallScene", function() 
	print("create new hall scene")
	return display.newScene("HallScene")
	end
 )
 
 function createHallScene()
 	print("createHallScene()")
 	return HallScene.new()
 end
 
 function HallScene:ctor()
 	
	ccb.hall_scene = self
	
	self.on_menu_clicked = __bind(self.onMenuClick, self)
	self.on_info_btn_clicked = __bind(self.onInfoClick, self)
	self.on_avatar_btn_clicked = __bind(self.onAvatarClick, self) 
	self.on_market_btn_clicked = __bind(self.onMarketClick, self)
	
	local ccbproxy = CCBProxy:create()
 	local node = CCBReaderLoad("HallScene.ccbi", ccbproxy, false, "")
	self:addChild(node)
	
	scaleNode(self.rootNode, GlobalSetting.content_scale_factor)
	
	self.avatar_btn:setScale(GlobalSetting.content_scale_factor * 0.45)
	
--	local mysprite = MySprite:createMS("btn_bujiao.png")
--	self.rootNode:addChild(tolua.cast(mysprite, "CCNode"))
	
	self.rootNode:setKeypadEnabled(true)
	self.rootNode:registerScriptKeypadHandler(__bind(self.onKeypad, self))
	
	--local editbox = CCEditBoxBridge:create(Res.common_plist, "kuang_a.png", 320, 50)
	--editbox:addTo(tolua.cast(self.rootNode, "CCNode"), 400, 120)
	--local editbox = self:createEditBoxOn(self.rootNode, 400, 120)
	--editbox:setHintSize(10)
	--editbox:setText("hfdkahfla")
	--editbox:setTextSize(40)
	--editbox:setTextColor(255,0,0)
	--editbox:setMaxLength(10)
	--editbox:setInputFlag(0)
	--local tx = editbox:getText()
	--print("tx is " .. tx)
	--editbox:registerOnTextChange(function(before_text, cur_text)
	--	print("tx change from " .. before_text .. " to " .. cur_text)
	--end)
	local cache = CCSpriteFrameCache:sharedSpriteFrameCache();
	cache:addSpriteFramesWithFile(Res.common_plist)
	
--	local room = {}
--	for i = 1, 10 do
--		table.insert(room, "room 3"..i) 
--	end
--	
--	local h = LuaEventHandler:create(function(fn, table, a1, a2)
--		local r
--		if fn == "cellSize" then
--			r = CCSizeMake(260,260)
--		elseif fn == "cellAtIndex" then
--			if not a2 then
--				a2 = CCTableViewCell:create()
--				a3 = createRoomItem()
--				a2:addChild(a3, 0, 1)
--			end
--			r = a2
--		elseif fn == "numberOfCells" then
--			r = #room
--		elseif fn == "cellTouched" then
--		end
--		return r
--	end)
--	
--	local t = LuaTableView:createWithHandler(h, CCSizeMake(800,260))
--	t:setDirection(kCCScrollViewDirectionHorizontal)
--	t:reloadData()
----	t:setAnchorPoint(ccp(0.5, 0.5))
--	t:setPosition(CCPointMake(0,0))
--	self.middle_layer:addChild(t)
	
 end
 

 
 --[[
 function HallScene:onMenuClick(tag)
 	local menu = createMenu()
 	self.rootNode.addChild(menu)
 end
 ]]
 
 function HallScene:init()
 	print("HallScene:init()")
 end
 
 function HallScene:onEnter() 
	print("HallScene:onEnter()")
	self.super.onEnter(self)
	self:do_on_enter()
 end
 
 function HallScene:onExit()
 	print("HallScene:onExit()")
 end
 
 function HallScene:onCleanup()
	print("[HallScene:onCleanup()]")
	self.super.onCleanup(self)

end
 
 function HallScene:onEnterTransitionDidFinish()
 	print("HallScene:onEnterTransitionDidFinish()")
 end
 
 HallSceneUPlugin.bind(HallScene)
 WidgetPlugin.bind(HallScene)
 HallServerConnectionPlugin.bind(HallScene)
 HallGameConnectionPlugin.bind(HallScene)
 UIControllerPlugin.bind(HallScene)
 