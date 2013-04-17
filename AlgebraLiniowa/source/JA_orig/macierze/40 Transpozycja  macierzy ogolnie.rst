.. -*- coding: utf-8 -*-

﻿40. Transpozycja macierzy ogólnie
=================================


Transpozycja  macierzy.

| **Def.** Niech :math:`\boldsymbol{A} = (\alpha _{ij} ) \in M_{m \times n} (\boldsymbol{K})`.
|          Wtedy :math:`\boldsymbol{A} ^T = (\alpha _{ij} ^T ) \in M_{n \times m} (\boldsymbol{K})`, gdzie :math:`\alpha _{ij} ^T := \alpha _{ji}, \begin{array}{l} i = 1, 2, \ldots , n; \\ j = 1, 2, \ldots , m. \\ \end{array}`


**Przykłady.**

1.) Jeżeli :math:`\boldsymbol{A} = \left( \begin{array}{cc} 
2 & - 1 \\ 3 & 0 \\ 
- 2 & 1 \\ 
\end{array} \right)
\in M_{3 \times 2} (\boldsymbol{R})`, to :math:`\boldsymbol{A} ^T = \left( \begin{array}{ccc} 
2 & 3 & -2 \\ 
-1 & 0 & 1 \\ 
\end{array} \right) \in M_{2 \times 3} (\boldsymbol{R})`.

2.) Transpozycja macierzy kwadratowej:  :math:`\left( \begin{array}{ccc} 
-2 & 1 & 0 \\ 
5 & 2 & 3 \\ 
7 & -3 & 8 \\ 
\end{array} \right) ^T = \left( \begin{array}{ccc} 
-2 & 5 & 7 \\ 
1 & 2 & -3 \\ 
0 & 3 & 8 \\ 
\end{array} \right)`.

3.) Transpozycja macierzy 1-kolumnowej:  :math:`\left( \begin{array}{c} 
\alpha _1 \\ 
\alpha _2 \\ 
\alpha _3 \\ 
\alpha _4 \\ 
\end{array} \right) ^T = \left( \begin{array}{cccc} 
\alpha _1 & \alpha _2 & \alpha _3 & \alpha _4 \\ 
\end{array} \right)`.


**Własności operacji transponowania macierzy.**

| 1.)  Niech :math:`\boldsymbol{A}, \boldsymbol{B} \in M_{m \times n} (\boldsymbol{K}), \quad \lambda \in \boldsymbol{K}`.
|  Wtedy :math:`(\boldsymbol{A} + \boldsymbol{B}) ^T = \boldsymbol{A} ^T + \boldsymbol{B} ^T , \quad (\lambda \boldsymbol{A}) ^T = \lambda \boldsymbol{A} ^T` (transpozycja jest operacją liniową).

| 2.)  Niech :math:`\boldsymbol{A} \in M_{m \times p} (\boldsymbol{K}), \quad \boldsymbol{B} \in M_{p \times n} (\boldsymbol{K})`.
|  Wtedy :math:`(\boldsymbol{A} \boldsymbol{B}) ^T = \boldsymbol{B} ^T \boldsymbol{A} ^T`.


   **Dowód.**

I. Porównanie  wymiarów.

.. math::
   \begin{array}{l}
   \boldsymbol{A} \boldsymbol{B} \in M_{m \times n} (\boldsymbol{K}), & \boldsymbol{B} ^T \in M_{n \times p} (\boldsymbol{K}), \quad \boldsymbol{A} ^T \in M_{p \times m} (\boldsymbol{K}), \\ 
   (\boldsymbol{A} \boldsymbol{B}) ^T \in M_{n \times m} (\boldsymbol{K}). & \boldsymbol{B} ^T \boldsymbol{A} ^T \in M_{n \times m} (\boldsymbol{K}). \\ 
   \end{array}


II. Porównanie odpowiednich elementów.

    Niech :math:`\boldsymbol{A} = (\alpha _{ij})_{m \times p}, \quad \boldsymbol{B} = (\beta _{ij})_{p \times n}`.

    Wtedy :math:`(\boldsymbol{A} \boldsymbol{B}) ^T |_{ij} = (\boldsymbol{A} \boldsymbol{B})|_{ji} = \sum\limits_{s=1}^p {\alpha _{js} \beta _{si} }, \\  \boldsymbol{B} ^T \boldsymbol{A} ^T |_{ij} = \sum\limits_{s=1}^p {\beta _{is}^T \alpha _{sj}^T } = \sum\limits_{s=1}^p {\alpha _{js} \beta _{si} }, \quad 
    \begin{array}{l} i = 1, 2, \ldots , n; \\ j = 1, 2, \ldots , m. \\ 
    \end{array}`

