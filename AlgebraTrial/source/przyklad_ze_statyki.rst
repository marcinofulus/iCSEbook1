.. -*- coding: utf-8 -*-

Układ równań liniowych w mechanice
----------------------------------

Liniowy łańcuch mas na sprężynach
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Rozważmy układ :math:`\,n+1\,` punktów materialnych :math:`\,P_0,\,P_1,\,\ldots,\,P_n\,,\ `
rozmieszczonych na pionowej osi o początku :math:`\,\boldsymbol{O}.\ ` 
Każde dwa sąsiednie punkty są połączone sprężyną
o długości :math:`\,d\,` i stałej sprężystości :math:`\,k.\,`
Gdy nie działają siły zewnętrzne, układ jest w pierwotnym stanie równowagi:
cząstka :math:`\,P_0\,` jest w punkcie :math:`\,\boldsymbol{O},\ `
a współrzędne :math:`\,X_i\ ` cząstek przyjmują wartości
 
.. math::
   
   X_i^o\,=\,i\cdot d\,,\qquad i = 0,1,\ldots,n\,.

Aby dopuścić inne konfiguracje, wprowadzamy oznaczenie :math:`\,x_i\,`
dla odchylenia :math:`\,i`-tej cząstki od jej położenia w pierwotnym stanie równowagi:

.. math::

   X_i\,=\,X_i^o\,+\,x_i\,=\,i\cdot d\,+\,x_i\,,\qquad i = 0,1,\ldots,n\,.

Siła, wywierana na każdą wewnętrzną :math:`\,i`-tą cząstkę przez jej sąsiadów, wynosi

.. math::

   F_i\ =\ -k\ \left[\,\left(X_i-X_{i-1}\right)\,-\,d\,\right]\ +
         \ k\ \left[\,\left(X_{i+1}-X_i\right)\,-\,d\,\right]\ =
           
        =\ -k\ (x_i-x_{i-1})\,+\,k\ (x_{i+1}-x_i)\ =
         
        =\ k\ (x_{i-1}\,-\,2\,x_i\,+\,x_{i+1})\,,\qquad i = 1,\ldots,n-1\,.

.. Wyobraźmy sobie teraz, że

Odwołując się do konkretnej sytuacji fizycznej, założymy dodatkowo że:

* cząstki mają jednakowe masy :math:`\,m\,` i podlegają działaniu siły ciężkości;

* skrajne punkty :math:`\,P_0\ \,\text{i}\ \,P_n\,`
  są unieruchomione w ich pierwotnym położeniu równowagi:
  
  .. math::
     :label: 21
     
     X_0\,=\,0\,,\quad X_n\,=\,n\cdot d\,,
     \qquad\text{czyli}\qquad x_0 = x_n = 0\,;

Obrazowo sytuację tę można opisać następująco: mamy wiszący pionowo łańcuch złożony z :math:`\,n\,`
jednakowych ciężarków i :math:`\,n\,` rozdzielających je jednakowych sprężyn.
Pierwszy ciężarek jest zawieszony na sprężynie, przymocowanej górnym końcem bezpośrednio do sufitu
(punkt materialny :math:`\,P_0\,` jest punktem zamocowania tej sprężyny),
natomiast ostatni ciężarek spoczywa na podłodze. Wysokość pomieszczenia równa się długości łańcucha, 
jaką miałby on w stanie nieważkości.

Wyznaczymy stan równowagi układu, określając go przez zbiór
odchyleń :math:`\,x_1,\,\ldots,\,x_{n-1}\,.`

W równowadze wypadkowa sił działających na każdą cząstkę wewnętrzną równa się zeru:

.. math::
   :label: 22

   F_i\ =\ k\ (x_{i-1}\,-\,2\,x_i\,+\,x_{i+1})\ +\ mg\ =\ 0\,,
   \qquad i = 1,\ldots,n-1\,.

Łącząc warunki :eq:`21` i :eq:`22` otrzymujemy układ :math:`\,n+1\,` równań
o :math:`\,n+1\,` niewiadomych:

.. math::
   :label: 23

   \begin{cases}\ \ \begin{array}{l}
      x_0\,=\,0 \\
      x_{i-1}\,-\,2\,x_i\,+\,x_{i+1}\,=\,-\,p\,,\qquad i = 1,\ldots,n-1\,; \\
      x_n\,=\,0
   \end{array}\end{cases}

gdzie :math:`\ p\,=\,mg/k\,` jest parametrem o wymiarze długości.

Dla przykładu, :math:`\,` przy :math:`\ n=5\ ` układ równań przedstawia się następująco:

.. math::
   :label: 24

   \begin{cases}\ \ \begin{array}{l}
      x_0\,=\,0 \\
      x_0\,-\,2\,x_1\,+\,x_2\,=\,-\,p \\
      x_1\,-\,2\,x_2\,+\,x_3\,=\,-\,p \\
      x_2\,-\,2\,x_3\,+\,x_4\,=\,-\,p \\
      x_3\,-\,2\,x_4\,+\,x_5\,=\,-\,p \\
      x_5\,=\,0
   \end{array}\end{cases}

czyli w wersji macierzowej

.. math::

   \left[\ \begin{array}{rrrrrr}
      1 &  0 &  0 &  0 &  0 & 0 \\
      1 & -2 &  1 &  0 &  0 & 0 \\
      0 &  1 & -2 &  1 &  0 & 0 \\
      0 &  0 &  1 & -2 &  1 & 0 \\
      0 &  0 &  0 &  1 & -2 & 1 \\
      0 &  0 &  0 &  0 &  0 & 1
   \end{array}\ \right]\ 
   \left[\begin{array}{c}
      x_0 \\ x_1 \\ x_2 \\ x_3 \\ x_4 \\ x_5
   \end{array}\right]\ \ =\ \ -\,p\ 
   \left[\begin{array}{c}
      0 \\ 1 \\ 1 \\ 1 \\ 1 \\ 0
   \end{array}\right]\,.

Dla realistycznych wartości:
:math:`\quad mg = 1 \ \text{N}\,,
\quad k = 1\ \frac{\text{N}}{\text{cm}}\ =\ 100\ \frac{\text{N}}{\text{m}}\,,\ ` 
otrzymujemy :math:`\ p\,=\,0.01\ \text{m}\,.\\` 
Zauważmy, że we wzorach nie występuje długość sprężyn :math:`\,d\,.`

Narzędzia systemu Sage pozwalają rozwiązać układ :eq:`23` dla dowolnego zadanego :math:`\,n.`
Przy dużych :math:`\,n,\,` zamiast wykazu wartości odchyleń :math:`\,x_i\,,\,`
warto wyświetlić obraz graficzny wyniku przy pomocy funkcji ``list_plot()``:

.. sagecellserver::  
   
   n = 50; p = 0.01
   
   L = matrix(RDF,n+1)
   L[0,0], L[-1,-1] = 1.0, 1.0
   for i in range(1,n): L[i,i-1], L[i,i], L[i,i+1] = 1.0, -2.0, 1.0
   
   f = -vector(RDF,(n+1)*[p])
   f[0], f[n] = 0.0, 0.0
   
   #print L\f
   list_plot(L\f, axes_labels=['$i$','$x_i$'], figsize=5)

Jak widać, odchylenia od pierwotnych położeń są największe w środku łańcucha
i maleją symetrycznie w kierunku jego krańców.

**Ćwiczenie.** :math:`\\`
Wykorzystując powyższy program, znajdź liczbowe rozwiązanie układu :eq:`24`.
























 



