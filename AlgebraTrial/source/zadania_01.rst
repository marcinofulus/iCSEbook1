
Układy równań liniowych
-----------------------

Zadanie 1.1
~~~~~~~~~~~

.. admonition:: Uwaga!

  W tym zadaniu można z następujących funkcji w Sage: operacje na
  wyrażeniach algebraicznych, definicje macierzy oraz operacje na
  rzędach macierzy. W szczególności nie można korzystać z funkcji
  ``solve``, ``X.solve_right``, ``X\y``, ``X.rref()``.

Wykorzystując metodę eliminacji, rozwiąż następujące  układy równań:


a) 
   .. math::

      \begin{cases}
      -2 \, x_{1} - 3 \, x_{2}&=0 \\
      3 \, x_{1} + 4 \, x_{2}&=\frac{16}{7}
      \end{cases}

   ..	(48/7, -32/7) rank A: 2

#)
  .. math::

     \begin{cases}
     x_{1} - x_{2}&=0 \\
     -x_{1} + 2 \, x_{2}&=\frac{1}{36}
     \end{cases}

  ..	(1/36, 1/36) rank A: 2


#)
  .. math::

	\begin{cases}
		16 \, x_{1} + 41 \, x_{2} - 101 \, x_{3}&=-\frac{1}{10} \\
		 x_{1} + 3 \, x_{2} - 7 \, x_{3}&=\frac{1}{2} \\
		 -5 \, x_{1} - 13 \, x_{2} + 32 \, x_{3}&=1
	\end{cases}

  ..			(16, 71/5, 83/10) rank A: 3
                        
#)
  .. math::

	\begin{cases}
		-x_{1} - 3 \, x_{2} + 9 \, x_{3}&=1 \\
		 x_{1} + x_{3}&=-2 \\
		 -2 \, x_{1} - 2 \, x_{2} + 5 \, x_{3}&=2
	\end{cases}

  ..			(2, -13, -4) rank A: 3

#)
  .. math::

	\begin{cases}
		-11 \, x_{1} + 44 \, x_{2} - 135 \, x_{3}&=0 \\
		 2 \, x_{1} - 7 \, x_{2} + 20 \, x_{3}&=\frac{1}{3} \\
		 4 \, x_{1} - 16 \, x_{2} + 49 \, x_{3}&=-\frac{1}{7}
	\end{cases}
  ..			(223/21, 157/21, 11/7) rank A: 3


#)
  .. math::

	\begin{cases}
		x_{1} + 3 \, x_{2} - x_{3} + 23 \, x_{4}&=-1 \\
		 4 \, x_{1} + 13 \, x_{2} - 3 \, x_{3} + 93 \, x_{4}&=-1 \\
		 -5 \, x_{1} - 17 \, x_{2} + 4 \, x_{3} - 121 \,
                 x_{4}&=-\frac{1}{2} \\
		 x_{2} + 3 \, x_{3} - 6 \, x_{4}&=\frac{1}{2}
	\end{cases}

  ..			(6, 20, -27/2, -7/2) rank A: 4


.. admonition:: Uwaga!

   W poniższych zadaniach wolno korzystać z dowolnych pomocy naukowo technologicznych!

Zadanie 1.2
~~~~~~~~~~~

Zapisać następujące problemy w postaci układu równań liniowych i
znaleźć rozwiązanie:


a) Andrzej jest dwa razy starszy od Piotra. Ile obaj mają lat jeśli
   suma ich wieku wynosi 33.
#) :math:`(x,y)=(2,5)` i :math:`(3,7)` leżą na tej samej prostej
   :math:`y=ax+b`. Jakie to :math:`a` i :math:`b`
