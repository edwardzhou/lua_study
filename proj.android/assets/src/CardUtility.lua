LJ @src/CardUtility.luaF   7  7   T) T) H poke_valuex  	y  	 ë
 $µ
b  4  %  $>4 7>4 7::    T  	  T0 ¡4 7	  1
 >4   >D	4  %	 7
% 7% 7$		>BNõ	 T
4 7:8 7:' :0  H 	 T4 7 >  T4 7 >0  H 	 T4 7 >0  H 	 T4 7 >  T4 7 >0  H 	 T4 7 >  T0  H '  T4 77>  T4 7:6 7:7 :0  H 	 T4 7 >  T0  H '  T4 7 >  T4 7  >  T0  H '  T	  T4 7! >  T4 7" >  T0  H '
  T	  T4 7# >  T0  H 0  H H isPlaneWithWingisFourWithTwoPairsisPlaneisThreeStraightisPairsStraightisFourWithTwoSTRAIGHTisStraightisThreeWithPairsisThreeWithOneisBombisThreeisRocketisPairsCardUtilitycard_lengthmax_poke_valueSINGLEpoke_id , poke_id: poke_card_type , poke_card_type: poke_valuepoke: poke_value 
pairs 	sort
tablepoke_cards	NONECardTypecard_typenew	Cardpoke_count
cclog 
	!!%%&&&&((,,----------//3344444455:::;;;;;;<<<===>>>@@EEFFFFFFGGLLLMMMMMMMMMMMMNNSSSSSSTTTTTTTTTTTTUUZZZZZZ[[[[[[\\aabpoke_cards  µpoke_count ³card «  _ 	poke_card  	result #result     `sn-
   T  T4  % >) H 7   T4  % >) H T7  T4  % >) H 7 4 7 T4  % >) H 74 7 T4  %	 >) H 7 4 7
 T74 7
 T4  % >) H 7 7 T4 % 7 % 7>7 4 7 T) H ) H 7  7  T) H 7 7  T) T) H max_poke_valuepoke_cards	BOMB , card_b.card_type => /[CardUtility.comapre] card_a.card_type => 
