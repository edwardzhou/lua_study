LJ @src/GUIUpdatePlugin.luaÌ   E^!  7  >7  7) >  7 )  '  >7  7) >'  : ) : 4 % >  7	 ) >  7
 >)  : )  : )  : )  : )  : )    T7  T7  7  >  7 7 ) >  7 7 ) >  7 7 ) >G  next_user_lord_valueprev_user_lord_valueself_user_lord_valueupdatePlayerBuchuupdatePlayersplayersprevUserLastCardnextUserLastCardlastPlayCardlastPlayerlastCardreset_all_cardssetHasGamingStartedreset_all gaming to false
print_is_playing_playing_timeoutmenu_tuoguanshowLordCardssetVisibleplay_card_menuhideGetLordMenu			



     !self  Fdata  Fplayers , I   *7   7) >G  setVisiblemenu_get_lordself   A   @ 7 7    T) T) H 
index        a  	b  	 ð [Ô.2  
  T   T4   % >4  >D	
	 '  
 T
4
 7

 	 >
BNõ 	 T.) : 2  4  >D4
 7

 4 7	 > =
BNö4 7 1	 >  7
 7 8>  7
 7 8>  7
 7 8>7  7%  %	 $	>T  7
 7 )  >  7
 7 )  >  7
 7 )  >0  G  	 ååæ°: setStringbeishulord_poke_card_3lord_poke_card_2lord_poke_card_1updateLordCard 	sortgetCardByIdPokeCard_is_playinginsert
table
pairs,
split self  \lord_card_ids  \lord_value  \poke_card_ids Ztmp_ids 	  _ 	tmp_id  	poke_cards *  _ poke_id    	 .~M4  % >4  7>  T4  % 7$> 77> 7 >4 7	  7
 >T 7% > 7 >4 7	 7
 >G  poke_bg_small.pngsetScalecontent_scale_factorGlobalSettingsetDisplayFramespriteFrameByNameimage_filenameupdateLordCard2:sharedSpriteFrameCacheCCSpriteFrameCacheupdateLordCard
cclogµæÌ³æþ			




