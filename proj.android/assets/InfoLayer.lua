LJ @InfoLayer.lua]    4   % > 4  7  % @  InfoLayernewLayerdisplaynew InfoLayer
print k    4  % >4 7  @ newInfoLayercreate InfoLayer
printinfo_changed_callback   �   (Z4  : 4 7   >: 4  7>4 %  ) %	 >4 7 % >:
   7  >  7 >4 7
 4 7>  7 >: G  info_changed_callbackinit_player_infocontent_scale_factorGlobalSettingscaleNodeinit_input_controlleraddChildCCLayer	cast
toluarootNodeInfo.ccbiCCBReaderLoadcreateCCBProxydo_ui_ok_btn_clicked__bindon_ui_ok_btn_clickedinfo_sceneccb				self  )info_changed_callback  )ccbproxy node  �   9h%4  % >7 7 T�7 7 77 7 7> >T�7 7 77 7 7> >7 7 7>  T�' T�'   7 % >%
 :	 3 4 77::  7  >G  complete_user_infogenderuser_idcurrent_userGlobalSetting version1.0
retry0更改失败failure_msg更改性别...show_progress_message_boxisCheckedsetCheckedf_checkboxtogglem_checkbox-[InfoLayer:do_gender_checkbox_selected] 
print



self  :tag  :sender  :gender )changed_info  �   2r54  % > T,�4 7  7> = 4  >  T�  7 % >7  7	4
 77>G  4
 77 T�  7 % >% : 3 4
 77::  7  >G  complete_user_infouser_id version1.0
retry0更改失败failure_msg更改昵称...show_progress_message_boxnick_namecurrent_userGlobalSettingsetText昵称不能为空show_message_boxis_blankgetTextnick_name_boxtrim_blank
ended-[InfoLayer:do_gender_checkbox_selected] 
print					



self  3strEventName  3pSender  3cur_nick_name &changed_info " �  8]+  7  T�+ 7  7+ 7  7> >T�+  7  7+  7  7> >G  ��isCheckedsetCheckedtogglemenu1 menu2 tag  sender   �
	 ( ��G&4  % >% :   7 7 '� '- ) 'e >: 7  7% ' >7  7	4
 '� '� '� > =7  7'
 >7  7% >4  % 7 >7  74 7   > =4  % 7 7>4 7% >4 7% >7 7' >7 7' >7 74 7>7 74 7> 74 'Z '! > = 74 '� '! > =1 7  7!4 7"   > =7  7!4 7"   > =7  7#) >7$  7% >7$  7% >:& :' 0  �G  f_checkboxm_checkboxaddChildgender_layersetChecked do_gender_checkbox_selectedregisterScriptTapHandlertoggle ccpsetPositionzongseGlobalSettingsetColorsetFontSizeObj
title女男createCheckBoxonExit=[InfoLayer:init_input_controller] nick_name_box.onExit: editBoxTextEventHandle__bind!registerScriptEditBoxHandler6[InfoLayer:init_input_controller] nick_name_box: +昵称为不大于10位的任意字符setPlaceHoldersetMaxLength	ccc3setFontColordefaultsetFontnick_name_edit_layeraddEditboxnick_name_boxkuang_a.pnginput_png&[InfoLayer:init_input_controller]
print				







!!!!!"""""$%&&self  �menu1 =Lmenu2 HmenuCallback %# �
  .��o"4  % >4 74 77 % > 77	>4 77
  7'e >% > 77>4 77 % > 77>4 77 % >777! 4  >  T�'  T�4 7>  7	 %
 7% 7% $		>7 7 74	 7
>		 T	�)	 T
�)	 >7 7 74	 7
>		 T	�)	 T
�)	 >4   7!>4" 	 %
# >	 7$%
% >7	& 	 T
�4	' %
( 7&$

>	4	) 7
&>	 7
$	 >

 T	�4	' %
* >	7	+ 
	 7	,	 >	7	+ 
	 7	-	) >	G  setVisiblesetDisplayFramelevel_sprite)init_player_info game_level is=> nilget_level_pic&init_player_info game_level is=> 
ccloggame_levelduangong.pngspriteFrameByNameuser is	dumpsharedSpriteFrameCacheCCSpriteFrameCachef_checkboxgendertonumbersetCheckedtogglem_checkbox	 负 胜  %  
floor	math
isnanlost_countwin_countstas_lb
scorescores_lbnick_namesetTextCCEditBoxgetChildByTagnick_name_edit_layeruser_idsetStringCCLabelTTFaccount_lb	cast
toluacurrent_userGlobalSetting![InfoLayer:init_player_info]
print�����				     !!!!!"self  �cur_user �account_lb �nick_name_box sscores_lb 	jstas_lb 	astas [cache 4'level_frame picname  �   �4  % >  7 >4 7 > T�7  >G  functioninfo_changed_callback	typehide_progress_message_box&[InfoLayer:do_on_trigger_success]
printself  data   �   �4  % >  7 >  7 7 >G  failure_msgshow_message_boxhide_progress_message_box&[InfoLayer:do_on_trigger_failure]
printself  data   �   23 �4   % > 4   % > 4   % > 4   % > 4  % 1 > 5  1  5 	 4  1 :
 4  1 : 4  1 : 4  1 : 4  1 : 4  1 : 4  1 : 4  7  4 > 4  7  4 > 0  �G  HallServerConnectionPlugin	bindUIControllerPlugin do_on_trigger_failure do_on_trigger_success init_player_info init_input_controller editBoxTextEventHandle  do_gender_checkbox_selected 	ctorcreateInfoLayer  InfoLayer
classsrc.CheckBox#src.HallServerConnectionPluginsrc.UIControllerPluginsrc.InfoLayerUPluginrequire	
#%3%5E5GmGo�o����������������  