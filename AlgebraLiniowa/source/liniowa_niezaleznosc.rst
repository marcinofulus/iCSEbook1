Liniowa  zależność  i niezależność  wektorów
--------------------------------------------

Def.:	Układ  wektorów  :math:`(\,x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} )`  jest  liniowo  zależny  (w skrócie: l.z.),
gdy  co  najmniej  jeden  z  tych  wektorów  wyraża  się  liniowo  przez  wektory  pozostałe:

:math:`\mathop  \vee \limits_{1 \le i \le r} \,x_{ i}  =  \beta _{ 1} \,x_{ 1} \, + \, \ldots \,\beta _{ i\, - \,1} \,x_{ i\, - \,1} \, + \beta _{ i\, + \,1} \,x_{ i\, + \,1} \, +  \ldots  + \,\beta _{ r} \,x_{ r} `.

Uwaga:  co  najmniej  jeden,  to  znaczy  niekoniecznie  każdy.

Układ  wektorów  :math:`(\,x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} )`  jest  liniowo  niezależny  (w skrócie: l.n.),
gdy  nie  jest  liniowo  zależny.  Wtedy  żadnego  z  wektorów  tego  układu
nie  można  przedstawić  w  postaci  kombinacji  liniowej  wektorów  pozostałych.

Przykład.  Rozważmy  układ  wektorów  geometrycznych  :math:`\left( {\,\vec a_{ 1} ,\,\vec a_{ 2} ,\,\vec a_{ 3} ,\,\vec b\,} \right)`,
gdzie   \[
\vec a_{ 1}  \bot \,\vec a_{ 2}  \bot \,\vec a_{ 3}  \bot \,\vec a_{ 1} ,{\rm{   }}\vec b\, = \vec a_{ 1}  + \,\vec a_{ 2} 
\].   Wektory  :math:`\vec a_{ 1} ,\,\vec a_{ 2} \,{\rm{i}}\vec b`  leżą  więc
w  jednej  płaszczyźnie,  natomiast  wektor  :math:`\vec a_{ 3} `  jest  do  nich  prostopadły.  Wtedy

:math:`\left( {\,\vec a_{ 1} ,\,\vec a_{ 2} ,\,\vec a_{ 3} ,\,\vec b\,} \right)`	–	układ  l.z.,  bo	:math:`\vec b = 1\, \cdot \,\vec a_{ 1}  + 1\, \cdot \,\vec a_{ 2}  + 0\, \cdot \,\vec a_{ 3} `,
			a  także	:math:`\vec a_{ 1}  = \,1\, \cdot \,\vec b - 1\, \cdot \,\vec a_{ 2}  + 0\, \cdot \,\vec a_{ 3} `,
			oraz	:math:`\vec a_{ 2}  = \,1\, \cdot \,\vec b - 1\, \cdot \,\vec a_{ 1}  + 0\, \cdot \,\vec a_{ 3} `
		(chociaż  :math:`\vec a_{ 3} `  nie wyraża się liniowo przez :math:`\vec a_{ 1} ,\,\vec a_{ 2} \,{\rm{i}}\vec b`).

:math:`\left( {\,\vec a_{ 1} ,\,\vec a_{ 2} ,\,\vec a_{ 3}  } \right)`	–	układ  l.n.,  bo  kombinacja  liniowa  dowolnych  dwóch
		z  tych  wektorów  jest  wektorem  prostopadłym  do  trzeciego.

:math:`\left( {\,\vec a_{ 1} ,\,\vec a_{ 2} ,\,\vec a_{ 3} ,\vec 0\,} \right)`	–	układ  l.z.,  bo   :math:`\vec 0\, = \,0\, \cdot \,\vec a_{ 1} \, + 0\, \cdot \,\vec a_{ 2} \, + 0\, \cdot \,\vec a_{ 3} `
		(chociaż żaden inny spośród tych wektorów nie wyraża się liniowo
		przez wektory pozostałe).

