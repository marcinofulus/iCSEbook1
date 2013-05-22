.. -*- coding: utf-8 -*-

Uwagi techniczne
----------------

Komórki Sage'a uruchamiane przyciskiem "Wykonaj" są ze sobą powiązane (linked) w tym sensie,
że obiekty, wprowadzone w danej komórce są dostępne w komórkach następnych.
Pozwala to na przykład wywołać funkcję zdefiniowaną w poprzedniej komórce.

Napis "Wykonaj" odróżnia komórki z tą dodatkową funkcjonalnością od komórek standardowych,
które jej nie posiadają. Dla jednolitości można oczywiście zastąpić go przez "Evaluate".

Dla ilustracji rozważmy procedurę wypisującą układ równań liniowych, 
zadany przez macierz kwadratową :math:`\ {\small\mathbf{A}}\ ` stopnia :math:`\ n\ ` i  kolumnę  wolnych  wyrazów  :math:`\ b\ `
(przy wykorzystaniu kodu w sekcji Zadanie. Eliminacja Gaussa dla układów równań):

.. sagecellserver::

   def display_set_of_lin_eqns(n, A, b):

       x = vector([var('x%d'%i) for i in range(1,n+1)])
       t = ["\ " + latex(l) + "& = &" + latex(r) for (l,r) in zip(A*x,b)]
       html("$\\left\{\\begin{array}{rcr} %s \\end{array}\\right.$" % join(t," \\\ "))

       return

Procedura może być teraz wywołana w następnej komórce:

.. sagecellserver::

   n = 4

   A = random_matrix(ZZ, n, algorithm='echelonizable', rank=n)
   b = random_vector(ZZ, n)
   
   display_set_of_lin_eqns(n, A, b)

To powiązanie komórek ma zastosowanie w sekcji Geometria układów równań liniowych.
Zdefiniowana jest tam funkcja ``verse3column()``, zapisująca dany układ trzech równań w postaci kolumnowej.
Funkcja ta jest potem wywołana w następnej komórce dla konkretnych argumentów.

Przy użyciu tematu ``cloud`` trójwymiarowe wykresy, przedstawiające wierszową
i kolumnową interpretację układu trzech równań, są wyświetlane drugi pod pierwszym. 
Aby opis był widoczny razem z rysunkiem, drugi wykres jest wywoływany (w osobnej komórce) po opisie pierwszego.
