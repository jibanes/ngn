#!../k
P:{$[x<10;(x>)#o 10 /primes <x
 @[;0;:;2]1+2*&@[(-2!x)#0x010000010001010001010001000001;!3;:;0x01]{$[x@-2!y;@[x;-2!y*y+2*!-2!2+(-y)+(-y)!-1+2*#x;:;0x00];x]}/7+2*!0|-2!-5+R x]}
Q:{p:2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 /is x prime?
 $[x<62;~^p?x;+/~p!'x;0;&/(1=a)|/x=1+(s-1)q\a:(x!*)/((-1+#d)(q:x!*/2#,:)\2 7 61)@&d:(s:*&b)_b:|2\x-1]}
T:{(!x){i:z*1+!(-z)!x-1;y[i]:(-z)!y[i]*z-1;y}[x]/P x} /totients
S1:{a:(x#1){[r;p]n:#r;m:1+(-p)!n-1;q:-1_(n>)(p*)\p;@[r;p*!m;*;@[m#p+1;(-1_q)*!'1+(--1_q)!'m-1;+;1_q]]}/p:P 2+R x /sigma1(sum of divisors)
 p:(#p)_P x;a[p*!'1+(-p)!'-1+#a]*:p+1;a[0]:0;a}
CF:{$[x=r*r:R x;,0;*|+(~(2*r)=*|:)({[x;r;m;d;a]m,d,(-d:(-d)!x-m*m)!r+m:(d*a)-m}[x;r].)\0 1,r]} /continued-fraction sqrt
G:*|(*:)(|!\)/,;H:-2!0N-1;S:{x@<x};R:_%:;Gon:{-2!y*4-x+y*2-x}  /G:gcd,H:halfmaxint,S:sort,R:sqrt,Gon:y-th x-gonal number
Pe:{(x-1){,/'((,(#*x)#`c$#x),x)(~i=\:i)*i+i<\:i:!1+#x}/+0x00}; /permutations(non-lexicographic)
Co:{*|(y-x){((,(1|#*x)#-1i+**y),x),'y}\/,''`i$y+!'-!1+x}       /combinations(lexicographic)
B:10\;Z:10/;K:{(~**x)_x:((*x),0)+0,*|x:0 10\x}/;A:{K@+/(&'(|/l)-l:#'x),'x:(x;y)};MX:{(-10|-#x)#x} /B:big,Z:small,K:carry,A:add,MX:mod 10^10
M:{K@[&-1+(#x)+#y;(!#x)+\:!#y;+;x*\:y]};L:{$[d:(#x)-#y;d<0;*>(x;y)]};Pw:{x/((-1+#z)(x/2#,:)\y)@&z:|2\z} /M:mul,L:less,Pw:power[mul]
Xn:Xf:0;X:{1@$y;t:-`t[];w:-."\\w";z:$z[];w+:."\\w";t:-1000!t+`t[];Xn+:1;Xf+:m:~z~e:x y-1;1$[m;`k(`fail;z;e);,/$"(w",w,",t",t,")"]," ";}@0:`:o /tester

X[1]{+/&|/~5 3!\:!1000}
X[2]{+/(~2!)#*+-1_(*4000000>)(|+\)\!2}
X[3]{|/(~![;x]@)#P 2+R x:600851475143}
X[4]{|/.'{x~|x}#$,/x*\:x:100_!1000}
X[5]{{x*(-G[x]y)!y}/1+!20}
X[6]{(x*x:+/x)-+/x*x:1+!100}
X[7]{P[200000]10000}
X[8]{|/*/(-|x)_'(x:!13)_\:.',/0:"i/p008.txt"}
X[9]{|/*/(a,,c)@\:&(+/a*a)=c*c:1000-+/a:!2#1000}
X[10]{+/P 2000000}
X[11]{|/,//*/''4''(a;+a;b,'a,'|b;(|b),'a,'b:&'!#a:.'0:"i/p011.txt")}
X[12]{-2!i*-1+i:*&500<@[;!2;:;1]@*/1++':'@[a;0;:;]0|-1+*a,:,~+/a:{@[&x;q*!'(-q:-1_(x>)(y*)\y)!'x;+;1]}[x]'P 2+R x:100000}
X[13]{Z 10#A/.''0:"i/p013.txt"}
X[14]{(2=#:){$[#i:&y>1;(x i;(a*1+3*y)+(~a:2!y)*-2!y@:i);*x]}//2#,!1000000}
X[15]{*|x(+\)/&0,1+x:20}
X[16]{+/1000(A/2#,:)/B 1}
X[17]{a:36;b:70;c:46;+/(100*a;9*100*#"hundred";9*99*#"and";10*+/(a;b;10*c;8*a);#"onethousand")} /a:one..nine, b:ten..nineteen, c:twentythirty..ninety
X[18]{*{y+1_|':x}/|.''" "\'0:"i/p018.txt"}
X[19]{+/6=7!+\365,-1_,/100#@[31 28 31 30 31 30 31 31 30 31 30 31;1;+;]'&3 1}
X[20]{+/M/B'1+!100}
X[21]{+/&(x=a a)>x=a:S1[#x]-x:!10000}
X[22]{+/,/(1+!#x)*S x:(1-"A")+.'","\1:"i/p022_names.txt"}
X[23]{+/&@[x#1;a*x>a+:,\a:&S1[x]>2*!x:1+28123;:;0]}
X[24]{10/(!10){x((!10)_y),y}/(|1+!10)\999999}
X[25]{#(1000>#*:)(A\|:)\B'1 1}
X[26]{1+*>{(#a)-1+a?l:*|a:{l&2>+/x=l:*|x}{y,x!10**|y}[x]/,1}'1+!1000}
X[27]{**/*|{$[#i:&Q'x/1,y;(x+1;y@\:i);(x;y)]}//1,,a@'!#'a:(x-!1+2*x;P x:1000)}
X[28]{+/+\1,/4#'2*1+!-2!1001}
X[29]{#?,/1_x(i M')\i:B'2+!x:-1+100}
X[30]{-1+/&a=!#a:+/(*/5#,!10)@!6#10}
X[31]{i:!201;*|(~i){+/'y x-z*!'1+(-z)!x}[i]/1 2 5 10 20 50 100 200}
X[32]{+/?*|a@\:&a[2]=*/2#a:,'/10/''(0 2 5;0 1 5)_\:1+Pe 9} /x*yyyy=zzzz or xx*yyy=zzzz
X[33]{*|f@*/(</)#?,/{[f;x]a@&(&/'a>9)&f[1_x]~/:f'a:10/''x 4 2 2#.'"0102012010021002"}[f:{(-G/x)!x}]'+!3#10}
X[34]{+/3_&(!#*a)=(+/(*\1|!10)a)-(#a)-&1,9*\1,(-1+#a:!6#10)#10}
X[35]{2+#{x^x^(.,/|0 1_$:)'x}/{~|/^"1379"?$x}#P 1000000} /+2 because 2 and 5 don't match /[1379]+/
X[36]{+/{x~|x:2\x}#{x~|x:$x}#!1000000}
X[37]{+/(7<)#{&/Q'.'|',\|$x}#,/{Q#,/(!10)+/:10*x}\2 3 5 7}
X[38]{|/.'("123456789"~S@)#,/,'\$+\9#,!10000}
X[39]{p@:i:&(l+1)>p:2*/+\mn:1+|Co[2;l:1000];p@:&1=G'/mn@\:i;*>#'=,/p*1+!'(-p)!'l}
X[40]{*/.'(,/$!*|a)a:6(10*)\1}
X[41]{p:P m:R 10000;|/,/({[m;p;x]$[~&/2 3 5 7!'x;0;x<m;~^p?x;&/p!'x]}[m;p]#10/1+Pe@)'4 7}
X[42]{+/~^(-2!{x*1+x}@!1+-2!*|/a)?a:+/'(1-"A")+1_'-1_'","\1:"i/p042_words.txt"}
X[43]{+/10/a@\:&~+/P[18]!'10/'3'1_a:Pe 10}
X[44]{a@*&0<+/'&/0^@[&1+*|a;a;:;1](a+\:a;a+\:2*a:Gon[5]1+!3000)}
X[45]{Gon[3]@*2({x+a<|/a:3 5 6  Gon'x}/1+)/1}
X[46]{*1_&@[(x+1)#!2;(x&(2*/2#,!1+R -2!x)+\:p;p:P x:10000);:;0]}
X[47]{*1-k-&(k-1)&':/(k:4)=(&x){x[y*!(-y)!-1+#x]+:1;x}/p:P 2+R x:1000000}
X[48]{Z MX@A/{Z Pw[{MX M[x;y]};B x]x}'1+!1000}
X[49]{.,/$*^[;,1487 4817 8147]{=/1_-':x}#,/{x(+i)@&&/-1>':i:!3##x}'{2<#x}#p@.=S'$p:(999<)#P 10000}
X[50]{{x(~Q x@)(1+)/0}@|,/*|+{#*|x}{[p;x;y](1+x;y@&~(*|p)<y+:0^p x+!#y)}[p]/\1,,p:P 1000000}
X[51]{&/{&/c@&x c:,/a@\:&7<+/x a:.[;0,,!2/#*a;:;0]a:(10/m*y)+/:10/'(~m:1_'-1_'!(#y:10\y)#2)*/:!10}[@[&x;p;:;1]]'p:P x:1000000} /slow
X[52]{{x+1<#?S'$x*2+!5}/1}
X[53]{m:1000001;+/m=,/100(m&+':|0,)\1}
X[54]{`l$+/(*<{(s&f;12|+/a;f:1=#?y;s:&/1=1_-':S x;+/a),x@>x+13*a:+/x=\:x:"23456789TJQKA"?x}/'+'0 5_" "\)'0:"i/p054_poker.txt"}
X[55]{+/{50=*({(50>x)&~x&y~|y}/){(x+1;A[y;|y])}//(0;B x)}'!10000}
X[56]{|/+/',/M'\99#,B'1+!99}
X[57]{+/>/'#''1000{(A[a;x 1];a:A/x)}\B'1 1}
X[58]{*({(10*y)>-2+2*x}.){(x+2;y++/Q'(x*x)+1 2 3*x+1)}//7 8}
X[59]{a:8167 1492 2782 4253 12702 2228 2015 6094 6966 153 772 4025 2406 6749 7507 1929 95 5987 6327 9056 2758 978 2360 150 1974 74 /a-z freqs
      +/p@*>+/'@[&256;65 97+\:!26;:;2#,a]p:(2/~c=(#*c:(8#2)\.'","\*0:"i/p059_cipher.txt")#'(8#2)\)'+97+!3#26}
X[60]{&/+/'3{,/y,/:'{x^x^y}/'x y}[(a@'1)@=*'a]/a:.''{$[~Q@.,/x;0;Q@.,/|x]}#+p Co[2;#p:$1_P 10000]} /slow
X[61]{a:@[100#,!0;;,;]/'|0 100\'(4=#$:)#/:(3+!6)Gon\:!150;101*+/{y{*y x}\|x 5,z}[a]/|*,/{(,y),/:&0|/'(!100)=(,/'@)/x 5,y}[a]'+Pe 5}
X[62]{*/3#**(5=#:)#.=S'($*/3#,!10000)-"0"}
X[63]{+//a=!#a:#''30(i M')\(#i:B'1+!9)#,B 1}
X[64]{+/~2!#'CF'!10000}
X[65]{+/*(B'!2){(A[x 1]M[*x]y;*x)}/|B'x#2,/+(1;2*1+!x:101;1)}
X[66]{*&a~\:{(x;y)L[x]y}/a:{(2!#c)(A[B 1]@A/2#,M/2#,:)/*|(B'!2){(x 1;A[*x]M[y]x 1)}/|B'c:-1_CF x}'!1001}
X[67]{*{y+1_|':x}/|.'0:"i/p067_triangle.txt"}
X[68]{j:,/+i:(2*x)!0 1 3+\:2*!x:5;|/>[*/16#10]#(.,/$@[;j]@)'(1=#?+/@[;i]@)#+1+r@\:&&/(*r)</:(r:Pe 2*x)2+2*!x-1}
X[69]{*>(-T x)!'1000*!x:1000000}
X[70]{*{$[</x*|y;x;y]}/x,'a x:2_&=/+/'(9(10*)\1)(10\a:T@*/m;!m:7#10)}
X[71]{*{$[>/x*|y;x;y]}/+(-7!-1+3*a;a:1+!1000000)}
X[72]{-1+/T 1+1000000}
X[73]{t:~(x+1)#'~!'p:P x:12000;+/{[t;p;x]a:-3!x+2;b:1+-2!x;+/*/a_'b#'t@&~p!'x}[t;p]'4+!-3+x}
X[74]{+/60=1000000#{y&61&1+y x}[x]/@[(#x:+/(|\0<x)*(*\1|!10)x:!3,6#10)#61;169 363601 1454 871 45361 872 45362;:;3 3 3 2 2 2 2]}
X[75]{+/1={$[(#x)>l:+/y:S y;;:x];x[l*!1+(-l)!-1+#x]+:1;x o/+/((1 2 2;- 1 2 2;1 2 2);(- 2 1 2;2 1 2;2 1 2);(2 2 3;2 2 3;2 2 3))*y}[&1500001]3 4 5}
X[76]{-1+*|*|100{(-1_x),,+\+/x*|=#x:(x,'*|+x),0}/,,1}
X[77]{*&5000<{{@[x;y+z;+;x z]}[;y]/(,x),!0|(#x)-y}/(,~!x),P x:100}
X[78]{{1<#x}{$[0<a:1000000!+/(0|y x-Gon[5]k)*(#k)#-1 1@2!2#k:e[0]+!1--/e:-6!(1-;1+)@'R 1+24*x;(x+1;y,a);x]}//2,,1 1}
X[79]{a:?.''0:"i/p079_keylog.txt";d:?,/a;e:?,/2''a;10/|{[d;e;x]?x,d@&~+/'d=\:*'(2=#:)#e^\:x}[d;e]/!0}
X[80]{+/{$[x=a*a:R x;0;+/100#{(1,&l){{$[L[M[u]u:@[y;z;+;1]]x;u;y]}[x;;z]/y}[x]/!l:-2!-1+#x}(10\x),&200]}'1+!100}
X[81]{*|(H*0<!#*a){z+x&y}\[H]/a:.'0:"i/p081_matrix.txt"}
X[82]{&/0{&/x+s#-/(+\0,y)(1+|/;&/)@\:!s:2##y}/+a:.'0:"i/p082_matrix.txt"}
X[83]{*|*|{y&x+&/(H,-1_y;1_y,H;H,'-1_'y;1_'y,'H)}[x]/+\+\'x:.'0:"i/p083_matrix.txt"}
X[84]{f:{j:0 10 11 24 39 5;x[y]+:1;r:1+2?4;z+:1;z*:=/r;y:40!y+/r /x:ctrs,y:pos,z:doubles,j:(GO;JAIL;C1;E3;H2;R1),r:dice
         y:$[(y=30)|z>2;j 1;~^2 17 33?y;y^(2#j)@*1?16;^i:7 22 36?y;y;6>r:*1?16;j r;8>r;15 25 5 i;8=r;12 28 12 i;9=r;40!y-3;y];(x;y;z)}.
      100/3#>*200000 f/(&40;0;0)}
X[85]{*/2#,/&'a=&/&/a|:-a:2000000-a*\:a:-2!a*1+a:!2000}
X[86]{*(1000000>*|:){x,y+/x{$[a>b*b:R a:(y*y)+x*x;0;y>x;1+x--2!1+y;-2!y]}'3_!1+2*x+:1}//2 0}
X[87]{#?(x>)#(,/+/:)/(x>)#'2(p*)\p*p:P 1+R x:50000000}
X[88]{a:,/{[l;x],/x,/:'((*|:)'x)_'!'1+(-*/'x)!'2*l}[l]\,'2_!2*l:12000;+/?2_@[0,l#H;k*(l+1)>k:{(#x)+(*/x)-+/x}'a;&;*/'a]}
X[89]{r:"IVXLCDM";v:r(,(!10)#'6),|2(2+)\,/(a;,!2;1,'a:&'!4;,0 2);+/(#'a)-(#,/v@'(4#10)\+/{x*1-2*x<y}':)'a:(1,*\6#5 2)r?|'0:"i/p089_roman.txt"}
X[90]{f:{x+3*x=6};a:+f@10\i*i:1+!9;#&(&/|/(&/'|/''a=\:)'1|:\)'+c Co[2]@#c:+f Co[6]10}
X[91]{(x*x)+/(~+/1 -1 1*a)&/0<a:+/'a*a:a,,-/a:0 2_!4#1+x:50}
X[92]{+/(7(+/x#'(&'a*a:!10),\:)/~i)*{$[x<2;0;x=89;1;o@+/x*x:.'$x]}'i:!x:1000}
X[93]{g:{f:{(a;b;c;d):x;(f;g;h):y;{$[1<*|x;(-G/x)!x;x]}'(h[g[f[a]b]c]d;h[g[a]f[b]c]d;h[f[a]b]g[c]d;h[a]g[f[b]c]d;h[a]g[b]f[c]d)}
         +/&\@[~!100;{(99&0|*x)*1=x 1}@+,/,/x[+Pe 4]f/:\:a@+!3##a:({(+/x*|y;*|x*y)};{(-/x*|y;*|x*y)};*;{x*|$[0>*y;-y;y]});:;1]}
      10/*c@&v=|/v:g'((!10),'1)c:+Co[4]10}
/sides: (a+d;a;a), d=+-1, p=(3a+d)/2, S^2=p(p-a+d)(p-a)^2, a=2b+1 => pell equations (3b+1)^2-3m^2=1, (3b+2)^2-3m^2=1
X[94]{*({z>*y}.)({(x+:p*z>p:(3+6*-3!*y)+0N -1 1@3!*y;y:+/(2 1;3 2)*y;z)}.)/(0;2 1;1+-2!*/9#10)}
X[95]{&/,/c@&l=|/l:#'c:(a@)\'?*(~~/)(b@')/b:@\2#,a:S1[x]-!x:1000000}
X[96]{+/(x,,3/-3!x:!9 9){10/3#*(,y)(,/{@[y;z;:;]'(1+!9)^y@&|/x=x@'z}[x]')/&~y:.',/1_y}/:0N 10#0:"i/p096_sudoku.txt"}
X[97]{Z MX A[B 1]M[B 28433]Pw[{MX M[x;y]};B 2]7830457} /28433*(2^7830457)+1 mod 10^10
X[98]{p:,/{x@+c,'|c:Co[2;#x]}'(1<#:)#{x@.=S'x}@;m:|/#'*'a:p 1_'-1_'","\1:"i/p098_words.txt";f:m/,/{(*x)?/:x}@;|/.',/b@&~^(?f'a)?f'b:p@$c*c:!1+R@*/m#10}
X[99]{1+*&a~\:a@*>a:{Pw[{d:10;a:M[x 1;y 1];$[4<a d;a:K@[a;d-1;+;1];];(x[0]+y[0]+(#a)-2*d;d#a)};{(#x;0^x@!10)}B x]y}'/+a:.'0:"i/p099_base_exp.txt"}
X[100]{-2!1+*|(1000000000001>-2!1+*:)(2(+/(1 1;2 1)*)/)/1 1} /k(k-1)/n(n-1)=1/2, x=2n-1, y=2k-1, x^2-2v^2=-1

` 0:,/$"\n",$[Xf;Xf,"/",Xn," FAILED";"all ",Xn," ok"];
