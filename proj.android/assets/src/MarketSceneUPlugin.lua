LJ @src/MarketSceneUPlugin.lua J})     T4 ' ' > T@  T7  T 4  7> 4 >5 4 %  $>4  7	+   64
 +	 7		+
 > = 74 '  '	 >T4 7 7' >% > 7	+  	 6	4	
 +
 7

+ >	 = T  T+   T  T H  cellTouchednumberOfCellsCCLayergetChildByTag	cast
toluaaddChildshow_buy_notify__bindinit_item3[MarketSceneUPlugin.create_product_list] a1 =>
printa3createMarketItemcreateCCTableViewCellcellAtIndexCCSizeMakecellSize												






product_list self fn  Ktable  Ka1  Ka2  Kr Ia3 4 Û 	$T#  T0  4   71 >4  7 4 ' 'r> = 74 '  '
 > = ' 'ÿÿI	 7
 >Kû0  H G  updateCellAtIndexCCPointMakesetPositionCCSizeMakecreateWithHandlerLuaTableView createLuaEventHandler""#self  %product_list  %h 	t 	
  index    904  % >4  7> 7% >4  %  $>) 4 4 7	>  T!4  >  T4  %
 4 7	$>4 4 7	% >4  >D4	 7		
  >	
	  T
		  T
) TBNóH 	findstring
pairs,
splitL[MarketSceneUPlugin:is_cm_sim_card] GlobalSetting.cm_sim_card_prefix=> cm_sim_card_prefixGlobalSettingis_blank1[MarketSceneUPlugin:show_buy_notify] imsi=> hw_imsigetStringForKeysharedUserDefaultCCUserDefault([MarketSceneUPlugin:is_cm_sim_card]
print					



self  :imsi .is_cm_sim_card (cm_sim_card_flags   k v  f_index  K   R 4    % >G  ui.cancel_buy_prop success	dump     data   H   S 4    % >G  ui.cancel_buy_prop fail	dump     data   ¦ CC4  7 T4 % >0 94  7> 7% >4 %  > 7	% %
 >4  >  T0 #4 7 % >4 7 '  >4 7  >4 %  	 >4  7 7% 2	 :	:	1
 1 >0  G  G  G    prop_idtrade_numui.cancel_buy_proptriggerhall_server_websockettrade_id:%s, prop_id:%s
cclogsub_	findstringis_blanksetStringForKeyon_bill_cancelgetStringForKeysharedUserDefaultCCUserDefault#run env is test, do not cancel
print	testrun_envGlobalSetting						




self  Duser_default 7params 3index trade_id prop_id  «  	 ^p+   7   +  7+  7+  7  %  %  %	 
 $
4  7> 7% 	 $	>G   do_billing_messageJavacreateDDZJniHelper_prop_idtrade_numcpparambillingIndexdata billingIndex cpparam trade_id prop_id params jni   &l'+   7 >+  : 1  >0  G    cur_buy_datahide_progress_message_box&&''self data  confirm_buy    .WL4  % >4 7>  T  7 % >0   7 % >:   7	 7 7
>1 : 0  G  G   after_trigger_successidbuy_propcur_product æ­£å¨è·åéå·ä¿¡æ¯...show_progress_message_box3æ­¤éå·æ æ¶æ¯ä»£ç ï¼æ æ³å®æè´­ä¹°.show_back_message_boxconsume_codeis_blank)[MarketSceneUPlugin:show_buy_notify]
print<<LLLself  product   ñ   '¥4  % >7  7) >7  77 ) >)  :   7 % >  7 7	 7
>4 7   >: G  do_on_buy_message__bindafter_trigger_successidcur_productbuy_propè´­ä¹°éå·show_progress_message_boxremoveChildrootNodedismissyes_no_dialog([MarketSceneUPlugin:do_buy_product]
printself    ä   /D¯4  % >: 4 7> T"4 >: 7  77	>7  7
4 7   > =7  74 7   > =7  77 >7  7>T  7 >G  	showaddChildrootNodedo_cancel_buysetNoButtondo_confirm_buy__bindsetYesButtoncontentsetMessagecreateYesNoDialog3yes_no_dialog1result_codetostringcur_buy_data+[MarketSceneUPlugin:do_on_buy_message]
print




self  0notify_msg  0    .IÀ4  % >7   T7  7) >7  77 ) >)  :   7 % >% 7	 7
% 7	 7$4  7> 7 >  7 7	 77	 7>G  prop_idtrade_numtiming_buy_propmessageJavacreateDDZJniHelpersend_num__sms_contentcur_buy_datasend_sms_ æ­£å¨åéä»æ¬¾è¯·æ±...show_progress_message_boxremoveChildrootNodedismissyes_no_dialog([MarketSceneUPlugin:do_confirm_buy]
printself  /msg jni_helper  ¼   Ó4  % >7  7) >7  77 ) >)  : G  removeChildrootNodedismissyes_no_dialog'[MarketSceneUPlugin:do_cancel_buy]
printself   Ï   -Ú4  % >  7 >4  % 4 7 >$>4 7 > T7 )  :   >G  functionafter_trigger_success	typeH[MarketSceneUPlugin:do_on_trigger_success] after_trigger_success=> hide_progress_message_box/[MarketSceneUPlugin:do_on_trigger_success]
printself  data  fn  Ô  
 1ç4  % >  7 >4 7>  T7:   7 7 >4 7 >	 T7 )  :   >G  functionafter_trigger_failure	typeshow_message_boxfailure_msgresult_messageis_blankhide_progress_message_box/[MarketSceneUPlugin:do_on_trigger_failure]