#) Parabola :math:`y=ax^2+bx+c` przechodzi przez punkty :math:`(1,4), (2,8)\;\rm{i}\;
   (3,14)`. Jakie jest jej równanie?


Macierze
--------


Zadanie 2.1
~~~~~~~~~~~

Dla macierzy:

.. math::

   P = \left(\begin{array}{rrr}
   0 & 0 & 1 \\
   0 & 1 & 0 \\
   1 & 0 & 0
   \end{array}\right)

   Q = \left(\begin{array}{rrr}
   0 & 1 & 0 \\
   0 & 0 & 0 \\
   0 & 0 & 1
   \end{array}\right)
        
a) Obliczyć iloczyny: :math:`QP`, :math:`QP`, :math:`Q^2` i :math:`P^2`.
#) Sprawdzić, że działanie :math:`P` i  :math:`Q` na dowolną macierz przestawia jej wiersze.
#) Jakie jeszcze macierze rzędu 3 spełniają: :math:`M^2=I`?

Zadanie 2.2
~~~~~~~~~~~

Dla trzech losowo wybranych macierzy rzędu trzy, sprawdzić prawo łączności:

.. math::

   AB+AC = A(B+C)

Zadanie 2.3
~~~~~~~~~~~

Oblicz :math:`A^2` i :math:`A^3` i na podstawie wyników odgadnij wzór
na :math:`A^n` dla dowolnego :math:`n` dla macierzy:


a)
 .. math:: A = \left(\begin{array}{rr} 1 & c \\ 0 & 1 \end{array}\right)

#)
 .. math:: A=\left(\begin{array}{rr} 2 & 2 \\ 0 & 0 \end{array}\right)


Zadanie 2.4
~~~~~~~~~~~

Pokaż, że :math:`(A+B)^2 \neq A^2+ 2AB +B^2` jeżeli :math:`A` i :math:`B` sa macierzami:

.. math:: 
   
   A = \left(\begin{array}{rr} 1 & 2 \\ 0 & 0 \end{array}\right)  \;\rm{ i }\;\;
   B = \left(\begin{array}{rr} 1 & 0 \\ 3 & 0 \end{array}\right)

Jaką postać ma w takim razie wzór na kwadrat sumy? 

Zadanie 2.5
~~~~~~~~~~~

Wyprowadź wzór na  :math:`(A-B)^2`.


Zadanie 2.6
~~~~~~~~~~~

Oblicz wszystkie potęgi macierzy :math:`A^n` i iloczyny tych potęg z
wektorem :math:`v` tzn. :math:`A^nv`:

.. math:: 

   A= \left(\begin{array}{rrrr}
   0 & 2 & 0 & 0 \\
   0 & 0 & 2 & 0 \\
   0 & 0 & 0 & 2 \\
   0 & 0 & 0 & 0
   \end{array}\right)

.. math::

   v = \left(\begin{array}{r}a\\b\\c\\d\end{array}\right)


Zadanie 2.7
~~~~~~~~~~~

Eksperymentując dla małych wykładników, podaj wzór wszystkie potęgi
macierzy :math:`A^n` :


.. math::

   A_1 = \left(\begin{array}{rr}
   2 & 1 \\
   0 & 1
   \end{array}\right)

   A_2 = \left(\begin{array}{rr}
   1 & 1 \\
   1 & 1
   \end{array}\right)

   A_3 = \left(\begin{array}{rr}
   a & b \\
   0 & 0
   \end{array}\right)

   A_4 = \left(\begin{array}{rr}
   1 & 1 \\
   1 & 0
   \end{array}\right)

.. hint:: W przypadku macierzy :math:`A_4` warto skorzystać ze strony Wikipedii o liczbach Fibbonaciego.


Zadanie 2.8
~~~~~~~~~~~

Przypuśćmy, że znamy rozwiązanie trzech układów równań liniowych:

.. math::

   A x_1 = \left(\begin{array}{r} 1 \\0 \\0  \end{array}\right)

   A x_2 = \left(\begin{array}{r} 0 \\1 \\0   \end{array}\right)

   A x_3 = \left(\begin{array}{r} 0\\ 0 \\1    \end{array}\right)

Jeśli stworzymy macierz :math:`X`, której kolumny będą wektorami
:math:`x_i` to ile będzie wynosił iloczyn : :math:`A X = ?`


Zadanie 2.9
~~~~~~~~~~~

Oblicz macierz odwrotną do dolne trójkątnej `Macierzy Pascala <http://en.wikipedia.org/wiki/Pascal_matrix>`_  (:math:`L_5`).


Zadanie 2.10
~~~~~~~~~~~~

Oblicz macierz odwrotną do 

.. math::

   A=\left(\begin{array}{rrrrr}
   1 & -1 & 1 & -1 & 1 \\
   0 & 1 & -1 & 1 & -1 \\
   0 & 0 & 1 & -1 & 1 \\
   0 & 0 & 0 & 1 & -1 \\
   0 & 0 & 0 & 0 & 1
   \end{array}\right)

Eksperymentując uogólnij wynik na macierz "naprzemienną" dowolnego
rzędu. W Sage macierz taką można skonstruować w następujący sposób:

.. code-block:: python

   N = 5
   A = matrix([[(-1)^(i+j) if j>=i else 0 for j in range(N)] for i in range(N)]) 


Zadanie 2.11
~~~~~~~~~~~~

Czy macierz :math:`4\times 4`, której rzędy składają się liczb
:math:`[0,1,2,3]` w pewnej kolejności może być odwracalna? Jaka była
by odpowiedź jeśli by wziąć liczby :math:`[0,1,2,-3]`?


Zadanie 2.12
~~~~~~~~~~~~

Znaleźć macierz odwrotną do:

.. math::

   A = \left(\begin{array}{rrrr}
   1 & -a & 0 & 0 \\
   0 & 1 & -b & 0 \\
   0 & 0 & 1 & -c \\
   0 & 0 & 0 & 1
   \end{array}\right)




Eliminacja Gaussa
-----------------


Zadanie 3.1
~~~~~~~~~~~

Metodą eliminacji Gaussa rozwiązać układ równań :math:`Ax=b` dla


a)

 .. math::

    A = \left(\begin{array}{rrrr}
    1 & -5 & 9 & 11 \\
    1 & -4 & 8 & 9 \\
    -3 & 15 & -26 & -33 \\
    -2 & 7 & -10 & -16
    \end{array}\right) 
    \quad \textrm{ oraz }
    b = \left(\begin{array}{r}
    -1 \\
    0 \\
    4 \\
    4
    \end{array}\right)

#)

 .. math::

    A =\left(\begin{array}{rrrr}
    1 & 4 & 5 & -1 \\
    -3 & -12 & -14 & 3 \\
    3 & 12 & 19 & -3 \\
    -2 & -8 & -12 & 2
    \end{array}\right)
    \quad \textrm{ oraz }
    b =    \left(\begin{array}{r}
    13 \\
    -38 \\
    43 \\
    -28
    \end{array}\right)


#)

 .. math::

    A =\left(\begin{array}{rrrr}
    1 & 4 & 5 & -1 \\
    -3 & -12 & -14 & 3 \\
    3 & 12 & 19 & -3 \\
    -2 & -8 & -12 & 2
    \end{array}\right)
    \quad \textrm{ oraz }
    b =    \left(\begin{array}{r}
    0 \\
    0 \\
    0 \\
    0
    \end{array}\right)

#)

 .. math::

    A = \left(\begin{array}{rrr}
    1 & -5 & -11 \\
    2 & -9 & -20 \\
    4 & -16 & -36
    \end{array}\right)
    \quad \textrm{ oraz }
    b =    \left(\begin{array}{r}
    -1 \\
    -5 \\
    1 
    \end{array}\right)