print6[CardUtility.compare] card_a or card_b is invalid	NONE,[CardUtility.compare] card_b is rocket.,[CardUtility.compare] card_a is rocket.ROCKETCardTypecard_type$card_b is min card, return true%card_a is min card, return falseis_min_card7[CardUtility.compare] card_a = nil or card_b = nil
cclog			


    !!!!!!"""""##%%(((((()),,,,,,,,card_a  acard_b  a Ô  
8t4    >D4 %  %	 6
 7

$
>BNö  6 74 7 T) H )  4    >D  T4 % 	 %
 6 7$>6 7  T) H 6 74 %	 	 $	>BNæ) H start => ].poke_value => poke_cards[ACEPokeCardValuepoke_value, poke_value => [isStraight] n => 
cclog
pairspoke_cards  9  n _  start    index _     \º6 '  4    >D6	 7
	7
 T
 BNø4 % 7%  $>H  , count => *[CardUtility.getPokeCount] poke_card 
cclogpoke_value
pairs






poke_cards  index  poke_card count 	 	 	n _  tmp_card  ²  	3Ê4  % 7  $>7    T) H 8787 T
4 7: 87: ' : ) H ) H card_lengthmax_poke_value
PAIRSCardTypecard_typepoke_valuepoke_cards/[CardUtility.isPairs] #card.poke_cards => 
cclog						card  poke_cards  ö  $9á4  % 7  $>7    T) H 874 7 T874 7 T
4 7	: 87:
 ' : ) H ) H card_lengthmax_poke_valueROCKETCardTypecard_typeBIG_JOKERSMALL_JOKERPokeCardValuepoke_valuepoke_cards0[CardUtility.isRocket] #card.poke_cards => 
cclog						





card  %poke_cards  Ð  	$9÷4  % 7  $>7    T) H 8787 T8787 T
4 7: 87: ' : ) H ) H card_lengthmax_poke_value
THREECardTypecard_typepoke_valuepoke_cards/[CardUtility.isThree] #card.poke_cards => 
cclog						





card  %poke_cards  ç  
>S4  % 7  $>7    T) H 8787 T8787 T	4 7: 87: ' : T8787 T8787 T4 7: 87: ' : 7 4 7	 T) T) H 	NONEcard_lengthmax_poke_valueTHREE_WITH_ONECardTypecard_typepoke_valuepoke_cards6[CardUtility.isThreeWithOne] #card.poke_cards => 
cclog						





card  ?poke_cards 7 °  
,~ª 7     T) H ) ) '  4  >D4
 7

  >
	
 T)  T	
 T) BNñ  T  T
4 7: 67: ' :	 ) H ) H card_lengthpoke_valuemax_poke_valueTHREE_WITH_PAIRSCardTypecard_typegetPokeCountCardUtility
pairspoke_cards
	
card  -poke_cards +has_three %has_two $three_index #  n _  count  ì  	*?Í4  % 7  $>7    T) H 8787 T8787 T8787 T
4 7: 87: ' : ) H ) H card_lengthmax_poke_value	BOMBCardTypecard_typepoke_valuepoke_cards.[CardUtility.isBomb] #card.poke_cards => 
cclog						





card  +poke_cards # Ò  +qå4  % 7  $>7    T) H ) '  4  >D	4	 7		
  >			 T
)  BNõ  T
4 7: 67
:	 ' : ) H ) H card_lengthpoke_valuemax_poke_valueFOUR_WITH_TWOCardTypecard_typegetPokeCountCardUtility
pairspoke_cards5[CardUtility.isFourWithTwo] #card.poke_cards => 
cclog	
card  ,poke_cards $has_four four_index   n 	_  	count  (   
 7  H poke_value  elem   ü >­$4  % 7  $>7    T) 0 1) '  2  4  >D4
 7

  >
	
 T)  	
 T4 7 6>BNî4 7 1	 >  T 	 T4 7:
 67: ' : ) 0  H ) 0  H H card_lengthpoke_valuemax_poke_valueFOUR_WITH_TWO_PAIRSCardTypecard_type uniqueinsert
tablegetPokeCountCardUtility
pairspoke_cards:[CardUtility.isFourWithTwoPairs] #card.poke_cards => 
cclog	
   ###$card  >poke_cards 6has_four 0four_index /two_pairs_array .  n _  count uniq_two_pairs_array  '   	½ 7  H poke_value  obj   í H¬!4  % 7  $>7  '  T   T) 0 62  4  >D4 7	 
 >	 T	4	 7		
 6>	BNò4 7 1	 >     T) 0  H 4 7
 >  T4 7:  67:  : ) 0  H ) 0  H H card_lengthpoke_valuemax_poke_value
PLANECardTypecard_typeisStraight uniqueinsert
tablegetPokeCountCardUtility
pairspoke_cards/[CardUtility.isPlane] #card.poke_cards => 
cclog 				




		   !card  Hpoke_cards @three_cards 5  n _  count  '   	å 7  H poke_value  obj   '   	æ 7  H poke_value  obj   î [¥Ð'4  % 7  $>7  '
  T   T) 0 I2  2  4  >D4	 7		
  >			 T
4
 7

 6>
		 T
4
 7

 6>
BNë4 7 1	 > 4 7 1
 >     T    T) 0  H 4 7 >  T4 7:  67:  : ) 0  H ) 0  H H card_lengthpoke_valuemax_poke_valuePLANE_WITH_WINGCardTypecard_typeisStraight  uniqueinsert
tablegetPokeCountCardUtility
pairspoke_cards7[CardUtility.isPlaneWithWing] #card.poke_cards => 
cclog
 	





    !!###&&&'card  [poke_cards Sthree_cards Hpairs_cards G  n _  count  '   	 7  H poke_value  obj    Gú#4  % 7  $>7  '  T   T) 0 52  4  >D4 7	 
 >	  T	4	 7		
 6>	BNò4 7 1	 >    T) 0  H 4 7
 >  T4 7:  67:  : ) 0  H ) 0  H H card_lengthpoke_valuemax_poke_valuePAIRS_STRAIGHTCardTypecard_typeisStraight uniqueinsert
tablegetPokeCountCardUtility
pairspoke_cards7[CardUtility.isPairsStraight] #card.poke_cards => 
cclog 	





"""#card  Gpoke_cards ?couple_cards 4  n _  count unique_cards  '   	² 7  H poke_value  obj   '   	µ 7  H poke_value  obj   ± L§ &4  % 7  $>7  '  T   T) 0 :2  4  >D4 7	 
 >	  T	4	 7		
 6>	BNò4 7 1	 >4 7 1
 >    T) 0  H 4 7 >  T4 7:  67:  : ) 0  H ) 0  H H card_lengthpoke_valuemax_poke_valueTHREE_STRAIGHTCardTypecard_typeisStraight  uniqueinsert
