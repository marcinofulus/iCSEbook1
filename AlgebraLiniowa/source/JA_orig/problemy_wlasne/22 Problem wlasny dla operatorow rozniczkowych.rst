22. Problem własny dla operatorów różniczkowych
===============================================

Rozważmy  przestrzeń  :math:`W_3 ({\boldsymbol{R}})`  wielomianów  stopnia  :math:`\leq 3`  zmiennej  rzeczywistej  :math:`x`.

Rozwiązać  problem  własny  dla  operatorów  liniowych:

a.) :math:`D_{ 0}  =  {\textstyle{d \over {dx}}}`,   b.)  :math:`D_{ 1}  =  x{\textstyle{d \over {dx}}}`,   c.)  :math:`D_{ 2}  =  {\textstyle{d \over {dx}}}x`.

W  każdym  przypadku  określić  krotność  algebraiczną  i  geometryczną  wartości  własnych
oraz  zbadać,  czy  istnieje  baza  przestrzeni  złożona  z  wektorów  własnych.

______________________________________________________________________________________


W  przestrzeni  wielomianów  :math:`W_3 (\boldsymbol{R}) = \left\{ {\alpha _{ 0}  +  \alpha _{ 1}  x +  \alpha _{ 2}  x^2  +  \alpha _{ 3}  x^3 :\alpha _{ 0} ,\alpha _{ 1} ,\alpha _{ 2} ,\alpha _{ 3}  \in \boldsymbol{R}} \right\}` wybieramy  bazę  :math:`\cal{B} = \left( {1,x,x^2 ,x^3 } \right)`.  Konstruujemy  macierze  operatorów  w  tej  bazie:

.. math::

   \begin{array}{l}
   D_{ 0} 1 =  & 0 &  = 0 \cdot 1 + 0 \cdot x + 0 \cdot x^2  + 0 \cdot x^3  \\ 
   D_{ 0} x =  & 1 &  =  1  \cdot 1 + 0 \cdot x + 0 \cdot x^2  + 0 \cdot x^3  \\ 
   D_{ 0} x^2  =  & 2x &  = 0 \cdot 1 + 2 \cdot x + 0 \cdot x^2  + 0 \cdot x^3  \\ 
   D_{ 0} x^3  =  & 3x^2  &  = 0 \cdot 1 + 0 \cdot x + 3 \cdot x^2  + 0 \cdot x^3  \\ 
   \end{array} \quad \quad  M(D_{ 0} ) = \left( {\begin{array}{*{20}c}
   0 & 1 & 0 & 0  \\
   0 & 0 & 2 & 0  \\
   0 & 0 & 0 & 3  \\
   0 & 0 & 0 & 0  \\
   \end{array}} \right); \\

   \begin{array}{l}
   D_{ 1} 1 =  & 0 &  = 0 \cdot 1 + 0 \cdot x + 0 \cdot x^2  + 0 \cdot x^3  \\ 
   D_{ 1} x =  & x &  =  0  \cdot 1 + 1 \cdot x + 0 \cdot x^2  + 0 \cdot x^3  \\ 
   D_{ 1} x^2  =  & 2x^2  &  = 0 \cdot 1 + 0 \cdot x + 2 \cdot x^2  + 0 \cdot x^3  \\ 
   D_{ 1} x^3  =  & 3x^3  &  = 0 \cdot 1 + 0 \cdot x + 0 \cdot x^2  + 3 \cdot x^3  \\ 
   \end{array} \quad \quad  M(D_{ 1} ) = \left( {\begin{array}{*{20}c}
   0 & 0 & 0 & 0  \\
   0 & 1 & 0 & 0  \\
   0 & 0 & 2 & 0  \\
   0 & 0 & 0 & 3  \\
   \end{array}} \right); \\

   \begin{array}{l}
   D_{ 2} 1 =  & 1 &  = 1 \cdot 1 + 0 \cdot x + 0 \cdot x^2  + 0 \cdot x^3  \\ 
   D_{ 2} x =  & 2x &  =  0  \cdot 1 + 2 \cdot x + 0 \cdot x^2  + 0 \cdot x^3  \\ 
   D_{ 2} x^2  =  & 3x^2  &  = 0 \cdot 1 + 0 \cdot x + 3 \cdot x^2  + 0 \cdot x^3  \\ 
   D_{ 2} x^3  =  & 4x^3  &  = 0 \cdot 1 + 0 \cdot x + 0 \cdot x^2  + 4 \cdot x^3  \\ 
   \end{array} \quad \quad  M(D_{ 2} ) = \left( {\begin{array}{*{20}c}
   1 & 0 & 0 & 0  \\
   0 & 2 & 0 & 0  \\
   0 & 0 & 3 & 0  \\
   0 & 0 & 0 & 4  \\
   \end{array}} \right).


