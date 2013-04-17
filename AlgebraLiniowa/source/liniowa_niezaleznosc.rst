Liniowa  zależność  i niezależność  wektorów
--------------------------------------------

.. admonition:: **Liniowa zależność**

   Układ wektorów :math:`(\,x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r})`
   jest **liniowo zależny** (w skrócie: l.z.), gdy co najmniej jeden z
   tych wektorów wyraża się liniowo przez wektory pozostałe:

:math:`\mathop  \vee \limits_{1 \le i \le r} \,x_{ i}  =  \beta _{ 1} \,x_{ 1} \, + \, \ldots \,\beta _{ i\, - \,1} \,x_{ i\, - \,1} \, + \beta _{ i\, + \,1} \,x_{ i\, + \,1} \, +  \ldots  + \,\beta _{ r} \,x_{ r}`.

Uwaga:  co  najmniej  jeden,  to  znaczy  niekoniecznie  każdy.

Układ  wektorów  :math:`(\,x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} )`  jest  liniowo  niezależny  (w skrócie: l.n.),
gdy  nie  jest  liniowo  zależny.  Wtedy  żadnego  z  wektorów  tego  układu
nie  można  przedstawić  w  postaci  kombinacji  liniowej  wektorów  pozostałych.

**Przykład.**  

Rozważmy  układ  wektorów  geometrycznych  :math:`\left( {\,\vec a_{ 1} ,\,\vec a_{ 2} ,\,\vec a_{ 3} ,\,\vec b\,} \right)`, gdzie 

.. math::

   \vec a_{ 1}  \bot \,\vec a_{ 2}  \bot \,\vec a_{ 3}  \bot \,\vec a_{ 1} ,{\rm{   }}\vec b\, = \vec a_{ 1}  + \,\vec a_{ 2}.   

Wektory  :math:`\vec a_{ 1} ,\,\vec a_{ 2} \,{\rm{i}}\vec b`  leżą  więc
w  jednej  płaszczyźnie,  natomiast  wektor  :math:`\vec a_{ 3}`  jest  do  nich  prostopadły.  Wtedy

:math:`\left( {\,\vec a_{ 1} ,\,\vec a_{ 2} ,\,\vec a_{ 3} ,\,\vec b\,} \right)` jest układem liniowo zależnym,  bo :math:`\vec b = 1\, \cdot \,\vec a_{ 1}  + 1\, \cdot \,\vec a_{ 2}  + 0\, \cdot \,\vec a_{ 3}`,
a  także :math:`\vec a_{ 1}  = \,1\, \cdot \,\vec b - 1\, \cdot \,\vec a_{ 2}  + 0\, \cdot \,\vec a_{ 3}`, oraz	:math:`\vec a_{ 2}  = \,1\, \cdot \,\vec b - 1\, \cdot \,\vec a_{ 1}  + 0\, \cdot \,\vec a_{ 3}` (chociaż  :math:`\vec a_{ 3}`  nie wyraża się liniowo przez :math:`\vec a_{ 1} ,\,\vec a_{ 2} \,{\rm{i}}\vec b`).

:math:`\left( {\,\vec a_{ 1} ,\,\vec a_{ 2} ,\,\vec a_{ 3}  } \right)`	jest układem liniowo niezależnym,  bo  kombinacja  liniowa  dowolnych  dwóch z  tych  wektorów  jest  wektorem  prostopadłym  do  trzeciego.

:math:`\left( {\,\vec a_{ 1} ,\,\vec a_{ 2} ,\,\vec a_{ 3} ,\vec 0\,} \right)` jest układem liniowo zależnym,  bo   :math:`\vec 0\, = \,0\, \cdot \,\vec a_{ 1} \, + 0\, \cdot \,\vec a_{ 2} \, + 0\, \cdot \,\vec a_{ 3}` (chociaż żaden inny spośród tych wektorów nie wyraża się liniowo  przez wektory pozostałe).

