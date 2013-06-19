Więzy holonomiczne i nieholonomiczne
====================================


﻿Więzy mechaniczne
-------------------

—  ograniczenia   nałożone  na  położenie  lub  ruch  układu  punktów  materialnych  w  przestrzeni.

Przykłady:  powierzchnia, po której ślizga się lub toczy ciało;  nić, na której zawieszony jest ciężarek.

Niech  :math:`x_i ,y_i ,z_i`  – współrzędne kartezjańskie  i-tego punktu materialnego układu, :math:`i = 1,2, \ldots ,N`.

Oznaczenie:

.. math::

   \begin{array}{l}
   x \equiv (x_1 ,x_2 , \ldots ,x_{3N} ): = (x_1 ,y_1 ,z_1 , \ldots ,x_N ,y_N ,z_N ), \\
   \dot x \equiv (\dot x_1 ,\dot x_2 , \ldots ,\dot x_{3N} ).
   \end{array}


Więzy  *geometryczne*:  nakładają ograniczenia jedynie na położenia (współrzędne) punktów układu:

.. math::
   :label: WH0.1

   f(x,t) = 0


Więzy  *kinematyczne*  nakładają dodatkowo ograniczenia na prędkości punktów układu:

.. math::
   :label: WH0.2

   g(x,\dot x,t) = 0.


Jeżeli  :math:`g(x,\dot x,t) = \frac{d}{{dt}}f_1 (x,t)`  lub  istnieje  funkcja  :math:`\mu (x)`  taka,  że  :math:`\mu (x) \cdot g(x,\dot x,t) = \frac{d}{{dt}}f_1 (x,t)` dla pewnej funkcji  :math:`f_1 (x,t)`,  to więzy kinematyczne  :eq:`WH0.2`  są  *całkowalne*  i  są  równoważne  więzom  geometrycznym:

.. math::

   f_1 (x,t) = c \quad  \text{czyli} \quad  f(x,t) \equiv f_1 (x,t) - c = 0.


Funkcja  :math:`\mu (x)` jest  wtedy  *czynnikiem całkującym*  równania  :eq:`WH0.2`.

Więzy geometryczne  i  całkowalne więzy kinematyczne:  więzy  *holonomiczne*.

Więzy kinematyczne niecałkowalne:  więzy  *nieholonomiczne*.

| 
**Przykład**:  Ruch punktu materialnego po powierzchni kuli.

Równanie więzów:

.. math::
   :label: WH0.3

   x^2  + y^2  + z^2  = R^2 \quad  \text{czyli} \quad  f(x,y,z) \equiv x^2  + y^2  + z^2  - R^2  = 0


–  więzy holonomiczne  (dwustronne, skleronomiczne).

Więzy  te  można  również  zapisać  w  postaci  różniczkowej   lub  kinematycznej:

.. math::
   :label: WH0.3.1

   df = 2xdx + 2ydy + 2zdz = 0 \quad \text{czyli} \quad  xdx + ydy + zdz = 0 \quad \text{(postać  różniczkowa)}


.. math::
   :label: WH0.3.2

   \frac{{df}}{{dt}} = 2x\dot x + 2y\dot y + 2z\dot z = 0 \quad \text{czyli} \quad  x\dot x + y\dot y + z\dot z = 0  \quad \text{(postać kinematyczna)}


Równanie  :eq:`WH0.3.2`  przedstawia  całkowalne  więzy  kinematyczne;  rzeczywiście,

.. math::

   x\dot x + y\dot y + z\dot z = \frac{d}{{dt}}\left[ {\frac{1}{2}\left( {x^2  + y^2  + z^2 } \right)} \right].


Tak więc obecność prędkości w równaniach więzów nie oznacza w ogólności,  że więzy te są nieholonomiczne.

Jeżeli forma różniczkowa  :math:`dW = a_1 dx_1  +  \ldots  + a_n dx_n  + a_t dt`,

gdzie  :math:`a_i  = a_i (x_1 , \ldots ,x_n ;t), \quad i = 1, \ldots ,n, \quad a_t  = a_t (x_1 , \ldots ,x_n ;t)`,  

