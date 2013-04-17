.. -*- coding: utf-8 -*-
﻿

51. Rozkład na sumę macierzy symetrycznej i antysymetrycznej
============================================================


Przedstawić macierz

.. math::

   \boldsymbol{A} = \left( \begin{array}{ccc}
   3 & 4 & 0 \\ 
   1 & 7 & -1 \\ 
   -2 & -3 & 5 \\ 
   \end{array} \right) \in M_3 (\boldsymbol{R})


w postaci sumy macierzy symetrycznej i macierzy antysymetrycznej.

___________________________________________________________________________________


Jednoznaczny rozkład dowolnej macierzy na sumę macierzy symetrycznej i antysymetrycznej ma  postać

.. math::
   :label: 51.1

   \boldsymbol{A} = \frac{1}{2} (\boldsymbol{A} + \boldsymbol{A} ^T ) + \frac{1}{2} (\boldsymbol{A} - \boldsymbol{A} ^T ).


W tym przypadku

.. math::

   \frac{1}{2} (\boldsymbol{A} + \boldsymbol{A} ^T ) = \frac{1}{2}
   \left[ \left( \begin{array}{ccc}
   3 & 4 & 0 \\ 
   1 & 7 & -1 \\
   -2 & -3 & 5 \\ 
   \end{array} \right) + \left( \begin{array}{ccc}
   3 & 1 & -2 \\ 
   4 & 7 & -3 \\ 
   0 & -1 & 5 \\ 
   \end{array} \right) \right] = \left( \begin{array}{ccc}
   3 & \textstyle{5 \over 2} & -1 \\ 
   \textstyle{5 \over 2} & 7 & -2 \\ 
   -1 & -2 & 5 \\ 
   \end{array} \right), \\ 
   \frac{1}{2} (\boldsymbol{A} - \boldsymbol{A} ^T ) = \frac{1}{2}
   \left[ \left( \begin{array}{ccc}
   3 & 4 & 0 \\ 
   1 & 7 & -1 \\ 
   -2 & -3 & 5 \\ 
   \end{array} \right) - \left( \begin{array}{ccc}
   3 & 1 & -2 \\ 
   4 & 7 & -3 \\ 
   0 & -1 & 5 \\ 
   \end{array} \right) \right] = \left( \begin{array}{ccc}
   0 & \textstyle{3 \over 2} & 1 \\ 
   - \textstyle{3 \over 2} & 0 & 1 \\ 
   - 1 & - 1 & 0 \\ 
   \end{array} \right).


Tak więc rozkład :eq:`51.1` przedstawia się następująco:


.. math::

   \left( \begin{array}{ccc}
   3 & 4 & 0 \\ 
   1 & 7 & -1 \\ 
   -2 & -3 & 5 \\ 
   \end{array} \right) = \left( \begin{array}{ccc}
   3 & \textstyle{5 \over 2} & -1 \\ 
   \textstyle{5 \over 2} & 7 & -2 \\ 
   -1 & -2 & 5 \\ 
   \end{array} \right) + \left( \begin{array}{ccc}
   0 & \textstyle{3 \over 2} & 1 \\ 
   - \textstyle{3 \over 2} & 0 & 1 \\ 
   - 1 & - 1 & 0 \\ 
   \end{array} \right).

