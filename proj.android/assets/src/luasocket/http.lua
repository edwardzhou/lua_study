LJ @src/luasocket/http.lua� 	 S�!*   T�2    7  >    T�)   F  TB�QA�+  7' + 7	 %
 > =    T�  T�)  % F + 7 >   7  >    T�)   F + 7 % >  T�Q�  $  7  >   T�)   F T�6  T�6%  $9T�9T�H  ��, ^%s
lowermalformed reponse headers^(.-):%s*(.*)	find	skipreceive											






socket string sock  Theaders  Tline Rname  Rvalue  Rerr  R ,   
B +     7   @   �
getfd    sock  ,   
C +     7   @   �
dirty    sock  �   7�E+     7   >   T�)   F + 7+ 7  % % >' >  T�)  % F '   T�+   7  >  T�+   7 >  F T�+ +  + > , +   T�)   F G   �   � invalid chunk size;.*	gsubtonumberreceive					





sock base string headers receiveheaders line 3err  3size $chunk 	err  	part  	 �	 9@+  7 3 1 :1 :3 1 :0  �@ ���__call   
dirty 
getfd   setmetatablebase string receiveheaders sock  headers   ,   
\ +     7   @   �
getfd    sock  ,   
] +     7   @   �
dirty    sock  � 	 @_  T�+   7 % @ + 7% + 7 > =+   7   % $@  � 
len	%X
format
0

	sendsock string self  chunk  err  size  �	  Z+  7 3 1 :1 :3 1 :0  �@ ��__call   
dirty 
getfd   setmetatable		

base string sock   .   q +     7   > G  �
close     h  �
 $Vl+  7  T�+  7> = + 73 :+ >+  71 >: 7  74 > = 7  7	  	 T	�4	
 > = 0  �H  ���	PORTconnectTIMEOUTsettimeout newtryc  setmetatabletcptry

socket base metat host  %port  %create  %c 	h  �  7y+  7 %  T�%  >7 7  7 > ?  �	sendctryGET%s %s HTTP/1.1
formatstring self  method  uri  reqline 	 �  C~%  +  7 >T� %	 
 %   $AN�7 7  7 > = ' H �	sendctry: 
pairs
base self  headers  h 	 	 	i v   �  T�  T�+  7 7>   T�+  77% 7  T�% 7 +  77 + 7		 7

 >	 > ?  � �c	sinkalltrykeep-opencontent-lengthhttp-chunked	step	pump
emptysourceltn12 socket self  headers  source  step  mode  � 	 %P�	7  7  7' > =  T�)   F 7  7  7%  > =  +  7' + 7 % > =7  + 7 > @  ���tonumberHTTP/%d*%.%d* (%d%d%d)	find	skip*l
HTTP/receivectrysocket string base self  &status code  C  �7  +  7 > ?  �ctryreceiveheaders self   �  -s�
  T�+  7 7>   T�+  77+ 77>7%   T� T�%	 T�+ 77>  T�%
 7 +  77+	 7		
 7  >	
  > ?  �� �csourcealltryby-lengthhttp-chunkedidentitydefaulttransfer-encodingcontent-lengthtonumber	step	pump	null	sink			ltn12 base socket self  .headers  .sink  .step  .length t mode  � 
 J�+  7 7+ 7 % 7 > =   >7 +  77  	 > ?  � �all	pumptrycuntil-closedrewindsourceltn12 socket self  status  sink  step  source 
 /   �7   7@ 
closecself   � 
 0�  7    T�4   T�3 +  77 % >:7 :7 :7 : + 7	 @  ��
buildfragment
queryparams  invalid path 'nil'	pathtry
PROXY
proxy	socket url reqt  u  �  *�7    T�4   T�+  7 > 77  T�'8F T�7 7 F G  �	port	host
parse
PROXY
proxyurl reqt  proxy  � 	 %W�3  4 :7 :7   T�7   T
�% +  77 %	 7 $>$:+ 7
7   T� >T�+ 7 >9AN�H ���
lowerheaders
pairs:b64Basic authorizationpassword	user	hostuser-agentUSERAGENT tetrailersconnectionclose, TE						mime base string reqt  &lower    i v   �  <��7    T�+  77  + >  T�2  + 7  >T�9AN�7 T�'P :+ 77  T�7 T�) T�) % + 77>%	 $>7
   T�+  >:
+  >::+  >:H ��� �	�
��headersuri'tostringinvalid host '	hosttry	port
pairs
parseurl							url default base socket adjusturi adjustproxy adjustheaders reqt  =nreqt 1  i v   � 	&F�7   T"�+  77 % % > T�7 
 T�  T�	 T�7   T�7  T�7  T�7   T�7 '   T�) T�) H �nredirects	HEADGETmethodredirect%s	gsublocation��string reqt  'code  'headers  ' �  $�7   T�)  H   T�	 T�)  H 'd  T�'�  T�)  H ' H 	HEADmethod��reqt  code   � 

&i�+  3 + 7 7  >:7 :7 :7 :7 :7   T�'   :7 :>  T�2  7	  T� :	   	 F ��locationcreatenredirects
proxyheaders	sinksource  urlabsolute						

trequest url reqt  'location  'result code  headers  status   � _��%+    >4  777> 777> 77>7	  T� 7
77	7> 7>  T	� 7 77	>' '� F )  	  T�Q
� 7>  7>  T� 7> +   	 >  T
�7	  T� 7>+   7@ +   >  T� 7 7	7
> 7>'   	 F ����receivebodylocation
closereceiveheaders	sinkreceive09bodyreceivestatusline	stepsendbodysourceheaderssendheadersurimethodsendrequestlinecreate	port	host	open�			





      !!!!!!###$$$$$adjustrequest shouldredirect tredirect shouldreceivebody reqt  `nreqt \h Wcode Bstatus  Bheaders 6 �  )z�2  3  : +  77 >:  T�+  77 >:3 + 7 >:	:% :
+ 7' +  > =+ 7 > 	 
 F �� ���concat	skip	POSTmethodcontent-length content-type&application/x-www-form-urlencodedlenheadersstringsource
table	sinkurl  					ltn12 string socket trequest table u  *b  *t (reqt  code headers  status   �  5�+  7   > T�+    @ T�+   @ G  ���string	typebase srequest trequest reqt  body   �  6 S� �4   % > 4  % >4  % >4  % >4  % >4 4  % >4 %	 >'< 5
 'P 5 7 5 1 7 1	 :	7 1	 :	3 2	  :	1	 5	 7	1
 :
	7	1
 :
	7	1
 :
	7	1
 :
	7	1
! :
 	7	1
# :
"	7	1
% :
$	7	1
' :
&	1	( 1
) 1* 3+ 4 :,1- 1. 1/ * 10 11 12 73 14 >55 0  �G  request protect      	port scheme	http	path/	host    
close receive09body receivebody receiveheaders receivestatusline sendbody sendheaders sendrequestline	open __index   
sinkt http-chunkedsourcet USERAGENT_VERSION	PORTTIMEOUTsocket.httpmodule
table_Gstring	mime
ltn12socket.urlsocketrequire                            ; @ X X Z e e j j j w l y | y ~ � ~ � � � � � � � � � � � � � � � � � � � � � � � � � "Y[^[^^^socket Purl Mltn12 Jmime Gstring Dbase Ctable @receiveheaders 
6metat 	-adjusturi adjustproxy adjustheaders default adjustrequest shouldredirect shouldreceivebody 
trequest 	tredirect  	srequest   