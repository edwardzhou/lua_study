LJ @ForgetPasswordScene.luaD    4   7  % @  ForgetPasswordScenenewScenedisplay 2     4   7  @  newForgetPasswordScene    �  64  7 % >  T�+  7 7 7> =G   �getTextsetStringfeedback_ttfchangedCCEditBox	cast
toluaself strEventName  pSender  edit  �  ;v
4  : 4 7   >: 1 4  7>4 %	  ) %
 >% :   7 7 '' )	 '
e >:   7 7 '' )	 '
e >: 4 >  7  > 7% > 7 >4 7 4 7>0  �G  content_scale_factorGlobalSettingrootNodescaleNodesetContentbiaoti08.pngsetTitleaddChildcreateFullMubanStyleLayermail_box_layermail_boxuser_id_box_layeraddEditboxuser_id_boxkuang_a.pnginput_pngForgetPassword.ccbiCCBReaderLoadcreateCCBProxy do_ui_ok_btn_clicked__bindon_ui_ok_btn_clickedforget_pwd_sceneccb
self  <editBoxTextEventHandle 	3ccbproxy /node )layer  �   6^(4  % >4 7  7> = 4  >  T�  7 % >G  4 7  7> = 4  >  T�  7 %	 >G  4
  >  T�  7 % >G    7 % >  7 4 >G  feedbackforget_password提交信息...show_progress_message_box$请输入正确的邮箱地址.check_email邮箱地址不能为空mail_box帐号不能为空show_message_boxis_blankgetTextuser_id_boxtrim_blank/[ForgetPasswordScene:do_ui_ok_btn_clicked]
print				
self  7tag  7sender  7user_id 
-mail  �   >4  % >  7 >  7 % >G  /提交信息成功, 请注意查收邮件.show_message_boxhide_progress_message_box0[ForgetPasswordScene:do_on_trigger_success]
printself  data   �   #F	4  % >  7 >% : 4 7>  T�7:   7 7 >G  show_message_boxresult_messageis_blank*提交信息失败，请稍后重试.failure_msghide_progress_message_box0[ForgetPasswordScene:do_on_trigger_failure]
print	self  data   �   "# R4   % > 4   % > 4  % 1 > 5  1  5  4  1	 : 4  1 :
 4  1 : 4  1 : 4  7  4 > 4  7  4 > G   LoginServerConnectionPlugin	bindUIControllerPlugin do_on_trigger_failure do_on_trigger_success do_ui_ok_btn_clicked 	ctorcreateForgetPasswordScene  ForgetPasswordScene
class$src.LoginServerConnectionPluginsrc.UIControllerPluginrequire
&
(<(>D>FOFQQQQRRRRR  