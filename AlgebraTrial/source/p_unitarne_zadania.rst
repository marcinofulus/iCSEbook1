
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
(w starszej wersji pakietu Sage do :math:`\,\boldsymbol{M}\ ` 
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

   Ortogonalność układu wierszy macierzy :math:`\,\boldsymbol{G}\in M_n(R)\ ` nie implikuje 
   ortogonalności układu jej kolumn i vice versa: na ogół
   :math:`\,\boldsymbol{G}\,\boldsymbol{G}^{\,T}\neq\boldsymbol{G}^{\,T}\boldsymbol{G},\,`
   chyba, że :math:`\,\boldsymbol{G}=\lambda\,\boldsymbol{Q},\ \lambda\in R,` gdzie 
   :math:`\,\boldsymbol{Q}\ ` jest macierzą ortogonalną; :math:`\,` wtedy
   :math:`\,\boldsymbol{G}\,\boldsymbol{G}^{\,T}=\,\boldsymbol{G}^{\,T}\boldsymbol{G}\,=\,
   \lambda^2\,\boldsymbol{I}_n\,.`

**Dyskusja.**

Wniosek wiąże się z własnością macierzy diagonalnych, którą przedstawia 

.. admonition:: Lemat.
   
   W algebrze :math:`\,M_n(R)\ ` rzeczywistych macierzy kwadratowych stopnia :math:`\,n\,,\,`
   diagonalna macierz :math:`\,\boldsymbol{D}\ ` komutuje z każdą macierzą
   :math:`\,\boldsymbol{A}\ ` tej algebry wtedy i tylko wtedy, gdy jest proporcjonalna
   do macierzy jednostkowej:
   
   .. math::
      
      [\,\boldsymbol{A},\boldsymbol{D}\,]\equiv
      \boldsymbol{A}\boldsymbol{D}-\boldsymbol{D}\boldsymbol{A}=
      \boldsymbol{0}\quad
      \text{dla każdej macierzy}\ \boldsymbol{A}
      \quad\ \ \Leftrightarrow\quad\ \ 
      \boldsymbol{D}=\alpha\,\boldsymbol{I}_n\,,\ \alpha\in R\,. 

Wprowadzamy oznaczenie dla diagonalnej macierzy o elementach
:math:`\ \alpha_1,\,\alpha_2,\,\ldots,\,\alpha_n:`

.. math::
   
   \text{diag}\,(\alpha_1,\alpha_2,\ldots,\alpha_n)\ :\,=\ 
   \left[\begin{array}{cccc}
   \alpha_1  &     0     & \ldots &     0   \\
       0     & \alpha_2  & \ldots &     0   \\
    \ldots   &  \ldots   & \ldots &  \ldots \\
       0     &     0     & \ldots & \alpha_n
   \end{array}\right]\,.

.. Jeżeli przez :math:`\ \boldsymbol{R}_1,\,\boldsymbol{R}_2,\,\ldots,\,\boldsymbol{R}_n\ `
   oznaczymy wiersze, a przez 
   :math:`\ \boldsymbol{C}_1,\,\boldsymbol{C}_2,\,\ldots,\,\boldsymbol{C}_n\ ` - :math:`\,`
   kolumny dowolnej macierzy, to wierszowa i kolumnowa reguła mnożenia macierzowego daje odpowiednio

Niech będzie dana dowolna macierz :math:`\ \boldsymbol{A}\in M_n(R)\ ` o kolumnach
:math:`\ \boldsymbol{C}_1,\,\boldsymbol{C}_2,\,\ldots,\,\boldsymbol{C}_n\ `
i wierszach :math:`\ \boldsymbol{R}_1,\,\boldsymbol{R}_2,\,\ldots,\,\boldsymbol{R}_n\,.\ `
Wychodząc z ogólnej reguły mnożenia macierzowego, możemy zapisać kolumnową i wierszową
regułę mnożenia macierzy :math:`\ \boldsymbol{A}\ ` przez macierz diagonalną:

.. Jeżeli przez :math:`\ \boldsymbol{C}_1,\,\boldsymbol{C}_2,\,\ldots,\,\boldsymbol{C}_n\ `
   oznaczymy kolumny, a przez 
   :math:`\ \boldsymbol{R}_1,\,\boldsymbol{R}_2,\,\ldots,\,\boldsymbol{R}_n\ ` - :math:`\,`
   wiersze macierzy, :math:`\,` to :math:`\,` 
   kolumnowa :math:`\,` i :math:`\,` wierszowa reguła mnożenia macierzowego daje odpowiednio

.. math::

   [\,\boldsymbol{C}_1\,|\,\boldsymbol{C}_2\,|\,\ldots\,|\,\boldsymbol{C}_n\,]\ \cdot\ 
   \text{diag}\,(\alpha_1,\alpha_2,\ldots,\alpha_n)\ \ =\ \ 
   [\,\alpha_1\,\boldsymbol{C}_1\,|\,\alpha_2\,\boldsymbol{C}_2\,|\,\ldots\,|\,
   \alpha_n\,\boldsymbol{C}_n\,]\,,

   \text{diag}\,(\alpha_1,\alpha_2,\ldots,\alpha_n)\ \cdot\ 
   \left[\begin{array}{c}
   \boldsymbol{R}_1 \\ \boldsymbol{R}_2 \\ \ldots \\ \boldsymbol{R}_n
   \end{array}\right]\ \ =\ \ 
   \left[\begin{array}{c}
   \alpha_1\,\boldsymbol{R}_1 \\ \alpha_2\,\boldsymbol{R}_2 \\ \ldots \\ \alpha_n\,\boldsymbol{R}_n
   \end{array}\right]\,.

**Dowód lematu.**

:math:`\ \Rightarrow\ :\ ` Pokażemy, że gdy 
:math:`\ \boldsymbol{D}\neq\alpha\,\boldsymbol{I}_n\,,\ `
to istnieje macierz :math:`\,\boldsymbol{A}\,,\ `
dla której :math:`\,\boldsymbol{A}\boldsymbol{D}\neq\boldsymbol{D}\boldsymbol{A}\,.`

Jeżeli :math:`\ \boldsymbol{D}=\text{diag}\,(\alpha_1,\alpha_2,\dots,\alpha_n)\,,\ `
gdzie :math:`\ \alpha_p\neq\alpha_q\,,\quad 1\leq p<q \leq n\,,\ `
to :math:`\ \boldsymbol{A}\ ` może być macierzą, której jedyny niezerowy element jest jedynką
w :math:`\,p`-tym wierszu i :math:`\,` w :math:`\,q`-tej kolumnie:

.. Niech :math:`\ \boldsymbol{A}\ ` będzie macierzą, której jedyny niezerowy element jest jedynką
   w :math:`\,p`-tym wierszu :math:`\\`
   i :math:`\,` w :math:`\,q`-tej kolumnie, :math:`\,` a 
   :math:`\ \boldsymbol{D}=\text{diag}\,(\alpha_1,\alpha_2,\dots,\alpha_n)\,,\ `
   gdzie :math:`\ \alpha_p\neq\alpha_q\,,\quad 1\leq p<q \leq n\,:`

.. math::
   
   \boldsymbol{A}=[\,a_{ij}\,]_{n\times n}\,,\ \ a_{ij}=\delta_{ip}\,\delta_{jq}\,;\quad
   \boldsymbol{D}=[\,d_{ij}\,]_{n\times n}\,,\ \ d_{ij}=\alpha_i\,\delta_{ij}\,;\quad\ \ 
   i,j=1,2,\dots,n\,.

Oznaczmy: 
:math:`\ \boldsymbol{A}\boldsymbol{D}=[\,b_{ij}\,]_{n\times n}\,,\ 
\boldsymbol{D}\boldsymbol{A}=[\,c_{ij}\,]_{n\times n}\,.\ ` :math:`\\`
Reguły mnożenia macierzowego, a także bezpośredni rachunek:

.. math::
   
   b_{ij}\ =\ \sum_{k\,=\,1}^n\ a_{ik}\;d_{kj}\ =\ 
              \sum_{k\,=\,1}^n\ \delta_{ip}\;\delta_{kq}\;\alpha_k\,\delta_{kj}\ =\ 
              \alpha_q\;\delta_{ip}\;\delta_{jq}\,,

   c_{ij}\ =\ \sum_{k\,=\,1}^n\ d_{ik}\;a_{kj}\ =\ 
               \sum_{k\,=\,1}^n\ \alpha_i\;\delta_{ik}\;\delta_{kp}\;\delta_{jq}\ =\ 
               \alpha_p\;\delta_{ip}\;\delta_{jq}\,,

stwierdzają, że 
:math:`\,\boldsymbol{A}\boldsymbol{D}\neq\boldsymbol{D}\boldsymbol{A}\,,\ `
bo jedyny niezerowy element jednej i drugiej macierzy znajduje się w nich na tej samej pozycji,
ale ma różną wartość: :math:`\ \ b_{pq}=\alpha_q\ \neq\ c_{pq}=\alpha_p\,.`

:math:`\ \Leftarrow\ :\ ` Jeżeli :math:`\ \boldsymbol{D}=\alpha\,\boldsymbol{I}_n\,,\ ` 
to z własności działań na macierzach łatwo wynika, że

.. math::
   
   \boldsymbol{A}\boldsymbol{D}\ =\ \boldsymbol{A}\,(\alpha\,\boldsymbol{I}_n)\ =\ 
   \alpha\,(\boldsymbol{A}\,\boldsymbol{I}_n)\ =\ \alpha\,\boldsymbol{A}\ =\ 
   \alpha\,(\boldsymbol{I}_n\boldsymbol{A})\ =\ (\alpha\,\boldsymbol{I}_n)\,\boldsymbol{A}\ =\  
   \boldsymbol{D}\boldsymbol{A}\,.

Można teraz wyjaśnić związek pomiędzy omówionymi wyżej :math:`\,`
Wnioskiem :math:`\,` i :math:`\,` Lematem.

Załóżmy, że wiersze :math:`\ \boldsymbol{R}_1,\,\boldsymbol{R}_2,\,\ldots,\,\boldsymbol{R}_n\ `
macierzy :math:`\,\boldsymbol{G}\in M_n(R)\ ` tworzą układ ortogonalny:

.. math::
   
   \langle\,\boldsymbol{R}_i,\boldsymbol{R}_j\,\rangle\ =\ \alpha_i\;\delta_{ij}\,,\quad
   \alpha_i\neq 0\,,\qquad i,j=1,2,\dots,n\,.

Wtedy macierz :math:`\ \boldsymbol{G}\,\boldsymbol{G}^{\,T}\ ` jest diagonalna:
:math:`\ \ \boldsymbol{G}\,\boldsymbol{G}^{\,T}\ =\ \boldsymbol{D}\ =\ 
\text{diag}\,(\alpha_1,\alpha_2,\dots,\alpha_n)\,,\ ` :math:`\\`
przy czym :math:`\ \alpha_i=\|\,\boldsymbol{R}_i\,\|^2\,,\quad i=1,2,\dots,n\,.`

Gdy dodatkowo normy wszystkich wierszy są jednakowe:

.. math::
   :label: equal
   
   \alpha_1=\alpha_2=\dots=\alpha_n=\alpha\,,

to :math:`\ \boldsymbol{D}=\alpha\,\boldsymbol{I}_n\ \,` i :math:`\,` 
macierz :math:`\ \boldsymbol{D}\ ` komutuje ze wszystkimi 
macierzami :math:`\ \boldsymbol{A}\in M_n(R)\,.\ ` Wówczas

.. math::
   :label: verse_col
   
   \boldsymbol{G}\,\boldsymbol{G}^{\,T}=\boldsymbol{D}
   \quad\Leftrightarrow\quad
   \boldsymbol{G}^{\,T}=\boldsymbol{G}^{-1}\boldsymbol{D}
   \quad\Leftrightarrow\quad
   \boldsymbol{G}^{\,T}=\boldsymbol{D}\,\boldsymbol{G}^{-1}
   \quad\Leftrightarrow\quad
   \boldsymbol{G}^{\,T}\boldsymbol{G}=\boldsymbol{D}

i ortogonalność układu wierszy jest równoważna ortogonalności układu kolumn macierzy
:math:`\ \boldsymbol{G}\,.\ ` 
Wtedy też :math:`\ \,\boldsymbol{G}=\lambda\,\boldsymbol{Q}\,,\ \,`
gdzie przy :math:`\ \,\lambda=\sqrt{\alpha}\ \,` macierz :math:`\ \,\boldsymbol{Q}\ \,` 
jest ortogonalna:

.. math::
   
   \boldsymbol{Q}\,\boldsymbol{Q}^{\,T}\ =\ \,
   \boldsymbol{Q}^{\,T}\boldsymbol{Q}\ =\ \boldsymbol{I}_n\,.

Jeżeli jednak warunek równości norm :eq:`equal` nie jest spełniony,
to :math:`\ \boldsymbol{D}\neq\alpha\,\boldsymbol{I}_n\ \,` i :math:`\,` 
macierz :math:`\ \boldsymbol{D}\ ` może nie komutować z 
:math:`\ \boldsymbol{G}^{-1}\ ` przy przekształceniach :eq:`verse_col`.  
Wtedy z ortogonalności wierszy nie wynika ortogonalność kolumn macierzy :math:`\ \boldsymbol{G}\,.`



**Zadanie 3.**

Operator liniowy :math:`\,F\ ` na przestrzeni unitarnej :math:`\,V(C)\ `
jest *antyhermitowski*, gdy :math:`\,F^+=-F.`

Pokaż, że wartości własne takiego operatora są liczbami czysto urojonymi :math:`\\`
(liczba zespolona :math:`\,z\ ` jest *czysto urojona*, gdy :math:`\,\text{re}\,z=0,\ `
czyli gdy :math:`\,z=i\,\alpha,\ \alpha\in R.`)

**Zadanie 4.**

Udowodnij, że iloczyn dwóch operatorów hermitowskich :math:`\,F_1,\,F_2\ ` jest hermitowski 
:math:`\\` 
wtedy i tylko wtedy, gdy operatory te komutują: :math:`\ [F_1,F_2]=0.`

Dla porównania, iloczyn operatorów unitarnych jest bezwarunkowo operatorem unitarnym.





























