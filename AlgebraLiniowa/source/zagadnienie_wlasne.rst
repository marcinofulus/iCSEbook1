Zagadnienie własne
==================

Wektory i wartości własne
-------------------------

Wartości własne i wektory własne odgrywają zasadniczą rolę w
rozwiązywaniu równań różniczkowych liniowych, w badaniu ich
stabilności, w wyznaczaniu stanów stacjonarnych w zagadnieniach
mechaniki kwantowej.  w równaniach cząstkowych oraz analizie drgań
własnych.

Dobrym punktem wyjścia do wprowadzenia pojęcia wartości własnej i
wektora własnego są układy równań różniczkowych liniowych

.. math:: \mathbf x'=A\mathbf x,

gdzie :math:`A` jest macierzą kwadratową o wymiarach :math:`n\times n`\ .
Szukamy rozwiązań postaci

.. math::

   \mathbf x(t)=\mathbf v e^{\lambda t}, \qquad 
   \lambda\in\mathbf C, 
   \,\,\, \mathbf v\in \mathbf C^n.

Ponieważ :math:`(e^{\lambda t})'=\lambda e^{\lambda t}`\ , więc

.. math::

   \mathbf x'(t)=
   \frac{d}{dt}\Big(\mathbf v e^{\lambda t}\Big)
   =\lambda
   \mathbf v e^{\lambda t}.

Podstawiając wyliczoną wartość :math:`\mathbf x'(t)` do naszego układu
otrzymujemy

.. math::

   \lambda\mathbf v e^{\lambda t}=
   A(\mathbf v e^{\lambda t})=
   e^{\lambda t} A\mathbf v.

Zatem funkcja :math:`\mathbf x(t)=\mathbf v e^{\lambda t}` jest
rozwiązaniem układu wtedy i tylko wtedy, gdy stała
:math:`\lambda \in\mathbf C` i wektor :math:`\mathbf v\in\mathbf C^n`
spełniają równanie

.. math:: A\mathbf v=\lambda \mathbf v.

Jeżeli liczba :math:`\lambda \in\mathbf C` i niezerowy wektor
:math:`\mathbf
v\in\mathbf C^n` spełniają powyższe równanie, to :math:`\lambda`
nazywamy *wartością własną*, a wektor :math:`\mathbf v` *wektorem
własnym* macierzy (odwzorowania) :math:`A`\ . Jeżeli :math:`\lambda`
jest wartością własną, a :math:`\mathbf v` wektorem własnym macierzy
:math:`A` odpowiadającym :math:`\lambda`\ , to spełniają one równanie

.. math:: (A-\lambda I)\mathbf v=\mathbf 0.

W istocie jest to jednorodny układ :math:`n` równań liniowych o
:math:`n` niewiadomych i ma on niezerowe rozwiązanie :math:`\mathbf v`
wtedy i tylko wtedy, gdy

.. math:: \det (A-\lambda I)=0.

Ostatnie równanie nazywamy *równaniem charakterystycznym*. 


Ważne własności wartości własnych
---------------------------------



Układ złożony z wektorów własnych odpowiadających różnym wartościom
własnym jest liniowo niezależny. W szczególności, jeżeli macierz
kwadratowa wymiaru :math:`n\times n` ma :math:`n` różnych wartości
własnych, to odpowiadające im wektory własne tworzą bazę w
:math:`\mathbf C^n`. 

Weżmy dla przykładu dwie wartości własne :math:`\lambda_1` i
:math:`\lambda_2` oraz odpowiadające im wektory własne: :math:`x_1` i
:math:`x_2`. Załóżmy, że wektory własne są liniowo zależne. Wtedy dla
pewnych stałych :math:`c_1` i :math:`c_2` zachodzi:

.. math::
   :label: lincom

   c_1 x_1 + c_2 x_2 = 0

pomnóżmy to równanie przez :math:`A` i wykorzystajmy równianie własne:

.. math::

   A c_1 x_1 + A c_2 x_2 = 0 \\ 

   c_1 \lambda_1 x_1 + c_2 \lambda_2 x_2 = 0

Do ostatniego rówania podstawmy iloczyn :math:`c_2 x_2` wyliczone z
równania :eq:`lincom`, otrzymujemy:

