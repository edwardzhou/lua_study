LJ @LandingScene.lual    	4   % > 4  7  % @  LandingScenenewScenedisplaycreating new landingScene
print Ο 
  5Z4  : 4 7   >: 4  7>4 %  ) %	 >  7
  >  7 7 7 >4 77 % > 74 '  'S '	y > =7  7) >7  74 7   > =G  on_keypad_pressed registerScriptKeypadHandlersetKeypadEnabled	ccc3setColorCCLayerColorbg_color	cast
toluasprite_loadingrootNodecreate_progress_animationaddChildLandingScene.ccbiCCBReaderLoadcreateCCBProxydo_ui_clickme__bindon_ui_clickme_clickedlanding_sceneccb						self  6ccbproxy *node $bg_color  Η   !%4  % >7 7  >4 7 4 7>  7 %	 >  7
 >4  7% >G  landingon_start
Statssetup_websocketθΏζ₯ζε‘ε¨...show_progress_message_boxcontent_scale_factorGlobalSettingrootNodescaleNodeonEnter
super[LandingScene:on_enter()]
printself   ι   !4.
  7  >4 74 7>  T4 7>  T
  7 % >  7 77>T  7 %	 >  7
 >G  signupζ³¨εη¨ζ·...sign_in_by_tokenη»ε½ζε‘ε¨...show_progress_message_boxlogin_tokenuser_idis_blankcurrent_userGlobalSettinghide_progress_message_box
self  "cur_user  s   	:4  % >4  7% >G  landingon_end
Stats[LandingScene:on_exit()]
printself  
    ?4  % >7 7  >7   T7  7>G  releaseccproxyonCleanup
super[LandingScene:onCleanup()]
printself      H4  %  $> T  7 >T T G  menuClickeddo_closebackClickedon keypad clicked: 
printself  key   *   Q4  >G  endtoluaself   a   U4  % 7>G  user_name#[on_server_test] username ==> 
printself  data   Q   Z  7  4 >G  GlobalSettingconnect_to_login_serverself   x   _4  %  %  >G  , sender: '[LandingScene:do_ui_clickme] tag: 
printself  tag  sender      h4  % >  7 >4 7
  T4 7 7>4 )  :  7 >G  do_connect_hall_server
closehall_server_websocketGlobalSettinghide_progress_message_box'[LoginScene:do_on_login_success()]
printself   ¬   r4  >4  7> 7 >  7 >G  close_login_websocketreplaceScenesharedDirectorCCDirectorcreateHallSceneself  game  Γ   x  7  >  7 % >4 7' 4 7   > =G  enter_login_scene__bindadd_timer
Timerη»ε½ε€±θ΄₯show_message_boxhide_progress_message_boxself     	 ~4  % >  7 >  7 % >4 7' 4 7   > =G  enter_login_scene__bindadd_timer
Timer θΏζ₯ε€§εζε‘ε¨ε€±θ΄₯show_message_boxhide_progress_message_box:[LandingScene:do_on_connection_hall_server_failure()]
printself   Ϊ   4  % >4 >4  7> 7 >G  replaceScenesharedDirectorCCDirectorcreateLoginScene?[LandingScene:enter_login_scene()] enter into login scene.
printself  login 	 Ϊ   4  % >  7 % >4 7' 4 7   > =G  do_close__bindadd_timer
TimerθΏζ₯ζε‘ε¨ε€±θ΄₯show_message_box.[LandingScene:do_on_connection_failure()]
printself   e    4   % > 4  7  > H  newLandingScenecreateLandingScene()
printlanding  ΰ  1 Zb 4   % > 4  % >4  % >4  % >4  % >4  % >4  % >4 %	 1
 >5	 4	 1 :4	 1 :4	 1 :4	 1 :4	 1 :4	 1 :4	 1 :4	 1 :4	 1 :4	 1 :4	 1  :4	 1" :!4	 1$ :#4	 1& :%4	 1( :'4	 1* :)4+ 7,4	 >4- 7,4	 >4. 7,4	 >1/ 50 0  G  createLandingScene UIControllerPluginLoginHallConnectionPlugin	bind LoginServerConnectionPlugin do_on_connection_failure enter_login_scene )do_on_connection_hall_server_failure do_on_login_failure enter_hall do_on_login_success do_ui_clickme setup_websocket on_server_test do_close on_keypad_pressed onCleanup onExit do_on_websocket_ready onEnter 	ctor LandingScene
classsrc.StatsCCBReaderLoadLoginScenesrc.UIControllerPlugin"src.LoginHallConnectionPlugin$src.LoginServerConnectionPlugin
cjsonrequire			#%,%.8.:=:?F?HOHQSQUWUZ\Z_a_hphrvrx|x~~json W  