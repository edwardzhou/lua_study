LJ @LandingScene.lual    
4   % > 4  7  % @  LandingScenenewScenedisplaycreating new landingScene
print � 
  5Z4  : 4 7   >: 4  7>4 %  ) %	 >  7
  >  7 7 7 >4 77 % > 74 '  'S '	y > =7  7) >7  74 7   > =G  on_keypad_pressed registerScriptKeypadHandlersetKeypadEnabled	ccc3setColorCCLayerColorbg_color	cast
toluasprite_loadingrootNodecreate_progress_animationaddChildLandingScene.ccbiCCBReaderLoadcreateCCBProxydo_ui_clickme__bindon_ui_clickme_clickedlanding_sceneccb





self  6ccbproxy *node $bg_color  �   '4  % >7 7  >4 7 4 7>  7 %	 >  7
 >G  setup_websocket连接服务器...show_progress_message_boxcontent_scale_factorGlobalSettingrootNodescaleNodeonEnter
super[LandingScene:on_enter()]
printself   T    74   % > 4  > G  endtolua check_update_fail then exit
print �  (;	4    % >7  T�+   7  >T�7  T�+   7  >T�+   7>G   �do_on_go_signdo_update_apkapkdo_update_resourceres	kindcheck_update_succ	dump	self data   �  g2  7  >3 4 >4 7  >1 1 4 7 7	%
  	 
 >  7 % >0  �G  加载数据...show_progress_message_boxlogin.check_updatetriggerlogin_server_websocketGlobalSetting  copy_kv
tabledevice_info 
retry0hide_progress_message_boxself  event_data device_info check_update_fail check_update_succ  �  ,YU4  %    >  T�4  7> 7% +  $>4 >G  T�  T�4  %	  >4 >G  T�+  7
4 7%  >% $>G  G  � �%加载数据 %dformatstring$show_progress_message_no_create"download update error happend
errorendtoluaon_install_messageJavacreateDDZJniHelpersuccessdownload listen=>
print		

full_path self type  -d_data  -jni_helper 	 �
   cM4   7> 7% >% $% 4  77 	 >  $1	 :  7
7	 > 7>0  �G  updatesetDownloadScriptHandler 	hdlrurlDownloaderupd.apk/m123/download/SDCardPathgetcreateDDZJniHelperself  !data  !jni_helper path name downloader full_path  �  _�p 4  %    >  T�G    TO�QN�+   7+ + 7>  T�4  % >TA�4 7+ % >4  %	 >4
 74 + 7> = 4  %  > 7 > 7> 7>+   7+ + 7>  T�T�+  7>  T�T�4  7>	 7%
 + 7>+  	 7>4  %	 >G  T�4  % >4 >G   ����endtolua/下载，解压，md5 resource资源失败update resource success!reload_after_update_resourceversionpkg_resource_versionsetStringForKeysharedUserDefaultCCUserDefaultuncompressmd5
close
flush
writereplace code iss_codeunpack	charstringstart to unpack s_coder+	openioorinigal md5 is wrong
s_md5check_file_md5successdownload listen=>
print					


 self full_path data downloader type  `d_data  `original_file_right Ff ;rep 
1replace_file_right uncompress_result userDefault  �	  !Wj)4   7> 7>% 4  77  >  $4 %  >1
 :	  77	 > 7>0  �G  updatesetDownloadScriptHandler 	hdlr%full_path in update resource is 
printurlcreateDownloaderres.zipgetWritablePathsharedFileUtilsCCFileUtils&&''''((())self  "data  "path name downloader full_path  5   �  7  >G  do_on_go_signself   � 
  M�4   7> 7 > 7>4 %  % 	 > T�) T�) H , realaity_md5 iscompare md5 is
printto_char_arrayupdate_with_filecreateMD5self  file_path  compare_md5  md5 reality_md5  �   �  7  >4 >4  7> 7 >G  replaceScenesharedDirectorCCDirectorcreateLoginScenehide_progress_message_boxself  scene 	 F   �4  % >G  [LandingScene:on_exit()]
printself   �   �4  % >7 7  >7   T�7  7>G  releaseccproxyonCleanup
super[LandingScene:onCleanup()]
printself   �   �4  %  $> T�  7 >T� T �G  menuClickeddo_closebackClickedon keypad clicked: 
printself  key   +   �4  >G  endtoluaself   b   �4  % 7>G  user_name#[on_server_test] username ==> 
printself  data   R   �  7  4 >G  GlobalSettingconnect_to_login_serverself   y   �4  %  %  >G  , sender: '[LandingScene:do_ui_clickme] tag: 
printself  tag  sender   �   �4  % >  7 >4 7
  T�4 7 7>4 )  :  7 >G  do_connect_hall_server
closehall_server_websocketGlobalSettinghide_progress_message_box'[LoginScene:do_on_login_success()]
printself   �   �4  >4  7> 7 >  7 >G  close_login_websocketreplaceScenesharedDirectorCCDirectorcreateHallSceneself  game  �   �  7  >  7 % >4 7' 4 7   > =G  enter_login_scene__bindadd_timer
Timer登录失败show_message_boxhide_progress_message_boxself   �  	 �4  % >  7 >  7 % >4 7' 4 7   > =G  enter_login_scene__bindadd_timer
Timer 连接大厅服务器失败show_message_boxhide_progress_message_box:[LandingScene:do_on_connection_hall_server_failure()]
printself   �   �4  % >4 >4  7> 7 >G  replaceScenesharedDirectorCCDirectorcreateLoginScene?[LandingScene:enter_login_scene()] enter into login scene.
printself  login 	 �   �4  % >  7 % >4 7' 4 7   > =G  do_close__bindadd_timer
Timer连接服务器失败show_message_box.[LandingScene:do_on_connection_failure()]
printself   e    �4   % > 4  7  > H  newLandingScenecreateLandingScene()
printlanding  �	  ; i� �4   % > 4  % >4  % >4  % >4  % >4  % >4  % >4 %	 1
 >5	 4	 1 :4	 1 :4	 1 :4	 1 :4	 1 :4	 1 :4	 1 :4	 1 :4	 1 :4	 1 :4	 1  :4	 1" :!4	 1$ :#4	 1& :%4	 1( :'4	 1* :)4	 1, :+4	 1. :-4	 10 :/4	 12 :14	 14 :345 764	 >47 764	 >48 764	 >19 5: 0  �G  createLandingScene UIControllerPluginLoginHallConnectionPlugin	bind LoginServerConnectionPlugin do_on_connection_failure enter_login_scene )do_on_connection_hall_server_failure do_on_login_failure enter_hall do_on_login_success do_ui_clickme setup_websocket on_server_test do_close on_keypad_pressed onCleanup onExit do_on_go_sign check_file_md5 !reload_after_update_resource do_update_resource do_update_apk do_on_websocket_ready onEnter 	ctor LandingScene
classsrc.StatsCCBReaderLoadLoginScenesrc.UIControllerPlugin"src.LoginHallConnectionPlugin$src.LoginServerConnectionPlugin
cjsonrequire                     
 
  
   %  ' / ' 2 J 2 M g M j � j � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � 
json f  