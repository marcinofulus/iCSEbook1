.. -*- coding: utf-8 -*-


Zadanie: Mnożenie macierzy
--------------------------



Wykonujać na papierze trzy mnożenia macierzy 2x2 i jedno 3x3. 

Aby wygenerować macierze i wynik ich mnożenia naciśnij "eveluate", aby zmienić liczbę
równań należy zmienić zmienną ``n``.

Sprawdzić ile będzie wynosił iloczyn
:math:`\boldsymbol{B}\boldsymbol{A}`. Czy mnożenie macierzy jest
przemienne?


.. sagecellserver::

   n = 3
   A=random_matrix(QQ,n,algorithm='echelonizable',rank=n)
   B=random_matrix(QQ,n,algorithm='echelonizable',rank=n)
   html.table([["A","B","AB"],[A,B,A*B]])