jest różniczką zupełną pewnej funkcji  :math:`f(x_1 , \ldots ,x_n ;t)`  o  ciągłych pochodnych mieszanych:  :math:`dW = df`,

to zachodzą równości

.. math::
   :label: WH0.X

   \frac{{\partial a_i }}{{\partial x_j }} = \frac{{\partial a_j }}{{\partial x_i }}, \quad \frac{{\partial a_t }}{{\partial x_i }} = \frac{{\partial a_i }}{{\partial t}}, \quad i,j = 1, \ldots ,n.


Rozważmy formę różniczkową

.. math::
   :label: WH0.4

   F = xdx + ydy + zdz \equiv f_x dx + f_y dy + f_z dz,


która jest różniczką zupełną:  :math:`F = d\left[ {{\textstyle{1 \over 2}}(x^2  + y^2  + z^2 )} \right]`.

Warunki  :eq:`WH0.X`  są tutaj oczywiście spełnione:

.. math::

   \frac{{\partial f_x }}{{\partial y}} = 0 = \frac{{df_y }}{{dx}}, \quad \frac{{\partial f_x }}{{\partial z}} = 0 = \frac{{df_z }}{{dx}}, \quad \frac{{\partial f_y }}{{\partial z}} = 0 = \frac{{df_z }}{{dy}}.


Warunki  :eq:`WH0.X`  nie zachodzą natomiast dla form

.. math::
   :label: WH0.5

   dU = xF = x^2 dx + xydy + xzdz \equiv a_x dx + a_y dy + a_z dz


.. math::
   :label: WH0.6

   dV = \frac{1}{x}F = dx + \frac{y}{x}dy + \frac{z}{x}dz \equiv b_x dx + b_y dy + b_z dz.


.. math::
   :label: WH0.7

   dW = e^x F = xe^x dx + ye^x dy + ze^x dz \equiv c_x dx + c_y dy + c_z dz


Rzeczywiście,

.. math::

   \begin{array}{l}
   \frac{{\partial a_x }}{{\partial y}} = 0 \ne \frac{{\partial a_y }}{{\partial x}} = y, \quad \frac{{\partial a_x }}{{\partial z}} = 0 \ne \frac{{\partial a_z }}{{\partial x}} = z, \quad  \text{chociaż} \quad  \frac{{\partial a_y }}{{\partial z}} = 0 = \frac{{\partial a_z }}{{\partial y}}, \\
   \frac{{\partial b_x }}{{\partial y}} = 0 \ne \frac{{\partial b_y }}{{\partial x}} =  - \frac{y}{{x^2 }}, \quad \frac{{\partial b_x }}{{\partial z}} = 0 \ne \frac{{\partial b_z }}{{\partial x}} =  - \frac{z}{{x^2 }}, \quad  \text{chociaż} \quad  \frac{{\partial b_y }}{{\partial z}} = 0 = \frac{{\partial b_z }}{{\partial y}}, \\
   \frac{{\partial c_x }}{{\partial y}} = 0 \ne \frac{{\partial c_y }}{{\partial x}} = ye^x , \quad  \frac{{\partial c_x }}{{\partial z}} = 0 \ne \frac{{\partial c_z }}{{\partial x}} = ze^x , \quad \text{chociaż} \quad  \frac{{\partial c_y }}{{\partial z}} = 0 = \frac{{\partial c_z }}{{\partial y}}. \\
   \end{array}


Jednak pomnożenie  form  :eq:`WH0.5`,  :eq:`WH0.6` lub  :eq:`WH0.7`  przez  odpowiedni  czynnik całkujący  daje  formę  :eq:`WH0.4`, która jest różniczką zupełną:

.. math::

   \frac{1}{x}dU = xdV = e^{ - x} dW = {\textstyle{1 \over 2}}d(x^2  + y^2  + z^2 ),


wobec czego  równania  :math:`dU = 0,  dV = 0`  oraz  :math:`dW = 0`  przedstawiają więzy holonomiczne.