Tw.:  Układ  wektorów  :math:`(\,x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} )`  jest  liniowo  zależny  wtedy  i  tylko  wtedy,  gdy
istnieje  nietrywialna  kombinacja  liniowa  tych  wektorów  równa  wektorowi  zerowemu:
	:math:`\left( {x_{ i} } \right)_{\,1}^{\,r}  - \,{\rm{l}}{\rm{.z}}{\rm{.     }} \Leftrightarrow {\rm{     }}\mathop  \vee \limits_{(\alpha _i )_{ 1}^{ r} } \left[ {\,\left( {\mathop  \vee \limits_{1 \le i \le r} \,\alpha _{ i} \, \ne \,0} \right){\rm{   }} \wedge {\rm{   }}\sum\limits_{i\, = \,1}^r {\alpha _{ i} \,x_{ i} \, = \,{\rm{\theta }}\,} } \right]`.	(1)

Dowód.
:math:`\Rightarrow`:	Niech  układ  :math:`(\,x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} )`  będzie  liniowo  zależny.  Wtedy
	:math:`\mathop  \vee \limits_{1 \le i \le r} \,x_{ i}  =  \beta _{ 1} \,x_{ 1} \, +  \ldots  + \beta _{ i\, - \,1} \,x_{ i\, - \,1} \, + \beta _{ i\, + \,1} \,x_{ i\, + \,1} \, +  \ldots  + \beta _{ r} \,x_{ r} `,
	:math:`\beta _{ 1} \,x_{ 1} \, +  \ldots  + \beta _{ i\, - \,1} \,x_{ i\, - \,1} \, + ( - 1)x_{ i} \, + \beta _{ i\, + \,1} \,x_{ i\, + \,1} \, +  \ldots  + \beta _{ r} \,x_{ r} \, = \,{\rm{\theta }}`.
	Kombinacja  liniowa  po  lewej  stronie  jest  nietrywialna,  bo  :math:` - 1\, \ne \,0`.
	Zakładamy,  że  istnieje  nietrywialna  kombinacja  liniowa  wektorów  :math:`x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} `,
	równa  wektorowi  zerowemu:
	:math:`\alpha _{ 1} \,x_{ 1} \, +  \ldots  + \alpha _{ i\, - \,1} \,x_{ i\, - \,1} \, + \alpha _{ i} \,x_{ i} \, + \alpha _{ i\, + \,1} \,x_{ i\, + \,1} \, +  \ldots \alpha _{ r} \,x_{ r} \, = \,{\rm{\theta }}\,{\rm{,     }}\alpha _{ i}  \ne \,0`.
	Wtedy   :math:`\alpha _{ i} \,x_{ i}  = \, - \alpha _{ 1} \,x_{ 1} \, -  \ldots  - \alpha _{ i\, - \,1} \,x_{ i\, - \,1} \, - \alpha _{ i\, + \,1} \,x_{ i\, + \,1} \, -  \ldots  - \alpha _{ r} \,x_{ r} `,
	skąd   :math:`x_{ i}  = \,\beta _{ 1} \,x_{ 1} \, +  \ldots  + \beta _{ i\, - \,1} \,x_{ i\, - \,1} \, + \beta _{ i\, + \,1} \,x_{ i\, + \,1} \, +  \ldots  + \beta _{ r} \,x_{ r} `,
	gdzie   :math:`\beta _j \, = \, - \,\frac{{\alpha _j }}{{\alpha _i }},{\rm{    }}j\, = \,1, \ldots ,i - 1,i + 1, \ldots ,r.`
	Otrzymaliśmy  warunek  liniowej  zależności  układu  :math:`(\,x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} )`.
Wniosek:   Układ  wektorów  :math:`(\,x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} )`  jest  liniowo  niezależny  wtedy  i  tylko  wtedy,  gdy
nie  istnieje  nietrywialna  kombinacja  liniowa  tych  wektorów  równa  wektorowi  zerowemu,  tzn.
gdy  jedyną  kombinacją  liniową  tych  wektorów  równą  :math:`{\rm{\theta }}`  jest  kombinacja  trywialna:
	\[
\left( {x_{ i} } \right)_{\,1}^{\,r}  - \,{\rm{l}}{\rm{.n}}{\rm{.     }} \Leftrightarrow {\rm{     }}\mathop  \wedge \limits_{(\alpha _i )_1^r } \left[ {\,\sum\limits_{i\, = \,1}^r {\alpha _{ i} \,x_{ i}   =  {\rm{\theta    }}}  \Rightarrow {\rm{   }}\left( {\mathop  \wedge \limits_{1\, \le \,i\, \le \,r} \alpha _{ i}  = \,0} \right) } \right]
\].	(2)
	(każda kombinacja liniowa tych wektorów równa :math:`{\rm{\theta }}` jest kombinacją trywialną)
