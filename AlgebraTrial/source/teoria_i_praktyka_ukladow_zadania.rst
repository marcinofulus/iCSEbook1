
Problems
--------

**Zadanie 1.**
Używając tylko metod Sage'a dla operacji elementarnych na wierszach:
``swap_rows()``, ``rescale_row()``, ``add_multiple_of_row()``, :math:`\,`
doprowadź macierz :math:`\,\boldsymbol{A}\,` do zredukowanej postaci schodkowej. :math:`\,`
Sprawdź następnie wynik stosując metodę ``rref()``.

.. Aby wygenerować macierz, naciśnij "Wykonaj";
   aby zmienić rozmiar macierzy, wpisz nową wartość n.

.. sagecellserver::

   n = 4
   A = random_matrix(QQ, n, algorithm='echelonizable', rank=n, upper_bound=6)
   html.table([["A","=",A]])

:math:`\;`

**Zadanie 2.** :math:`\,`
Dana jest macierz rozszerzona :math:`\,\boldsymbol{B}\,` pewnego układu równań liniowych. :math:`\\`
Opierając się na ogólnych twierdzeniach, :math:`\,` jeszcze przed rozwiązaniem:
     
* | rozstrzygnij, czy układ jest oznaczony, nieoznaczony czy sprzeczny
  | (które z tych sytuacji wchodzą tutaj w rachubę?);

* | w przypadku nieoznaczonym określ ilość parametrów, 
  | od których zależy ogólne rozwiązanie.    

Rozwiąż następnie ten układ dwoma sposobami:
   
* | znajdując bezpośrednio jego rozwiązanie szczególne oraz bazę
  | przestrzeni rozwiązań stowarzyszonego z nim układu jednorodnego;
     
* metodą eliminacji, doprowadzając macierz :math:`\,\boldsymbol{B}\,`
  do zredukowanej postaci schodkowej.

.. sagecellserver::
   
   m = 4; n = 5
   B = random_matrix(QQ, m,n+1, algorithm='echelonizable', 
                                rank=3, upper_bound=6)
   html.table([["B","=",B]])


