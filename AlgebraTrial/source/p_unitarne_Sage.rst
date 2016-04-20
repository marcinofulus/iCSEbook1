
Application of Sage
-------------------

Inner Product
~~~~~~~~~~~~~

Iloczyn skalarny wektorów :math:`\quad
\boldsymbol{x}\,=\,
\left[\begin{array}{c} x_1 \\ x_2 \\ \dots \\ x_n \end{array}\right]\,,
\quad
\boldsymbol{y}\,=\,
\left[\begin{array}{c} y_1 \\ y_2 \\ \dots \\ y_n \end{array}\right]\quad
\in K^n\,,` :math:`\\`

gdzie :math:`\ K=R\ \,` lub :math:`\ K=C\,,\ ` można obliczyć stosując operację mnożenia 
:math:`\,` * :math:`\,`  bądź metody Sage'a:  
:math:`\,` ``dot_product()``, :math:`\,` ``hermitian_inner_product()``, 
:math:`\,` ``inner_product()``.

.. Metoda :math:`\,` ``dot_product()`` :math:`\,` oblicza iloczyn skalarny według wzoru

Pierwsze dwa sposoby obliczają iloczyn skalarny według wzoru

.. math::
   :label: xTy
   
   \langle\boldsymbol{x},\boldsymbol{y}\rangle\ \ =\ \ 
   \boldsymbol{x}^T\boldsymbol{y}\ \ =\ \ 
   \sum_{i\,=\,1}^n\ x_i\;y_i\,,

odpowiedniego dla wektorów rzeczywistych. 
Poniższy kod wyświetla iloczyn skalarny dwóch wektorów stopnia :math:`\,n\ `
w postaci symbolicznej i sprawdza, czy obydwa sposoby są równoważne:

.. code-block:: python
   
   sage: n = 4
   sage: x = vector([var('x%d' % k) for k in range(1,n+1)])
   sage: y = vector([var('y%d' % l) for l in range(1,n+1)])
   sage: print x.dot_product(y), bool(x.dot_product(y)==x*y)

   x1*y1 + x2*y2 + x3*y3 + x4*y4 True

Wektory mogą pochodzić z różnych pierścieni, jeśli operacje na ich elementach mają sens:

.. code-block:: python
   
   sage: x = vector(ZZ, [ 3,-1, 4])
   sage: y = vector(CDF,[-2, 7, 5])
   sage: xdy = x.dot_product(y)
   sage: print xdy, xdy.base_ring()
   
   7.0 Complex Double Field

Metoda :math:`\,` ``hermitian_inner_product()`` :math:`\,` wylicza iloczyn skalarny w postaci

.. math::
   
   \langle\boldsymbol{x},\boldsymbol{y}\rangle\ \ =\ \ 
   \boldsymbol{x}^+\boldsymbol{y}\ \ =\ \ 
   \sum_{i\,=\,1}^n\ x_i^*\,y_i\,,

odpowiedniej dla unitarnej przestrzeni :math:`\,C^n\ \,` 
(``dot_product()`` daje tu wynik błędny):

.. code-block:: python

   sage: x = vector([3+2*I,-1+I,2-I])
   sage: y = vector([1+I,2,-3*I])
   sage: xdy  = x.dot_product(y)
   sage: xhy = x.hermitian_inner_product(y)
   sage: print "Błędny wynik:     ", xdy
   sage: print "Poprawny wynik:", xhy

   Błędny wynik:      I - 4
   Poprawny wynik: -7*I + 6

Iloczyn skalarny w przestrzeni :math:`\,R^n\ ` można też określić bardziej ogólnie

.. math::
   :label: xTAy
   
   \langle\boldsymbol{x},\boldsymbol{y}\rangle\ \ =\ \ 
   \boldsymbol{x}^T\boldsymbol{A}\,\boldsymbol{y}\ \ =\ \ 
   \sum_{i,\,j=1}^n\ a_{ij}\;x_i\,y_j\,,
      
gdzie :math:`\ \boldsymbol{A}=[\,a_{ij}\,]_{n\times n}\in M_n(R)\ ` jest macierzą symetryczną i dodatnio określoną:

.. math::
   :label: ATA
   
   \boldsymbol{A}^T=\boldsymbol{A}\,,\qquad\
   \left[\ 
   \boldsymbol{x}^T\boldsymbol{A}\,\boldsymbol{x}\geq 0
   \quad\land\quad
   \left(\ \boldsymbol{x}^T\boldsymbol{A}\,\boldsymbol{x}=0
   \ \ \Leftrightarrow\ \ 
   \boldsymbol{x}=\boldsymbol{0}\ \right)\ \right]\,,\ \ 
   \boldsymbol{x}\in R^n\,.