Przez  kontrapozycję  otrzymujemy  warunek  równoważny:
	\[
\left( {x_{ i} } \right)_{\,1}^{\,r}  - \,{\rm{l}}{\rm{.n}}{\rm{.     }} \Leftrightarrow {\rm{     }}\mathop  \wedge \limits_{(\alpha _i )_1^r } \left[ {\left( {\mathop  \vee \limits_{1 \le i \le r} \,\alpha _{ i}  \ne  0} \right){\rm{   }} \Rightarrow {\rm{   }}\sum\limits_{i\, = \,1}^r {\alpha _{ i} \,x_{ i}  \ne  {\rm{\theta }}\,} } \right]
\]	(2')
	(każda nietrywialna kombinacja liniowa tych wektorów jest różna od :math:`{\rm{\theta }}`).
Łatwo  zauważyć,  że  przez  zaprzeczenie  obydwu  stron  tożsamości  (2')  otrzymamy  warunek  (1)
liniowej  zależności  wektorów.
Przykłady:
1.)	Niech	$a\, = \,\left( {\begin{array}{*{20}c}
   1  \\
   0  \\
   1  \\
\end{array}} \right),{\rm{     }}b\, = \,\left( {\begin{array}{*{20}c}
   0  \\
   1  \\
   0  \\
\end{array}} \right),{\rm{     }}c\, = \,\left( {\begin{array}{*{20}c}
   2  \\
   2  \\
   2  \\
\end{array}} \right){\rm{        }} \in \,\user1{R}^{ 3} $.
	Układ  :math:`(\,a,b,c\,)`  jest  liniowo  zależny,  bo
	1?	:math:`c\, = \,2\,a\, + \,2\,b`	(wektor  c  wyraża się liniowo przez wektory a, b),  a  także
	2?	:math:`2\,a\, + \,2\,b\, - \,c\, = \,{\rm{\theta }}`	(istnieje nietrywialna kombinacja liniowa wektorów a, b, c równa ).
2.)	Niech	$a\, = \,\left( {\begin{array}{*{20}c}
   2  \\
   2  \\
\end{array}} \right)\,,{\rm{   }}b\, = \,\left( {\begin{array}{*{20}c}
   1  \\
   0  \\
\end{array}} \right){\rm{     }} \in \,\user1{R}^{ 2} $.
	Układ  :math:`(a,b)`  jest  liniowo  niezależny.
	Rzeczywiście,  jeżeli	:math:`\alpha \,a\, + \,\beta \,b\, = \,{\rm{\theta }}`,
		czyli	$\alpha  \left( {\begin{array}{*{20}c}
   2  \\
   2  \\
\end{array}} \right)\, + \,\beta  \left( {\begin{array}{*{20}c}
   1  \\
   0  \\
\end{array}} \right) = \left( {\begin{array}{*{20}c}
   0  \\
   0  \\
\end{array}} \right)$,
		to	$\left( {\begin{array}{*{20}c}
   {2\,\alpha  + \beta }  \\
   {2\,\alpha }  \\
\end{array}} \right) = \left( {\begin{array}{*{20}c}
   0  \\
   0  \\
\end{array}} \right)$,
		skąd	$\left\{ \begin{array}{c}
 2\,\alpha  + \beta \, = \,0 \\ 
 2\,\alpha \, = \,0 \\ 
 \end{array} \right.:math:` ,	`\alpha \, = \,\beta \, = \,0$.
		A  zatem  dla  wektorów  a, b  zachodzi  implikacja   :math:`\alpha \,a\, + \,\beta \,b\, = \,{\rm{\theta    }} \Rightarrow {\rm{   }}\alpha \, = \,\beta \, = \,0`,
	co,  w  świetle  warunku  (2),  oznacza  ich  liniową  niezależność.
3.)	Niech		$e_{ 1} \, = \left( {\begin{array}{*{20}c}
   1  \\
   0  \\
    \ldots   \\
   0  \\
\end{array}} \right),{\rm{     }}e_{ 2} \, = \left( {\begin{array}{*{20}c}
   0  \\
   1  \\
    \ldots   \\
   0  \\
\end{array}} \right),{\rm{     }} \ldots ,{\rm{     }}e_{ n} \, = \left( {\begin{array}{*{20}c}
   0  \\
   0  \\
    \ldots   \\
   1  \\
\end{array}} \right){\rm{        }} \in \,K^{ n} $.
	Układ   :math:`\left( {e_{ i} } \right)_{\,1}^{ n} `  jest  liniowo  niezależny.
	Rzeczywiście,  jeżeli	:math:`\alpha _{ 1} \,e_{ 1} \, + \alpha _{ 2} \,e_{ 2} \, +  \ldots  + \,\alpha _{ n} \,e_{ n} \, = {\rm{\theta }}`,
		czyli	$\,\alpha _{ 1} \left( {\begin{array}{*{20}c}
   1  \\
   0  \\
    \ldots   \\
   0  \\
\end{array}} \right) + \alpha _{ 2} \left( {\begin{array}{*{20}c}
   0  \\
   1  \\
    \ldots   \\
   0  \\
\end{array}} \right) +  \ldots  + \alpha _{ n} \left( {\begin{array}{*{20}c}
   0  \\
   0  \\
    \ldots   \\
   1  \\
\end{array}} \right)\, = \,\left( {\begin{array}{*{20}c}
   0  \\
   0  \\
    \ldots   \\
   0  \\
\end{array}} \right)$,
		to	$\left( {\begin{array}{*{20}c}
   {\alpha _{ 1} }  \\
   {\alpha _{ 2} }  \\
    \ldots   \\
   {\alpha _{ n} }  \\
\end{array}} \right)\, = \,\left( {\begin{array}{*{20}c}
   {0_  }  \\
   {0_  }  \\
    \ldots   \\
   {0_  }  \\
\end{array}} \right):math:`,	 skąd	`\alpha _{ 1}  = \,\alpha _{ 2}  = \, \ldots \, = \,\alpha _{ n}  = \,0$.
	Wektory  :math:`e_{ 1} ,\,e_{ 2} ,\, \ldots ,\,e_{ n} `  spełniają  więc  warunek  (2):
	:math:`\alpha _{ 1} \,e_{ 1} \, + \alpha _{ 2} \,e_{ 2} \, +  \ldots  + \,\alpha _{ n} \,e_{ n} \, = {\rm{\theta      }} \Rightarrow {\rm{     }}\alpha _{ 1}  = \,\alpha _{ 2}  = \, \ldots \, = \,\alpha _{ n}  = \,0`,
	który  stwierdza  ich  liniową  niezależność.

