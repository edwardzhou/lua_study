LJ @src/HallSceneUPlugin.luaÑ   @N4  % > T4 4 7   >4 7   > =: 7  7	7 'é'>4  %
 >7  7>T  T7   T7  7>  T7  7) >T7   T	7  7>  T)  : T  7 >G  doShowExitDialogset_dialog_layerdismissisShowingbackClicked	show;[HallSceneUPlugin:display_player_info] menu_layer:showaddChildrootNodeshow_set_dialogmenu_dismiss_callback__bindcreateMenumenu_layermenuClickedhall scene on key pad
print		








self  Akey  A Ì   %4 >:  7  77  'é'>4 % >7   7>G  	show([HallSceneUPlugin:share] share:show
printaddChildrootNodecreateShareshare_dialog_layerself   1   ,4  >G  endtolua_guifanself   y   ? 4   > +  7 7  >  7 >G   	showaddChildrootNodecreateTimeTask            self tm 
 ò
  3d17    T7   7) >3 4 7  T 4  % >4  77	>4
  7 > 7) > 74 'T'	Â> =7  7 >:   71 >0  G   registerScriptTapHandleraddChildrootNodeccpsetPosition!ignoreAnchorPointForPositioncreateWithItemCCMenutask_namecreateCCMenuItemFonttime task is 	dumptime_taskGlobalSetting effectåæ°æ¶çå¢å 10%fitåæ°weekdayææä¸task_nameé¿å·¥è¦åºremoveFromParentAndCleanuptime_task_menu				






self  4default_task 
*task %font_item 	menu  _   	B7   77 ) >)  : G  menu_layerremoveChildrootNodeself  
 e   	G7   77 ) >)  : G  set_dialog_layerremoveChildrootNodeself  
   	 L4 4 7   > = :  7  77  'é'>4 % >7   7>G  	show=[HallSceneUPlugin:show_set_dialog] set_dialog_layer:show
printaddChildrootNode set_dialog_dismiss_callback__bindcreateSetDialogset_dialog_layerself   =   S  7  >G  doShareself  tag  sender   O   W  7  % >G  menuClickedonKeypadself  tag  sender   >   \  7  >G  doToInfoself  tag  sender   >   a  7  >G  doToInfoself  tag  sender   @   e  7  >G  doToMarketself  tag  sender   Ý   -j4  % >4 >4  7> 7 >G  pushScenesharedDirectorCCDirectorcreatePlayerProductsScene.[HallSceneUPlugin:do_ui_prop_btn_clicked]
printself  tag  sender  scene 	 Ê    p4  4 7   > = : 4  7> 7 >G  pushScenesharedDirectorCCDirectormatket_sceneinactive_market_scene__bindcreateMarketSceneself  scene 
 l   v4  % >)  : G  matket_scene-[HallSceneUPlugin:inactive_market_scene]
printself   ¿   {4  4 7   > = 4  7> 7 >G  pushScenesharedDirectorCCDirectorinit_current_player_info__bindcreateUserCenterSceneself  scene 	 Ú  
"4  % >4 7  T  7 % >  7 >T
4 7	  T  7 >  7	 >G  init_hall_infoinit_channelneed_init_hall_roomsconnect_to_hall_serverè¿æ¥å¤§åæå¡å¨...show_progress_message_boxhall_server_websocketGlobalSetting#[HallSceneUPlugin:do_on_enter]
printself      4  >4  7> 7 >G  pushScenesharedDirectorCCDirectorcreateFeedbackSceneself  scene 	 í   4  % >4 '  :  7 >4 7   >: G  init_room_tabview__bindafter_trigger_successget_all_roomsneed_init_hall_roomsGlobalSetting&[HallSceneUPlugin:init_hall_info]
printself  data   Ì   =7   7'>7   7 ) >)    T  7 >G  init_current_player_inforemoveChildgetChildByTagrootNodeself  need_refresh_player_info  layer  Æ   $F¤4  77 % >  7 >4 %  $> 74  7	> 7
 > = 74  7	> 7
 > =G  setSelectedSpriteFramespriteFrameByNamesharedSpriteFrameCacheCCSpriteFrameCachesetNormalSpriteFrame:[HallSceneUPlugin:display_player_avatar] avatar_png: 
printget_player_avatar_png_nameCCMenuItemImageavatar_btn	cast
toluaself  %avatar_btn avatar_png    )Q­
  7  >  7  >4 4 77>	  T4 7	 T4 4 7	   > = 7
  7 'é'>4 % > 7>4 '  :G  	showG[HallSceneUPlugin:display_player_info] init_player_info_layer:show
printaddChildrootNodeinit_player_info_callback__bindcreateInitPlayerInfoLayershow_init_player_info_box	flagcurrent_userGlobalSettingtonumber$update_global_player_score_ifnoinit_current_player_info 
self  *data  *init_player_info_layer  ÷   I¹4   7> 74 7>4 % >4 74	  %
 >4 77 % > 77>  7 >G  display_player_avatarnick_namesetStringCCLabelTTFnick_name_lb	cast
