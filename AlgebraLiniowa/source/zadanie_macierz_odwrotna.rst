.. -*- coding: utf-8 -*-


Zadanie: Macierz odwrotna
-------------------------



Obliczyć macierz odwrotną metodą eliminacji Gaussa Jordana. Wykonać:

  * wszystkie kroki na papierze dla macierzy :math:`2\times 2`
  * wszystkie kroki w Sage lub papierze dla macierzy :math:`3\times 3`
  * wszystkie kroki w Sage lub papierze dla macierzy :math:`4\times 4`

Aby wygenerować macierze naciśnij "Evaluate", aby zmienić liczbę
równań należy zmienić zmienną ``n``. 


.. sagecellserver::


   n=4
   A=random_matrix(QQ,n,algorithm='echelonizable',rank=n)
   print "Znaleźć macierz odwrotną do:"
   show(A)
   B = A.augment(identity_matrix(n))

   print "Rozwiązanie:"
   @interact
   def _(h=('Krok:',["B, rozszerzona A","zredukowana B","sprawdzenie"])):
       if h=="B, rozszerzona A":
           html.table([["B"],[B]])
       else: 
           if h=="zredukowana B":
               html.table([["Postać całkowicie zredukowana macierzy B"],[B.rref()]])
           else:
               html.table([["B.rref()[:%d]"%n,r"$\times A$","=B.rref()[%d:]*A"%n],[B.rref()[:,n:],A,B.rref()[:,n:]*A]])