4.)	W  przestrzeni  :math:`\user1{C}\,(R)`  liczb  zespolonych  nad  ciałem  liczb  rzeczywistych  wektory  1  oraz  i
	są  liniowo  niezależne,  bo
	:math:`\mathop  \wedge \limits_{\alpha ,\,\beta  \in \user1{R}} \,\left( {\,\alpha  \cdot 1\,  + \,\beta  \cdot i\, = \,0{\rm{     }} \Rightarrow {\rm{     }}\alpha   =  \beta   =  0\,} \right)`.
5.)	Układ  :math:`(x)`,  składający  się  z  jednego  wektora,  jest  liniowo  zależny
	wtedy  i  tylko  wtedy,  gdy  :math:`x = {\rm{\theta }}`.
	Rzeczywiście,  jeżeli  układ  :math:`(x)`  jest  l.z.,  to  istnieje  nietrywialna  (tu: jednoskładnikowa)
	kombinacja  liniowa  równa  wektorowi  zerowemu:   :math:`\alpha \,x\, = \,{\rm{\theta }}`,  gdzie  :math:`\alpha  \ne 0`.  Wtedy  :math:`x = {\rm{\theta }}`.
	Na odwrót,  gdy  :math:`x = {\rm{\theta }}`,  to  dla  każdego  :math:`\alpha  \ne 0`  zachodzi  :math:`\alpha \,x\, = \,{\rm{\theta }}`,  a  więc  istnieją  nietrywialne
	(jednoskładnikowe)  kombinacje  liniowe,  równe  wektorowi  zerowemu,  co  jest  równoważne
	liniowej  zależności.