A zatem warunki  :eq:`WH0.X`  nie są konieczne  dla holonomiczności  więzów danych w postaci różniczkowej

.. math::

   a_1 dx_1  +  \ldots  + a_n dx_n  + a_t dt = 0.



Warunek  konieczny  całkowalności  więzów  w  postaci  różniczkowej
-------------------------------------------------------------------


Niech będzie dane różniczkowe równanie więzów:

.. math::
   :label: WH0.8

   dW = a_0 dx_0  + a_1 dx_1  +  \ldots  + a_n dx_n  = 0,


gdzie  :math:`a_i  = a_i (x_0 ,x_1 , \ldots ,x_n ), \quad  i = 0,1, \ldots ,n`,  przy czym  :math:`x_0  = t`.

Przypuśćmy, że istnieje funkcja :math:`\mu (x_0 ,x_1 , \ldots ,x_n )`, która jest czynnikiem całkującym dla różniczki :math:`dW`:

.. math::

   \begin{array}{l}
   & \mu dW = df \\ 
   & a_0 \mu dx_0  + a_1 \mu dx_1  +  \ldots  + a_n \mu dx_n  = \frac{{\partial f}}{{\partial x_0 }}dx_0  + \frac{{\partial f}}{{\partial x_1 }}dx_1  +  \ldots \frac{{\partial f}}{{\partial x_n }}dx_n  \\ 
   \end{array}


dla  pewnej  funkcji  :math:`f(x_0 ,x_1 , \ldots ,x_n )`.  Warunki  :eq:`WH0.X`  przyjmują  teraz  postać

.. math::

   \frac{{\partial (a_{k} \mu )}}{{\partial x_j }} = \frac{{\partial (a_j \mu )}}{{\partial x_{k} }}, \quad  j,k = 0,1, \ldots ,n,


co zapiszemy krótko:

.. math::

   \partial _j (a_{k} \mu ) = \partial _k (a_{j} \mu ), \quad  j,k = 0,1, \ldots ,n.


Stąd

.. math::

   (\partial _j a_{k} )\mu  + a_{k} (\partial _j \mu ) = (\partial _{k} a_j )\mu  + a_j (\partial _{k} \mu ),


czyli

.. math::

   \left[ {(\partial _j a_{k} ) - (\partial _{k} a_j )} \right]\mu  = a_j (\partial _{k} \mu ) - a_{k} (\partial _j \mu ).


Otrzymaną równość mnożymy obustronnie przez  :math:`a_{i}`,  po czym przepisujemy  dwukrotnie,  dokonując  kolejno cyklicznego przestawienia wskaźników:  :math:`(i,j,k) \to (j,k,i) \to (k,i,j)`:

.. math::

   \begin{array}{l}
   & a_{i} \left[ {(\partial _j a_{k} ) - (\partial _{k} a_j )} \right]\mu  = a_{i} a_j (\partial _{k} \mu ) - a_{i} a_{k} (\partial _j \mu ) \\ 
   & a_j \left[ {(\partial _{k} a_{i} ) - (\partial _{i} a_{k} )} \right]\mu  = a_j a_{k} (\partial _{i} \mu ) - a_j a_{i} (\partial _{k} \mu ) \\ 
   & a_{k} \left[ {(\partial _{i} a_j ) - (\partial _j a_{i} )} \right]\mu  = a_{k} a_{i} (\partial _j \mu ) - a_{k} a_j (\partial _{i} \mu ) \\ 
   \end{array}.


Dodając  stronami  i  dzieląc  przez  \mu   otrzymujemy:

.. math::

   a_{i} \left[ {(\partial _j a_{k} ) - (\partial _{k} a_j )} \right] + a_j \left[ {(\partial _{k} a_{i} ) - (\partial _{i} a_{k} )} \right] + a_{k} \left[ {(\partial _{i} a_j ) - (\partial _j a_{i} )} \right] = 0,


co można zapisać

