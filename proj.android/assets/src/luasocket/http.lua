LJ @src/luasocket/http.lua² 	 S!*   T2    7  >    T)   F  TBQA+  7' + 7	 %
 > =    T  T)  % F + 7 >   7  >    T)   F + 7 % >  TQ  $  7  >   Tο)   F Tλ6  T6%  $9TΎ9TΌH  , ^%s
lowermalformed reponse headers^(.-):%s*(.*)	find	skipreceive											






socket string sock  Theaders  Tline Rname  Rvalue  Rerr  R ,   
B +     7   @   
getfd    sock  ,   
C +     7   @   
dirty    sock  ¨   7E+     7   >   T)   F + 7+ 7  % % >' >  T)  % F '   T+   7  >  T+   7 >  F T+ +  + > , +   T)   F G       invalid chunk size;.*	gsubtonumberreceive					





sock base string headers receiveheaders line 3err  3size $chunk 	err  	part  	  9@+  7 2 1 :1 :2 1 :0  @ __call 
dirty 
getfd setmetatablebase string receiveheaders sock  headers   ,   
\ +     7   @   
getfd    sock  ,   
] +     7   @   
dirty    sock  Θ 	 @_  T+   7 % @ + 7% + 7 > =+   7   % $@   
len	%X
format
0

	sendsock string self  chunk  err  size    Z+  7 2 1 :1 :2 1 :0  @ __call 
dirty 
getfd setmetatable		

base string sock   .   q +     7   > G  
close     h  ΅

 $Vl+  7  T+  7> = + 72 :+ >+  71 >: 7  74 > = 7  7  	 T	4		 > = 0  H  	PORTconnectTIMEOUTsettimeout newtrycsetmetatabletcptry

socket base metat host  %port  %create  %c 	h  ¦  7y+  7 %  T%  >7 7  7 > ?  	sendctryGET%s %s HTTP/1.1
formatstring self  method  uri  reqline 	 Β  C~%  +  7 >T %	 
 %   $ANψ7 7  7 > = ' H 	sendctry: 
pairs
base self  headers  h 	 	 	i v   §  T  T+  7 7>   T+  77% 7  T% 7 +  77 + 7		 7

 >	 > ?   c	sinkalltrykeep-opencontent-lengthhttp-chunked	step	pump
emptysourceltn12 socket self  headers  source  step  mode  Ά 	 %P	7  7  7' > =  T)   F 7  7  7%  > =  +  7' + 7 % > =7  + 7 > @  tonumberHTTP/%d*%.%d* (%d%d%d)	find	skip*l
HTTP/receivectrysocket string base self  &status code  C  7  +  7 > ?  ctryreceiveheaders self   ―  -s
  T+  7 7>   T+  77+ 77>7%   T T%	 T+ 77>  T%
 7 +  77+	 7		
 7  >	
  > ?   csourcealltryby-lengthhttp-chunkedidentitydefaulttransfer-encodingcontent-lengthtonumber	step	pump	null	sink			ltn12 base socket self  .headers  .sink  .step  .length t mode  Χ 
 J«+  7 7+ 7 % 7 > =   >7 +  77  	 > ?   all	pumptrycuntil-closedrewindsourceltn12 socket self  status  sink  step  source 
 /   ±7   7@ 
closecself   η 	 0Έ  7    T4   T2 +  77 % >:7 :7 :7 : + 7 @  
buildfragment
queryparamsinvalid path 'nil'	pathtry
PROXY
proxy	socket url reqt  u  «  *Ζ7    T4   T+  7 > 77  T'8F T7 7 F G  	port	host
parse
PROXY
proxyurl reqt  proxy  χ 	 %WΠ3 4  :7 :7   T7   T
% +  77 %	 7 $>$:+ 7
7   T >T+ 7 >9ANωH 
lowerheaders
pairs:b64Basic authorizationpassword	user connectionclose, TEtetrailers	hostuser-agentUSERAGENT						mime base string reqt  &lower    i v   θ  <μ7    T+  77  + >  T2  + 7  >T9ANύ7 T'P :+ 77  T7 T) T) % + 77>%	 $>7
   T+  >:
+  >::+  >:H  	
headersuri'tostringinvalid host '	hosttry	port
pairs
parseurl							url default base socket adjusturi adjustproxy adjustheaders reqt  =nreqt 1  i v   ₯ 	&Fύ7   T"+  77 % % > T7 
 T  T	 T7   T7  T7  T7   T7 '   T) T) H nredirects	HEADGETmethodredirect%s	gsublocationΪάstring reqt  'code  'headers  '   $7   T)  H   T	 T)  H 'd  T'Θ  T)  H ' H 	HEADmethodΰreqt  code   Σ 
	&i+  2 + 7 7  >:7 :7 :7 :7 :7   T'   :7 :>  T2  7  T :   	 F locationcreatenredirects
proxyheaders	sinksourceurlabsolute						

trequest url reqt  'location  'result code  headers  status    _Ζ’%+    >4  777> 777> 77>7	  T 7
77	7> 7>  T	 7 77	>' 'Θ F )  	  TQ
 7>  7>  Tσ 7> +   	 >  T
7	  T 7>+   7@ +   >  T 7 7	7
> 7>'   	 F receivebodylocation
closereceiveheaders	sinkreceive09bodyreceivestatusline	stepsendbodysourceheaderssendheadersurimethodsendrequestlinecreate	port	host	openΘ			





      !!!!!!###$$$$$adjustrequest shouldredirect tredirect shouldreceivebody reqt  `nreqt \h Wcode Bstatus  Bheaders 6 ΅  )zΙ2  2 :  +  77 >:  T+  77 >:3 + 7 >::%
 :	+ 7' +  > =+ 7 > 	 
 F  concat	skip	POSTmethod content-type&application/x-www-form-urlencodedcontent-lengthlenheadersstringsource
table	sinkurl					ltn12 string socket trequest table u  *b  *t (reqt  code headers  status     5Ϋ+  7   > T+    @ T+   @ G  string	typebase srequest trequest reqt  body     5 S ί4   % > 4  % >4  % >4  % >4  % >4 4  % >4 %	 >'< 5
 'P 5 7 5 1 7 1	 :	7 1	 :	2 2	  :	1	 5	 7	1
 :
	7	1
 :
	7	1
 :
	7	1
 :
	7	1
  :
	7	1
" :
!	7	1
$ :
#	7	1
& :
%	1	' 1
( 1) 3* 4 :+1, 1- 1. * 1/ 10 11 72 13 >54 0  G  request protect      	port 	path/scheme	http	host    
close receive09body receivebody receiveheaders receivestatusline sendbody sendheaders sendrequestline	open __index 
sinkt http-chunkedsourcet USERAGENT_VERSION	PORTTIMEOUTsocket.httpmodule
table_Gstring	mime
ltn12socket.urlsocketrequire                            ; @ X X Z e e j j j w l y | y ~  ~           ©  « ― « ± ³ ± Δ Ξ β ε η η ϋ "Y[^[^^^socket Purl Mltn12 Jmime Gstring Dbase Ctable @receiveheaders 
6metat 	-adjusturi adjustproxy adjustheaders default adjustrequest shouldredirect shouldreceivebody 
trequest 	tredirect  	srequest   