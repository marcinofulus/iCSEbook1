Matrix Inversion
----------------

Jednością (czyli elementem neutralnym ze względu na mnożenie) 
w nieprzemiennym pierścieniu :math:`\,M_n(K)\,` macierzy kwadratowych stopnia :math:`\,n\,`
nad ciałem :math:`\,K\,` jest macierz jednostkowa

.. math::
   
   \boldsymbol{I}_n\ =\  
   \left[\begin{array}{cccc} 
      1      &    0   & \ldots &    0   \\
      0      &    1   & \ldots &    0   \\
      \ldots & \ldots & \ldots & \ldots \\
      0      &    0   & \ldots &    1     
   \end{array}\right]\,.

Oznacza to, że 
:math:`\ \ \boldsymbol{A}\boldsymbol{I}_n\,=\,\boldsymbol{I}_n\boldsymbol{A}\,=\,\boldsymbol{A}\ \ `
dla dowolnej macierzy :math:`\ \boldsymbol{A}\in M_n(K)\,.`

.. .. math::
   
   \boldsymbol{A}\boldsymbol{I}_n\ =\ \boldsymbol{I}_n\boldsymbol{A}\ =\ \boldsymbol{A}\,.

Stosownie do tego zdefiniujemy macierz odwrotną do danej macierzy kwadratowej. :math:`\\`   

Dana macierz :math:`\,\boldsymbol{A}\in M_n(K).\ `
Jeżeli istnieje macierz :math:`\boldsymbol{B}\in M_n(K)\,` taka, że
:math:`\,\boldsymbol{A}\boldsymbol{B}=\boldsymbol{B}\boldsymbol{A}=\boldsymbol{I}_n\,,\,`
gdzie :math:`\,\boldsymbol{I}_n\,` jest macierzą jednostkową stopnia :math:`\,n\,,\,`
to :math:`\,\boldsymbol{B}\,` jest *macierzą odwrotną* do macierzy :math:`\,\boldsymbol{A}.`

Macierz odwrotną do :math:`\,\boldsymbol{A}\,` oznaczamy :math:`\,\boldsymbol{A}^{-1}.` :math:`\\`
Jeżeli taka macierz odwrotna istnieje, to :math:`\,\boldsymbol{A}\,`
nazywamy *macierzą odwracalną*. :math:`\\`

.. Jeśli macierz :math:`\,\boldsymbol{A}\in M_n(K)\ ` ma macierz odwrotną,
   to :math:`\,\boldsymbol{A}\,` nazywamy *macierzą odwracalną*. :math:`\\`

Macierz kwadratowa :math:`\,\boldsymbol{A}\in M_n(K)\,` ma co najwyżej jedną macierz odwrotną.
:math:`\\` Rzeczywiście, niech

.. math::
   
   \boldsymbol{A}\boldsymbol{B}\ =\ \boldsymbol{B}\boldsymbol{A}\ =\ \boldsymbol{I}_n\,,
   \quad
   \boldsymbol{A}\boldsymbol{C}\ =\ \boldsymbol{C}\boldsymbol{A}\ =\ \boldsymbol{I}_n\,.

Wtedy na podstawie łączności mnożenia macierzowego mamy

.. math::
   
   \boldsymbol{B} = \boldsymbol{B}\boldsymbol{I}_n = 
   \boldsymbol{B}(\boldsymbol{A}\boldsymbol{C}) = 
   (\boldsymbol{B}\boldsymbol{A})\boldsymbol{C} =
   \boldsymbol{I}_n\boldsymbol{C} = \boldsymbol{C}\,.

A zatem jeśli macierz jest odwracalna, to jej odwrotność jest określona jednoznacznie. :math:`\\`

Nie dla każdej macierzy kwadratowej istnieje macierz odwrotna.
Odwracalne mogą być tylko (warunek konieczny, ale nie wystarczający) macierze, 
składające się wyłącznie z niezerowych wierszy i z niezerowych kolumn. 
Wyjaśnia to 

.. **Twierdzenie 1.** :math:`\\`

.. admonition:: Twierdzenie 1. :math:`\,`

   Jeżeli :math:`\,\boldsymbol{A}\in M_n(K)\,` jest macierzą odwracalną,
   to :math:`\,\boldsymbol{A}\,` nie ma wierszy składających się z samych zer
   ani kolumn składających się z samych zer.

**Dowód.**

Gdyby :math:`\,i`-ty wiersz macierzy :math:`\,\boldsymbol{A}\,` 
składał się z samych zer, to dla każdej macierzy :math:`\boldsymbol{B}\in M_n(K)\,`
:math:`\,i`-ty wiersz iloczynu :math:`\,\boldsymbol{A}\boldsymbol{B}\,`
zawierałby tylko zera (wierszowa reguła mnożenia macierzowego).

.. Z wierszowej reguły mnożenia macierzy wynika, że
   gdy :math:`\,i`-ty wiersz macierzy :math:`\,\boldsymbol{A}\,` 
   składa się z samych zer, to dla każdej macierzy :math:`\boldsymbol{B}\in M_n(K)\,`
   :math:`\,i`-ty wiersz iloczynu :math:`\,\boldsymbol{A}\boldsymbol{B}\,`
   zawiera tylko zera.

