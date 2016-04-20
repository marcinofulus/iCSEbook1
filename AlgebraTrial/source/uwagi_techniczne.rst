.. -*- coding: utf-8 -*-

Technical remarks
-----------------

Komórki Sage'a uruchamiane przyciskiem "Wykonaj" są ze sobą powiązane (linked) w tym sensie,
że obiekty wprowadzone w danej komórce są dostępne w komórkach następnych.
Pozwala to na przykład wywołać funkcję zdefiniowaną w poprzedniej komórce.

Napis "Wykonaj" odróżnia komórki z tą dodatkową funkcjonalnością od komórek standardowych,
które jej nie posiadają. Dla jednolitości można oczywiście zastąpić go przez "Evaluate".

Dla ilustracji rozważmy procedurę wypisującą układ równań liniowych, 
zadany przez macierz kwadratową :math:`\ \boldsymbol{A}\ ` stopnia :math:`\ n\ ` 
i  kolumnę  wolnych  wyrazów  :math:`\ \boldsymbol{b}:`

.. sagecellserver::

   def display_set_of_lin_eqns(n, A, b):

       X = vector([var('x%d'%i) for i in range(1,n+1)])

       t = ["\ " + latex(l) + " & \!\! = & \!\! " +
       latex(r) for (l,r) in zip(A*X,b)]

       pretty_print(html("$\\left\{\\begin{array}{rcr} %s \\end{array}\\right.$"
       % " \\\ ".join(t)))

       return

.. Formatowanie w nowym stylu (Python 3) w powyższym programie:
   
   X = vector([var('x{0:d}'.format(i)) for i in range(1,n+1)])
   
   Analogiczna zmiana w późniejszym poleceniu wydruku nie jest już taka prosta.

Procedura może być teraz wywołana w następnej komórce:

.. sagecellserver::

   n = 4

   A = random_matrix(ZZ, n, algorithm='echelonizable', upper_bound=6, rank=n)
   b = random_vector(ZZ, n, x=-5, y=6)
   
   try: display_set_of_lin_eqns(n, A, b)
   except NameError: pretty_print(html("Wykonaj kod w poprzedniej komórce!"))

To powiązanie komórek ma zastosowanie np. w sekcji Geometria układów równań liniowych.
Zdefiniowana jest tam funkcja ``verse3column()``, zapisująca dany układ trzech równań w postaci kolumnowej.
Funkcja ta jest potem wywołana w następnej komórce dla konkretnych argumentów.
