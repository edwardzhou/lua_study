LJ @src/GAlarmPlugin.luaK   " +     7   + > G   ��onAlarmTick      self callbackFunc  �	 a�!7   7> 7   7%  $>7   7 >'
  T�'  T�	 T	�7   74 '� '  '  > =4  > T �  7	 >T�'  T�'   T�4  > T�  7
 >'   T�4  > T� >  7 >0 �4  74  7' >4  71 > = 7'(#>7  7 >0  �G  G  runActionrootNode CCCallFunccreateCCDelayTimecreateWithTwoActionsCCSequencestopUserAlarmplayWarningEffectplayCountdownEffectfunction	type	ccc3setColorsetTagsetStringgetTagalarm_tick




     !!!self  acallbackFunc  acurrent_tick \seqAction Q K   2+     7   + > G   ��onAlarmTickself callbackFunc  �
  D�(  7  >7  7 >7  7%  $>7  7 >7  74 '  '  '	  > =7  7	) >7  7
> 77 7 >4  74  7' >4  71	 > = 7'(#>7  7 >0  �G  runActionrootNode CCCallFunccreateCCDelayTimecreateWithTwoActionsCCSequenceALARM_ORDERreorderChildgetParentsetVisible	ccc3setColorsetTagsetStringalarm_ticksetPosition
alarmstopUserAlarm									












self  EshowPoint  Etick_count  EcallbackFunc  EseqAction : o   
.<  7  4 '�'� >  >G  ccpstartAlarmself  tick_count  callbackFunc   �   C4  % >7  7) >7  7'(#>G  stopActionByTagrootNodesetVisible
alarm[stopUserAlarm] stop.
cclogself   �  
 2M+   7   7  4 %   $>+  7 7% 3 +  77:: 	>+   T�+ >G   ��timeout_user_id  self_userg.player_timeouttriggerg_WebSocketplayer over time 
ccloguser_idprev_userself callbackFunc id  �	  ;L
1    7 4 'x '6>  >0  �G  ccpstartAlarm 									

self  tick_count  callbackFunc  callback  �  
 2\+   7   7  4 %   $>+  7 7% 3 +  77:: 	>+   T�+ >G   ��timeout_user_id  self_userg.player_timeouttriggerg_WebSocketplayer over time 
ccloguser_idnext_userself callbackFunc id  �	  ;[
1    7 4 '�'6>  >0  �G  ccpstartAlarm 									

self  tick_count  callbackFunc  callback  �  c1 :  1 : 1 : 1 : 1	 : 1 :
 G   startNextUserAlarm startPrevUserAlarm stopUserAlarm startSelfUserAlarm startAlarm onAlarmTick#4%;9D@SIbXctheClass   <    f2   5   4   1 : G   	bindGAlarmPluginff  