Gdyby :math:`\,j`-ta kolumna macierzy :math:`\,\boldsymbol{A}\,`
była kolumną zerową, to dla każdej macierzy :math:`\boldsymbol{B}\in M_n(K)\,`
:math:`\,j`-ta kolumna iloczynu :math:`\,\boldsymbol{B}\boldsymbol{A}\,`
składałaby się z samych zer (kolumnowa reguła mnożenia macierzowego).

.. Z kolumnowej reguły mnożenia macierzowego wynika, że 
   gdy :math:`\,j`-ta kolumna macierzy :math:`\,\boldsymbol{A}\,`
   jest kolumną zerową, to dla każdej macierzy :math:`\boldsymbol{B}\in M_n(K)\,`
   :math:`\,j`-ta kolumna iloczynu :math:`\,\boldsymbol{B}\boldsymbol{A}\,`
   składa się z samych zer.

W obydwu przypadkach nie istniałaby macierz :math:`\,\boldsymbol{B}\in M_n(K),\,` dla której
:math:`\ \boldsymbol{A}\boldsymbol{B} = \boldsymbol{B}\boldsymbol{A} = \boldsymbol{I}_n\,.` 
:math:`\\`  

.. admonition:: Twierdzenie 2. :math:`\,`

   Jeżeli macierze :math:`\,\boldsymbol{A},\boldsymbol{B}\in M_n(K)\,` są odwracalne, :math:`\\`
   to iloczyn :math:`\,\boldsymbol{A}\boldsymbol{B}\,` też jest odwracalny, przy czym
   :math:`\ \ (\boldsymbol{A}\boldsymbol{B})^{-1}\ =\ \boldsymbol{B}^{-1}\boldsymbol{A}^{-1}\,.`

.. .. math::
   
      (\boldsymbol{A}\boldsymbol{B})^{-1}\ =\ \boldsymbol{B}^{-1}\boldsymbol{A}^{-1}\,.

Rzeczywiście, korzystając z łączności mnożenia macierzowego mamy

.. math::

   (\boldsymbol{A}\boldsymbol{B})(\boldsymbol{B}^{-1}\boldsymbol{A}^{-1})\ =\ 
   \boldsymbol{A}(\boldsymbol{B}\boldsymbol{B}^{-1})\boldsymbol{A}^{-1}\ =\ 
   (\boldsymbol{A}\boldsymbol{I}_n)\boldsymbol{A}^{-1}\ =\ 
   \boldsymbol{A}\boldsymbol{A}^{-1}\ =\ \boldsymbol{I}_n\,,

   (\boldsymbol{B}^{-1}\boldsymbol{A}^{-1})(\boldsymbol{A}\boldsymbol{B})\ =\ 
   \boldsymbol{B}^{-1}(\boldsymbol{A}^{-1}\boldsymbol{A})\boldsymbol{B}\ =\ 
   \boldsymbol{B}^{-1}(\boldsymbol{I}_n\boldsymbol{B})\ =\ 
   \boldsymbol{B}^{-1}\boldsymbol{B}\ =\ \boldsymbol{I}_n\,.

Ogólnie, jeżeli macierze 
:math:`\,\boldsymbol{A}_1,\boldsymbol{A}_2,\dots,\boldsymbol{A}_k\in M_n(K)\,`
są odwracalne, to

.. math::
   
   \left(\boldsymbol{A}_1\boldsymbol{A}_2\dots\boldsymbol{A}_k\right)^{-1}\ =\ 
   \boldsymbol{A}_k^{-1}\dots\boldsymbol{A}_2^{-1}\boldsymbol{A}_1^{-1}\,.
   \\

W systemie Sage macierz odwrotną wylicza się stosując metodę ``inverse()`` (w skrócie ``I``). 
:math:`\\`

**Przykład.** :math:`\,` Znaleźć odwrotność macierzy
:math:`\ \ \boldsymbol{A}\ =\ 
\left[\begin{array}{rrr} 1 & -1 & -2 \\ 0 & 1 & 2 \\ 1 & -1 & -1
\end{array}\right]\,.`

.. code-block:: python

   sage: A = matrix([[1,-1,-2],[0, 1, 2],[1,-1,-1]])
   sage: B = A.I
   sage: html.table([[A, '*', B, '=', A*B]])

.. math::
   
   \left(\begin{array}{rrr}
   1 & -1 & -2 \\
   0 &  1 &  2 \\
   1 & -1 & -1
   \end{array}\right)\ \ *\ \ \left(\begin{array}{rrr}
                               1 & 1 &  0 \\
                               2 & 1 & -2 \\
                              -1 & 0 &  1
                              \end{array}\right)\quad =\quad\left(\begin{array}{rrr}
                                                            1 & 0 & 0 \\
                                                            0 & 1 & 0 \\
                                                            0 & 0 & 1
                                                            \end{array}\right)\,.

























