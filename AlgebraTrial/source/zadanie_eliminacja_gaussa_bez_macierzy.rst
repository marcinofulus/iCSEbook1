.. -*- coding: utf-8 -*-

Zadanie. Eliminacja Gaussa dla układów równań
---------------------------------------------

| Wykonując eliminację Gaussa rozwiąż odręcznie
  co najmniej jeden układ 3 równań o 3 niewiadomych.

| Rozwiąż również układ 4 równań o 4 niewiadomych, ewentualnie z pomocą Sage'a.

| Aby wygenerować układ równań naciśnij "Wykonaj";
| aby zadać inną liczbę równań należy zmienić wartość n.

| Pod równaniem będzie podane rozwiązanie - wykorzystaj je do sprawdzenia wyniku.

.. sagecellserver::

   n = 3

   A = random_matrix(ZZ, n, algorithm='echelonizable', rank=n)
   b = random_vector(ZZ, n)

   x = vector([var('x%d'%i) for i in range(1,n+1)])
   t = ["\ " + latex(l) + "& = &" + latex(r) for (l,r) in zip(A*x,b)]
   html("<center>$\\left\{\\begin{array}{rcr} %s \\end{array}\\right.$" % join(t," \\\ "))

   show(A\b)
