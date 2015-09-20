
Systems of Linear Equations
---------------------------

**Zadanie 0.** :math:`\\`
Zapisz następujące problemy w postaci układu równań liniowych :math:`\\`
i znajdź (dowolnym sposobem) rozwiązania.

#. | Andrzej jest dwa razy starszy od Piotra, a suma ich lat życia wynosi 33.
   | Podaj wiek Andrzeja i Piotra.

#. | Punkty :math:`\ P_1=(2,5)\ ` i :math:`\ P_2=(3,7)\ ` leżą na prostej o równaniu
     :math:`\ y=ax+b.\ ` 
   | Określ :math:`\ a\ ` i  :math:`\ b.`

#. | Parabola przechodzi przez punkty :math:`\ P_1=(1,4),\ P_2=(2,8)\ ` i :math:`\ P_3=(3,14).\ `
   | Wyznacz współczynniki :math:`\ a,\,b,\,c\ ` w jej równaniu :math:`\ y=ax^2+bx+c.` 

**Zadanie 1.** :math:`\\`
Wykonując operacje elementarne na całych równaniach (patrz sekcja 2.3.2)
albo na wierszach odpowiednich macierzy (sekcja 4.1.3), bez używania funkcji  ``solve()``, 
:math:`\,`   ``X.solve_right()``, :math:`\,` ``X\y``, :math:`\,` ``X.rref()``, :math:`\,` 
rozwiąż układy równań nad ciałem :math:`\ Q:`

#. .. math::
      :nowrap:
     
      \begin{alignat*}{3}
         x_1 & \ -\  &    x_2 & \ =\  & 0 \\
      -\,x_1 & \ +\  & 2\,x_2 & \ =\  & \ \textstyle\frac{1}{36}
      \end{alignat*}
   
   .. (1/36, 1/36), rank A: 2

#. .. math::
      :nowrap:
      
      \begin{alignat*}{3}
      -\,2\,x_1 & \ -\  & 3\,x_2 & \ =\  & 0 \\
         3\,x_1 & \ +\  & 4\,x_2 & \ =\  & \ \textstyle\frac{16}{7}
      \end{alignat*}

   .. (48/7, -32/7), rank A: 2

#. .. math::
      :nowrap:
      
      \begin{alignat*}{4}
        16\,x_1 & \ +\ & 41\,x_2 & \ -\ & 101\,x_3 & \ =\ & -\,\textstyle\frac{1}{10} \\
            x_1 & \ +\ &  3\,x_2 & \ -\ &   7\,x_3 & \ =\ &  \ \textstyle\frac{1}{2}  \\
      -\,5\,x_1 & \ -\ & 13\,x_2 & \ +\ &  32\,x_3 & \ =\ &  1
      \end{alignat*}
   
   .. (16, 71/5, 83/10), rank A: 3

#. .. math::
      :nowrap:
      
      \begin{alignat*}{4}
         -\,x_1 & \ -\ & 3\,x_2 & \ +\ & 9\,x_3 & \ =\ &    1 \\
            x_1 & \  \ &        & \ +\ &    x_3 & \ =\ & -\,2 \\
      -\,2\,x_1 & \ -\ & 2\,x_2 & \ +\ & 5\,x_3 & \ =\ &    2
      \end{alignat*}
   
   .. (2, -13, -4), rank A: 3

#. .. math::
      :nowrap:
      
      \begin{alignat*}{4}
      -\,11\,x_1 & \ +\ & 44\,x_2 & \ -\ & 135\,x_3 & \ =\ &    0                     \\
          2\,x_1 & \ -\ &  7\,x_2 & \ +\ &  20\,x_3 & \ =\ &    \textstyle\frac{1}{3} \\
          4\,x_1 & \ -\ & 16\,x_2 & \ +\ &  49\,x_3 & \ =\ & -\ \textstyle\frac{1}{7}
      \end{alignat*}
   
   .. (223/21, 157/21, 11/7), rank A: 3

