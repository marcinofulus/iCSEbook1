
Zadania
-------

**Zadanie 1.** :math:`\,`

Niech :math:`\,V\ ` będzie przestrzenią unitarną, 
a :math:`\ \,Y\ ` - :math:`\,` jej podprzestrzenią: :math:`\ Y<V\,.\ ` :math:`\\`
*Dopełnieniem ortogonalnym* podprzestrzeni :math:`\,Y\,` nazywa się 
zbiór :math:`\,Y^\perp\,` wszystkich wektorów przestrzeni :math:`\,V\,`
ortogonalnych do każdego wektora podprzestrzeni :math:`\,Y:`

.. math::
   
   Y^\perp\ :\,=\ \,\{\,x\in V:\ \ \langle x,y\rangle = 0\quad
   \text{dla każdego}\ \ y\in Y\,\}\,.

Udowodnij, że :math:`\ Y^\perp\ ` jest podprzestrzenią: :math:`\ \,Y^\perp<V\,.`
   
**Zadanie 2.**

Metoda ``gram_schmidt()`` pakietu Sage ortogonalizuje układ *wierszy*
zadanej macierzy :math:`\,\boldsymbol{A}.\ `
 
W wyniku metoda zwraca dwójkę macierzy :math:`\,(\boldsymbol{G},\boldsymbol{M}).\ `
Wiersze macierzy :math:`\,\boldsymbol{G}\ ` tworzą układ ortogonalny
(ale na ogół nie ortonormalny) otrzymany przez zastosowanie procedury Grama-Schmidta
do układu wierszy macierzy :math:`\boldsymbol{A},\ `
natomiast dolna trójkątna macierz :math:`\boldsymbol{M}` spełnia warunek
:math:`\,\boldsymbol{A}=\boldsymbol{M}\boldsymbol{G}\ `
(w starszej wersji do :math:`\,\boldsymbol{M}\ ` 
trzeba dodać macierz jednostkową :math:`\,\boldsymbol{I}`).

Jeżeli :math:`\,\boldsymbol{A}\ ` jest macierzą kwadratową stopnia :math:`\,n,\ ` to
według wierszowej reguły mnożenia macierzowego, elementy :math:`\,i`-tego wiersza
macierzy :math:`\,\boldsymbol{M}\ ` są współczynnikami kombinacji liniowej
wierszy macierzy :math:`\,\boldsymbol{G},\ ` równej 
:math:`\,i`-temu wierszowi macierzy :math:`\,\boldsymbol{A},\ \ i=1,2,\dots,n.` 

Wykonaj poniższy kod i sprawdź, czy

* spełniony jest warunek 
  :math:`\,\boldsymbol{A}=\boldsymbol{M}\boldsymbol{G}\ \,?`

* iloczyn :math:`\,\boldsymbol{G}\boldsymbol{G}^{\,T}\ ` jest macierzą diagonalną :math:`\\`
  (co jest równoważne ortogonalności układu *wierszy* macierzy :math:`\,\boldsymbol{G}`) ?

* iloczyn :math:`\,\boldsymbol{G}^{\,T}\boldsymbol{G}\ ` jest macierzą diagonalną :math:`\\`
  (co jest równoważne ortogonalności układu *kolumn* macierzy :math:`\,\boldsymbol{G}`) ?

.. sagecellserver::
   
   A = matrix(QQ,[[-2, -2, 1],
                  [ 8, 11,-7],
                  [19,-14,-8]])
   G,M = A.gram_schmidt()
   show((G,M))

Macierz :math:`\,\boldsymbol{Q}\ ` powstała przez unormowanie wierszy macierzy 
:math:`\,\boldsymbol{G}.\ ` :math:`\\`
Zbadaj teraz iloczyny 
:math:`\,\boldsymbol{Q}\boldsymbol{Q}^{\,T}\ ` oraz 
:math:`\,\boldsymbol{Q}^{\,T}\boldsymbol{Q}\,:`

.. sagecellserver::
   
   Q = copy(G)
   Q.rescale_row(0, 1/norm(G.row(0)))
   Q.rescale_row(1, 1/norm(G.row(1)))
   Q.rescale_row(2, 1/norm(G.row(2)))
   show(Q)

:math:`\;`

.. admonition:: Wniosek. 

   Ortogonalność układu wierszy 
   macierzy :math:`\,\boldsymbol{P}\in M_n(K)\ ` nie implikuje 
   ortogonalności układu jej kolumn i vice versa: 
   na ogół
   :math:`\,\boldsymbol{P}\boldsymbol{P}^{\,T}\neq\boldsymbol{P}^{\,T}\boldsymbol{P}\,,\ `
   chyba, że :math:`\,\boldsymbol{P}\ ` jest macierzą ortogonalną: :math:`\,` wtedy
   :math:`\,\boldsymbol{P}\boldsymbol{P}^{\,T}\,=\,\boldsymbol{P}^{\,T}\boldsymbol{P}\,=\,
   \boldsymbol{I}_n\,.`






