.. math::

   c_1 \lambda_1 x_1 - c_1 \lambda_2 x_1 = 0 \\

   c_1 x_1 (\lambda_1  - \lambda_2 ) = 0

Ostatnie równanie jest spełnione jesli :math:`\lambda_1=\lambda_2`.




Jeżeli macierz jest hermitowska tj.: :math:`A^\dagger=A` to:

0)  :math:`x^\dagger A x` jest rzeczywiste, sprawdźmy:

    .. math::

       (x^\dagger A x)^\dagger = (x^\dagger A^\dagger (x^\dagger)^\dagger) 


1) wartości własne są rzeczywiste
   
   .. math::

      \underbrace{(x^\dagger A x)}_{\text{rzeczywiste}} = \lambda \underbrace{(x^\dagger x)}_{\text{rzeczywiste}}



2) wektory własne należąco do różnych wartości własnych są ortogonalne 

Dla dowolnej macierzy wektory własne należące do różnych wartości
własnych są liniowo niezależne od siebie, założenie hermitowskości
implikuje dodatkowo ich ortogonalność.






Przykład rozwiązania zagadnienia własnego
-----------------------------------------

Weźmy macierz:

.. math::

   A =\left(\begin{array}{rr}
   1 & 2 \\
   1 & 0
   \end{array}\right)

Tworzymy układ równań:

.. math::

   (A - \lambda I)x  = 0

i pytamy się dla jakich wartości :math:`\lambda` układ ten posiada
niezerowe rozwiązania. Warunkiem jest osobliwość macierzy
:math:`A-\lambda I` czyli znikanie jej wyznacznika. Mamy:

.. math::

   \det \left(\begin{array}{rr}
   1-\lambda & 2 \\
   1 & -\lambda
   \end{array}\right) =  \lambda^{2} - \lambda - 2 = 0

Istnieją dwa rozwiązania tego równania:

.. math::

   \lambda_1 = 2 \\ 
   \lambda_2 = -1

Rozważmy przypadek wartości własnej  :math:`\lambda_1 = 2`:   

.. math::

   (A - \lambda_1 I) = \left(\begin{array}{rr}
   -1 & 2 \\
   1 & -2
   \end{array}\right)

Rozwiązaniem tego układu jest wektor własny (w zasadzie jego dowolna
wielokrotność) odpowiadający wartości własnej :math:`\lambda_1 = 2`,
:math:`x_1 =\left(\begin{array}{r} 1 \\\frac{1}{2}\end{array}\right)`.



Rozważmy przypadek  :math:`\lambda_2 = -1`:   

.. math:: 

   (A - \lambda_2 I) =\left(\begin{array}{rr} 2 & 2 \\ 1 & 1
   \end{array}\right)

Rozwiązaniem tego układu jest wektor własny (w zasadzie jego dowolna
wielokrotność) odpowiadający wartości własnej :math:`\lambda_2 = -1`,
:math:`x_2 = \left(\begin{array}{r} 1 \\-1\end{array}\right)`.


W bazie utworzonej z wektorów własnych macierz jest
diagonalna. Sprawdźmy to. Niech :math:`S` będzie macierzą przejścia do
bazy wektorów własnych, której kolumnami są wektory własne:

.. math::

   S = \left(\begin{array}{rr}
   1 & 1 \\
   \frac{1}{2} & -1
   \end{array}\right)

Policzmy zatem postać macierzy :math:`A` w bazie wektorów własnych:

.. math::

   S^{-1}AS  =\left(\begin{array}{rr}
   \frac{2}{3} & \frac{2}{3} \\
   \frac{1}{3} & -\frac{2}{3}
   \end{array}\right) \left(\begin{array}{rr}
   1 & 2 \\
   1 & 0
   \end{array}\right) \left(\begin{array}{rr}
   1 & 1 \\
   \frac{1}{2} & -1
   \end{array}\right) = 
   \left(\begin{array}{rr}
   2 & 0 \\
   0 & -1
   \end{array}\right)

Jak widać macierz :math:`A` ma w bazie wektorów własnych postać diagonalną.


   
