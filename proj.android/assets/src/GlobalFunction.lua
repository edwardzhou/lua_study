LJ @src/GlobalFunction.luaö  
)j4  7  % > 7>'è T 7 > 7>'   T 7>'   7> ' I		 7
 >4		 
  >	K÷G  scaleNodeobjectAtIndex
countgetChildrengetChildrenCountsetScalegetTagCCNode	cast
tolua				



node  *scaleFactor  *node $children 
 
 
index child      4   > 4  7> 7  >G  pushScenesharedDirectorCCDirectorcreateGuifanEndScenescene 	 V    	4     7  >   7  > G  endToLuasharedDirectorCCDirector    82  4    >D
 	 >  T	4 7	 
 >BNôH insert
table
pairssrc  fn  result   _ 
v  
 | 
  /'4   >D4 7  	 >BNùG  insert
table
pairsdest  src    _ value   W   '-4   >D9 BNýG  
pairsdest  	src  	  k v   K   32  4  7   >H 
merge
tablearray  result  Á   ?94   > % 4   >D T 4	  
 >	$	T 	 4
   >
$
BNðH 
pairstostring
table  s  str   _ _v    
  2F%  4   >D 4 	 >%	 $	BNø % $H ],  tostring
pairs[ table  str 	 	 	_ _v    	  1O2     'ÿÿ' I4  7  6 >KùH insert
tablearray  result   index   
  ;W	) 4    >D 	 >  T	) TBN÷H 
pairsarray  func  result 
 
 
_ obj   f   
0f +    >+  T) T) H           getObjectValueFuc elementValue obj     ~b2  4    >D 6	 >1	 4
 7

 	 >
 
 T4 7 6 >0 BNí0  H insert	some
table 
pairs

array  getObjectValueFuc  newArray   elementIndex _  elementValue search exist  m  o
   T4  74  7  > =   T) T) H 	trimlenstring str   t   s  7  % >   T% T  7  %  >H 	.*%S^%s*()
matchs  from  ¾  ._x2  %   $'   7  ' >  TQ	  T T4 7	 
 > 	  7 
  >
 	  Tê   T
	  7 
 > 4 7	 
 >H subinsert
table	find	(.-)	








str  /pat  /t -fpat *last_end )s $e  $cap  $ á  I  4  7   >	  T  7 ' > 4  7  'ÿÿ>   T 7'   > H sub	findstring							str   char   return_value char_index  X   	4  7% 4   >$>G  tonumbersleep executeosn  
 ¨     T) H 4    > T) H 4   >4 (  'ÿÿ#> T) H ) H tostringnumber	typeÿ					

x      
º  7  % >  T) H ) H :[A-Za-z0-9%.%%%+%-]+@[A-Za-z0-9%.%%%+%-]+%.%w%w%w?%w?
matchemail   ¿   ' mÁ4     7  > 2 (  7 % >:  7 % >:  7 % >:  7 %	 >:
  7 % >:  7 % >:  7 % >:  7 % >:  7 % >:  7 % >:  7 % >:  7 % >:  7 % >:  7 % >:  7 % >:  7 % >:  7 %  >:   7 %! >:!4" 7!>  T7:!4# 7$% T%& :!H 1.7	testrun_envGlobalSettingis_blankpkg_resource_versionpkg_buildpkg_version_codepkg_version_name
appidid
hw_iddisplayhw_displayproducthw_productdevicehw_device
boardhw_boardcpu_abihw_cpu_abimanufacturehw_manufactureos_releasehw_version
modelhw_model
brandhw_brand	imsihw_imsimachw_mac	imeihw_imeigetStringForKeysharedUserDefaultCCUserDefault					




