28. Rząd macierzy zależny od parametru
======================================

Wyznacz  rząd  macierzy  :math:`\boldsymbol{A} \in M(\boldsymbol{R})`  w  zależności  od  parametru  :math:`\lambda` :

.. math::

   \boldsymbol{A} = \left( \begin{array}{*{20}c}
   {\lambda  + 2} & 3 & 6 & 3  \\
   2 & {\lambda  + 1} & 4 & 2  \\
   1 & 1 & {\lambda  + 1} & 1  \\
   \end{array} \right).

_____________________________________________________________________________________


Kombinowana  metoda  przekształceń  elementarnych  i  minorów.

.. math::

   \begin{array}{*{20}c}
   {\boldsymbol{A} = \left( \begin{array}{*{20}c}
   {\lambda  + 2} & 3 & 6 & 3  \\
   2 & {\lambda  + 1} & 4 & 2  \\
   1 & 1 & {\lambda  + 1} & 1  \\
   \end{array} \right) \to} & {\left( \begin{array}{*{20}c}
   {\lambda  - 1} & 0 & 0 & {3}  \\
   0 & {\lambda  - 1} & 0 & {2}  \\
   0 & 0 & {\lambda  - 1} & {1}  \\
   \end{array} \right).} \\
   {\begin{array}{l}
   C_{ 1}  \leftarrow C_{ 1}  -  C_{ 4}  \\ 
   C_{ 2}  \leftarrow C_{ 2}  -  C_{ 4}  \\ 
   C_{ 3}  \leftarrow C_{ 3}  -  2C_{ 4}  \\ 
   \end{array}} &  \\
   \end{array}


- Gdy  :math:`\lambda  \ne 1`,  istnieje  niezerowy  minor  stopnia  3:

.. math::

   \left| \begin{array}{*{20}c}
   {\lambda  - 1} & 0 & 0  \\
   0 & {\lambda  - 1} & 0  \\
   0 & 0 & {\lambda  - 1}  \\
   \end{array} \right| = (\lambda  - 1)^{ 3}  \ne 0,


\ 
  wobec  czego  :math:`\text{rz} \boldsymbol{A} = 3`.

- Gdy  :math:`\lambda  = 1`,  przekształcona  macierz  przyjmuje  postać

.. math::

   \left( \begin{array}{*{20}c}
   0 & 0 & 0 & 3  \\
   0 & 0 & 0 & 2  \\
   0 & 0 & 0 & 1  \\
   \end{array} \right)


\ 
  i  wtedy  :math:`\text{rz} \boldsymbol{A} = 1`.

