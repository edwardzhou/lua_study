LJ @src/RankUPlugin.lua    G  rank_item   � 
1\)     T�4 '\' > T'�  T�  T�4  7>  7) >4 >4 %  $> 7	+  	 6	> 7
 > T�  T�+   T�  T �H �cellTouchednumberOfCellsaddChild	init0[MarketSceneUPlugin.create_rank_list] a1 =>
printcreateRankItem!removeAllChildrenWithCleanupcreateCCTableViewCellcellAtIndexCCSizeMakecellSize		




rank_list fn  2table  2a1  2a2  2r 0a3  � U"  T�0 �1  4  71 >4  7 4 '\'	� > = ' '��I�
 7	 >	K�0  �H G  updateCellAtIndexCCSizeMakecreateWithHandlerLuaTableView createLuaEventHandler !!"self  rank_list  init_a3 h t 	  index  �   *+:  :   7 7>7  77>G  positionsetStringplayer_rank	list	rankon_time_overrank_dataself  data  on_time_over   �  -X27  4 % 4 7>$>74 7>4 7 > '   T�% H '
  T�%	 4
  >$'
  T�%	 4
  >$ %  $H :tostring0
00:00
floor	mathexpire_time	timeosos time 
cclogrank_datax			




self  .data ,delta  minutes seconds  �   .G+      T�+     7   >    T�+     7  > +  7 7+   7> =  T�+  7 >) H G   �on_time_over
00:00setStringtimer_timegetDeltaTimeisShowing		self d fn  �  E7   7  7 > =1 4 7'  % >0  �G  set_rank_timeadd_repeat_timer
Timer getDeltaTimesetStringtimer_timeself  fn 	 [   ^ 4  7 >4  7>  T�) T�) H idtonumber            a  b   �	   ^�V"87   77>7  77>4 7 ' >4  >D�7 9BN�4 7	7 1
 >  7 >4 %  $>7  74  7> 7 > =7  74 77>  7 >7 7  T�  7 7 >4  7> 7 >  7  >7  7 >7 :T�7 7 7>0  �G  reloadDataaddChildswallowOnTouchaddObjectcreateCCArraycreate_rank_list	rankrank_contentsetDeltaTimecurrent_userGlobalSettingplayer_beanspriteFrameByNamesharedSpriteFrameCacheCCSpriteFrameCachesetDisplayFramerank_avatar$[RankUPlugin:rank] avatar_png: 
printget_player_avatar_png_name 	sortrank_list
pairsremove
table
scorechampion_beansnick_namesetStringchampion_name


     ""self  _rank_list  _first ]  k v  avatar_png >rank #menus  �  u2  :  1 : 1 : 1 : 1 : 1
 :	 0  �G   	rank setDeltaTime getDeltaTime rank_with_data create_rank_listrank_list$+&>-O@sQuutheClass   `   
 z4   % > 2   5  4  1 : 0  �G   	bindRankUPluginRankItemrequirezzz  