#. .. math::
      :nowrap:
      
      \begin{alignat*}{5}
            x_1 &\ +\ &  3\,x_2 &\ -\ &    x_3 &\ +\ &  23 \,x_4 &\ =\ & -\,1 \\
         4\,x_1 &\ +\ & 13\,x_2 &\ -\ & 3\,x_3 &\ +\ &  93 \,x_4 &\ =\ & -\,1 \\
      -\,5\,x_1 &\ -\ & 17\,x_2 &\ +\ & 4\,x_3 &\ -\ & 121 \,x_4 &\ =\ & -\ \textstyle\frac{1}{2} \\
                &\  \ &     x_2 &\ +\ & 3\,x_3 &\ -\ &   6 \,x_4 &\ =\ &  \textstyle\frac{1}{2}
      \end{alignat*}
   
   .. (6, 20, -27/2, -7/2), rank A: 4

**Zadanie 2.** :math:`\,`
Wykorzystując teraz wszystkie potrzebne funkcje Sage'a (patrz sekcja 6.2), :math:`\\`
rozwiąż rzeczywiste problemy liniowe postaci :math:`\ \boldsymbol{A}\,\boldsymbol{x}=\boldsymbol{b}\ \,` 
dla następujących danych:

#. .. math::
      
      \boldsymbol{A}\ =\ 
      \left[\begin{array}{rrrr}
       1 & -5 &   9 &  11 \\
       1 & -4 &   8 &   9 \\
      -3 & 15 & -26 & -33 \\
      -2 &  7 & -10 & -16 
      \end{array}\right]\,,\qquad
      \boldsymbol{b}\ =\ 
      \left[\begin{array}{r}
      -1 \\ 0 \\ 4 \\ 4
      \end{array}\right]\,;

#. .. math::
      
      \boldsymbol{A}\ =\ 
      \left[\begin{array}{rrrr}
       1 &   4 &   5 & -1 \\
      -3 & -12 & -14 &  3 \\
       3 &  12 &  19 & -3 \\
      -2 &  -8 & -12 &  2
      \end{array}\right]\,,\qquad
      \boldsymbol{b}\ =\ 
      \left[\begin{array}{r}
      13 \\ -38 \\ 43 \\ -28
      \end{array}\right]\,;

.. .. math::

      \boldsymbol{A}\ =\ 
      \left[\begin{array}{rrrr}
       1 &   4 &   5 & -1 \\
      -3 & -12 & -14 &  3 \\
       3 &  12 &  19 & -3 \\
      -2 &  -8 & -12 &  2
      \end{array}\right]\,,\qquad
      \boldsymbol{b}\ =\  
      \left[\begin{array}{r}
      0 \\ 0 \\ 0 \\ 0
      \end{array}\right]\,;

#. .. math::
      
      \boldsymbol{A}\ =\ 
      \left[\begin{array}{rrr}
      1 &  -5 & -11 \\
      2 &  -9 & -20 \\
      4 & -16 & -36
      \end{array}\right]\,,\qquad
      \boldsymbol{b}\ =\ 
      \left[\begin{array}{r}
      -1 \\ -5 \\ 1 
      \end{array}\right]\,.

Dowolną bazę przestrzeni rozwiązań jednorodnego problemu liniowego
:math:`\ \boldsymbol{A}\,\boldsymbol{x}=\boldsymbol{0}\ ` nazywamy :math:`\,`
*fundamentalnym układem rozwiązań* :math:`\,` tego problemu.

**Zadanie 3.** :math:`\,`
Wyznacz fundamentalny układ rozwiązań jednorodnego problemu liniowego :math:`\\` 
nad ciałem :math:`\ Q\ ` o macierzy współczynników

.. math::
   
   \boldsymbol{A}\ =\ 
   \left[\begin{array}{rrrr}
       1 &   4 &   5 & -1 \\
      -3 & -12 & -14 &  3 \\
       3 &  12 &  19 & -3 \\
      -2 &  -8 & -12 &  2
   \end{array}\right]\,.

**Zadanie 4.** :math:`\,`
Znajdź jednorodny układ równań, składający się z 
:math:`\,` a.) dwóch :math:`\,` b.) trzech :math:`\,` równań, 
dla którego wektory

.. math::
   
   \left[\begin{array}{r} 1 \\  4 \\ -2 \\ 2 \\ -1 \end{array}\right]\,,\quad
   \left[\begin{array}{r} 3 \\ 13 \\ -1 \\ 2 \\  1 \end{array}\right]\,,\quad
   \left[\begin{array}{r} 2 \\  7 \\ -8 \\ 4 \\ -5 \end{array}\right]

tworzą fundamentalny układ rozwiązań.

.. (4.4.30)