(warunek :eq:`ATA` będzie spełniony wtedy i tylko wtedy, gdy 
:math:`\ \boldsymbol{A}=\boldsymbol{C}^T\boldsymbol{C}\,,\ \ \det\boldsymbol{C}\neq 0\,`).

Do wyliczenia iloczynu skalarnego w postaci :eq:`xTAy` służy metoda 
:math:`\,` ``inner_product()``. 
Macierz :math:`\,\boldsymbol{A}\ ` może być tam zadeklarowana
w definicji pierścienia, do którego należy wektor :math:`\,\boldsymbol{x}.`
Przy braku takiej deklaracji metoda działa tak, jak :math:`\,` ``dot_product()``:

.. code-block:: python

   sage: x = vector(QQ,[3, 2, 4,-1])
   sage: y = vector(ZZ,[3, 1,-4, 2])
   sage: xiy = x.inner_product(y)
   sage: xiy, xiy==x.dot_product(y)

   (-7, True)

Podany niżej kod wylicza iloczyn skalarny :eq:`xTAy` 
z macierzą :math:`\ \,\boldsymbol{A}=\boldsymbol{C}^T\boldsymbol{C}\ \,`
dla tych samych wektorów :math:`\,` ``x,y`` :math:`\,`
i :math:`\,` sprawdza poprawność wyniku bezpośrednim rachunkiem.  
Macierz :math:`\,\boldsymbol{A}\ `
jest odczytywana z definicji pierścienia *pierwszego* czynnika.
Przestawienie czynników daje więc inny wynik
(w tym wypadku zwykły iloczyn skalarny :eq:`xTy`).

.. code-block:: python

   sage: C= matrix(QQ,[[ 2,-1, 0, 3],
   ...                 [ 4,-2, 1,-1],
   ...                 [ 4, 1, 2,-5],
   ...                 [-3, 0, 2, 0]])
   
   sage: A = C.T*C
   
   sage: X = VectorSpace(QQ, 4, inner_product_matrix=A)
   sage: x = X([3,2,4,-1])
   
   sage: Y = FreeModule(ZZ,4)
   sage: y = Y([3,1,-4,2])
   
   sage: xiy = x.inner_product(y)
   sage: yix = y.inner_product(x)
   
   sage: test_xy = xiy==(x.row()*A*y.column())[0,0]
   sage: test_yx = yix==(y.row()*x.column())[0,0]    
   
   sage: print "Iloczyn skalarny z macierzą A: <x,y> =",\
   ...   xiy, test_xy
   
   sage: print "Zwykły iloczyn skalarny:       <y,x> = ",\
   ...   yix, test_yx

   Iloczyn skalarny z macierzą A: <x,y> = -55 True
   Zwykły iloczyn skalarny:       <y,x> =  -7 True

Norm
~~~~

Funkcja (metoda) :math:`\,` ``norm()`` :math:`\,` oblicza :math:`\,p`-normę 
rzeczywistego albo zespolonego wektora

.. math::
   
   \boldsymbol{x}\,=\,
   \left[\begin{array}{c} x_1 \\ x_2 \\ \ldots \\ x_n \end{array}\right]\ 
   \in K^n\,,\qquad K=R\quad\lor\quad K=C

według wzoru:
:math:`\qquad\|\boldsymbol{x}\|_p\ \ :\,=\ \ 
\left(\ \displaystyle\sum_{i\,=\,1}^n\ |x_i|^{\,p}\right)^{1/p}\,,\qquad
1 \leq p \leq \infty\,.`

Szczególne przypadki:

:math:`\quad\|\boldsymbol{x}\|_1\ \ =\ \ 
|x_1|+\,|x_2|+\,\ldots\,+\,|x_n|\ ;`

:math:`\quad\|\boldsymbol{x}\|_2\ \ =\ \ 
\sqrt{\,|x_1|^2+\,|x_2|^2+\ldots\,+\,|x_n|^2\,}\quad` (norma euklidesowa)

:math:`\quad\|\boldsymbol{x}\|_\infty\ \ =\ \ 
\displaystyle\lim_{p\rightarrow\infty}\|\boldsymbol{x}\|_p\ \ =\ \ 
\max_{i=1\dots n} |x_i|\,.`

Polecenie ``norm`` może wystąpić jako funkcja: ``norm(x)``, 
bądź jako metoda: ``x.norm(p)``, :math:`\\`
przy czym domyślną wartością parametru :math:`\,p\ ` jest 2, co odpowiada normie euklidesowej.

