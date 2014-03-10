
Transpozycja macierzy
---------------------

.. *Macierzą transponowaną* względem macierzy 
   :math:`\,\boldsymbol{A}=[a_{ij}]_{m\times n}\in M_{m\times n}(K)`
   jest macierz :math:`\,\boldsymbol{A}^T=\,[a^T_{ij}]_{n\times m}\,,\ ` gdzie

Niech będzie dana macierz :math:`\,\boldsymbol{A}=[a_{ij}]_{m\times n}\in M_{m\times n}(K).` 
:math:`\\`
*Macierzą transponowaną* względem :math:`\,\boldsymbol{A}\,`
nazywamy macierz :math:`\,\boldsymbol{A}^T=\,[a^T_{ij}]_{n\times m}\,,\ ` gdzie

.. math::
   
   a_{ij}^T\ :\,=\ a_{ji},\qquad i=1,2,\ldots,n;\ \ j=1,2,\ldots,m.

W pełnym zapisie: :math:`\qquad\left[\begin{array}{cccc}
a_{11} & a_{12} & \ldots & a_{1n} \\
a_{21} & a_{22} & \ldots & a_{2n} \\
\ldots & \ldots & \ldots & \ldots \\
a_{m1} & a_{m2} & \ldots & a_{mn}
\end{array}\right]^T
\ =\quad
\left[\begin{array}{cccc}
a_{11} & a_{21} & \ldots & a_{m1} \\
a_{12} & a_{22} & \ldots & a_{m2} \\
\ldots & \ldots & \ldots & \ldots \\
a_{1n} & a_{2n} & \ldots & a_{mn}
\end{array}\right]\,.`

.. .. math::
   
   \left[\begin{array}{cccc}
      a_{11} & a_{12} & \ldots & a_{1n} \\
      a_{21} & a_{22} & \ldots & a_{2n} \\
      \ldots & \ldots & \ldots & \ldots \\
      a_{m1} & a_{m2} & \ldots & a_{mn}
   \end{array}\right]^{\ T}
   \ =\quad
   \left[\begin{array}{cccc}
      a_{11} & a_{21} & \ldots & a_{m1} \\
      a_{12} & a_{22} & \ldots & a_{m2} \\
      \ldots & \ldots & \ldots & \ldots \\
      a_{1n} & a_{2n} & \ldots & a_{mn}
   \end{array}\right]\,.

Tak więc :math:`\,i`-ty wiersz macierzy :math:`\,\boldsymbol{A}^T\,`
składa się z elementów :math:`\,i`-tej kolumny macierzy :math:`\,\boldsymbol{A},` :math:`\\`
a :math:`\ j`-ta kolumna macierzy :math:`\,\boldsymbol{A}^T\,`
składa się z elementów :math:`\,j`-tego wiersza macierzy :math:`\,\boldsymbol{A}.`