tolua;[HallSceneUPlugin:init_current_player_info] cur_user: 	dumpcurrent_userGlobalSetting0[HallSceneUPlugin:init_current_player_info]
printinfo_plistResaddSpriteFramesWithFilesharedSpriteFrameCacheCCSpriteFrameCache				self   cache cur_user 
nick_name_lb 	    =È4  77 % > 77>4 77:4 77	:	4 77
:
G  lost_countwin_count
socrecurrent_userGlobalSetting
scoresetStringCCLabelTTFplayer_beans_lb	cast
toluaself  score_info  player_beans_lb   ]Ô)     T4 ''> TS  T.  T4  7> 4 >4 %  $> 7+  7	6	 > 7
 '	  '
 >T4 7 7' >% >  7+	  7			6		
 > T#  T+    T+  7	  T+  7	 T  T4 % >4 7 7' >% >4 7% >+  77>H  do_on_room_touchedH[HallSceneUPlugin:init_room_tabview] room_cell_couched, room_info: room_info	dump;[HallSceneUPlugin:init_room_tabview] room_cell_couchedcellTouchednumberOfCellsCCLayergetChildByTag	cast
toluaaddChild	roominit_room_info.[HallSceneUPlugin:init_room_tabview] a1: 
printcreateRoomItemcreateCCTableViewCellcellAtIndexCCSizeMakecellSize							






data self fn  ^table  ^a1  ^a2  ^r \a3 a3 room_index a3 #	 ù 8`Ò.4  % >4  71 >4  7 4 ' '> = 74	 > 7
> 74 '  '  > =7  7 >7 ' 'ÿÿI	 7
 >Kû  7 >4 7   >: 0  G  display_player_info__bindafter_trigger_successget_user_profileupdateCellAtIndex	roomaddChildmiddle_layerCCPointMakesetPositionreloadData%kCCScrollViewDirectionHorizontalsetDirectionCCSizeMakecreateWithHandlerLuaTableView createLuaEventHandler)[HallSceneUPlugin:init_room_tabview]
print         !!!!"""$$$$$$$%%%%%'''''(((('+++,,,,,..self  9data  9h 	0t 	'  index     '4  % >  7 % >  7 >4 7   >: G  do_connect_game_server__bindafter_trigger_successfast_begin_gameè¯·æ±æ¿é´ä¿¡æ¯...show_progress_message_box1[HallSceneUPlugin:do_quick_game_btn_clicked]
printself  tag  sender   ò   94  % >2 4 77:7:  7 % >  7  >4
 7   >:	 G  do_connect_game_server__bindafter_trigger_successrequest_enter_roomè¯·æ±æ¿é´ä¿¡æ¯...show_progress_message_boxroom_iduser_idcurrent_userGlobalSetting*[HallSceneUPlugin:do_on_room_touched]
printself  room_info  enter_info  »   4  % >  7 >4 7   >: G  init_hall_info__bindafter_trigger_successcheck_connection-[HallSceneUPlugin:do_on_websocket_ready]
printself   Ò   4  % >  7 >4 7 > T7  >G  functionafter_trigger_success	typehide_progress_message_box-[HallSceneUPlugin:do_on_trigger_success]
printself  data   Ã  
 )¤
4  % >  7 >4 7>  T7:   7 7 >4 7 >	 T7  >G  functionafter_trigger_failure	typeshow_back_message_boxfailure_msgresult_messageis_blankhide_progress_message_box-[HallSceneUPlugin:do_on_trigger_failure]
print
self  data   Ð   °4  % >  7 >  7 % >G  !è¿æ¥æ¸¸ææå¡å¨å¤±è´¥.show_message_boxhide_progress_message_box<[HallSceneUPlugin:do_on_connection_game_server_failure]
printself   ®   ¶4  >4  7> 7 >  7 >G  close_hall_websocketreplaceScenesharedDirectorCCDirectorcreateGamingSceneself  game     ¼4  %  $>7  7 >G  setStringsocket_labelupdate socket status to 
printself  status   W    	Â4     7  >   7  > G  endToLuasharedDirectorCCDirector p  "Á1  4 7' 4 >0  G  exit_gaming_sceneadd_timer
Timer self  	exit_hall_scene  
 I Q®¿1 :  1 : 1 : 1 : 1	 : 1 :
 1 : 1 : 1 : 1 : 1 : 1 : 1 : 1 : 1 : 1 : 1! :  1# :" 1% :$ 1' :& 1) :( 1+ :* 1- :, 1/ :. 11 :0 13 :2 15 :4 17 :6 19 :8 1; :: 1= :< 1? :> 1A :@ 1C :B 7D   T4E %F >  7D %G 7H >0  G  close_hall_websocket4HallServerConnectionPlugin.close_hall_websocket0HallServerConnectionPlugin register cleanup
printregisterCleanup 	exit updateSocket enter_game_room )do_on_connection_game_server_failure do_on_trigger_failure do_on_trigger_success do_on_websocket_ready do_on_room_touched do_quick_game_btn_clicked init_room_tabview $update_global_player_score_ifno init_current_player_info display_player_info display_player_avatar init_player_info_callback init_hall_info do_ui_feedback_btn_clicked do_on_enter doToInfo inactive_market_scene doToMarket do_ui_prop_btn_clicked onMarketClick onAvatarClick onInfoClick onMenuClick onShareClick show_set_dialog  set_dialog_dismiss_callback menu_dismiss_callback updateTimeTask doShowExitDialog doShare onKeypad    !  2 # 7 4 < 9 C > G E L I Q N U S Z W ` \ f b k h p m ~ r         ©  ¸ « Â º ò Ä û ö ý 	 &",(1.83;;;<<<=====??theClass  R    %R Í4   % > 4  % >4  % >4  % >4  % >4  % >4  % >4  % >4  %	 >4  %
 >2  5 4 1 :0  G   	bindHallSceneUPluginPlayerProductsSceneFeedbackSceneInitPlayerInfoLayerGamingSceneMenuDialogMarketSceneYesNoDialogYesNoDialog2UserCenterScene
cjsonrequire                        	 	 	 
 
 
    M MMjson "  