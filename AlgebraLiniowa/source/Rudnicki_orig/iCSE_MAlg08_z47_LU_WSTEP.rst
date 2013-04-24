=16pt

Z47: Algebra liniowa

Zagadnienie: Rozkłady macierzy LU, RU, SVD

Zadanie: Postać schodkowa macierzy, przekształcenie i rozkład LU.

2mm

**Przedstawienie macierzy w postaci iloczynu prostych macierzy**

Operacje wyznaczania macierzy odwrotnych i rozwiązywania układów równań
liniowych czy też wyznaczania wektorów i wartości własnych są żmudne do
wykonania za pomocą metody wyznaczników szczególnie w przypadkach
macierzy o dużych wymiarach. Aby uprościć obliczenia wygodnie jest
zapisać macierz w postaci iloczynu macierzy, które mają prostą budowę,
na przykład macierzy Jordana czy macierzy trójkątnych lub innych
macierzy o dużej liczbie elementów zerowych.

Podamy teraz definicje różnych typów macierzy używanych do zapisu
macierzy w postaci iloczynów. *Macierz schodkowa* to macierz, której
pierwsze niezerowe elementy kolejnych niezerowych wierszy, znajdują się
w coraz dalszych kolumnach, a powstałe wiersze zerowe umieszcza się jako
ostatnie. Macierze schodkowe nie muszą być macierzami kwadratowymi, ale
jeżeli są macierzami kwadratowymi, to są macierzami trójkątnymi górnymi.
Przykłady macierzy schodkowych

.. math::

   \left[
   \begin{array}{cccc}
   2&1&0 &4 \\
   0&0&7&3\\
   0&0&0&5
   \end{array}
   \right],
   \quad
   \left[
   \begin{array}{ccc}
   2&1&3\\
   0&1&7\\
   0&0&2\\
   0&0&0\\
   0&0&0
   \end{array}
   \right].

 Rząd macierzy schodkowej jest równy liczbie jej schodków, czyli
niezerowych wierszy.

*Macierz elementarna*, to macierz powstała z macierzy jednostkowej w
wyniku jednej operacji elementarnej na jej wierszach. Do *operacji
elementarnych* należą:

a) zamiana miejscami dwóch różnych wierszy macierzy,

b) pomnożenie jednego z wierszy macierzy przez liczbę różną od zera,

c) dodanie do jednego wiersza macierzy innego wiersza tej samej
macierzy, pomnożonego przez liczbę różną od zera.

Zatem macierzami elementarnymi są następujące trzy typy macierzy:

.. math::

   \left[
   \begin{array}{ccccc}
   1&0&0 &0&0 \\
   0&0&0 &0&1 \\
   0&0&1 &0&0 \\
   0&0&0 &1&0 \\
   0&1&0 &0&0 \\
   \end{array}
   \right],
   \quad
   \left[
   \begin{array}{ccccc}
   1&0&0 &0&0 \\
   0&c&0 &0&0 \\
   0&0&1 &0&0 \\
   0&0&0 &1&0 \\
   0&0&0 &0&1 \\
   \end{array}
   \right],
   \quad
   \left[
   \begin{array}{ccccc}
   1&0&0 &0&0 \\
   0&1&0 &0&0 \\
   0&0&1 &0&0 \\
   0&0&0 &1&0 \\
   0&c&0 &0&1 \\
   \end{array}
   \right], \quad c\ne 0.

 Operacje elementarne na dowolnej macierzy :math:`A` można wykonywać
mnożąc macierz :math:`A` z lewej strony przez macierz elementarną
:math:`E`\ . Każda macierz może zostać przekształcona do postaci
schodkowej za pomocą operacji elementarnych, przy użyciu metody Gaussa
Jordana.

**Metoda LU**

Ponieważ macierze trójkątne są wygodne w dalszych obliczeniach ważnym
zagadnieniem jest przedstawienie dowolnej macierzy kwadratowej :math:`A`
w postaci iloczynu :math:`LU`\ , gdzie :math:`L` oznacza macierz
trójkątną dolną (od ang. lower), a :math:`U` oznacza macierz trójkątną
górną (od ang. upper). Aby uprościć dalszą notację przyjmujemy, że
jeżeli :math:`A=[a_{ij}]` jest macierzą wymiaru :math:`n\times n`\ , to
:math:`\mathbf a_i` oznacza :math:`i`\ -ty wiersz macierzy :math:`A`\ ,
a :math:`\mathbf a^i` oznacza :math:`i`\ -tą kolumnę macierzy :math:`A`\ ,
tj.

.. math::

   \mathbf a_i=
   \left[
   \begin{array}{cccc}
   a_{i1}&a_{i2}&\cdots &a_{in}
   \end{array}
   \right],
   \quad
   \mathbf a^i=
   \left[
   \begin{array}{c}
   a_{1i}\\
   a_{2i}\\
   \vdots\\
   a_{ni}
   \end{array}
   \right].

 Przedstawimy teraz algorytm obliczania macierzy :math:`L=[l_{ij}]` i
:math:`U=[u_{ij}]` takich, że :math:`A=LU`\ , gdzie gdzie :math:`L`
oznacza macierz trójkątną dolną, a :math:`U` oznacza macierz trójkątną
górną. W jednej z tych macierzy można ustalić w dowolny sposób wyrazy na
głównej przekątnej różne od zera. W naszej metodzie robimy tak w
macierzy :math:`L`\ . Wiersze w macierzy :math:`U` i kolumny w macierzy
:math:`L` wyznaczamy z następujących wzorów rekurencyjnych:

.. math::

   \mathbf u_1=\frac{\mathbf a_1}{l_{11}}, \quad 
   \mathbf l^1=\frac{\mathbf a^1}{u_{11}},

.. math::

   \mathbf u_k=\frac{\mathbf a_k- l_{k1}\mathbf u_1-\dots -l_{k,k-1}\mathbf u_{k-1}}{l_{kk}}, \quad 
   \mathbf l^k=\frac{\mathbf a^k- l_{1k}\mathbf l^1-\dots -u_{k-1,k}\mathbf l^{k-1}}{u_{kk}},

 dla :math:`2\le k\le n`\ .
