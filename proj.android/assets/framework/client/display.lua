LJ @framework/client/display.luaT  !³+  7 9 G   TEXTURES_PIXEL_FORMATdisplay filename  format      Ë4  74  7> =   T% :H <unknown-scene>	namecreateCCSceneextendCCSceneExtendname  scene   HÔ4  74  > = 4  7 ' ' > T4  7 ' >  T4 7+  7>4	 7
'  >6+  76  T4 +  76>  T(  	 T
	 7
    T >  T	 7
   >  T4 % 4  > =H   Bdisplay.wrapSceneWithTransition() - invalid transitionType %sechoErrorcreateunpackrandom	mathSCENE_TRANSITIONS	keys
tableRANDOMCCTRANSITIONsubtostring
upperstringµæÌ³¦þdisplay scene  ItransitionType  Itime  Imore  Ikey Bkeys cls count  default    	 ^¡	+   7 >  T  T+ 7     >  +   7  >T+   7  >G   runWithScenereplaceScenewrapSceneWithTransitiongetRunningScene	sharedDirector display newScene  transitionType  time  more   A   µ+     7   @  getRunningScenesharedDirector  <   ¾+     7   > G  
pausesharedDirector  =   Ç+     7   > G  resumesharedDirector  S    ä4   7  4  7> ?   createCCLayerextendCCLayerExtend Q    4   7  4  7> ?   createCCNodeextendCCNodeExtend k   4  74  7  > ?  createCCClippingRegionNodeextendCCNodeExtendrect  	 ö U±)     T4   7> T54 7  >	  T+  74 7  ' > =   T%4   7 > T+  76   T4  7	+  76 >4   7  > 4  7	4
 >T4   7  >   T4 7 >  T  T 7  >T4 % 4   > =H  tostring=display.newSprite() - create sprite failure, filename %sechoErrorsetPositionextendCCSpriteExtend%kCCTexture2DPixelFormat_RGBA8888setDefaultAlphaPixelFormatCCTexture2DTEXTURES_PIXEL_FORMATcreateWithSpriteFramesubnewSpriteFrame	bytestringcreateCCSpriteF




display filename  Vx  Vy  Vsprite Tframe  Y  Û+  7   +  7+  7@  cycxnewSpritedisplay filename  	  	 1Zì4  '  '  +  7+  7>4  7   >  T4 % 4   > =G  4 >'&:	'&:
'):'): 7> 7 >+  7 +  7'  '  >H  LEFT_BOTTOM
alignsetTexParametersgetTexture
wrapT
wrapSmagFilterminFilterccTexParamstostringLdisplay.newBackgroundTilesSprite() - create sprite failure, filename %sechoErrorcreateCCSpriteheight
widthCCRectMake		

display filename  2rect 	)sprite #tp  k   ²4  74  7  > ?  createCCCircleShapeextendCCShapeNodeExtendradius  	 ¶ 
   AÐ'  '  4    > T7 77 77 77 7 4 7	4
  74   	 > = =  7  >H setPositionCCSizecreateCCRectShapeextendCCShapeNodeExtend
widthheight	sizeyxoriginuserdata	type					
width  !height  !x y  rect  ¿  
 $Mÿ	4   > T' 4  7  >4   >T4 8	 		8
 

> 	 7
 >ANó4 74	  7 > ?  CCPolygonShapeextendCCShapeNodeExtendaddccpipairscreateCCPointArraynumber	typepoints  %scale  %arr   i p   ®  8  7  +  76>  T  T  7   >G   setPositionANCHOR_POINTSsetAnchorPointdisplay target  anchorPoint  x  y    1+  7     T+ ! >    T+ !>    F  
contentScaleFactordisplay round x  y  scale  Ø  W³+  7 6  T4  7+  7 6>+  7   >4  74 >T+  7   >G   %kCCTexture2DPixelFormat_RGBA8888addSpriteFramesWithFilesetDefaultAlphaPixelFormatCCTexture2DTEXTURES_PIXEL_FORMATdisplay sharedSpriteFrameCache plistFilename   image    ¿  HÈ+   7   >  T+ 7 >G   !removeSpriteFrameByImageNameremoveSpriteFramesFromFilesharedSpriteFrameCache display plistFilename  imageName   Å  2Ò+   7   >4  7> 7  >G  removeTextureForKeysharedTextureCacheCCTextureCacheremoveSpriteFrameByNamesharedSpriteFrameCache imageName      4  74  7   T' > ?  createCCSpriteBatchNodeextendCCNodeExtendimage  capacity   Ö  :£+   7   >  T4 % 4   > =H tostring6display.newSpriteFrame() - invalid frame, name %sechoErrorspriteFrameByNamesharedSpriteFrameCache frameName  frame 	 Ï   /¶4   7  >  T4 7 >  T  T 7  >H setPositionextendCCSpriteExtendcreateWithSpriteFrameCCSpriteframe  x  y  sprite  © &¢Õ2  '    T   'ÿÿ  	 I4  7  
 >+   7 >  T4 % 4  > =G    9KéH tostring1display.newFrames() - invalid frame, name %sechoErrorspriteFrameByNameformatstring				




	sharedSpriteFrameCache pattern  'begin  'length  'isReversed  'frames %step $last "	  index frameName frame  é  Eù  4   7>'  ' I	 76
 >Kû  T 4  7  @ createWithSpriteFramesCCAnimationaddObjectcreateCCArrayframes  time  count array   i  B   4   7  @ createCCAnimateanimation   2  á	 2   4  % >4  % >4  % >4  % >4  % >4  7>4  7	>4
  7> 7> 7>2 7:7:: 7 77 7' 4	  	 T
