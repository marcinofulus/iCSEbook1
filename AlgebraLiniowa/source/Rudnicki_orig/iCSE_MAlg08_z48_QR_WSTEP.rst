Z48: Algebra liniowa

Zagadnienie: Rozkłady macierzy LU, RU, SVD

Zadanie: Rozkład QR.

2mm

**Rozkład QR**

*Rozkład QR* macierzy kwadratowej :math:`A` polega na tym aby macierz
:math:`A` zapisać w postaci iloczynu :math:`QR`\ , gdzie macierz
:math:`Q` jest macierzą ortogonalną, a :math:`R` jest macierzą trójkątną
górną. Przypominamy, że macierz :math:`Q` o wyrazach rzeczywistych
nazywamy *ortogonalną*, jeżeli spełnia warunek :math:`QQ^T=I`\ .
Macierze ortogonalne są macierzami izometrii liniowych. Gdy
:math:`\det Q=1`\ , to :math:`Q` jest obrotem, a gdy :math:`\det Q=-1`
można je zapisać jako złożenie obrotu i odbicia symetrycznego (w
:math:`\mathbf R^3` symetrii względem płaszczyzny). W praktyce należy
dobrać ciąg możliwie prostych przekształceń ortogonalnych
:math:`Q_1,Q_2,\dots,Q_k` takich , że

.. math:: Q_kQ_{k-1}\dots Q_1A

 jest macierzą trójkątną górną. W kolejnych przekształceniach tak
dobieramy macierz :math:`Q_i` aby zwiększać ilość zer pod przekątną w
stosunku do poprzedniej macierzy. Rozkład QR można uzyskać stosując
różne algorytmy zależne od wyboru przekształceń :math:`Q_i`\ . Jeżeli
założymy, że macierz :math:`A` jest nieosobliwa i że na przekątnej
macierzy :math:`R` są wyrazy dodatnie, to rozkład jest jednoznaczny, a
więc nie zależy od wyboru algorytmu. Podobne przedstawienie można
uzyskać dla macierzy :math:`A` o wyrazach zespolonych, ale wtedy o
macierzy :math:`Q` zakładamy, że jest macierzą unitarną.

2mm **Metoda Grama-Schmidta** 2mm

Jeden ze sposobów uzyskania rozkładu QR oparty jest na *metodzie
ortogonalizacji Grama-Schmidta* używanej tradycyjnie do tworzenia bazy
ortogonalnej startując z dowolnej bazy. Niech :math:`
A=[\mathbf a^1, \cdots, \mathbf  a^n].
` Definiujemy rekurencyjnie ciągi :math:` (\mathbf u_i)` oraz
:math:` (\mathbf y_i)`

.. math:: \mathbf u_1 = \mathbf a^1, \quad  \mathbf y_1 = \frac{\mathbf u_1}{ \|\mathbf u_1\|},

.. math::

   \mathbf u_k = \mathbf a^k-\sum_{j=1}^{k-1} 
   \langle \mathbf y_j , \mathbf a^j\,\rangle\,\mathbf y_j,
   \quad
   \mathbf y_k = \frac{\mathbf u_k}{ \|\mathbf u_k\|}

 dla :math:`k=2,\dots,n`\ . Wtedy

.. math:: \mathbf a^k = \sum_{j=1}^{k} \langle \mathbf y_j, \mathbf y_k \rangle \mathbf y_j

 dla :math:`k=1,\dots,n` oraz :math:`A = Q R`\ , gdzie
:math:`Q = \left[ \mathbf y_1, \cdots, \mathbf y_n\right]` oraz

.. math::

   R = 
   \left[
   \begin{array}{cccc} 
   \langle\mathbf y_1,\mathbf a^1\,\rangle 
   & \langle \mathbf y_1, \mathbf a^2\,\rangle & \ldots &  \langle\mathbf y_1,\mathbf a^n\, \rangle   \\
   0                & \langle\mathbf y_2,\mathbf a^2\, \rangle  
                      & \ldots &  \langle\mathbf  y_2,\mathbf a^n\,\rangle   \\
   \multicolumn{4}{c}\dotfill\\
   0                & 0      & \ldots  & \langle\mathbf y_n,\mathbf a^n\,\rangle                         
   \end{array}
   \right].


