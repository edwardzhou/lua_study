LJ @ForgetPasswordScene.luaD    4   7  % @  ForgetPasswordScenenewScenedisplay 2     4   7  @  newForgetPasswordScene    �  64  7 % >  T�+  7 7 7> =G   �getTextsetStringfeedback_ttfchangedCCEditBox	cast
toluaself strEventName  pSender  edit  �  E�
4  : 4 7   >: 1 4  7>4 %	  ) %
 >% :   7 7 '' )	 '
e >: 7  74 >7  7' >  7 7 '' )	 '
e >: 4 >  7  > 7% > 7 >4 7 4 7>0  �G  content_scale_factorGlobalSettingrootNodescaleNodesetContentbiaoti08.pngsetTitleaddChildcreateFullMubanStyleLayermail_box_layermail_boxsetMaxLengthkEditBoxInputModeNumericsetInputModeuser_id_box_layeraddEditboxuser_id_boxkuang_a.pnginput_pngForgetPassword.ccbiCCBReaderLoadcreateCCBProxy do_ui_ok_btn_clicked__bindon_ui_ok_btn_clickedforget_pwd_sceneccb
self  FeditBoxTextEventHandle 	=ccbproxy 9node 3layer   � 	  7_*4  % >4 7  7> = 4  >  T�  7 % >G  4 7  7> = 4  >  T�  7 %	 >G  4
  >  T�  7 % >G    7 % >  7   >G  forget_password 提交取回密码信息...show_progress_message_box$请输入正确的邮箱地址.check_email邮箱地址不能为空mail_box帐号不能为空show_message_boxis_blankgetTextuser_id_boxtrim_blank/[ForgetPasswordScene:do_ui_ok_btn_clicked]
print				
self  8tag  8sender  8user_id 
.mail  �   @4  % >  7 >  7 % >G  /提交信息成功, 请注意查收邮件.show_message_boxhide_progress_message_box0[ForgetPasswordScene:do_on_trigger_success]
printself  data   �   #H	4  % >  7 >% : 4 7>  T�7:   7 7 >G  show_back_message_boxresult_messageis_blankP取回密码失败, 请检查您输入的帐号与绑定邮箱是否正确.failure_msghide_progress_message_box0[ForgetPasswordScene:do_on_trigger_failure]
print	self  data   �   "# T4   % > 4   % > 4  % 1 > 5  1  5  4  1	 : 4  1 :
 4  1 : 4  1 : 4  7  4 > 4  7  4 > G   LoginServerConnectionPlugin	bindUIControllerPlugin do_on_trigger_failure do_on_trigger_success do_ui_ok_btn_clicked 	ctorcreateForgetPasswordScene  ForgetPasswordScene
class$src.LoginServerConnectionPluginsrc.UIControllerPluginrequire
(
*>*@F@HQHSSSSTTTTT  