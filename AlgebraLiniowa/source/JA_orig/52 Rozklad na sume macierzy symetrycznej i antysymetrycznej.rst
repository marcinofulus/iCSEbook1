.. -*- coding: utf-8 -*-
﻿

52. Rozkład na sumę macierzy symetrycznej i antysymetrycznej
============================================================


Przedstawić macierz

.. math::

   \boldsymbol{A} = \left( \begin{array}{ccc}
   4 & 3 & -1 \\ 
   2 & -5 & 8 \\ 
   0 & -2 & 1 \\ 
   \end{array} \right) \in M_3 (\boldsymbol{R})


w postaci sumy macierzy symetrycznej i macierzy antysymetrycznej.

___________________________________________________________________________________


Jednoznaczny rozkład dowolnej macierzy na sumę macierzy symetrycznej i antysymetrycznej ma  postać

.. math::
   :label: 52.1

   \boldsymbol{A} = \frac{1}{2} (\boldsymbol{A} + \boldsymbol{A} ^T ) + \frac{1}{2} (\boldsymbol{A} - \boldsymbol{A} ^T ).


W tym przypadku

.. math::

   \frac{1}{2} (\boldsymbol{A} + \boldsymbol{A} ^T ) = \frac{1}{2}
   \left[ \left( \begin{array}{ccc}
   4 & 3 & -1 \\ 
   2 & -5 & 8 \\
   0 & -2 & 1 \\ 
   \end{array} \right) + \left( \begin{array}{ccc}
   4 & 2 & 0 \\ 
   3 & -5 & -2 \\ 
   -1 & 8 & 1 \\ 
   \end{array} \right) \right] = \left( \begin{array}{ccc}
   4 & \textstyle{5 \over 2} & - \textstyle{1 \over 2} \\ 
   \textstyle{5 \over 2} & -5 & 3 \\ 
   - \textstyle{1 \over 2} & 3 & 1 \\ 
   \end{array} \right), \\ 
   \frac{1}{2} (\boldsymbol{A} - \boldsymbol{A} ^T ) = \frac{1}{2}
   \left[ \left( \begin{array}{ccc}
   4 & 3 & -1 \\ 
   2 & -5 & 8 \\ 
   0 & -2 & 1 \\ 
   \end{array} \right) - \left( \begin{array}{ccc}
   4 & 2 & 0 \\ 
   3 & -5 & -2 \\ 
   -1 & 8 & 1 \\ 
   \end{array} \right) \right] = \left( \begin{array}{ccc}
   0 & \textstyle{1 \over 2} & - \textstyle{1 \over 2} \\ 
   - \textstyle{1 \over 2} & 0 & 5 \\ 
   \textstyle{1 \over 2} & - 5 & 0 \\ 
   \end{array} \right).


Tak więc rozkład :eq:`52.1` przedstawia się następująco:


.. math::

   \left( \begin{array}{ccc}
   4 & 3 & -1 \\ 
   2 & -5 & 8 \\ 
   0 & -2 & 1 \\ 
   \end{array} \right) = \left( \begin{array}{ccc}
   4 & \textstyle{5 \over 2} & - \textstyle{1 \over 2} \\ 
   \textstyle{5 \over 2} & -5 & 3 \\ 
   - \textstyle{1 \over 2} & 3 & 1 \\ 
   \end{array} \right) + \left( \begin{array}{ccc}
   0 & \textstyle{1 \over 2} & - \textstyle{1 \over 2} \\ 
   - \textstyle{1 \over 2} & 0 & 5 \\ 
   \textstyle{1 \over 2} & - 5 & 0 \\ 
   \end{array} \right).

