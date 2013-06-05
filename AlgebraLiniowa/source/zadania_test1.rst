Kolokwium zaliczeniowe z algebry liniowej v1.0
==============================================

Zadanie 1
~~~~~~~~~

Zapisać następujące problemy w postaci układu równań liniowych i
znaleźć rozwiązanie:


a) Andrzej jest dwa razy starszy od Piotra. Ile obaj mają lat jeśli
   suma ich wieku wynosi 33.


#) :math:`(x,y)=(2,5)` i :math:`(3,7)` leżą na tej samej prostej
   :math:`y=ax+b`. Jakie to :math:`a` i :math:`b`




Zadanie 2
~~~~~~~~~

Oblicz :math:`A^2` i :math:`A^3` i na podstawie wyników odgadnij wzór
na :math:`A^n` dla dowolnego :math:`n` dla macierzy:


.. math:: A = \left(\begin{array}{rr} 1 & c \\ 0 & 1 \end{array}\right)


Zadanie 3
~~~~~~~~~


Znaleźć macierz odwrotną do:

.. math::

   A = \left(\begin{array}{rrrr}
   1 & -a & 0 & 0 \\
   0 & 1 & -b & 0 \\
   0 & 0 & 1 & -c \\
   0 & 0 & 0 & 1
   \end{array}\right)

**Uwaga**: można korzystać z Sage z wyjątkiem metody ``inverse()``.


Zadanie 4
~~~~~~~~~


Metodą eliminacji Gaussa rozwiązać układ równań :math:`Ax=b` dla

 .. math::

    A = \left(\begin{array}{rrr}
    1 & 1 & 2 \\
    1 & 1 & 1 \\
    2 & 1 & 1
    \end{array}\right)


    \quad \textrm{ oraz }
    b =    \left(\begin{array}{r}
    -1 \\
    -5 \\
    1 
    \end{array}\right)

**Uwaga**: można korzystać z Sage z wyjątkiem metody ``solve_right`` i ``\``.


Zadanie 5
~~~~~~~~~


Obliczyć wektory i wartości własne macierzy :math:`A`:

.. math::

   A = \left(\begin{array}{rr}
   2 & 4 \\
   2 & 0
   \end{array}\right)


**Uwaga**: można korzystać z Sage z wyjątkiem metody ``eigenvectors_right``.
