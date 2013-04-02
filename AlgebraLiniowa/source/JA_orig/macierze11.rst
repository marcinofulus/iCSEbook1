.. -*- coding: utf-8 -*-

11. Interpretacja mnożenia macierzy
===================================

Niech :math:`\boldsymbol{A} = (\alpha _{ij})_{n \times n} \in M_n (\boldsymbol{K})`. Udowodnić następujące własności mnożenia macierzowego, wyrażone odpowiednio w zapisie kolumnowym i wierszowym:


1.) Jeżeli :math:`\boldsymbol{B}_j \in M_{n \times 1} (\boldsymbol{K}), \, j = 1, 2, \ldots , n` (macierze 1-kolumnowe), to

.. math::

   \boldsymbol{A}(\boldsymbol{B}_1 , \boldsymbol{B}_2 , \ldots , \boldsymbol{B}_n ) = (\boldsymbol{AB}_1 , \boldsymbol{AB}_2 , \ldots , \boldsymbol{AB}_n );



2.) Jeżeli :math:`\boldsymbol{B}_j \in M_{1 \times n} (\boldsymbol{K}), \, j = 1,2, \ldots , n` (macierze 1-wierszowe), to

.. math::

   \left(
   \begin{array}{c}
   \boldsymbol{B}_1 \\
   \boldsymbol{B}_2 \\
   \ldots   \\
   \boldsymbol{B}_n \\
   \end{array}
   \right) \boldsymbol{A} =
   \left(
   \begin{array}{c}
   \boldsymbol{B}_1 \boldsymbol{A} \\
   \boldsymbol{B}_2 \boldsymbol{A} \\
   \ldots \\
   \boldsymbol{B}_n \boldsymbol{A} \\
   \end{array}
   \right).


______________________________________________________________________________________


1.) Wprowadźmy oznaczenia:

.. math::

   \boldsymbol{B} = (\boldsymbol{B}_1 , \boldsymbol{B}_2 , \ldots , \boldsymbol{B}_n ) = (\beta _{ij} )_{n \times n}, \quad \boldsymbol{C} = (\boldsymbol{C}_1 , \boldsymbol{C}_2
   \ldots , \boldsymbol{C}_n ) = (\gamma _{ij} )_{n \times n}.


| Trzeba  pokazać,  że
| jeżeli

.. math::
   :label: 11.1

   \boldsymbol{C}_j = \boldsymbol{AB}_j , \quad j = 1, 2, \ldots , n,


to

.. math::

   \boldsymbol{C} = \boldsymbol{A} \boldsymbol{B}.


Rzeczywiście, przyrównując *i*-te elementy kolumn w równaniu :eq:`11.1` otrzymujemy

.. math::

   \gamma_{ij} = \sum_{k=1}^n \alpha _{ik} \beta _{kj}, \quad i,j = 1, 2, \ldots , n.


2.) Wprowadźmy oznaczenia:

.. math::

   \boldsymbol{B} = \left(
   \begin{array}{c}
   \boldsymbol{B}_1 \\
   \boldsymbol{B}_2 \\
   \ldots \\
   \boldsymbol{B}_n \\
   \end{array}
   \right) = (\beta _{ij})_{n \times n}, \quad \boldsymbol{C} = \left(
   \begin{array}{c}
   \boldsymbol{C}_1 \\
   \boldsymbol{C}_2 \\
   \ldots \\
   \boldsymbol{C}_n \\
   \end{array}
   \right) = (\gamma _{ij} )_{n \times n}.


| Trzeba  pokazać, że
| jeżeli

.. math::
   :label: 11.2

   \boldsymbol{C} _{\it{i}} = \boldsymbol{B} _{\it{i}} \boldsymbol{A}, \quad i = 1, 2, \ldots , n,


to

.. math::

   \boldsymbol{C} = \boldsymbol{B} \boldsymbol{A} .


Rzeczywiście, przyrównując *j*-te elementy wierszy w równaniu :eq:`11.2` otrzymujemy

.. math::

   \gamma _{ij} = \sum_{k=1}^n \beta _{ik} \alpha _{kj}, \quad i,j = 1, 2, \ldots , n.

