require "CCBReaderLoad"

RankItem = class("RankItem", function() return display.newLayer("RankItem") end)

function createRankItem() return RankItem.new() end

function RankItem:ctor()
	self.ccbproxy = CCBProxy:create()
	self.ccbproxy:retain()
	ccb.RankItem = self
	local node = CCBReaderLoad("RankItem.ccbi", self.ccbproxy, true, "RankItem")
	self.rootNode = tolua.cast(node, "CCLayer")
	self:addChild(self.rootNode)
	
	scaleNode(self.rootNode, GlobalSetting.content_scale_factor)
end

function RankItem:init(rank)
	self.rank_lbl:setString(rank.id)
	self.name_lbl:setString(rank.nick_name)
	self.bean_lbl:setString(rank.score)
end