6.)	Rozważmy  układ  :math:`M  =  (\,x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} )`  wektorów  przestrzeni  :MATH:`V(K)`.
	Jeżeli  jakieś  dwa  wektory  są  sobie  równe:   :math:`x_{ k}  = \,x_{ l} {\rm{   dla   }}1\, \le \,k\, < \,l\, \le \,r`,
	to  :MATH:`M`  jest  układem  liniowo  zależnym.  Rzeczywiście,  wtedy
	:math:`0 \cdot x_{ 1}  + \, \ldots \, + \,0 \cdot x_{ k\, - \,1} \, + \,1 \cdot x_{ k}   + \,0 \cdot x_{ k\, + \,1} \, + \, \ldots \, + \,0 \cdot x_{ l\, - \,1}   + \,( - \,1) \cdot x_{ l}  + \,0 \cdot x_{ l\, + \,1}   + \, \ldots \, + \,0 \cdot x_{ r} \, = {\rm{\theta }}`,
	przy  czym  kombinacja  liniowa  po  lewej  stronie  jest  nietrywialna,  bo   :math:`1\,, - 1\, \ne \,0`.
	Ogólniej,  układ  jest  liniowo  zależny  również  wtedy,  gdy  dwa wektory  są  proporcjonalne,
tzn.  gdy   :math:`x_{ k}  =  \lambda \,x_{ l} `   dla  pewnego  :math:`\lambda  \in K`.
7.)	Układ  zawierający  wektor  zerowy:   :math:`(\,x_{ 1} ,\, \ldots ,\,x_{ k\, - \,1} ,\,x_{ k}  = {\rm{\theta }}{\rm{,}}\,x_{ k\, + \,1} ,\, \ldots ,\,x_{ r} )`  jest  liniowo  zależny.
	Wtedy  bowiem  dla  dowolnego  skalara  :math:`\alpha  \ne 0`:
	:math:`0 \cdot x_{ 1}  + \, \ldots \, + \,0 \cdot x_{ k\, - \,1} \, + \,\alpha  \cdot x_{ k}  + \,0 \cdot x_{ k\, + \,1}  + \, \ldots \, + \,0 \cdot x_{ r} \, = {\rm{\theta }}`,
	czyli  istnieje  nietrywialna  kombinacja  liniowa  równa  wektorowi  zerowemu  :math:`{\rm{\theta }}`.
Niech  będą  dane  wektory  :math:`x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} \, \in \,V(K)`.  Łatwo  zauważyć,  że  jeżeli  układ
		 :math:`(\,x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} )`
jest  liniowo  zależny  (liniowo niezależny),  to,  dla  dowolnej  permutacji  :math:`\sigma  \in \Pi (r)`,  również  układ
		:math:`(\,x_{ \sigma (1)} ,\,x_{ \sigma (2)} ,\, \ldots ,\,x_{ \sigma (r)} )`
jest  liniowo  zależny  (liniowo niezależny).
Można  więc  mówić,  że  zbiór  wektorów  :math:`\{ \,x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} \} `  jest  liniowo  zależny  (niezależny),
albo  po  prostu,  że  wektory  :math:`\,x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} `  są  liniowo  zależne  (niezależne).
Podobnie  domknięcie  liniowe  układu  wektorów  nie  zależy  od  ich  kolejności:
:math:`L\,(\,x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} )\, = \,L\,(x_{ \sigma (1)} ,\,x_{ \sigma (2)} ,\, \ldots ,\,x_{ \sigma (r)} ),{\rm{        }}\sigma   \in  \Pi {\rm{(}} r {\rm{)}}`.
