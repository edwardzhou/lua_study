LJ @src/GServerMsgPlugin.luañ   \k
+4   % >77  T4 % >G    7  >  7  >  7 7	>7
'   T'  :  7  ) >  7 7 'ÿÿ>  7 7 'ÿÿ>  7 7 'ÿÿ>77 7 T  7 7 ' >  7 ' )  >T77 7 T
  7 7 ' >  7 ' )  >  7 >4 % >  7 ) >G  setHasGamingStarted%onServerStartGame gaming to trueplayDeliverCardsEffectstartPrevUserAlarmprev_userstartNextUserAlarmnext_usernext_user_idnext_user_lord_valueprev_user_lord_valueself_user_lord_valueupdateLordValueshowGrabLordMenulord_valuegrab_lordplayersupdatePlayersdrawPokeCardsreset_all'[game_start] not my cards, return.
cclogg_user_iduser_id[game_start] data -> 	dump     """""#####&&&)))****+self  ]data  ] W   @4   % > +     7  > G   À	exitdo not auto ready
cclogself  á  0?84  % >7  T(4  % 7 >7   T4 % >  7 >  7 7>  7	 ' 1
 >7  7) >7  7) >T4 % >  7 7>0  G  updatePlayersä¸è¬çjoin notifymenu_huanzhuosetVisiblemenu_ready startSelfUserAlarmreset_allstopUserAlarmæµå±çjoin notify
cclog_has_gaming_started_has_gaming_started:playersonServerPlayerJoin
printself  1data  1 À   .O4  % 7$>4 7 >4 7> T4 % >  7 >T
4 % >7	  T  7
 7	>G  updatePlayersplayers/å¶ä»ç¨æ·è¢«è¸¢åºæ¿é´ï¼å·æ°çé¢	exitè¢«è¸¢åºæ¿é´
cclogg_user_idtonumberuser_idonServerLeave 
printself   data    º 	 & ¿]M4  % >% 4 % >  7 >  7 7>77	  T 2  7	 :
4 7% >4 77  >7 :'  :7:  7  >  7 ) >  7 77>T  7 7 7 7>  7 7 7 7>  7 7 7 7>7'    T7 7
 T7 7T	7 7
 T7 7T7 74 %  $>  7   ) >7!7	  T2  7	 :
7:7:  7"  >TH7'   T%  7 7 'ÿÿ>  7 7 'ÿÿ>  7 7 'ÿÿ>77 7
 T  7# ' )  >T  7$ ' )  >  7 77>T7!7 7
 T  7 7 ' >  7# ' )  >T7!7 7
 T
  7 7 ' >  7$ ' )  >  7% ) >G  setHasGamingStartedstartPrevUserAlarmstartNextUserAlarmshowGrabLordMenunext_user_idplayGrabLordEffectgrab_lord: value is prev_lord_user_idnext_usernext_user_lord_valueprev_userprev_user_lord_valueself_userself_user_lord_valueupdateLordValuelord_valueshowLordCardsshowPlayCardMenuonServerStartGamegrab_lordpoke_cards_all_cards_idscombine
table,lord_cards
splituser_idg_user_idlord_user_idplayersupdatePlayershideGetLordMenu%hide the get lord menu firstly! 
cclog[onServerGrabLordNotify] onServerGrabLordNotify
print				  !!!!"""####$$$&&((((()))))....0112233444445555777778888899999;;;;;<<<<<<>>>>>@@@@@@CCCCCDDDDDEEEEEEFFFFFGGGGGHHHHHLLLLMself  Àdata  Àlog_prefix »new_data loard_ids prev ,uvalue tnew_data !
 ½  A÷­m4  % >4  % >  7 7>  7 >7 
  T7 77	 T  7
 7 ) >  7
 7 ) >  7
 7 ) >4 7	>2  4 7% >4  >D4
 7

	 >

 '   T4 7 4 7
 > =BNî4 %  $>4  % >4 7 >7 7 T7 :T7  7 T7  :4 %! 7" 77	 7		7
  7

7#  >4 %$ 7%$>7#  T4 %& >  7'  >7(   T|)  7#  T/4  %) 
  7	* >	%
+ 7,  7-> =4 %. >  7/ )	 >  70 	 )
 >7" 71	  T	  7* >  T  72 )	 >  73 '	 )
  >  7
 7	 )
 >G  7 7 T 4 %4 >7   75 	 >  7* >  T%  7/ )	 >76   T  77 7	6 >)  :6   7
 7	 )
 >T4 %8 >7    79 	 >  7: '	 )
  >  7
 7	 )
 >7;'  T '   T  7< 7	;7
=
  T
)
 T)
 >T4 %> >  7? >  7@ >G  updatePlayerPokeCounts	exit#is not playing, return to hallgenderplayCardTipspoke_card_countstartPrevUserAlarmdoNextUserPlayCardis next user play cardreset_cardlastCarddoPrevUserPlayCardis prev user play cardstartNextUserAlarmdoTuoguantuo_guandoChupaishowPlayCardMenu$hide play card menu firstlynot isVisibleplay_card_menu, is menu show?isTuoguan(hide play is self card, is tuoguan?_is_playingplayCardEffectplayCardEffect not selfcard_type[onPlayCard] card.type => g_user_idself_user0ids, self:%d,prev:%d,next:%d,g:%d,player:%dnext_user
ownerprev_usergetCardCardUtility [onPlayCard] poke_cards => '[onPlayCard] poke_cards.length => 
ccloggetCardByIdPokeCardinsert
table	trimstring
pairs,poke_cards
splittonumbernext_user_lord_valueprev_user_lord_valueself_user_lord_valueupdatePlayerBuchuplayer_iduser_idlastPlayerupdateTuoguanplayersretrievePlayers [onServerPlayCard] data => 	dumponServerPlayCard
print					




  """""""""""#####$$$%%%&&&&***+...000000000002223333444445555555556666?????AAAAABEEEEFFFGIIIIKKKKKMMMMOOOPPPPQQVVVVVWYYYZ\\\\^^^^^`````bbbbbbbbccccccccccdfffgggkkkmself  data  the_player_id )Øpoke_cards ×poke_card_ids Ó  _ poke_card_id  tmp_id card °player +z    (74  % >) : 4 % >  7 ) >  7  >  7 7 ) >7	   T  7 7	 7
) >7   T  7 7 7
) >G  next_useruser_idprev_userg_user_iddoGetUserProfileIfNeedshowGameOversetHasGamingStarted%onServerGameOver gaming to false
cclog_is_playingonServerGameOver
print						self  )data  ) ¼ 	 
 >®4  % >)  77   T7 7 T7 T
7   T7 7 T7 T7   7 7	  >G  msgdisplayChatMessageself_liaotianprev_liaotianprev_usernext_liaotiannext_useruser_idonServerChatMessage
print
self   message   layer id  ø  *µ1 :  1 : 1 : 1 : 1	 : 1 :
 1 : G   onServerChatMessage onServerGameOver onServerPlayCard onServerGrabLordNotify onServerLeave onServerPlayerJoin onServerStartGame.  E 1 S H £ V ¦ $4'5theClass   G    ¼2   5   4   1 : G   	bindGServerMsgPlugin   < <  