userDefault idevice_info [ ò  [%     T4 +  >D  T+ 6TBNù4 %  % $> % $H  	.pnglevel pic is 
cclog
pairsduangong





levels_hanzi levels_pinyin level_hanzi  level   k v   µ  
 $[¦4   7> 7% >  T4 %  $>4  > 7 > T4 % >  7  >  7	 ) >G  setVisiblesetDisplayFrame)set_level_sprite game_level is=> nilget_level_pic&set_level_sprite game_level is=> 
cclogduangong.pngspriteFrameByNamesharedSpriteFrameCacheCCSpriteFrameCache



sprite  %game_level  %cache  level_frame picname 
  Fµ4  +  >D4 %  %	 
 $
>BN÷+  4   > 64 % 4   >%  $>H 	 is tostringweekday for tonumber:kv wkd[
cclog
pairswkd wk_int  
 
 
k v  weekday 
 z   
¾  7   >4   7 7 >G  stroke_colorstroke_sizeset_strokesetStringlabel  str   ÿ  ]Ã4      >7   T4  7 7> 7> =:   7 > 77   7 > >:	 :
 T7  7 7> 7> =7  7 7> 7> =  7 >  7 >7 7	    7 >  7 >7 7	  7  74 	 
 > =7  7	  7 > =G  setAnchorPointccpsetPositionygetPositionYxgetAnchorPointgetPositionXgetTextureRectsetTextureRectsetTexturestroke_colorstroke_sizegetZOrderaddChildgetParentgetTexturegetSpritecreateWithTextureCCSpritestroke_spritecreate_stroke										label  ^size  ^color  ^stroke Xx <y  ¨	  ÝÔ-  7  >	  T  7 > 7  ' >  7 > 7>7  7 > 7>7  7 >7  7 >7	4
  7			


>4 
  7	 >	  7
 >
 =
  7	 >	  7
 >
  7  >  7 ) >4   >4   >4   > 7>'  ' ' I  7 ) >  7 4 74 7> 7	4 7> > =  7 >Kã 7>  7  >  7 	 >  7 
 >  7 ) > 7 >H endToLua
visitcossin	mathsetPositionsetFlipY
beginccpSubsetVisiblesetColorisVisiblegetColorgetPositionYgetPositionXccpcreateCCRenderTextureyxgetAnchorPointheight
widthgetContentSizegetTexturereorderChildgetParentgetZOrder <£ô¥Æ¾Çü					

	                     !!!###%%%%&&&&(((())))****,label  size  color  label_tx_width {label_tx_height tlabel_anchor_x plabel_anchor_y lrt doriginalPos \originalColor YoriginalVisibility VbottomLeft HpositionOffset @position <  i  µ	  8 A¨ 1   5  1  5  1  5  4  1 : 4  1
 :	 4  1 : 1  5  4  1 : 4  1 : 4  1 : 4  1 : 4  1 : 1  5  1  5  1  5  1  5   1 ! 5 " 1 # 5 $ 1 % 5 & 1 ' 5 ( 3 ) 3* 1+ 5, 1- 5. 3/ 10 51 12 53 14 55 16 57 0  G  create_stroke set_stroke set_string_with_stroke get_weekday   æææ¥ææä¸ææäºææä¸ææåææäºææå­set_level_sprite get_level_pic   duangongchanggongtianhupinnong	yufulierenzhongnongfunongzhangguishangren	yayixiaocaizhudachaizhuxiaodizhudadizhuzhixiantongpan
zhifuzhongdu
xunfuchengxianghoujueqinwangmingjunrenzhu  ç­å·¥é¿å·¥ä½æ·è´«åæ¸å¤«çäººä¸­åå¯åææåäººè¡å½¹å°è´¢ä¸»å¤§è´¢ä¸»å°å°ä¸»å¤§å°ä¸»ç¥å¿éå¤ç¥åºæ»ç£å·¡æä¸ç¸ä¾¯çµäº²çæåä»ä¸»device_info check_email 
isnan 
sleep 	trim 
split trim_blank is_blank  unique 	some reverse toString 	joinclone_table  copy_kv combine filter
tableendtolua endtolua_guifan scaleNode        %  ' + ' - 1 - 7 3 9 D 9 F M F O U O W ` W b m b q o v s  x     ¸  ¿ º ß Á á ü $2&4<5A>RCTlevels_hanzi 2levels_pinyin wkd 
  