self  /lord_card_ui  /lord_poke_card  /cache 'frame scale frame 	scale     
`7   TG  4 %  >:  G   set _has_gaming_started to 
print_has_gaming_startedself  value   [   h4  77 >2  : G  _all_cardsrootNoderesetAllPokeCardself    	  @m	  T 7 ) >G  4  7> 7 7% > = 7 ) >G  info_buchu.pngspriteFrameByNamesetDisplayFramesharedSpriteFrameCacheCCSpriteFrameCachesetVisible	self  buchu_ui  bBuchu  frameCache  B    7  7   T) T) H 
index        a  	b  	 Ý  4e{2  :  2  7: 4 % 4 7>$>4 7> T4 7% > T74	  >D4
 	 > 4 77	  4
 7

 >
 =BNò4 77  1 >  7 >0  G  show_cards 	sortgetCardByIdPokeCardinsert
tabletrim_blank
pairs,
splitstring	typetypeof data.poke_cards => 
cclogpoke_cards_all_cards_ids_all_cards
self  5data  5card_ids 1  _ card_id   ¡  :n4  ' 7 77 7 >'  :4 7 >D%7 677 674		 %

  %  >	
 7	'  >	
 7	4  7 77 7 7> =	
 7	4 7>	
 7	) >	BNÙ  7 >G  align_cardssetVisiblecontent_scale_factorGlobalSettingsetScale
widthsetPositionsetTag, card: cardValue: 
print
indexcard_sprite_all_cards
pairsycardContentSizeheightwinSizeccp				











self  ;p 
1( ( (index %_  %card "cardValue  õ  jÊª)7   77  % $>7  '  TG  4 '  '  >7 74 7 4	 %
  >7 77   ! T4 7 7'  >77   '   T'  4	 % 	 %
  % >:4 7 >D
#7 6
7 7>  T	7 7> 77
 >) :7 74  7( 4 77> = =7:B
N
ÛG  ycreateCCMoveTorunActionpickedreorderChildgetParentcard_sprite
pairs, ,step:start_x:xwinSizecardWidth
printcontent_scale_factorGlobalSetting
widthcardContentSizeccp_all_cardssetStringself_user_poke_countÍ³ææÌÿçÌ³³æÌþ				




    !!""""""#########%%&&&&&&&&&&&&&'''  )self  kp XcardWidth Sstep 
Ipoke_size Dcenter_point >start_x 6& & &index #_  #card ! ×  HíÙ'   T 7 ) >G   4 %  >4  7> 7% > 7% > 7% > 7%		 >	 7%

 >2	  4
 7

	  >
4
 7

	  >
4
 7

	  >
4
 7

	  >
4
 7

	  >
 7
6	>
 7
 ) >
G  setDisplayFrameinsert
tablebe_lord.png3fen.png2fen.png1fen.pnginfo_bujiao.pngspriteFrameByNamesharedSpriteFrameCacheCCSpriteFrameCache updateLordValue lord_value:
printsetVisible				



self  Ilord_value_ui  Ilord_value  IframeCache 7info_bujiao_frame 3info_1fen_frame /info_2fen_frame +info_3fen_frame 'info_getting_lord_frame #value_frames "   ù+   +  7  :  +     7  > +   7   '   T +     7  > G   doTuoguandoBuchu_playing_timeoutself     +   +  7  :  +     7  > +   7   '   T +     7  > G   doTuoguanplayMinSingleCard_playing_timeoutself  Å  VÀö57   7 >  TJ1 1 4 7 % >)  7   T7 74	 %
  >4	 % 7 >) 7 
  T7 77  T) 7  7 >) 4 7 >D
7 6
7  T) TB
N
÷7  7	 >  T	4 % >  7 '	 
 >T4 % >  7 '	 
 >T  7 >0  G  stopUserAlarm@[showPlayCardMenu] self is NOT the first playernot not not startSelfUserAlarm<[showPlayCardMenu] self is the first playernot not not 
cclogmenu_item_reselectpicked_all_cards
pairssetEnabledmenu_item_buchug_user_id%[showPlayCardMenu] g_user_id => .[showPlayCardMenu] lastPlayer.user_id => 
printuser_idlastPlayer([showPlayCardMenu] lastPlayCard => lastPlayCard	dump  setVisibleplay_card_menu	 !!!!"""""#$!!'''''))+++,,,,,,...00000133355self  WbShow  WbuchuCallback 	HchupaiCallback Glast_id BbSelfFirst 4res_enable %
 
 
index _   I   ¶+     7   + > G   onGrabLordNoticeself data  	 $\°  T4  % >4  7(  >4  71 >4  7  >7  7	 >T4  %
 >  7  >0  G  onGrabLordNoticegrab lord do not delayrunActionrootNodecreateWithTwoActionsCCSequence CCCallFunccreateCCDelayTimegrab lord delay 0.5s
cclogÿ						





self  %data  %needDelay  %delayTime callFunc seq  ;   É+     7   '  > G   doGetLordself    1@Á7 7  T&7  77'   T) T) >7  77'   T) T) >7  77'   T) T) >7  7) >  7	 ' 1
 >0  G   startSelfUserAlarmsetVisiblemenu_get_lordmenu_item_3fenmenu_item_2fenlord_valuesetEnabledmenu_item_1feng_user_iduser_idself  2data  2 J   Ò7   7) >G  setVisiblemenu_get_lordself   | 	  
2Ö4  7>D 7>BNûG  
resetpoke_cards
pairsself  card    _ poke_card   U   Ü  7  >  7 >G  playButtonEffectcloseGameOverself      ù+   7     7  > +     7  > +     7  > G   	exitreset_alldismissgame_over_layerself  ¥  Ygá4  % >7  7) >7  74 ''æ > =7   T7  7>  T
7  7	>4  %
 >  7 >  7 >7  7) >7  7>7  T4  % >7  7) >7  7) >T4  % >7  7) >7  7) >  7 ' 1 >7  77 >0  G  GAME_OVER_HIDE_ACTION_TAGstopActionByTagrootNode startSelfUserAlarm#tag is 1001 set huanzhuo false"tag is 1000 set huanzhuo trueCHANGE_DESK_TAGgetTagmenu_huanzhuomenu_readyreset_allplayBackgroundMusicon closeGameOver musicdismissisShowinggame_over_layerccpsetPosition
alarmsetVisiblemenu_tuoguancloseGameOver()
cclog			




self  Ztag 0* l   7    T  7 >T  7 >G  	exitshowExit_has_gaming_startedself     	 "4   % +  7> +   7     TG  4  % > +   7    7  > +     7  ) > +     7  > G   hideGetLordMenushowPlayCardMenu	showgame_over_layershow game_over_layer
cclog_has_gaming_started_has_gaming_started 
print




self  :   ª+     7   > G   closeGameOverself  å  `¹$7   7) >7   T4 >: 4 7   >4 7   >4 7   >7  7  	 >7	  7
7 7 >  7 7>7  7   >4  7' >1 4  74    > =4  7  >7	  7 >4  74 	 7'
 >4	 
	 7		1 >	 = 77	 >7	  7	 >0  G  GAME_OVER_HIDE_ACTION_TAGsetTag runActioncreateWithTwoActionsCCSequenceCCCallFunc createCCDelayTimeinitWithplayersretrievePlayersGAME_OVER_ORDERaddChildrootNodeinitCallback	exitcloseGameOveronChangeDeskClicked__bindcreateGameOvergame_over_layersetVisiblemenu_tuoguan