.. math::
   :label: WH0.XX

   \begin{array}{*{20}c}
    \to   \\
    {}  \\
    {}  \\
   \end{array}\left| {\begin{array}{*{20}c}
   {a_{i} } & {a_j } & {a_{k} }  \\
   {\partial _i } & {\partial _j } & {\partial _k }  \\
   {a_{i} } & {a_j } & {a_{k} }  \\
   \end{array}} \right| = 0, \quad  i,j,k = 0,1, \ldots ,n .


(przy wyliczaniu wyznacznika należy zastosować  rozwinięcie Laplace’a względem pierwszego wiersza).

Równania  :eq:`WH0.XX`  stanowią  warunek konieczny  holonomiczności więzów  zadanych przez  :eq:`WH0.8`.
Zauważmy,  że  spełnienie  warunku  :eq:`WH0.X`  implikuje  spełnienie  :eq:`WH0.XX`,  ten  drugi  warunek  jest jednak  mniej wymagający.


Dla form  :eq:`WH0.5`,  :eq:`WH0.6`  i  :eq:`WH0.7`  warunek  :eq:`WH0.XX`  jest spełniony:

.. math::

   \begin{array}{l}
   \begin{array}{*{20}c}
    \to   \\
   {}  \\
   {}  \\
   \end{array} \left| {\begin{array}{*{20}c}
   {a_x } & {a_y } & {a_z }  \\
   {\partial _x } & {\partial _y } & {\partial _z }  \\
   {a_x } & {a_y } & {a_z }  \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
   {x^2 } & {xy} & {xz}  \\
   {\partial _x } & {\partial _y } & {\partial _z }  \\
   {x^2 } & {xy} & {xz}  \\
   \end{array}} \right| =  \\ 
     = x^2  \cdot \left[ {\frac{\partial }{{\partial y}}(xz) - \frac{\partial }{{\partial z}}(xy)} \right] + xy \cdot \left[ {\frac{\partial }{{\partial z}}x^2  - \frac{\partial }{{\partial x}}(xz)} \right] + xz \cdot \left[ {\frac{\partial }{{\partial x}}(xy) - \frac{\partial }{{\partial y}}x^2 } \right] =  \\ 
     =  - xyz + xyz = 0, \\ 
   \end{array}


| 

.. math::

   \begin{array}{l}
   \begin{array}{*{20}c}
    \to   \\
   {}  \\
   {}  \\
   \end{array} \left| {\begin{array}{*{20}c}
   {b_x } & {b_y } & {b_z }  \\
   {\partial _x } & {\partial _y } & {\partial _z }  \\
   {b_x } & {b_y } & {b_z }  \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
   1 & {\frac{y}{x}} & {\frac{z}{x}}  \\
   {\partial _x } & {\partial _y } & {\partial _z }  \\
   1 & {\frac{y}{x}} & {\frac{z}{x}}  \\
   \end{array}} \right| =  \\ 
     = 1 \cdot \left[ {\frac{\partial }{{\partial y}}\left( {\frac{z}{x}} \right) - \frac{\partial }{{\partial z}}\left( {\frac{y}{x}} \right)} \right] + \frac{y}{x} \cdot \left[ {\frac{\partial }{{\partial z}}1 - \frac{\partial }{{\partial x}}\left( {\frac{z}{x}} \right)} \right] + \frac{z}{x} \cdot \left[ {\frac{\partial }{{\partial x}}\left( {\frac{y}{x}} \right) - \frac{\partial }{{\partial y}}1} \right] =  \\ 
     =  - \frac{y}{x}\left( { - \frac{z}{{x^2 }}} \right) + \frac{z}{x}\left( { - \frac{y}{{x^2 }}} \right) = \frac{{yz}}{{x^3 }} - \frac{{yz}}{{x^3 }} = 0 \\ 
   \end{array}


| 

