
Triangular Matrices
-------------------

Jeżeli w macierzy :math:`\,\boldsymbol{L}=[l_{ij}]_{n\times n}\in M_n(K)\,`
wszystkie elementy powyżej głównej przekątnej są równe zeru,
czyli :math:`\,l_{ij}=0\ ` dla :math:`\ i<j,\ ` :math:`\ i,j=1,2,\dots,n\,,\ `
to :math:`\,\boldsymbol{L}\,` nazywamy *dolną macierzą trójkątną*.

Odpowiednio, w *górnej macierzy trójkątnej* :math:`\,\boldsymbol{U}=[u_{ij}]_{n\times n}\in M_n(K)\,`
znikają wszystkie elementy poniżej głównej przekątnej, czyli
:math:`\,u_{ij}=0\ \ \text{dla}\ \ i>j,\ \ i,j=1,2,\dots,n\,.`

Dla przykładu, przy :math:`\,n=4\,` ogólna postać tych macierzy jest następująca:

.. math::
   :label: MLU
   
   \boldsymbol{L}\ =\ 
   \left[\begin{array}{cccc} l_{11} &    0   &    0   &    0   \\
                             l_{21} & l_{22} &    0   &    0   \\
                             l_{31} & l_{32} & l_{33} &    0   \\
                             l_{41} & l_{42} & l_{43} & l_{44} \end{array}\right]\,,
   \qquad
   \boldsymbol{U}\ =\ 
   \left[\begin{array}{cccc} u_{11} & u_{12} & u_{13} & u_{14} \\
                                0   & u_{22} & u_{23} & u_{24} \\
                                0   &    0   & u_{33} & u_{34} \\
                                0   &    0   &    0   & u_{44} \end{array}\right]\,.

**Własności macierzy trójkątnych.**

* Suma dwóch dolnych macierzy trójkątnych jest dolną macierzą trójkątną.
* Pomnożenie dolnej macierzy trójkątnej przez liczbę daje dolną macierz trójkątną.
* Iloczyn dwóch dolnych macierzy trójkątnych jest dolną macierzą trójkątną.
* Odwrotność odwracalnej dolnej macierzy trójkątnej jest dolną macierzą trójkątną.

Analogiczne własności mają górne macierze trójkątne.
Wobec tego zarówno dolne, jak i górne macierze trójkątne tworzą podalgebrę
algebry macierzy kwadratowych stopnia :math:`\,n\,` nad :math:`\,K.`

Układ równań liniowych o kwadratowej macierzy współczynników :math:`\boldsymbol{A}\,`
można łatwo rozwiązać, gdy :math:`\,\boldsymbol{A}\,` jest dolną albo górną macierzą trójkątną.
Dla przykładu rozważmy układ o macierzy :math:`\,\boldsymbol{L}\,` z równania :eq:`MLU`
przy założeniu, że :math:`\ l_{ii}\neq 0,\ \ i=1,2,3,4\,:`

.. math::
   :nowrap:
   
   \begin{alignat*}{5}
   l_{11}\,x_1 & {\,}   {\,} &             & {\,}   {\,} &             & {\,}   {\,} &             & {\ \ } = {\ \ } & b_1 \\
   l_{21}\,x_1 & {\,} + {\,} & l_{22}\,x_2 & {\,}   {\,} &             & {\,}   {\,} &             & {\ \ } = {\ \ } & b_2 \\
   l_{31}\,x_1 & {\,} + {\,} & l_{32}\,x_2 & {\,} + {\,} & l_{33}\,x_3 & {\,}   {\,} &             & {\ \ } = {\ \ } & b_3 \\
   l_{41}\,x_1 & {\,} + {\,} & l_{42}\,x_2 & {\,} + {\,} & l_{43}\,x_3 & {\,} + {\,} & l_{44}\,x_4 & {\ \ } = {\ \ } & b_4 
   \end{alignat*}

Rozwiązanie otrzymujemy metodą podstawiania "w przód" (ang. forward substitution):

.. math::
   :nowrap:
   
   \begin{eqnarray*}
   x_1 & = & l_{11}^{-1}\ b_1 \\
   x_2 & = & l_{22}^{-1}\ (b_2-l_{21}\,x_1) \\
   x_3 & = & l_{33}^{-1}\ (b_3-l_{31}\,x_1-l_{32}\,x_2) \\
   x_4 & = & l_{44}^{-1}\ (b_4-l_{41}\,x_1-l_{42}\,x_2-l_{43}\,x_3)
   \end{eqnarray*}

Ogólnie, gdy macierz współczynników jest dolną macierzą trójkątną stopnia :math:`\,n\,`
o niezerowych elementach diagonalnych (wtedy i tylko wtedy układ jest oznaczony), to

.. math::
   
   x_k\ \,=\ \,l_{kk}^{-1}\ 
   \left(\,b_k\ -\ \sum_{i=1}^{k-1}\ l_{ki}\,x_i\,\right)\,,\qquad
   k=1,2,\dots,n\,.

Analogiczne postępowanie :math:`\,` - :math:`\,` podstawianie "wstecz" (backward substitution)
:math:`\,` - :math:`\,` daje rozwiązanie układu równań liniowych z górną trójkątną macierzą współczynników. :math:`\\`