print		self  data  fn  Ê   ö4  % >7 >4  7> 7>G  popScenesharedDirectorCCDirectorinactive_market_scene_fn8[FullMubanStyleLayer] call inactive_market_scene_fn
printself   Ä   ü  7  % >  7  >4 7   >: G  on_get_tab__bindafter_trigger_successshop_prop_listè·ååååè¡¨show_progress_message_boxself  type   x 	  %' ' ' I  7  4  > =KùG  tostringcreate_one_tabself    index  @    +     7   + > G   set_tab      self name  	 !!4   >  7 6  T0 t7 4  >64  7>4  7 % '	 >4  7	%
 >4  7	%	 >4 	 7
  >4	 
	 7		4  7	% >4  7	% > =	4
 
 7

 >

 7
	 >
 7
'  >
 7
'è>
 7
1 >4  7
 > 7) > 7 > 7 >7  7 > 74 4  > ' > =::
: 7>: 7 >:7 90  G  G  getPositionXxgetPositionYy	nametoggle	menuccpsetPositionmenu_layeraddChild!ignoreAnchorPointForPositioncreateWithItemCCMenu registerScriptTapHandlersetTagsetSelectedIndexaddSubItemCCMenuItemToggleCCMenuItemSpritexuanxiangka1.pngxuanxiangka2.pngcreateWithSpriteFrameNameCCSpritedefaultCCLabelTTFcreateCCLayertonumbertabnames_hanzi	tabstostringæP					




  !!!self  tab_seq  name zname_hanzi 
player llabel emenu_normal_sprite `menu_click_sprite [toggle_sub_normal Utoggle_sub_selected Gtoggle Bmenu - Ü  
 #«4  % >4  % >7 76  7 7>:  7	 7>G  set_tabcommoditycreate_product_listattach_view	type	tabsdata=>	dumpon get tab data
cclogself  data   í  c²4  %  $>4  > 7  T4  % >G  4 7 >DK T,7  T  7 	 >G  T@7 7	>  T7
  77	>7 7'	 >7 7)	 >7 7)	 > 74	 7
7 >	 =T77  T 74	 7
7>	 =7 7'	  >7  T7 7)	 >7 7)	 >BN³: G  	nameyxccpsetPositionsetEnabled	menusetVisiblesetSelectedIndextoggleaddChildcontent_layergetParentget_prop_listattach_view	tabs
pairs"name == self.last_tab, returnlast_tabtostringset tab 
cclog





self  dname  dN N Nk Kv  K è   "P	Ä1 :  1 : 1 : 1 : 1	 : 1 :
 1 : 1 : 1 : 1 : 1 : 1 : 1 : 1 : 1 : 1 : 0  G   set_tab on_get_tab create_one_tab init_tabs get_prop_list on_close_click do_on_trigger_failure do_on_trigger_success do_cancel_buy do_confirm_buy do_on_buy_message do_buy_product show_buy_notify on_bill_cancel is_cm_sim_card create_product_list%  8 ' L :  N ¤  µ ¦ È · Ï Ê Ü Ñ ë Þ ñ í ÷ ó ý ù  ÿ '"C)DDtheClass  # Ø   . Í4   % > 4   % > 4   % > 4   % > 2  5 4 1 :0  G   	bindMarketSceneUPlugin
cjsonBackMessageBoxLayerYesNoDialog3MarketItemrequire              	 M	 MMjson   