!""""#####$$self  adata  achange close tohall delayTime -show ,callFunc $seq close_seq  5   ±  7  >G  showChatBoardself   Ë   µ7    T	4 >:  7  77  7 >7   7>7   7>G  	showupdateVolumeSET_LAYER_ORDERaddChildrootNodecreateSetDialogset_dialogself      ¿4  % >7   T  7 7 7>G  user_idshowUserInfoprev_useronPrevUserClicked
cclogself      Æ4  % >7   T  7 7 7>G  user_idshowUserInfonext_useronNextUserClicked
cclogself   P   Í  7  7 7>G  user_idself_usershowUserInfoself   ö   *CÑ  TG  4  % >7   T4 >: 7  7) >7  77 7 >7 4	  >6  T7  7
   >7  7) >G  initWithInfotostring
usersINFO_ORDERaddChildrootNodesetVisiblecreatePlayerInfouser_info_layercall show user info 
cclogself  +user_id  +info  p   î+      T+     7   > +    7  > G   onReturnClickeddismissoption self  À  *ä!)  1  4    > 7  7 7 > 7>0  G  	showGAMING_OPTION_ORDERaddChildrootNodecreateGamingOption 	!!self  option fn1  ]   
+   7     7  > +     7  > G   	exitdismissexit_layerself    3D7    T0 .4 % >7   T4 7 >: 7  7% >7  7%	 >1
 7  7 >7  77 7 >7  7>  T0  G  7  7>0  G  G  	showisShowingNOTIFY_ORDERreorderChildsetYesButton Pæ¨æ­£å¨æ¸¸æä¸­ï¼æ­¤æ¶å¼ºéç³»ç»å°æå¤§è¾èµ¢æ£é¤æ¨çè±å­ãsetMessageå¼ºå¶éåºsetTitlerootNodecreateYesNoDialogexit_layercall exit 
cclog_has_gaming_startedself  4yes_fn  £   $B¡
4     7  >   7  > +    T4  7> 7>4 >4  7>4   7> 7	 >T4
 % >G   running scene is not self
printreplaceScenepurgeTouchDispatcherDialogLayerConvertorcreateHallScenestopBackgroundMusicsharedEngineSimpleAudioEnginegetRunningScenesharedDirectorCCDirector
self running_scene scene  ×	  <2 7  :1 4 7'  >7  7%    >0  G  g.leave_gametriggerg_WebSocketadd_timer
Timer user_idg_user_idself  event_data exit_gaming_scene  X   À4   % > +     7  > G   	exitdo not auto ready
cclogself    8_°7   7>4  % >7  7  >  7 7>  7  >7	  7
) >7  7
) >4 % >% 77$7  7 >4 % >  7 ' 1 >4 % >0  G   [onEnterRoomSuCCss] exit... startSelfUserAlarm,[onEnterRoomSuCCss] start tick count...setString
dizhuroom_baseåºæ³¨: ,[onEnterRoomSuCCss] update room base...
cclogmenu_huanzhuosetVisiblemenu_readyinit_channelplayersupdatePlayersrefreshPropsgame_info"[onEnterRoomSuccess] data => 	dumpclear_notify_idg_WebSocket


self  9data  9game_info 
/room_base  K   È4   % >G  enter room failure	dumpself  data   T   Ì  7  >  7 >G  doStartReadyplayButtonEffectself   ³  2Õ 4  %  $>  7  >  7 >G  playButtonEffectdoGetLord[onGetLord] lord_value => 
cclogÐself  tag  sender  lord_value  ¡   Þ7  
  T7 77  TG  '  :   7 >G  doBuchu_playing_timeoutg_user_iduser_idlastPlayerlastPlayCardself   Â   %è  7  >  7  >7  7) >  7 >G  playButtonEffectsetEnabledmenu_item_reselectunpickPokeCardsgetPickedPokeCardsself  poke_cards   
  0dò2  7    'ÿÿ' I7   67  T4 7 	 >Kô  7 >4 7 >4 % 7	%
 7% $7>7	4 7 TG  '  :   7  >G  doChupai_playing_timeout	NONECardTypecard_length, card_length => max_poke_value , max_poke_value => card_typecard.card_type => 
printgetCardCardUtilityplayButtonEffectinsert
tablepicked_all_cardsself  1poke_cards /  index card card  ¡  5z7    T7  77  T) T) 7 )  7   T4 7 > 4 7   >  7 > 	  T4	 %
 >G    7 7 >  7  >7  7) >  7 >G  playDealCardEffectsetEnabledmenu_item_reselectpickPokeCardsunpickPokeCardstip is nil
cclogplayButtonEffecttip_cardCardUtilityclone_table_all_cardslastPlayCardg_user_iduser_idlastPlayer 
self  6is_self_last_player *last_play_card )source_card (cards  W      7  >  7 >G  playButtonEffectdocancelTuoguanself      ¥  7  >  T7   TG    7 >  7 >G  playButtonEffectdoTuoguan_is_playingisTuoguanself   4   ®  7  >G  doChangeDeskself   Y   ²4  %  $>G  update socket status to 
cclogself  status      ·7    T
7  7) >7  7) >G  menu_huanzhuosetVisiblemenu_ready_is_playingself   ó	 U ZÀº4  7  >1 : 1 : 1 : 1	 : 1 :
 1 : 1 : 1 : 1 : 1 : 1 : 1 : 1 : 1 : 1 : 1  : 1" :! 1$ :# 1& :% 1( :' 1* :) 1, :+ 1. :- 10 :/ 12 :1 14 :3 16 :5 18 :7 1: :9 1< :; 1> := 1@ :? 1B :A 1D :C 1F :E 1H :G 1J :I 1L :K 1N :M 1P :O 1R :Q 1T :S 0  G   updateReady updateSocket onChangeDeskClicked onTuoguanClicked onCancelTuoguanClicked onCardTipClicked onChupaiClicked onReselectClicked onBuchuClicked onGetLordClicked onStartReadyClicked onEnterRoomFailure onEnterRoomSuccess 	exit showExit onCloseClicked showUserInfo onSelfUserClicked onNextUserClicked onPrevUserClicked onEffectMusicClicked onBgMusicClicked showGameOver onReturnClicked closeGameOver onReturn reset_card  onGrabLordNotice showGrabLordMenu showPlayCardMenu updateLordValue align_cards show_cards drawPokeCards updatePlayerBuchu reset_all_cards setHasGamingStarted updateLordCard showLordCards hideGetLordMenu reset_all	bindGPlayerUpdatePlugin    $  ( & G * Z I b \ g d r i  w ¡  Ï ¦ í Õ 'ò ;,I=PNVR[X{]~«¯­¹±À»ÇÂËÉÞÍà*B,FDKHXQbZidn¨¡¬ª±®¸³ººtheClass  [ L    ¾2   5   4   1 : 0  G   	bindGUIUpdatePlugin   ¾ ¾¾  