**Zadanie 5.** :math:`\,`
Czy istnieje jednorodny układ równań liniowych, 
którego fundamentalnym układem rozwiązań jest układ wektorów
:math:`\ (\boldsymbol{x}_1,\boldsymbol{x}_2,\boldsymbol{x}_3),\ ` a także
:math:`\ (\boldsymbol{y}_1,\boldsymbol{y}_2,\boldsymbol{y}_3),\ ` gdzie

.. math::

   \begin{array}{lll}   
   \boldsymbol{x}_1=
   \left[\begin{array}{r} 2 \\ 3 \\ 1 \\ 2 \end{array}\right], &
   \boldsymbol{x}_2=
   \left[\begin{array}{r} 1 \\ 1 \\ -2 \\ -2 \end{array}\right], &
   \boldsymbol{x}_3=
   \left[\begin{array}{r} 3 \\ 4 \\ 2 \\ 1 \end{array}\right],
   \\ \\ 
   \boldsymbol{y}_1=
   \left[\begin{array}{r} 1 \\ 0 \\ 2 \\ -5 \end{array}\right], &
   \boldsymbol{y}_2=
   \left[\begin{array}{r} 0 \\ 1 \\ 8 \\ 7 \end{array}\right], &
   \boldsymbol{y}_3=
   \left[\begin{array}{r} 4 \\ 5 \\ -2 \\ 0 \end{array}\right].
   \end{array}

.. (4.4.31)

**Zadanie 6.** :math:`\\`
Czy istnieje :math:`\ \lambda\in Q,\ ` dla którego układ równań nad ciałem liczb wymiernych

.. math::
   :nowrap:

   \begin{alignat*}{4}
        x_1 & \ +\ & 2\,x_2 & \ +\ & 3\,\lambda\,x_3 & \ =\ & -1 \\
        x_1 & \ +\ &    x_2 & \ -\ &             x_3 & \ =\ &  1 \\
   \,2\,x_1 & \ +\ &    x_2 & \ +\ &          5\,x_3 & \ =\ &  3
   \end{alignat*}

ma nieskończenie wiele rozwiązań ?

**Wskazówka.** :math:`\\` Odpowiedź (negatywną) można dać 
po wyliczeniu tylko jednego wyznacznika 3. stopnia.

**Zadanie 7.** :math:`\\`
Dla jakich :math:`\ \lambda\in R\ ` układ równań nad ciałem :math:`\ R\ `
ma rozwiązanie ? :math:`\,` Znajdź to rozwiązanie. 

.. math::
   :nowrap:

   \begin{alignat*}{5}
   2\,x_1 &\ -\ &    x_2 &\ +\ &    x_3 &\ +\ &     x_4 &\ =\ & 1 \\
      x_1 &\ +\ & 2\,x_2 &\ -\ &    x_3 &\ +\ &  4\,x_4 &\ =\ & 2 \\
      x_1 &\ +\ & 7\,x_2 &\ -\ & 4\,x_3 &\ +\ & 11\,x_4 &\ =\ & \lambda 
   \end{alignat*}

   \;
   
   \;


**Zadanie 8.** :math:`\,`
Przedyskutuj ze względu na :math:`\ \lambda\ ` i rozwiąż układy równań:

#. .. math::
      :nowrap:
      
      \begin{alignat*}{4}
      3\,x_1 & \ +\ & 2\,x_2 & \ +\ &    x_3 & \ =\ & -1      \\
      7\,x_1 & \ +\ & 6\,x_2 & \ +\ & 5\,x_3 & \ =\ & \lambda \\
      5\,x_1 & \ +\ & 4\,x_2 & \ +\ & 3\,x_3 & \ =\ & 2
      \end{alignat*}

#. .. math::
      :nowrap:
      
      \begin{alignat*}{4}
      \lambda\,x_1 & \ +\ &    x_2 & \ +\ &    x_3 & \ =\ &  0 \\
            5\,x_1 & \ +\ &    x_2 & \ -\ & 2\,x_3 & \ =\ &  2 \\
           -2\,x_1 & \ -\ & 2\,x_2 & \ +\ &    x_3 & \ =\ & -3
      \end{alignat*}