.. math::

   \begin{array}{l}
   \begin{array}{*{20}c}
    \to   \\
   {}  \\
   {}  \\
   \end{array} \left| {\begin{array}{*{20}c}
   {c_x } & {c_y } & {c_z }  \\
   {\partial _x } & {\partial _y } & {\partial _z }  \\
   {c_x } & {c_y } & {c_z }  \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
   {xe^x } & {ye^x } & {ze^x }  \\
   {\partial _x } & {\partial _y } & {\partial _z }  \\
   {xe^x } & {ye^x } & {ze^x }  \\
   \end{array}} \right| =  \\ 
     = e^x \left\{ {x \cdot \left[ {\frac{\partial }{{\partial y}}(ze^x ) - \frac{\partial }{{\partial z}}(ye^x )} \right] + y \cdot \left[ {\frac{\partial }{{\partial z}}(xe^x ) - \frac{\partial }{{\partial x}}(ze^x )} \right] + z \cdot \left[ {\frac{\partial }{{\partial x}}(ye^x ) - \frac{\partial }{{\partial y}}(xe^x )} \right]} \right\} =  \\ 
     = e^x ( - yze^x  + yze^x ) = 0. \\ 
   \end{array}


| 
W przypadku koła toczącego się pionowo bez poślizgu po płaszczyźnie  :math:`xy`  współrzędnymi są:

:math:`x, y` – współrzędne kartezjańskie punktu styczności,

:math:`\varphi` – kąt obrotu koła,

:math:`\psi` – kąt nachylenia chwilowej płaszczyzny koła  (pionowej względem płaszczyzny :math:`xy`)  do osi  :math:`x`.


Różniczkowe równania więzów mają postać:

.. math::

   \begin{array}{l}
   dW_1  = a_x dx + a_y dy + a_\varphi  d\varphi  + a_\psi  d\psi  = dx + R\cos \psi  \cdot d\varphi  = 0, \\ 
   dW_2  = b_x dx + b_y dy + b_\varphi  d\varphi  + b_\psi  d\psi  = dy + R\sin \psi  \cdot d\varphi {\kern 1pt}  = {\kern 1pt} 0. \\ 
   \end{array}


Przyjmując  :math:`(x_1 ,x_2 ,x_3 ) = (x,\varphi ,\psi )`  sprawdzamy warunek  :eq:`WH0.XX`  dla  formy  :math:`dW_1`:

.. math::

   \begin{array}{*{20}c}
    \to   \\
   {}  \\
   {}  \\
   \end{array}\left| {\begin{array}{*{20}c}
   {a_x } & {a_\varphi  } & {a_\psi  }  \\
   {\partial _x } & {\partial _\varphi  } & {\partial _\psi  }  \\
   {a_x } & {a_\varphi  } & {a_\psi  }  \\
   \end{array}} \right| = \begin{array}{*{20}c}
    \to   \\
   {}  \\
   {}  \\
   \end{array}\left| {\begin{array}{*{20}c}
   1 & {R\cos \psi } & 0  \\
   {\partial _x } & {\partial _\varphi  } & {\partial _\psi  }  \\
   1 & {R\cos \psi } & 0  \\
   \end{array}} \right| = R\sin \psi  \ne 0.


Przyjmując  :math:`(x_1 ,x_2 ,x_3 ) = (y,\varphi ,\psi )`  sprawdzamy warunek  :eq:`WH0.XX` dla  formy :math:`dW_2`:

.. math::

   \begin{array}{*{20}c}
    \to   \\
   {}  \\
   {}  \\
   \end{array}\left| {\begin{array}{*{20}c}
   {b_y } & {b_\varphi  } & {b_\psi  }  \\
   {\partial _y } & {\partial _\varphi  } & {\partial _\psi  }  \\
   {b_y } & {b_\varphi  } & {b_\psi  }  \\
   \end{array}} \right| = \begin{array}{*{20}c}
    \to   \\
   {}  \\
   {}  \\
   \end{array}\left| {\begin{array}{*{20}c}
   1 & {R\sin \psi } & 0  \\
   {\partial _y } & {\partial _\varphi  } & {\partial _\psi  }  \\
   1 & {R\sin \psi } & 0  \\
   \end{array}} \right| =  - R\cos \psi  \ne 0.


Obydwa równania przedstawiają więc więzy nieholonomiczne.