.. admonition:: Poeksperymentuj z Sage:
   
   Zadając stopień :math:`\,n\ ` wektora :math:`\,\boldsymbol{x}\ ` 
   oraz parametr normy :math:`\,p\,,\ ` otrzymasz symboliczne :math:`\\`
   wyrażenia dla normy euklidesowej i dla :math:`\,p`-normy
   wektora :math:`\,\boldsymbol{x}.\ ` 

.. sagecellserver::
  
   sage: n = 3
   sage: p = 4
   sage: x = vector([var('x%d' % k) for k in range(1,n+1)])
   sage: show(norm(x))
   sage: show(x.norm(p))

:math:`\;`

Metoda ``norm()`` wylicza również normę macierzową

.. math::
   :label: m_norm
   
   \|\boldsymbol{A}\|_p\ \ :\,=\ \ \max_{\boldsymbol{x}\neq\boldsymbol{0}}\ 
   \frac{\|\boldsymbol{A}\boldsymbol{x}\|_p}{\|\boldsymbol{x}\|_p}\ ,\qquad
   \boldsymbol{A}=[\,a_{ij}\,]_{n\times n}\in M_n(K)\,,\quad 1 \leq p \leq \infty\,,

indukowaną w algebrze :math:`\,M_n(K)\ ` przez :math:`\,p`-normę w :math:`\,K^n\,,\ ` 
a także macierzową normę Frobeniusa

.. math::
   
   \|\boldsymbol{A}\|_F\ \ :\,=\ \ \sqrt{\,\sum_{i,\,j=1}^n\ |a_{ij}|^2}\,,\qquad
   \boldsymbol{A}=[\,a_{ij}\,]_{n\times n}\in M_n(K)\,,

która jest bezpośrednim uogólnieniem wektorowej normy euklidesowej. :math:`\\`
Szczególnymi przypadkami normy :eq:`m_norm` są:

:math:`\quad\|\boldsymbol{A}\|_1\ \,=\ \,
\displaystyle\max_{j=1\dots n}\ \sum_{i\,=\,1}^n\ |a_{ij}|\quad`
(największa suma kolumnowa) ;

:math:`\quad\|\boldsymbol{A}\|_\infty\ \,=\ \,
\displaystyle\max_{i=1\dots n}\ \sum_{j\,=\,1}^n\ |a_{ij}|\quad`  
(największa suma wierszowa) .

.. **Przykłady dla**
   :math:`\quad\boldsymbol{x}\ =\ 
   \left[\begin{array}{c} 1-2\,i \\ 3\,i \\ -4 \\ -1+i \end{array}\right]\,,\quad
   \boldsymbol{y}\ =\ 
   \left[\begin{array}{c} -2 \\ 2-i \\ 1 \\ 3+2\,i \end{array}\right]\quad
   \in\ C^4\,.`

.. admonition:: Poeksperymentuj z Sage:
   
   Wypróbuj działanie programów dla różnych wektorów i macierzy.

Iloczyny skalarne i normy wektorów zespolonych.

.. sagecellserver::
   
   sage: x = vector(CDF,[1-2*I,3*I,-4,-1+I])

   # Trzy równoważne polecenia dla normy euklidesowej:
   sage: print (norm(x), x.norm(), x.norm(2)), '\n'

   # Przykłady norm egzotycznych:
   sage: print (x.norm(1), x.norm(5), x.norm(pi/2), x.norm(Infinity))

.. (5.65685424949, 5.65685424949, 5.65685424949) 

   (10.6502815399, 4.21382155129, 6.67035241562, 4.0)

.. sagecellserver::

   sage: x = vector(CDF,[1-2*I,3*I,-4,-1+I])
   sage: y = vector(CDF,[-2,2-I,1,3+2*I])

   sage: # Sprawdzenie nierówności Schwarza:
   sage: print abs(x.hermitian_inner_product(y)) <= norm(x)*norm(y)
   sage: print abs(x.hermitian_inner_product(y)), '<=', \
   ...   norm(x), '*', norm(y), '=', norm(x)*norm(y), '\n' 

   sage: # Sprawdzenie nierówności trójkąta:
   sage: print norm(x+y) <= norm(x)+norm(y)    
   sage: print norm(x+y), '<=', norm(x), '+', norm(y), '=', norm(x)+norm(y)
   
.. True
   18.0277563773 <= 5.65685424949 * 4.79583152331 = 27.1293199325 
   
   True
   5.9160797831 <= 5.65685424949 + 4.79583152331 = 10.4526857728

