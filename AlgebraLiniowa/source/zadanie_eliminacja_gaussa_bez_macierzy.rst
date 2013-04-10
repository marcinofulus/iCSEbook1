.. -*- coding: utf-8 -*-


Zadanie: Eliminacja Gaussa - dla układów równań
-----------------------------------------------

Wykonując eliminację Gaussa rozwiązać co najmniej jeden układ 3x3
równań na kartce papieru. Rozwiązać układ 4x4 z ew.  pomocą Sage i
rozwiązanie zapisać w postaci notatnika Sage. 


Pod układem równań znajduje się poprawna odpowiedź, proszę ją
wykorzystać do weryfikacji odpowiedzi.

Aby wygenerować układ równań naciśnij "evaluate", aby zmienić liczbę
równań należy zmienić zmienną n.


.. sagecellserver::

   n = 3
   A=random_matrix(ZZ,n,algorithm='echelonizable',rank=n)
   x = vector([ var('x%d'%i) for i in range(1,n+1)])
   b= random_vector(ZZ,n)
   t = [ latex(r)+"&=&"+latex(l) for r,l in zip(A*x,b)]
   html("<center>$\\begin{cases}%s\\end{cases}$</center>" % join(t," \\\ "))
   show(A\b)
