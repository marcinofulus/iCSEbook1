
Wyliczanie macierzy odwrotnej metodą eliminacji
-----------------------------------------------

Poniższy program generuje odwracalne macierze :math:`\,\boldsymbol{A}\,` 
zadanego stopnia :math:`\,n\,` nad ciałem liczb wymiernych :math:`\,Q.\ `

Dla :math:`\,n = 2, 3\,` wykonaj odręcznie wszystkie przekształcenia elementarne,
które dla zadanej macierzy :math:`\,\boldsymbol{A}\ `
przeprowadzają agregat :math:`\,(\boldsymbol{A},\boldsymbol{I})\ `
do postaci :math:`\,(\boldsymbol{I},\boldsymbol{A}^{-1}).\ `
Porównaj swój wynik z wynikiem komputerowym.

.. sagecellserver::
   
   n=3
   A = random_matrix(QQ,n,algorithm='echelonizable',rank=n,upper_bound=10)
   html.table([["Znajdź macierz odwrotną do macierzy:", 'A', '=', A]])

   print "Rozwiązanie:"

   B = A.augment(identity_matrix(n)) # rozszerzenie macierzy A
   R = B.rref()      # zredukowana postać schodkowa macierzy B
   A_1 = R[:,n:]     # macierz A^(-1) wyodrębniona z R
  
   @interact
   
   def _(h=('Krok:', ["Agregat (A,I)", "Agregat (I,A_1)", "Sprawdzenie"])):

       if h=="Agregat (A,I)": 
           html.table([["", "", "B = (A,I)$\;$ jest rozszerzeniem A :"], 
                       ["B", '=', B]])

       elif h=="Agregat (I,A_1)": 
           html.table([["", "", "Zredukowana postać schodkowa B:"], 
                       ["B.rref()", '=', R]])

       elif h=="Sprawdzenie":
           html.table([["$A\ :$", "", "$A^{-1}\ :$", "", "$A\ *\ A^{-1}\ :$"],
                       [A, '*', A_1, '=', A*A_1]])

Dla większych wartości :math:`\,n\,` warto porównać wyniki komputerowe
otrzymane metodą eliminacji oraz przez bezpośrednie użycie metody ``inverse()``
(w skrócie ``I``).






