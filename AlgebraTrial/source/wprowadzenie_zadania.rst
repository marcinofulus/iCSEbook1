
Problems
--------

| **Zadanie.**
| Stosując metodę eliminacji, rozwiąż odręcznie
  układ trzech równań o trzech niewiadomych.
| Rozwiąż również, ewentualnie z pomocą Sage'a, układ czterech równań o czterech niewiadomych.
|
| Aby wygenerować układ równań, naciśnij "Wykonaj"; :math:`\,`
| aby zadać inną liczbę równań, wpisz nową wartość n.
| Pod układem będzie podane rozwiązanie :math:`\,` - :math:`\,` wykorzystaj je do sprawdzenia wyniku.

.. sagecellserver::

   n = 3
   
   A = random_matrix(ZZ, n, algorithm='echelonizable', rank=n, upper_bound=6)
   b = random_vector(ZZ, n, x=-5, y=6)
   
   x = vector([var('x%d'%i) for i in range(1,n+1)])
   t = ["\ " + latex(l) + " & \!\! = & \!\! " + latex(r) for (l,r) in zip(A*x,b)]
   html("<center>$\\left\{\\begin{array}{rcr} %s \\end{array}\\right.$" % join(t," \\\ "))
   
   show(A\b)