.. admonition:: **Twierdzenie**

   Układ wektorów :math:`(\,x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} )`
   jest liniowo zależny wtedy i tylko wtedy, gdy istnieje nietrywialna
   kombinacja liniowa tych wektorów równa wektorowi zerowemu:

   .. math:: 
      :label: tw2

      \left( {x_{ i} } \right)_{\,1}^{\,r} - \,{\rm{l}}{\rm{.z}}{\rm{.
      }} \Leftrightarrow {\rm{ }}\mathop \vee \limits_{(\alpha _i )_{
      1}^{ r} } \left[ {\,\left( {\mathop \vee \limits_{1 \le i \le r}
      \,\alpha _{ i} \, \ne \,0} \right){\rm{ }} \wedge {\rm{
      }}\sum\limits_{i\, = \,1}^r {\alpha _{ i} \,x_{ i} \, =
      \,{\rm{\theta }}\,} } \right]`.

Dowód.

:math:`\Rightarrow`:	

Niech  układ  :math:`(\,x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} )`  będzie  liniowo  zależny.  
Wtedy: 

.. math::
   
   \mathop \vee \limits_{1 \le i \le r} \,x_{ i} = \beta _{ 1} \,x_{
   1} \, + \ldots + \beta _{ i\, - \,1} \,x_{ i\, - \,1} \, + \beta _{
   i\, + \,1} \,x_{ i\, + \,1} \, + \ldots + \beta _{ r} \,x_{ r}`,
   :math:`\beta _{ 1} \,x_{ 1} \, + \ldots + \beta _{ i\, - \,1} \,x_{
   i\, - \,1} \, + ( - 1)x_{ i} \, + \beta _{ i\, + \,1} \,x_{ i\, +
   \,1} \, + \ldots + \beta _{ r} \,x_{ r} \, = \,{\rm{\theta }}.


Kombinacja liniowa po lewej stronie jest nietrywialna, bo :math:`- 1\,
\ne \,0`. Zakładamy, że istnieje nietrywialna kombinacja liniowa
wektorów :math:`x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r}`, równa
wektorowi zerowemu:



	:math:`\alpha _{ 1} \,x_{ 1} \, +  \ldots  + \alpha _{ i\, - \,1} \,x_{ i\, - \,1} \, + \alpha _{ i} \,x_{ i} \, + \alpha _{ i\, + \,1} \,x_{ i\, + \,1} \, +  \ldots \alpha _{ r} \,x_{ r} \, = \,{\rm{\theta }}\,{\rm{,     }}\alpha _{ i}  \ne \,0`.

Wtedy   :math:`\alpha _{ i} \,x_{ i}  = \, - \alpha _{ 1} \,x_{ 1} \, -  \ldots  - \alpha _{ i\, - \,1} \,x_{ i\, - \,1} \, - \alpha _{ i\, + \,1} \,x_{ i\, + \,1} \, -  \ldots  - \alpha _{ r} \,x_{ r}`, skąd   :math:`x_{ i}  = \,\beta _{ 1} \,x_{ 1} \, +  \ldots  + \beta _{ i\, - \,1} \,x_{ i\, - \,1} \, + \beta _{ i\, + \,1} \,x_{ i\, + \,1} \, +  \ldots  + \beta _{ r} \,x_{ r}`, gdzie   :math:`\beta _j \, = \, - \,\frac{{\alpha _j }}{{\alpha _i }},{\rm{    }}j\, = \,1, \ldots ,i - 1,i + 1, \ldots ,r.`

Otrzymaliśmy  warunek  liniowej  zależności  układu  :math:`(\,x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} )`.


Wniosek:   

Układ wektorów :math:`(\,x_{ 1} ,\,x_{ 2} ,\, \ldots ,\,x_{ r} )` jest
liniowo niezależny wtedy i tylko wtedy, gdy nie istnieje nietrywialna
kombinacja liniowa tych wektorów równa wektorowi zerowemu, tzn. gdy
jedyną kombinacją liniową tych wektorów równą :math:`{\rm{\theta }}`
jest kombinacja trywialna:

.. math:: 

   \left( {x_{ i} } \right)_{\,1}^{\,r} - \,{\rm{l}}{\rm{.n}}{\rm{.
   }} \Leftrightarrow {\rm{ }}\mathop \wedge \limits_{(\alpha _i )_1^r
   } \left[ {\,\sum\limits_{i\, = \,1}^r {\alpha _{ i} \,x_{ i} =
   {\rm{\theta }}} \Rightarrow {\rm{ }}\left( {\mathop \wedge
   \limits_{1\, \le \,i\, \le \,r} \alpha _{ i} = \,0} \right) }
   \right].


(każda kombinacja liniowa tych wektorów równa :math:`{\rm{\theta }}` jest kombinacją trywialną)

Przez  kontrapozycję  otrzymujemy  warunek  równoważny:

.. math::
   :label: nietryw
   \left( {x_{ i} } \right)_{\,1}^{\,r}  - \,{\rm{l}}{\rm{.n}}{\rm{.     }} \Leftrightarrow {\rm{     }}\mathop  \wedge \limits_{(\alpha _i )_1^r } \left[ {\left( {\mathop  \vee \limits_{1 \le i \le r} \,\alpha _{ i}  \ne  0} \right){\rm{   }} \Rightarrow {\rm{   }}\sum\limits_{i\, = \,1}^r {\alpha _{ i} \,x_{ i}  \ne  {\rm{\theta }}\,} } \right]
\]


(każda nietrywialna kombinacja liniowa tych wektorów jest różna od :math:`{\rm{\theta }}`).

Łatwo zauważyć, że przez zaprzeczenie obydwu stron tożsamości
:eq:`nietryw` otrzymamy warunek :eq:`tw2` liniowej zależności
wektorów.