tablegetPokeCountCardUtility
pairspoke_cards7[CardUtility.isThreeStraight] #card.poke_cards => 
cclog 	





  """%%%&card  Lpoke_cards Dcouple_cards 9  n _  count unique_cards "unique_cards  ¯   $oÈ4    T  T   T%   T% T  T% T% 4  % $>4 7 @ T4 %	 >4 7
   @ G  get_largerè¯¥èªå·±æçåçï¼å¹¶ä¸ä¸ä¸æçä¸æ¯èªå·±æåºçï¼éè¦éä¸æåè¿ä¸å®¶ççï¼åä¸è¿ï¼è¿åç©ºget_tip_cardCardUtilityæ­£åºéåºä¸æç
cclog è¿æ²¡æäººåºçåçï¼#ä¸ä¸é¦çæ¯èªå·±åçï¼ ä¸è¯¥èªå·±åºçåçï¼notis_self_play		last_play_card  %source_card  %is_self_play  %is_self_last_player  %str 	 ®  	 ZÞ  T   T%    T% T% 4  % $>4 7 ) @ T4 % >4 7   @ G  get_largerYä¸ä¸æçä¸æ¯èªå·±æç¤ºï¼éä¸æå¯ä»¥åè¿ççï¼åä¸è¿ï¼è¿åç©ºget_tip_cardCardUtilityååºéåºä¸æç
cclog è¿æ²¡æäººåºçæç¤ºï¼#ä¸ä¸é¦çæ¯èªå·±æç¤ºï¼					





last_play_card  source_card  is_self_last_player  str  æ  &ë©ñK4   >D	64 %	 
 % 7% 7>BNõ2  2  2  2  4 7  	 
  >4 7	4
  >4
 	 > =4 % 	 >4 74
 	 >4	
 
 >	 =4 %	 
 >2  7	 4
 7

	
 T
2
  H
 T
4
 7

	
 T
4
 7

   >

 T
4
 7

	
 T
4
 7

   >

 T
4
 7

	
 T
4
 7

   >

 T
u4
 7

	
 T
4
 7

   >

 T
j4
 7

	
 T
4
 7

    >

 T
^4
 7

	
 T
4
 7

    >

 T
R4
 7

	
 T
4
 % 7 $>
T
H4
 7

	
 T
4
 7

    >

 T
<4
 7

	
 T
4
 7

    >

 T
04
 7

	
 T
4
 % 7 $>
T
&4
 7
 
	
 T
4
 % 7 $>
T
4
 7
!
	
 T
4
 7
"
   >

 T
4
 7
#
	
 T
4
 7

   >

 T
4
 7
$
	
 T
2
  H
 
 	
  T
7
 4 7#
 T
4
 7

   >

 
 	
  T
4
 7
%
 >

 H getRocketROCKET	BOMBget_larger_straightSTRAIGHTPLANE_WITH_WING
PLANEFOUR_WITH_TWO_PAIRSget_larger_four_with_twoFOUR_WITH_TWOcard type is then 
cclogTHREE_STRAIGHTTHREE_WITH_ONEget_larger_three_with_oneTHREE_WITH_PAIRS
THREEget_larger_pairs_straightPAIRS_STRAIGHT
PAIRSget_larger_card_helperSINGLE	NONECardTypepairs_straight_cards=>get_pair_straightstraight_cards=>clone_tableget_straightcombine_pokesCardUtilitycard_type, card_type:poke_value, poke_value:source_card, card:
print
pairs 								








    !!!!!!!####$$$$$$$$&&&&''''''''))))******,,,,--------////11111111333344444466667777779999:::::::<<<<=======????@@DDDDDDDDEEEEEEFFFGGGGGJto_compare_card  ìsource_card  ì  index 	_  	card single_cards Ûpairs_cards Úthree_cards Ùfour_cards Østraight_cards Çpairs_straight_cards ºresult_card µc_type ´ ß   ?¿4  7>) :2 4 7;4 7;4 7;4 7;4 7;4 7	;4 7
;4 7;4 7;	4 7;
  T4 7 > 4  >D6	:	4	 7		
   >	
	 '  
 T
H	 BNò2  H get_largerCardUtilitycard_type
pairsreverse
tableSINGLE
PAIRS
THREETHREE_WITH_ONETHREE_WITH_PAIRS
PLANEPAIRS_STRAIGHTSTRAIGHTFOUR_WITH_TWOFOUR_WITH_TWO_PAIRSCardTypeis_min_cardnew	Card		















source_card  @is_reverse  @to_compare_card <seq !
  index _  result  Z   $Ý7  7   T) T) H poke_valuex  	y  	xv yv result   xþÚ.4    >4 7 1 >2  4  >D
h6
)    T7 67 T)  
 T" '   T7 67 T4 7  >T 	 T4 7 4   > =2  4 7 2 ;>)   T0 '   T, 	 T4 7 4   > =T  	 T4 7 4   > =T 	 T4 7 4   > =T
 	 T4 7 4   > =2  4 7  >B
N
G  insertpoke_value
pairs 	sort
tableclone_table 	



        !!!""""""""###$$$$$$$&(((((

.all_cards  yfour_cards  ypairs_cards  ysingle_cards  ythree_cards  ysort_cards utmp_cards ok k kindex h_  hcard gneed_push f Z   $7  7   T) T) H poke_valuex  	y  	xv yv result  Ð 	'Q   T"  '  T4    >4 7 1 >4 %  > 6 67	 T7	 T4 % >2 ;;0  H 2  0  H return rocket
cclogpoke_valueget rocket, sort_cards:
print 	sort
tableclone_table" 	



cards  (sort_cards 
l 
last last_s  Ã   F 4    >D6 4 74	 7		
 >	
 >  T	H BNò2  H getCardcompareCardUtility
pairscards  s_card    index _  cur_card  ÷   )ª)   '   T8  T87 '  T4   >D6	 4
 	 >
4 7
  >4 74 7
 > >  TH
 BNê2  H getCardcompareCardUtilitycombine
tableclone_table
pairspoke_value					









three_cards  *single_cards  *s_card  *one_card (  index _  three cards     @¿¼ )   '  T2 8;8; )   T4   >D6
8

7
'  T) BN÷T)   T4    >D6
 4 
 >4 7 8>4 7 8>4 74 7 > >  TH BNå2  H getCardcompareCardUtilitycombine
tableclone_tablepoke_value
pairs				

		four_cards  Awith_two_cards  As_card  Awith_two_card ?skip 4
 
 
index _  card   index n  four cards  Z   $ç7  7   T) T) H poke_valuex  	y  	xv yv result  Ë W²Þ(2  4   >D4 7	 6
8

>BNø4    >D4 7	 6
 8

>BNø4  >4 7 1 >4  >2  2  4   >D
)6
4 7  > 4   >D67 7 T
7'  T4 7  > BNî '  T4 7 4  > =2  B
N
Õ0  H poke_value 	sortclone_tableinsert
table
pairs				!!!!"""""""$''pairs_cards  Xsingle_cards  Xall_cards V	 	 	index n  	 	 	index n  sort_cards ;tmp_cards 3straight_cards 2straight_card 1, , ,index )_  )card (compare_card "  index2 _  next_card  Ñ   T4    >D6 4 74	 7		
 >	
 >  T	H BNò2  H getCardcompareCardUtility
pairsstraight_cards  s_card    index _  straight_card  Z   $7  7   T) T) H poke_valuex  	y  	xv yv result   
nô12  4    >D6 4	 7		
 8>	4	 7		
 8>	BNó4   >D64	 7		
 8>	4	 7		
 8>	BNó4  >4 7 1 >4 %  >4  >2  2  4   >D
26
4 7  > 
	 T) 2  4   >D64 7  > 	 T77 T4 7	  > 2  BNé '  T4 7 4  > =2  B
N
Ì0  H combinepoke_value&[get_pair_straight] sort_cards =>
print 	sortclone_tableinsert
table
pairs 					




 !!!!!"""#####$$$$$%'****+++++++-00three_cards  opairs_cards  oall_cards m  index _  card 
  index _  card 