#. .. math::
      :nowrap:
      
      \begin{alignat*}{4}
               x_1 & \ +\ &          x_2 & \ +\ & \lambda\,x_3 & \ =\ & 1 \\
               x_1 & \ +\ & \lambda\,x_2 & \ +\ &          x_3 & \ =\ & 1 \\
      \lambda\,x_1 & \ +\ &          x_2 & \ +\ &          x_3 & \ =\ & 1
      \end{alignat*}

**Zadanie 9.** :math:`\,`
Wyznacz wszystkie wartości :math:`\ \lambda\in R,\ ` dla których 
wektor :math:`\ \boldsymbol{b}\ ` wyraża się liniowo 
przez wektory :math:`\ \boldsymbol{a}_1,\,\boldsymbol{a}_2,\,\boldsymbol{a}_3:`

.. math::
   
   \begin{array}{lllll}
   1.) & \qquad
   \boldsymbol{a}_1=\left[\begin{array}{r} 2 \\  3 \\ 5       \end{array}\right], &
   \boldsymbol{a}_2=\left[\begin{array}{r} 3 \\  7 \\ 8       \end{array}\right], &
   \boldsymbol{a}_3=\left[\begin{array}{r} 1 \\ -6 \\ 1       \end{array}\right], & \quad
   \boldsymbol{b} = \left[\begin{array}{r} 7 \\ -2 \\ \lambda \end{array}\right]; \\ \\
   2.) & \qquad
   \boldsymbol{a}_1=\left[\begin{array}{r} 4 \\ 4 \\ 3       \end{array}\right], &
   \boldsymbol{a}_2=\left[\begin{array}{r} 7 \\ 2 \\ 1       \end{array}\right], &
   \boldsymbol{a}_3=\left[\begin{array}{r} 4 \\ 1 \\ 6       \end{array}\right], & \quad
   \boldsymbol{b} = \left[\begin{array}{r} 5 \\ 9 \\ \lambda \end{array}\right]; \\ \\
   3.) & \qquad
   \boldsymbol{a}_1=\left[\begin{array}{r} 3       \\ 2 \\ 6 \end{array}\right], &
   \boldsymbol{a}_2=\left[\begin{array}{r} 7       \\ 3 \\ 9 \end{array}\right], &
   \boldsymbol{a}_3=\left[\begin{array}{r} 5       \\ 1 \\ 3 \end{array}\right], & \quad
   \boldsymbol{b} = \left[\begin{array}{r} \lambda \\ 2 \\ 5 \end{array}\right]; \\ \\
   4.) & \qquad
   \boldsymbol{a}_1=\left[\begin{array}{r} 3 \\ 2 \\ 5       \end{array}\right], &
   \boldsymbol{a}_2=\left[\begin{array}{r} 2 \\ 4 \\ 7       \end{array}\right], &
   \boldsymbol{a}_3=\left[\begin{array}{r} 5 \\ 6 \\ \lambda \end{array}\right], & \quad
   \boldsymbol{b} = \left[\begin{array}{r} 1 \\ 3 \\ 5       \end{array}\right].
   \end{array}

**Wskazówka.** :math:`\,`
Zbadaj istnienie rozwiązań problemu liniowego o postaci kolumnowej

.. math::
   
   x_1\,\boldsymbol{a}_1+x_2\,\boldsymbol{a}_2+x_3\,\boldsymbol{a}_3=\boldsymbol{b}.

**Zadanie 10.** :math:`\,`
Rozważmy przestrzeń wektorową wielomianów rzeczywistych zmiennej :math:`\ x\ ` 
stopnia (nie większego od) :math:`\ n.\ `
Jaki jest wymiar podprzestrzeni, złożonej z wielomianów spełniających warunki
:math:`\ w(x_1)=w(x_2)=\ldots=w(x_k)=0,\ ` gdzie :math:`\ x_1,x_2,\ldots,x_k\ `
są różnymi liczbami :math:`\ (k\le n).`

.. (4.4.28) Odpowiedź: n+1-k.

**Wskazówka.** :math:`\,`
Wykorzystaj wzór dla wyznacznika Vandermonde'a (sekcja 10.4).

**Zadanie 11.** :math:`\,`
W przestrzeni wielomianów rzeczywistych stopnia (nie większego od) 5
podaj przykładową bazę podprzestrzeni, utworzonej przez wielomiany spełniające
warunki :math:`\ w(0)=w(1)=w(2)=w(3)=0.`

.. (4.4.29)`































