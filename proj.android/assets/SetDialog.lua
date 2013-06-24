require "src.DialogInterface"
require "CCBReaderLoad"
SetDialog = class("SetDialog", function()
	print("create SetDialog")
	return display.newLayer("SetDialog")
end
)

function createSetDialog(menu_layer)
	print("new SetDialog")
	return SetDialog.new(menu_layer)
end

function SetDialog:updateVolume()
	local audio = SimpleAudioEngine:sharedEngine()
	local music_volume = audio:getBackgroundMusicVolume()
	local effect_volume = audio:getEffectsVolume()
	print("music_volume", music_volume)
	print("effect_volume", effect_volume)
	self.music_slider:setValue(music_volume)
	self.effect_silder:setValue(effect_volume)
end

function SetDialog:ctor(menu_layer)

	ccb.set_scene = self
	local ccbproxy = CCBProxy:create()
	local node = CCBReaderLoad("Set.ccbi", ccbproxy, false, "")
	self:addChild(node)

	self.menu_layer = menu_layer
	scaleNode(self.rootNode, GlobalSetting.content_scale_factor)
	--self.music_slider_layer = self.ccbproxy:getNodeWithType("music_slider_layer", "CCLayer")
	--self.effect_slider_layer = self.ccbproxy:getNodeWithType("effect_slider_layer", "CCLayer")
	
	local cache = CCSpriteFrameCache:sharedSpriteFrameCache();
	cache:addSpriteFramesWithFile(Res.dialog_plist);
	local audio = SimpleAudioEngine:sharedEngine()
	
	local function valueChanged(strEventName,pSender)
        if nil == pSender then
        	return
        end       	
        local pControl = tolua.cast(pSender,"CCControlSlider")
        local strFmt = nil
        if pControl:getTag() == 1001 then
        	audio:setBackgroundMusicVolume(pControl:getValue())
        	strFmt = string.format("Upper slider value = %.02f",pControl:getValue())
        elseif pControl:getTag() == 1002 then
        	audio:setEffectsVolume(pControl:getValue())
        	strFmt = string.format("Lower slider value = %.02f",pControl:getValue())
        end
        	
        if nil ~= strFmt then
        	print(CCString:create(strFmt):getCString())
        end       	
    end
    --Add the slider
    local track_scale9 = CCSprite:createWithSpriteFrameName("keystoke_b.png")
    --local track_scale9_2 = CCSprite:createWithSpriteFrameName("keystoke_b.png")
    local track_scale9_2 = CCSprite:create()
    
    
    
    local thumb_scale9 = CCSprite:createWithSpriteFrameName("keystoke_a.png")
    local pSlider = CCControlSlider:create(track_scale9,track_scale9_2 ,thumb_scale9)
    pSlider:setAnchorPoint(ccp(0, 0.5))
    pSlider:setMinimumValue(0) 
    pSlider:setMaximumValue(1) 
	pSlider:setTag(1001)
	pSlider:setPosition(ccp(0,self.music_slider_layer:getContentSize().height/2))
	self.music_slider_layer:addChild(pSlider)
	pSlider:addHandleOfControlEvent(valueChanged, CCControlEventValueChanged)
	self.music_slider = pSlider
	
	local track_scale9_e = CCSprite:createWithSpriteFrameName("keystoke_b.png")
    --local track_scale9_2 = CCSprite:createWithSpriteFrameName("keystoke_b.png")
    local track_scale9_2_e = CCSprite:create()
    local thumb_scale9_e = CCSprite:createWithSpriteFrameName("keystoke_a.png")
    local pSlider_e = CCControlSlider:create(track_scale9_e,track_scale9_2_e ,thumb_scale9_e)
    pSlider_e:setAnchorPoint(ccp(0, 0.5))
    pSlider_e:setMinimumValue(0) 
    pSlider_e:setMaximumValue(1) 
	pSlider_e:setTag(1002)
	pSlider_e:setPosition(ccp(0,self.effect_slider_layer:getContentSize().height/2))
	self.effect_silder = pSlider_e
	self.effect_slider_layer:addChild(pSlider_e)
	pSlider_e:addHandleOfControlEvent(valueChanged, CCControlEventValueChanged)
	scaleNode(pSlider_e, GlobalSetting.content_scale_factor * 0.90)
	scaleNode(pSlider, GlobalSetting.content_scale_factor * 0.90)
	self:setVisible(false)
	
	local menus = CCArray:create()
	menus:addObject(pSlider)
	menus:addObject(pSlider_e)
	self:swallowOnTouch(menus)
	self:swallowOnKeypad()

	self:setOnKeypad(function(key)
		if key == "menuClicked" then
			print("set dialog on key pad")
			return true
		end
		if key == "backClicked" then
			print("set dialog on key pad")
			if self:isShowing()  then
				self:dismiss()
				if self.menu_layer then
					self.menu_layer:setVisible(true)
					self.menu_layer:dismiss()
				end
				
			end
		end
	end)
end

DialogInterface.bind(SetDialog)