Macierze  operatorów  :math:`D_{ 1}`   i  :math:`D_{ 2}`   w  bazie  :math:`\cal{B}`  są  diagonalne.  A  zatem  wartości  własne  tych  operatorów  są  elementami  diagonalnymi  ich  macierzy,  a  wektorami  własnymi  są  odpowiednie  wektory  bazy  :math:`\cal{B}`.
Wszystkie  wartości  własne  są  jednokrotne  algebraicznie  i  geometrycznie.

Problem  własny  dla  operatora  :math:`D_{ 0}`.

Równanie  charakterystyczne:

.. math::

   W(\lambda ) = \left| {\begin{array}{*{20}c}
    { - \lambda } &  1 &  0 &  0 \\
    0 &  { - \lambda } &  2 &  0 \\
    0 &  0 &  { - \lambda } &  3 \\
    0 &  0 &  0 &  { - \lambda } \\
   \end{array}} \right| = ( - \lambda )^{ 4}  = \lambda ^{ 4}  = 0.


Jedna  wartość  własna:  :math:`\lambda _{ 0}  = 0`,  krotność  algebraiczna:  4.

Wektory  własne:

.. math::

   \left( {\begin{array}{*{20}c}
   0 & 1 & 0 & 0  \\
   0 & 0 & 2 & 0  \\
   0 & 0 & 0 & 3  \\
   0 & 0 & 0 & 0  \\
   \end{array}} \right)\left( {\begin{array}{*{20}c}
   {\alpha _{ 0} }  \\
   {\alpha _{ 1} }  \\
   {\alpha _{ 2} }  \\
   {\alpha _{ 3} }  \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
   0  \\
   0  \\
   0  \\
   0  \\
   \end{array}} \right)   : \quad \quad  \left\{ \begin{array}{c}
   \alpha _{ 1}  = 0 \\ 
   2\alpha _{ 2}  = 0 \\ 
   3\alpha _{ 3}  = 0 \\ 
   0 = 0 \\ 
   \end{array} \right.   : \quad  \begin{array}{l}
   0 \ne \alpha _{ 0} \quad \text{- dowolne}, \\ 
   \alpha _{ 1}  = \alpha _{ 2}  = \alpha _{ 3}  = 0. \\ 
   \end{array}


Ogólna  postać  wektorów  własnych  dla  wartości  :math:`\lambda _{ 0}  = 0`:

.. math::

   \left( { \begin{array}{*{20}c}
   \alpha   \\
   0  \\
   0  \\
   0  \\
   \end{array} } \right) = \alpha \left( { \begin{array}{*{20}c}
   1  \\
   0  \\
   0  \\
   0  \\
   \end{array} } \right), \quad \alpha  \ne 0:


wszystkie  niezerowe  wielomiany  stałe.

Krotność  geometryczna  wartości  :math:`\lambda _{ 0}  = 0`: 1.

Nie  istnieje  baza  przestrzeni  :math:`W_3 ({\boldsymbol{R}})`,  złożona  z  wektorów  własnych  operatora  :math:`D_{ 0}`.

