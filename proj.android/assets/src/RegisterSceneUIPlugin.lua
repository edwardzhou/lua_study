LJ @src/RegisterSceneUIPlugin.lua�
   ��% :    7 7 '� ' ) 'e >  7 7 '� ' ) 'f >  7 7 '� ' ) 'g >4  74  7	> 7
% > =4  74  7	> 7
% > =4  7 )  >4  7 )  >4  7 > 7 > 7' > 74 7	 
  > =7  7 '	  '
�>4  74 	 7	>	 7
%
 > =4  74	 
	 7			>	
	 7	
	% >	 =4 	 7
 )  >4	 
	 7		 )  >	4
 
 7

 >

 7
4 7   > =
 7
	 >7  7
 '  '�>G  gender_female_menudo_female_btn_clickedaddChildgender_male_menudo_male_btn_clicked__bindregisterScriptTapHandlersetSelectedIndexaddSubItemCCMenuItemTogglecreateCCMenuItemSpritekuang_c.pngkuang_d.pngspriteFrameByNamesharedSpriteFrameCacheCCSpriteFrameCachecreateWithSpriteFrameCCSpriteconfirm_pwd_layerpassword_layernick_name_layeraddEditboxkuang_a.pnginput_png						




self  �male_on_sprite 'omale_off_sprite cmale_on_btn ]male_off_btn Wmale_item_toggle Rfemale_on_sprite "0female_off_sprite $female_on_btn female_off_btn female_item_toggle  �  
#^ 4  % >4 7 % >5 4  7>	  T�4  7' >T�4 77  7	'�>% > 7'  >G  getChildByTaggender_female_menusetSelectedIndexgetSelectedIndexmenu_toggleCCMenuItemToggle	cast
tolua([RegisterScene:do_male_btn_clicked]
print self  $tag  $sender  $selectedIndex femal_menu_toggle  �  
#]-
4  % >4 7 % >5 4  7>	  T�4  7' >T�4 77  7	'�>% > 7'  >G  getChildByTaggender_male_menusetSelectedIndexgetSelectedIndexmenu_toggleCCMenuItemToggle	cast
tolua*[RegisterScene:do_female_btn_clicked]
print 
self  $tag  $sender  $selectedIndex male_menu_toggle  �   "94  % >4  7> 7>G  popScenesharedDirectorCCDirector"go to login in register scene
printself  tag  sender   �	  p�?"4  % >4 77  7'e >% >4 77  7'f >% >4 77  7'g >% >4 77	  7'	�>%
 > 7>	 7>
 7	>	 7
>
	
  T
�'
 T�'
 4  >  T�4  % >  7 % >G  4  >  T�4  % >  7 % >G   '  T�  7 % >G  	 T�4  % >  7 % >G    7 % >  7   
 >G  fast_sign_up注册用户...show_progress_message_box 两次密码输入不一致I[RegisterScene:do_register_btn_clicked] 两次密码输入不一致.密码不能小于8位密码不能为空@[RegisterScene:do_register_btn_clicked] 密码不能为空.昵称不能为空show_message_box@[RegisterScene:do_register_btn_clicked] 昵称不能为空.is_blankgetSelectedIndexgetTextCCMenuItemTogglegender_male_menuconfirm_pwd_layerpassword_layerCCEditBoxgetChildByTagnick_name_layer	cast
tolua,[RegisterScene:do_register_btn_clicked]
print			







      "self  qtag  qsender  qnick_name_box dpassword_box 	[confirm_pwd_box 	Rmale_menu_toggle 	Inick_name Fpassword Cconfirm_pwd @gender 8 �   #d
4  %  $> T�4  % >4  7> 7>T� T �G  menuClickedpopScenesharedDirectorCCDirector"go to login in register scenebackClickedon keypad clicked: 
print
self  key   @   p  7  >G  hide_progress_message_boxself   �    y4   > 4  7> 7  >G  replaceScenesharedDirectorCCDirectorcreateHallScenehall 	 �  t	4  % >  7 >  7 % >4 7' 1 >G   add_timer
Timer连接大厅服务器...show_progress_message_boxhide_progress_message_box*[RegisterScene:do_on_login_success()]
print	self   r     7  >  7 % >G  注册失败show_message_boxhide_progress_message_boxself  	 �  �1 :  1 : 1 : 1 : 1	 : 1 :
 1 : 1 : 1 : G   do_on_login_failure do_on_login_success do_on_websocket_ready on_keypad_pressed do_register_btn_clicked do_cancel_btn_clicked do_female_btn_clicked do_male_btn_clicked init_input_controller(4*:6^<kaomzq�|�theClass   F    �2   5   4   1 : G   	bindRegisterSceneUIPlugin��  