Różne normy macierzy kwadratowej i prostokątnej:

.. sagecellserver::

   sage: A = matrix(RR, [[13,-4],
   ...                   [-4, 7]])
   
   sage: A.norm(1), A.norm(2), A.norm('frob'), A.norm(Infinity)

.. (17.0, 15.0, 15.8113883008, 17.0)

.. sagecellserver::

   sage: A = matrix(QQbar, [[ 1, 2, 4,  3],
   ...                      [-1, 0, 3,-10]])
   
   sage: print (A.norm(1),A.norm(2),A.norm('frob'),A.norm(Infinity)),'\n'
   
   # Sprawdzenie normy euklidesowej (p=2):
   sage: ATA = A.T*A
   sage: max([sqrt(lambda2) for lambda2 in ATA.eigenvalues()])

.. (13.0, 10.6903311292, 11.8321595662, 14.0) 

   10.690331129154468?

:math:`\;`

Dla liczb zespolonych jako wektorów przestrzeni :math:`\,C^1,\ ` naturalną normą jest moduł:

.. math::
   
   \|z\|\ =\ |z|\,,\quad z\in C\,,

gdzie dla :math:`\ z=a+b\,i:\ |z|\,=\,\sqrt{z^*z}\,=\,\sqrt{a^2+b^2}\,.`

Niespodzianką jest to, że funkcja ``norm()``, zastosowana do liczb zespolonych,
zwraca nie moduł, ale kwadrat modułu:

.. code-block:: python

   sage: var('a,b')
   sage: z = a+b*I
   sage: norm(z).simplify()
   
   a^2 + b^2

Tego rodzaju "norma" (niespełniająca warunków definicji normy) jest używana w teorii liczb.
Aby otrzymać prawidłowy wynik, trzeba liczbę zespoloną przekształcić do jednoelementowego
wektora albo jednoelementowej macierzy:

.. code-block:: python 

   sage: z0 = 1-2*I
   sage: z1 = vector(CDF,[z0])
   sage: z2 = matrix(CDF,[[z0]])
   sage: norm(z0), norm(z1), norm(z2)

   (5, 2.2360679775, 2.2360679775)

Operations on Matrices
~~~~~~~~~~~~~~~~~~~~~~

Operacje na macierzach rzeczywistych bądź zespolonych obsługiwane przez metody Sage'a:

* transpozycja: :math:`\,` ``transpose()``, :math:`\,` w skrócie :math:`\,` ``T`` ;

* sprzężenie zespolone: :math:`\,` ``conjugate()``, :math:`\,` w skrócie :math:`\,` ``C`` ;

* sprzężenie hermitowskie: :math:`\,` ``conjugate_transpose()``, :math:`\,` 
  w skrócie :math:`\,` ``H`` ;

* odwrotność: :math:`\,` ``inverse()``, :math:`\,` w skrócie :math:`\,` ``I`` .

Następujące metody testują określone własności macierzy, a mianowicie:

* symetryczność: :math:`\,` ``is_symmetric()`` ;

* antysymetryczność :math:`\,` ``is_skew_symmetric()`` ;

* hermitowskość: :math:`\,` ``is_hermitian()`` ;

* unitarność: :math:`\,` ``is_unitary()`` ; 

* osobliwość: :math:`\,` ``is_singular()``

* kwadratowość: :math:`\,` ``is_square()`` :math:`\\`

**Przykład.**

.. :math:`\;`

.. code-block:: python
   
   sage: A = matrix(3,[ 1+I, 2-3*I, -1+2*I,
   ...                 -3+I,   4*I, -2-4*I,
   ...                  4-I,    -I,  1+3*I])
   
   sage: html.table([["Sprzężenie hermitowskie:"],
   ...               [A, '$\\rightarrow$', A.H]])
   
   sage: A.is_hermitian(), (A.H*A).is_hermitian()

:math:`\qquad` Sprzężenie hermitowskie:

:math:`\\ \left(\begin{array}{rrr} 
i+1 & -\,3\,i+2 & 2\,i-1 \\ i-3 & 4\,i & -\,4\,i-2 \\ -\,i+4 & -\,i & 3\,i+1
\end{array}\right)
\quad\rightarrow\quad
\left(\begin{array}{rrr}
-\,i+1 & -\,i-3 & i+4 \\ 3\,i+2 & -\,4\,i & i \\ -\,2\,i-1 & 4\,i-2 & -\,3\,i+1 
\end{array}\right)`

(False, True)






































