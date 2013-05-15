.. -*- coding: utf-8 -*-

Uwaga techniczna
----------------

| Komórki Sage'a uruchamiane przyciskiem "Wykonaj" są ze sobą powiązane (linked) w tym sensie,
| że obiekty, wprowadzone w danej komórce są dostępne w komórkach następnych.

Pozwala to na przykład wywołać funkcję zdefiniowaną w poprzedniej komórce.

| Dla ilustracji rozważmy procedurę wypisującą układ równań liniowych, 
| zadany przez macierz kwadratową :math:`\ {\small\mathbf{A}}\ ` stopnia :math:`\ n\ ` i  kolumnę  wolnych  wyrazów  :math:`\ b\ `
| (przy wykorzystaniu kodu w sekcji `Zadanie. Eliminacja Gaussa dla układów równań`_):

.. sagecellserver::

   def display_set_of_lin_eqns(n, A, b):

       x = vector([var('x%d'%i) for i in range(1,n+1)])
       t = ["\quad " + latex(l) + "& = &" + latex(r) for (l,r) in zip(A*x,b)]
       html("$\\left\{\\begin{array}{rcr} %s \\end{array}\\right.$" % join(t," \\\ "))

       return

Procedura może być teraz wywołana w następnej komórce:

.. sagecellserver::

   n = 4

   A = random_matrix(ZZ, n, algorithm='echelonizable', rank=n)
   b = random_vector(ZZ, n)
   
   display_set_of_lin_eqns(n, A, b)

| Podobna sytuacja występuje w sekcji `Geometria układów równań liniowych`_. Zdefiniowana jest tam funkcja ``verse3column()``,
| zapisująca dany układ trzech równań w postaci kolumnowej, wywołana potem w następnej komórce dla konkretnych argumentów.

| Napis "Wykonaj" na przycisku uruchamiającym program odróżnia komórki z tą dodatkową funkcjonalnością
| od standardowych komórek, które jej nie posiadają. Dla jednolitości można oczywiście zastąpić go przez "Evaluate".


.. _`Geometria układów równań liniowych`: file:///home/student/Test_4/build/html/geometria_ukladow_rownan.html
.. _`Zadanie. Eliminacja Gaussa dla układów równań`: file:///home/student/Test_4/build/html/zadanie_eliminacja_gaussa_bez_macierzy.html
 
