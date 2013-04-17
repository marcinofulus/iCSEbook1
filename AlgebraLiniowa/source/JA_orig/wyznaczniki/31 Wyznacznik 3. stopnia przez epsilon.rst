31. Wyznacznik 3. stopnia przez :math:`\varepsilon`
===================================================

﻿Wyznacznik  3.  stopnia.

.. math::

   \left| {\begin{array}{*{20}c}
   {a_1 } & {a_2 } & {a_3 }  \\
   {b_1 } & {b_2 } & {b_3 }  \\
   {c_1 } & {c_2 } & {c_3 }  \\
   \end{array}} \right| = \varepsilon _{ ijk} a_i b_j c_k .


**Dowód:**

.. math::

   \begin{array}{l}
   \varepsilon _{ ijk} a_i b_j c_k  & = \varepsilon _{ 1jk} a_1 b_j c_k  + \varepsilon _{2jk} a_2 b_j c_k  + \varepsilon _{3jk} a_3 b_j c_k  =  \\ 
   &  = a_1 (b_2 c_3  - b_3 c_2 ) + a_2 (b_3 c_1  - b_1 c_3 ) + a_3 (b_1 c_2  - b_2 c_1 ) =  \\ 
   &  = a_1 (b_2 c_3  - b_3 c_2 ) - a_2 (b_1 c_3  - b_3 c_1 ) + a_3 (b_1 c_2  - b_2 c_1 ) =  \\ 
   &  = a_1 \left| {\begin{array}{*{20}c}
   {b_2 } & {b_3 }  \\
   {c_2 } & {c_3 }  \\
   \end{array}} \right| - a_2 \left| {\begin{array}{*{20}c}
   {b_1 } & {b_3 }  \\
   {c_1 } & {c_3 }  \\
   \end{array}} \right| + a_3 \left| {\begin{array}{*{20}c}
   {b_1 } & {b_2 }  \\
   {c_1 } & {c_2 }  \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
   {a_1 } & {a_2 } & {a_3 }  \\
   {b_1 } & {b_2 } & {b_3 }  \\
   {c_1 } & {c_2 } & {c_3 }  \\
   \end{array}} \right|. \\ 
   \end{array}



