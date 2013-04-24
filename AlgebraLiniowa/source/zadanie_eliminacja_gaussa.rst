.. -*- coding: utf-8 -*-


Zadanie: Eliminacja Gaussa
--------------------------


Aby wygenerować układ równań naciśnij "Evaluate", aby zmienić liczbę
równań należy zmienić zmienną n.



Zadanie 1. Za pomocą operacji elementarnych, doprowadzić macierz do postaci schodkowej. 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Wolno używać tylko wbudowanych funkcji do operacji na rzędach.


.. sagecellserver::

   n=4
   A=random_matrix(QQ,n,algorithm='echelonizable',rank=n)
   rank=A.rank()
   show(A)

.. end of output

Zadanie 2. Rozwiązać układ równań metodą eliminacji Gaussa. 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


 #. Czy układ jest sprzeczny?

 #. Czy układ jest nieoznaczony?

 #. Ile jest rozwiązań, od ilu parametrów zależą rozwiązania?


.. sagecellserver::
   
   n=5
   A=random_matrix(QQ,n,algorithm='echelonizable',rank=3)
   b=A[:,2]+0.5*A[:,1]
   print "RANK:",A.rank()
   show(A)

.. end of output

