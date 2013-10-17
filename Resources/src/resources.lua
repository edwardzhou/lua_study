local dirMusic = "res/Music/"
local dirImage = "ccbResources/"
Res = {
	s_landing_scene = "LandingScene.ccbi",
	common_plist = "ccbResources/common.plist",
	common3_plist = "ccbResources/common3.plist",
	common2_plist = "ccbResources/common2.plist",
	dialog_plist = "ccbResources/dialogs.plist",
	info_plist = "ccbResources/info.plist",
	s_cards_plist = "ccbResources/poke_cards.plist",
 	hall_plist = "ccbResources/hall.plist",
 	props_plist = "ccbResources/props.plist",

-- 背景音乐
 s_music_bg = dirMusic .. "bg/bg.mp3",
 
 s_anim_plist = dirImage .. "animation.plist",

-- 背景音乐列表
 s_music_bg_arr = {dirMusic .. "bg/bg01.mp3", dirMusic .. "bg/bg02.mp3",dirMusic .. "bg/bg03.ogg",dirMusic .. "bg/bg04.mp3"},

-- 按键点击音效
 s_music_button_click = dirMusic .. "click/button_click.ogg",
 
-- 游戏引导音效
 s_music_introduce = dirMusic .. "introduce/",
 
 s_music_vip = dirMusic .. "vip_sounds/",

-- 抽牌
 s_effect_pick_card = dirMusic .. "pick/discard.ogg",

-- 发牌音效
 s_effect_deliver_poke_cards = dirMusic .. "deliver_cards/start.wav",

-- 结算
 s_effect_win = dirMusic .. "game_over/win.mp3",
 s_effect_lost = dirMusic .. "game_over/lost.mp3",

-- 叫地主
 s_effect_grab_lord_path = dirMusic .. "grab_lord/",

-- 爆炸声
 s_effect_boom = dirMusic .. "boom/boom.wav",
-- 炸弹男声
 s_effect_bomb_male = dirMusic .. "boom/zhadan_m.wav",
-- 炸弹女声
 s_effect_bomb_female = dirMusic .. "boom/zhadan_f.wav",
-- 火箭（王炸）男声
 s_effect_rocket_male = dirMusic .. "boom/wangzha_m.wav",
-- 火箭（王炸）女声
 s_effect_rocket_female = dirMusic .. "boom/wangzha_f.wav",
--不出
 s_effect_pass_path = dirMusic .. "pass/",
-- 单张路径
 s_effect_single_path = dirMusic .. "single/",
-- 对子
 s_effect_pairs_path = dirMusic .. "pairs/",
-- 一张牌两张牌报警
 s_effect_tips_path = dirMusic .. "tips/",

-- 牌型
 s_effect_card_type_path = dirMusic .. "card_type/",
}