sort_cards Htmp_cards <pairs_straight_cards ;pairs_straight_card :5 5 5index 2_  2card 1compare_card 	(tmp_pairs_cards '  index2 _  next_card  ×   ZÅ	4    >D6 4 74	 7		
 >	
 >  T	H BNò2  H getCardcompareCardUtility
pairspairs_straight_cards  s_card    index _  straight_card  î  ; Zµ Ï2   5   4   1 : 4   1 : 4   1 : 4   1 : 4   1
 :	 4   1 : 4   1 : 4   1 : 4   1 : 4   1 : 4   1 : 4   1 : 4   1 : 4   1 : 4   1 : 4   1  : 4   1" :! 4   1$ :# 4   1& :% 4   1( :' 4   1* :) 4   1, :+ 4   1. :- 4   10 :/ 4   12 :1 4   14 :3 4   16 :5 4   18 :7 4   1: :9 G   get_larger_pairs_straight get_pair_straight get_larger_straight get_straight get_larger_four_with_two get_larger_three_with_one get_larger_card_helper getRocket combine_pokes get_tip_card get_larger tip_card slide_card isThreeStraight isPairsStraight isPlaneWithWing isPlane isFourWithTwoPairs isFourWithTwo isBomb isThreeWithPairs isThreeWithOne isThree isRocket isPairs getPokeCount isStraight compare getCardCardUtility  
 l l n    ¸ ¸ º Ç Ç Ê Þ Þ á ô ô ÷ ''*JJMbbe©©¬ÍÍÐ÷÷ú FFH\\^nnq¼¼¿ØØÚ
 ((*::<\\^ÃÃÅÎÎÎ  