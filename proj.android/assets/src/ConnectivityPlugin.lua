LJ @src/ConnectivityPlugin.luag   	4  7'  4 7   > =G  do_network_check__bindadd_timer
Timerself  
 �   Cn4   7> 7% >4 %  4 7 > =4 7 ' ' > 	 T�4
 % >7   T
�7  7>  T�7  7>G  7   T
�7  7>  T�4
 % >G  % 7   T�% 4  >  7 >G  show_network_disconnected&nework_check root node is not nilrootNode"nework_check root node is nilis already dialog showingdismissisShowing network_disconnected_dialog&resume_check network is connected
cclogtsublenstringnetwork_state=> 
printIsNetworkConnectedgetcreateDDZJniHelper
self  Djni_helper ?network_state ;str 0 X   )+     7   % > G  �on_set_network_intentmessageJavajni_helper  #    ,4   > G  endtolua     / G   key   �  %I"4   7>% 7   T�% 4  >4 7 > 7% > 7	1
 > 71 > 71 > 7>: 0  �G   network_disconnected_dialog	show setOnKeypad setNoButton setYesButton/网络连接已断开，请设置网络！setMessagecreateYesNoDialog
printroot node is not nilrootNoderoot node is nilcreateDDZJniHelper	


self  &jni_helper !str  dialog 
 9   5+     7   > G   �network_checkself  �  !41  4 7 % >4 7 % >4 7 % >0  �G  on_network_change_disable on_network_change_availableon_resumeregisterScriptObserverNotificationProxy self  nwck  �  
81 :  1 : 1 : 1 : 0  �G   init_connectivity show_network_disconnected do_network_check network_check,6.88theClass   G    >2   5   4   1 : 0  �G   	bindConnectivityPlugin>>>  