.. \ \ i=1,2,\ldots,n;\ j=1,2,\ldots,m.`
   
**Przykłady.**

1.) :math:`\ ` Jeżeli 
:math:`\ \ \boldsymbol{A}\ =\ \left[\begin{array}{rr} 
2 & - 1 \\ 3 & 0 \\ - 2 & 1 \end{array}\right]
\in M_{3\times 2}(R),\ \ ` 
to :math:`\ \ \boldsymbol{A}^T\ =\ \left[\begin{array}{rrr} 
2 & 3 & -2 \\ -1 & 0 & 1 \end{array} \right]\in M_{2\times 3}(R).`

2.) :math:`\ ` Transpozycja macierzy kwadratowej:
:math:`\ \ \left[\begin{array}{rrr} 
-2 & 1 & 0 \\ 5 & 2 & 3 \\ 7 & -3 & 8 
\end{array}\right]^T =\ \;\left[\begin{array}{rrr} 
-2 & 5 & 7 \\ 1 & 2 & -3 \\ 0 & 3 & 8 
\end{array}\right]\,.`

3.) :math:`\ ` Transpozycja macierzy jednokolumnowej:  
:math:`\ \ \left[\begin{array}{c} 
a_1 \\ a_2 \\ a_3 \\ a_4
\end{array}\right]^T =\ \;\left[\begin{array}{cccc} 
a_1 & a_2 & a_3 & a_4
\end{array}\right]\,.`


:math:`\\` **Własności operacji transponowania macierzy.** 

1.) :math:`\,` Niech 
:math:`\,\boldsymbol{A},\boldsymbol{B}\in M_{m \times n}(K),\ c\in K.\ \ ` Wtedy
:math:`\ \ (\boldsymbol{A}+\boldsymbol{B})^T =\,\boldsymbol{A}^T + \boldsymbol{B}^T,\ \ 
(c\boldsymbol{A})^T =\,c\boldsymbol{A}^T\,.`

(transpozycja sumy macierzy równa się sumie macierzy transponowanych, 
czynnik liczbowy można wyłączyć przed symbol transpozycji: :math:`\,`
transpozycja jest operacją liniową) 

.. .. math::
   
   (\boldsymbol{A}+\boldsymbol{B})^T = \boldsymbol{A}^T + \boldsymbol{B}^T,\quad
   (c\boldsymbol{A})^T = c\boldsymbol{A}^T

   Oznacza to, że transpozycja jest operacją liniową.

2.) :math:`\,` Niech 
:math:`\,\boldsymbol{A}\in M_{m\times p}(K),\ \boldsymbol{B}\in M_{p\times n}(K).\ ` Wtedy 
:math:`\ \ (\boldsymbol{A}\boldsymbol{B})^T =\,\boldsymbol{B}^T\boldsymbol{A}^T\,.`

(transpozycja iloczynu macierzy równa się iloczynowi macierzy transponowanych
z odwróceniem kolejności czynników)

.. .. math::
   
   (\boldsymbol{A}\boldsymbol{B})^T = \boldsymbol{B}^T\boldsymbol{A}^T\,.

Dowód twierdzenia 2.:

* | Porównanie  wymiarów macierzy.
  | :math:`\boldsymbol{A}\boldsymbol{B}:\ m\times n\,;\quad
    (\boldsymbol{A}\boldsymbol{B})^T:\ n\times m\,.`
  | :math:`\boldsymbol{B}^T:\ n\times p\,;\quad
    \boldsymbol{A}^T:\ p\times m\,;\quad 
    \boldsymbol{B}^T\boldsymbol{A}^T:\ n\times m\,.`

* | Porównanie odpowiednich elementów macierzy. :math:`\,`
    Dla :math:`\boldsymbol{A} = [a_{ij}]_{m\times p}\,,\ \boldsymbol{B}=[b_{ij}]_{p\times n}:`
  | :math:`(\boldsymbol{A}\boldsymbol{B})^T|_{ij}\ =\ 
    (\boldsymbol{A}\boldsymbol{B})|_{ji}\ =\ 
    \sum\limits_{s=1}^p \,a_{js}\,b_{si}\,,` 
  | :math:`\boldsymbol{B}^T\boldsymbol{A}^T|_{ij}\ =\ 
    \sum\limits_{s=1}^p \,b_{is}^T\,a_{sj}^T\ =\ 
    \sum\limits_{s=1}^p \,a_{js}\,b_{si}\,,\quad 
    i=1,2,\ldots,n;\ \ j=1,2,\ldots,m.`



Macierze symetryczne i antysymetryczne
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Macierz :math:`\,\boldsymbol{A}=[a_{ij}]_{n\times n}\in M_n(K)\,` 
nazywa się :math:`\,` *macierzą symetryczną*, :math:`\\`
gdy :math:`\,\boldsymbol{A}^T=\boldsymbol{A}\,,\ `
czyli gdy :math:`\ a_{ij} = a_{ji}\,,\ \ i,j=1,2,\ldots,n.`
 
Taka macierz nie zmienia się przy odbiciu jej elementów względem głównej przekątnej.

Jeżeli dla pewnej macierzy :math:`\,\boldsymbol{A}=[a_{ij}]_{n\times n}\in M_n(K)\,`
spełniony jest warunek :math:`\,\boldsymbol{A}^T=-\boldsymbol{A}\,,` :math:`\\`
to nazywamy ją :math:`\,` *macierzą antysymetryczną*.

Wtedy :math:`\ a_{ij} = - a_{ji}\,,\ \ i,j=1,2,\ldots,n,\ `
z czego wynika, że :math:`\ a_{ii} = 0\ \ \text{dla}\ \ i=1,2,\ldots,n.` :math:`\\`
(w macierzy antysymetrycznej elementy głównej przekątnej są równe zeru). 

W przypadku macierzy rzeczywistych 3. stopnia,
ogólna postać macierzy symetrycznych i antysymetrycznych jest następująca:

.. math::
   
   \boldsymbol{A}_s\ =\ \left[\begin{array}{ccc}
                         a & b & c \\ b & d & e \\ c & e & f
                      \end{array}\right]\,,
   \qquad
   \boldsymbol{A}_a\ =\ \left[\begin{array}{rrr}
                         0 & a & \ \ b \\ -a & 0 & \ \ c \\ -b & -c & \ \ 0
                      \end{array}\,\right]\,.

Z tożsamości, spełnionej dla dowolnej macierzy :math:`\,\boldsymbol{A}\in M_n(K):`

.. math::

   \boldsymbol{A}\ \ =\ \ 
   \textstyle{1\over 2}\ (\boldsymbol{A}+\boldsymbol{A}^T)\ +\ 
   \textstyle{1\over 2}\ (\boldsymbol{A}-\boldsymbol{A}^T),

gdzie po prawej stronie pierwszy składnik jest macierzą symetryczną, 
a drugi macierzą antysymetryczną, wynika 
że każdą macierz kwadratową można przedstawić 
w postaci sumy macierzy symetrycznej i antysymetrycznej.
Można uzasadnić, że rozkład taki jest jednoznaczny.  

W systemie Sage operacji transpozycji macierzy odpowiada metoda ``transpose()`` (w skrócie ``T``).
Dostępne są również metody ``is_symmetric()`` oraz ``is_skew_symmetric()``,
które sprawdzają, czy dana macierz jest symetryczna bądź antysymetryczna.

**Przykład.** :math:`\,` Przedstawić macierz 

.. math::

   \boldsymbol{A}\ =\ \left[\begin{array}{rrr}
                         4 &  3 & -1 \\ 
                         2 & -5 &  8 \\ 
                         0 & -2 &  1
                      \end{array}\right]\,\in\,M_3(R)

w postaci sumy macierzy symetrycznej i macierzy antysymetrycznej.

.. code-block:: python

   sage: A = matrix(QQ,[[4, 3,-1],
                        [2,-5, 8],
                        [0,-2, 1]])

   sage: As = (A + A.T)/2 
   sage: Aa = (A - A.T)/2

   sage: html.table([[A, '=', As, '+', Aa]])
   sage: (As.is_symmetric(), Aa.is_skew_symmetric())

.. math::
   
   \left(\begin{array}{rrr}
      4 &  3 & -1 \\
      2 & -5 &  8 \\
      0 & -2 &  1
   \end{array}\right)\ \ =\ \ 
   \left(\begin{array}{rrr}
      4 & \textstyle{5\over 2} & -\textstyle{1\over 2} \\
      \textstyle{5\over 2} & -5 & 3 \\
      -\textstyle{1\over 2} & 3 & 1 \\
   \end{array}\right)\ \ +\ \ 
   \left(\begin{array}{rrr}
      0 & \textstyle{1\over 2} & -\textstyle{1\over 2} \\
      -\textstyle{1\over 2} & 0 & 5 \\
      \textstyle{1\over 2} & -5 & 0 \\
   \end{array}\right)

(True, True)
   

