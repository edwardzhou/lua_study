LJ  @framework/client/transition.lua 1?4  74  > = 4  7 ' ' > T4  7 ' > )  +  6  T4 +  6>	  T		 7
   T > T	 7
  >  T  H createunpackCCEASEsubtostring
upperstring									ACTION_EASING action  2easingName  2more  2key +easing cls count  default   Æ 
W¥m!4  4 7  > % >4  > 7  T4 7> T+   4 7> = T+   7> 2  4	 7
>'   T  4  7 >9  974  > T)    T  4  7	 >9 '  T
+ 7 >   7  >T  7 8>H  runActionsequenceCCCallFuncfunctiononCompletecreateCCDelayTime
delaytonumberunpack
table	typeeasingtotable0transition.execute() - target is not CCNodeisnull
toluaassert newEasing transition target  Xaction  Xargs  Xactions #5delay 2onComplete # ý 	 9 4  4 7  > % >4  777>+  7    @  executerotate	timecreateCCRotateTo1transition.rotateTo() - target is not CCNodeisnull
toluaasserttransition target  args  action  Þ  "Y·4  4 7  > % >  7 >7  T 7  T 4  77	4	
 
  >	 =+  7  	 
 @  executeccp	timecreateCCMoveToyxgetPosition/transition.moveTo() - target is not CCNodeisnull
toluaasserttransition target  #args  #tx ty  x y action 	 ¹ 
 LÐ4  4 7  > % >7  T'  7  T'  4  774	  	 > =+  7
    @  executeccp	timecreateCCMoveByyx/transition.moveBy() - target is not CCNodeisnull
toluaasserttransition target   args   x y action 	  	 <ç4  4 7  > % >4  77>  7 '  >+  7    @  executesetOpacity	timecreateCCFadeIn/transition.fadeIn() - target is not CCNodeisnull
toluaasserttransition target  args  action 
  	 <ù4  4 7  > % >4  77>  7 'ÿ >+  7    @  executesetOpacity	timecreateCCFadeOut0transition.fadeOut() - target is not CCNodeisnull
toluaasserttransition target  args  action 
 Æ 
  O
4  4 7  > % >4 7>'   T'  T'ÿ  T'ÿ 4  77 >+  7	    @  execute	timecreateCCFadeToopacity
toint/transition.fadeTo() - target is not CCNodeisnull
toluaassert						transition target  !args  !opacity action  ¶ 
 G~¬4  4 7  > % >)  7  T4  74 7>4 7> = T)7	  T7
  T#* 7	  T4 7	> T  7 > 7
  T4 7
> T  7 > 4  74 7> 	 > +  7    @  executegetScaleYgetScaleXscaleYscaleX	timetonumbercreateCCScaleTo
scale0transition.scaleTo() - target is not CCNodeisnull
toluaassert



transition target  Hargs  Haction 
>scaleX "scaleY  " Ç 
  8Ú	  '  TG    '  T8 H 8 '   ' I4   7 6	 > KøH createWithTwoActionsCCSequenceactions  prev 	 	 	i  °   6ñ+      T+    7   ) > 4  + >   T +  > G   function	typeremoveFromParentAndCleanupremoveWhenFinished target onComplete  
Aæ2  4   > T'   T  7 ) >  4  7	 >9  4  7>9  4 7 >9  T  T  4  71		 >9)   '  T+  7
 > T8  7 	 >0  H  runActionsequence CCCallFuncnewAnimatedisplayCCShowcreateCCDelayTimesetVisiblenumber	type



transition target  Banimation  BremoveWhenFinished  BonComplete  Bdelay  Bactions @action / Ù  44  7  >)  4  > T'   T  7 ) >+  72 4 	 7
 >;4 	 7>;;>4	  7	 > T4	  7 >   7
  >H  runActionCCRepeatForeverCCShowcreateCCDelayTimesequencesetVisiblenumber	typenewAnimatedisplay






transition target  5animation  5isRestoreOriginalFrame  5delay  5animate /action .sequence  {  $¦4  7  >  T+   7  >G  removeActionisnull
toluaactionManager action     $½4  7  >  T+   7  >G  removeAllActionsFromTargetisnull
toluaactionManager target   z  $Ì4  7  >  T+   7  >G  pauseTargetisnull
toluaactionManager target   {  $Û4  7  >  T+   7  >G  resumeTargetisnull
toluaactionManager target   è  a ~¶ â2   2  3 4 ;: 3 4 ;:3 4 ;:3 4
 ;:	3 4 ;:3 4 ;:3 4 ;:3 4 ;:3 4 ;:3 4 ;:3  4 ;:3# 4" ;:!3& 4% ;:$3) 4( ;:'3, 4+ ;:*3/ 4. ;:-32 41 ;:035 44 ;:338 47 ;:63; 4: ;:93> 4= ;:<4?  7@> 7A>1B 1D :C 1F :E 1H :G 1J :I 1L :K 1N :M 1P :O 1R :Q 1T :S 1V :U 1X :W 1Z :Y 1\ :[ 1^ :] 1` :_ 0  H   resumeTarget pauseTarget stopTarget removeAction playAnimationForever playAnimationOnce sequence scaleTo fadeTo fadeOut fadeIn moveBy moveTo rotateTo execute getActionManagersharedDirectorCCDirector   CCEaseSineOutSINEOUT   CCEaseSineInOutSINEINOUT   CCEaseSineInSINEIN   CCEaseRateActionRATEACTION   CCEaseOutOUT   CCEaseInOut
INOUT   CCEaseInIN   CCEaseExponentialOutEXPONENTIALOUT   CCEaseExponentialInOutEXPONENTIALINOUT   CCEaseExponentialInEXPONENTIALIN   ³æÌ³æÌþCCEaseElasticOutELASTICOUT   ³æÌ³æÌþCCEaseElasticInOutELASTICINOUT   ³æÌ³æÌþCCEaseElasticInELASTICIN   ³æÌ³æÌþCCEaseElasticELASTIC   CCEaseBounceOutBOUNCEOUT   CCEaseBounceInOutBOUNCEINOUT   CCEaseBounceInBOUNCEIN   CCEaseBounceBOUNCE   CCEaseBackOutBACKOUT   CCEaseBackInOutBACKINOUT   CCEaseBackInBACKIN! # $ $ $ $ % % % % & & & & ' ' ' ' ( ( ( ( ) ) ) ) * * * * + + + + , , , , - - - - . . . . / / / / 0 0 0 0 1 1 1 1 2 2 2 2 3 3 3 3 4 4 4 4 5 5 5 5 6 6 6 6 7 7 7 7 8 8 8 8 : : : : : : : N  m ¥   ¾ · Ö Ð ì ç þ ù @,cZfª¦Á½ÐÌßÛáátransition }ACTION_EASING |actionManager [!newEasing    