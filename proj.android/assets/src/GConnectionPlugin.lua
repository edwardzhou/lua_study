LJ @src/GConnectionPlugin.luaK  +   7   >G   ÀonServerChatMessageself data     E|7 4 %  $>4 4 % >4 % 7 7$>% 7 7$7	 7
)  97	 7
)  97	  7 >: 7	  7 >: 7	  7 % $>: 7  7% 1 >  7 7 >  7 7 >  7 7	 % >0  G  g.restore_connectioninitSocketbind_channel g.on_message	bind
_chatc_channelm_channelsubscribeg_channelchannelsg_WebSocketchannel_user_idself_user.user_id self_user self_user	dump#[initChannel] channel_name => 
cclogchannel_name						







self  Fgame_info  Fchannel_name Duser_channel_name 1 J  +   7   >G   ÀonServerPlayerJoinself data   N  +   7   >G   ÀonServerGrabLordNotifyself data   H  "+   7   >G   ÀonServerPlayCardself data   H  %+   7   >G   ÀonServerGameOverself data   I  (+   7   >G   ÀonServerStartGameself data   E  ++   7   >G   ÀonServerLeaveself data   ¨   2 7 % 1 > 7 % 1 > 7 % 1 > 7 % 1 > 7 %	 1
 > 7 % 1 >0  G   g.leave_game_notify g.game_start g.game_over g.play_card g.grab_lord_notify g.player_join_notify	bind	



self  !channel  ! ³   04  % >4 7  T4 7 7>4 )  :G  
closeg_WebSocketGlobalSetting/[GConnectionPlugin:close_game_websocket()]
printself   v   K4  % >  7 % >G  socket: reopeningupdateSocketgame onSocketReopening
cclogself  	     Q4  % >  7 >  7 % >G   socket: reopened, restoringupdateSocketrestoreConnectiongame onSocketReopened
cclogself   X   X4  % >  7 >G  	exitgame onSocketReopenFail
cclogself   Y   f4  % >  7 >G  	exitgame onSocketRestoreFail
cclogself   ·   3l4  % >  7 % >7  7  >74  % 7 $>7  'ÿÿ' I7	 6	2	  7
	;
	2
  :

7:
;
	4 	 % >7  72 ;	>Kê  7 >G  updateTuoguannew_messageg_WebSocketevent_msg is 	dumpnotify_data	datachannelnotify_nameeventsrestore events length is channel_nameinit_channelgame_infosocket: restoredupdateSocketgame onSocketRestored
cclog			
self  4data  4game_info 	+game_channel &  index event msg attr  `   4  % >  7 ) >G  op_websockettheClass:on_pause
cclogself  	 >    +     7   ) > G   Àop_websocket      self  u 
4  % >4 7(  1 >0  G   add_timer
TimertheClass:on_resume
cclogself      4  % 4  >$>7  7 >G  pause_eventg_WebSockettostringop_websocket 
cclogself  pause   Ö  ".1 :  1 : 1 : 1 : 1	 : 1 :
 1 : 1 : 1 : 1 : 1 : 7   T4 % >  7 % 7 >G  +GConnectionPlugin.close_game_websocket'GConnectionPlugin register cleanup
printregisterCleanup op_websocket on_resume on_pause onSocketRestored onSocketRestoreFail onSocketReopenFail onSocketReopened onSocketReopening close_game_websocket bind_channel init_channel+3-KHRNXUfc}itheClass  # B    2   5   4   1 : G   	bindGConnectionPlugin  