(4	 7		4
 >	5	 4	 	 T	4	 !	!	5	 T	4	 	 T	4	 !	!	5	 T	4	 	 T	
4	 	 T	4	 !	!	5	 T	5 5 
 7	4 4 4 >	
 7	>	: 2
 7	:
7	:
:
 7
 7

:
 7
 7

:
 7
 
 
:
 7
 
 
:
 7
 

 
 
:
  7
 
 
:
! 7
 
 
:
" 7
 

 
 
:
# '
  :
$ 7
 :
% 7
 :
& '
  :
' 7
 7

:
( 7
 7

:
) 4
* 4+ %, 4 > =
 4
* 4+ %- 4 > =
 4
* 4+ %. 7( > =
 4
* 4+ %/ 7) > =
 4
* 4+ %0 7 > =
 4
* 4+ %1 7 > =
 4
* 4+ %2 7 > =
 4
* 4+ %3 7 > =
 4
* 4+ %4 7 > =
 4
* 4+ %5 7$ > =
 4
* 4+ %6 7% > =
 4
* 4+ %7 7& > =
 4
* 4+ %8 7' > =
 4
* 4+ %9 7  > =
 4
* 4+ %: 7! > =
 4
* 4+ %; 7" > =
 4
* 4+ %< 7# > =
 4
* %= >
4
? 'ÿ 'ÿ 'ÿ >
:
> 4
? '  '  '  >
:
@ '
 :
A '
 :
B '
 :
C '
 :
D '
 :
E '
 :
F '
 :
G '
 :
H '
 :
I '
 :
J '
 :
K '
 :
L '
 :
M '
 :
N '
 :
O '
	 :
P '
	 :
Q 2

 4S ( ( >;
4S '  ' >;
4S ( ' >;
4S ' ' >;
4S '  ( >;
4S ' ( >;
4S '  '  >;
4S ' '  >;
4S ( '  > < :
R 2
 (3V 4U ;:W
3Y 4X ;4? '  '  '  > < :Z
3\ 4[ ;:]
3_ 4^ ;:`
3b 4a ;:c
3e 4d ;:f
3h 4g ;4i ;:j
3l 4k ;4i ;:m
3o 4n ;4p ;:q
3s 4r ;:t
3v 4u ;:w
3y 4x ;:z
3| 4{ ;:}
3 4~ ;:
3 4 ;:
3 4 ;:
3 4 ;:
3 4 ;:
3 4 ;:
3 4 ;:
3 4 ;:
3 4 ;:
3 4 ;:
3 4 ;:
3  4 ;:¡
3£ 4¢ ;4i ;:¤
3¦ 4¥ ;4p ;:§
:
T 2
  :
¨ 1
ª :
© 1
¬ :
« 1
® :
­ 1
° :
¯ 1
² :
± 1
´ :
³ 1
¶ :
µ 1
¸ :
· 1
º :
¹ 1
¼ :
» 1
¾ :
½ 1
À :
¿ 1
Â :
Á 1
Ä :
Ã 1
Æ :
Å 1
È :
Ç 1
Ê :
É 4
Ë 7
Ì
1Î :Í 1Ð :Ï 1Ò :Ñ 1Ô :Ó 1Ö :Õ 1Ø :× 1Ú :Ù 1Ü :Û 1Þ :Ý 1à :ß 0  H   newAnimate newAnimation newFrames newSpriteWithFrame newSpriteFrame newBatchNode !removeSpriteFrameByImageName removeSpriteFramesWithFile addSpriteFramesWithFile pixels
round	math 
align newPolygon newRect newCircle newBackgroundTilesSprite newBackgroundSprite newSprite newClippingRegionNode newNode newLayer resume 
pause getRunningScene replaceScene wrapSceneWithTransition newScene setTexturePixelFormatTEXTURES_PIXEL_FORMATZOOMFLIPY   CCTransitionZoomFlipYZOOMFLIPX   CCTransitionZoomFlipXZOOMFLIPANGULAR    CCTransitionZoomFlipAngularTURNOFFTILES   CCTransitionTurnOffTilesSPLITROWS   CCTransitionSplitRowsSPLITCOLS   CCTransitionSplitColsSLIDEINT   CCTransitionSlideInTSLIDEINR   CCTransitionSlideInRSLIDEINL   CCTransitionSlideInLSLIDEINB   CCTransitionSlideInBSHRINKGROW   CCTransitionShrinkGrowROTOZOOM   CCTransitionRotoZoomPAGETURN   CCTransitionPageTurnMOVEINT   CCTransitionMoveInTMOVEINR   CCTransitionMoveInRMOVEINL   CCTransitionMoveInLMOVEINB   CCTransitionMoveInBJUMPZOOM   CCTransitionJumpZoom
FLIPY#kCCTransitionOrientationUpOver   CCTransitionFlipY
FLIPX   CCTransitionFlipXFLIPANGULAR%kCCTransitionOrientationLeftOver   CCTransitionFlipAngularFADEUP   CCTransitionFadeUpFADETR   CCTransitionFadeTRFADEDOWN   CCTransitionFadeDownFADEBL   CCTransitionFadeBL	FADE   CCTransitionFadeCROSSFADE   CCTransitionCrossFadeSCENE_TRANSITIONSccpANCHOR_POINTSCENTER_BOTTOMBOTTOM_CENTERRIGHT_BOTTOMBOTTOM_RIGHTLEFT_BOTTOMBOTTOM_LEFTRIGHT_CENTERCENTER_RIGHTLEFT_CENTERCENTER_LEFTTOP_RIGHTRIGHT_TOPTOP_CENTERCENTER_TOPTOP_LEFTLEFT_TOPCENTERCOLOR_BLACK	ccc3COLOR_WHITE#+# display.c_bottom             = %0.2f+# display.c_top                = %0.2f+# display.c_right              = %0.2f+# display.c_left               = %0.2f+# display.bottom               = %0.2f+# display.top                  = %0.2f+# display.right                = %0.2f+# display.left                 = %0.2f+# display.cy                   = %0.2f+# display.cx                   = %0.2f+# display.height               = %0.2f+# display.width                = %0.2f+# display.contentScaleFactor   = %0.2f+# display.heightInPixels       = %0.2f+# display.widthInPixels        = %0.2f+# CONFIG_SCREEN_HEIGHT         = %0.2f+# CONFIG_SCREEN_WIDTH          = %0.2fformatechoInfoheightInPixelswidthInPixelsbottomtop
right	leftc_bottom
c_topc_rightc_leftcycx	sizecontentScaleFactorgetWinSizekResolutionNoBordersetDesignResolutionSize!FIXED_HEIGHT_ON_SMALL_SCREENFIXED_HEIGHTCONFIG_SCREEN_HEIGHTCONFIG_SCREEN_WIDTHFIXED_WIDTH
upperstringCONFIG_SCREEN_AUTOSCALEheight
widthsizeInPixelsgetFrameSizegetOpenGLViewsharedSpriteFrameCacheCCSpriteFrameCachesharedTextureCacheCCTextureCachesharedDirectorCCDirector0framework.client.cocos2dx.CCShapeNodeExtend,framework.client.cocos2dx.CCSceneExtend,framework.client.cocos2dx.CCLayerExtend-framework.client.cocos2dx.CCSpriteExtend+framework.client.cocos2dx.CCNodeExtendrequireÿÀÀ% ' ' ' ( ( ( ) ) ) * * * + + + - - - - . . . . / / / / 2 2 2 3 3 3 4 4 4 4 4 4 6 6 7 7 9 : : : < < < < < = = = > > ? ? ? @ @ @ A A B B B C C C D D D E E F F F H I M M M N O M R R R S T T T T T T U U U V V V W W W X X X Y Y Y Y Z Z Z [ [ [ \ \ \ \ ] ] ^ ^ _ _ ` ` a a a b b b d d d d d d e e e e e e f f f f f f g g g g g g h h h h h h i i i i i i j j j j j j k k k k k k l l l l l l m m m m m m n n n n n n o o o o o o p p p p p p q q q q q q r r r r r r s s s s s s t t t t t t u u u w w w w w w x x x x x x z z { { { { | | | | } } } } ~ ~ ~ ~                                                                                                                                                 ¡ ¡ ¡ ¡ ¢ ¢ ¢ ¢ £ £ £ £ ¤ ¤ ¤ ¤ ¥ ¥ ¥ ¥ ¦ ¦ ¦ ¦ § § § § ¨ ¨ ¨ ¨ © © © © ª ª ª ª ª ª « « « « « « ¬ ® ® µ ³ Ï Ë ì Ô *!75@>IGfdÌ±ÝÛþì42[P»³ÍÈÕÒ)#;6iUydisplay sharedDirector ösharedTextureCache òsharedSpriteFrameCache îglview ësize èw àh Þscale ÝwinSize .¯round   