.. -*- coding: utf-8 -*-

01. Interpretacja mnożenia macierzy
===================================

Dane dwie macierze kwadratowe :math:`\boldsymbol{A} = (\alpha _{ij} )_{n \times n}, \boldsymbol{B} = (\beta _{ij} )_{n \times n}`  stopnia *n* nad ciałem **K**.

W  zapisie  kolumnowym: :math:`\boldsymbol{A} = (\boldsymbol{A}_1 , \boldsymbol{A}_2 , \ldots , \boldsymbol{A}_n )`, :math:`\boldsymbol{B} = (\boldsymbol{B}_1 , \boldsymbol{B}_2 , \ldots , \boldsymbol{B}_n )`. Pokazać, że

.. math::

   \boldsymbol{A} \boldsymbol{B} = (\boldsymbol{AB}_1 , \boldsymbol{AB}_2 , \ldots , \boldsymbol{AB}_n ),
   \quad \text{przy czym} \quad
   \boldsymbol{AB}_j = \sum_{s=1}^n \beta _{sj} \boldsymbol{A}_s , \quad j = 1,2, \ldots ,n.


___________________________________________________________________________________

Oznaczmy :math:`\boldsymbol{AB} = \boldsymbol{C} = (\boldsymbol{C}_1 , \boldsymbol{C}_2 , \ldots , \boldsymbol{C}_n ) = (\gamma _{ij} )_{n \times n}`. Wtedy elementy *j*-tej kolumny macierzy :math:`\boldsymbol{C}` dane są przez:

.. math::

   \begin{array}{l}
   & \gamma _{1j} = \sum_{s=1}^n {\alpha _{1s} \beta _{sj} = \alpha _{11} \beta _{1j} + \alpha _{12} \beta _{2j} + \ldots  + \alpha _{1n} \beta _{nj}} \\ 
   & \gamma _{2j} = \sum_{s=1}^n {\alpha _{2s} \beta _{sj} = \alpha _{21} \beta _{1j} + \alpha _{22} \beta _{2j} + \ldots + \alpha _{2n} \beta _{nj}} \\ 
   & \ldots  \\ 
   & \gamma _{nj} = \sum_{s=1}^n {\alpha _{ns} \beta _{sj} = \alpha _{n1} \beta _{1j} + \alpha _{n2} \beta _{2j} + \ldots + \alpha _{nn} \beta _{nj}} \\ 
   \end{array}


skąd

.. math::
   :label: 01.1

   \left( \begin{array}{c}
   \gamma _{1j} \\ 
   \gamma _{2j} \\ 
   \ldots \\ 
   \gamma _{nj} \\ 
   \end{array} \right) = \left(
   \begin{array}{c}
   \alpha _{11} \beta _{1j} + \alpha _{12} \beta _{2j} + \ldots + \alpha _{1n} \beta _{nj} \\ 
   \alpha _{21} \beta _{1j} + \alpha _{22} \beta _{2j} + \ldots + \alpha _{2n} \beta _{nj} \\ 
   \ldots \\ 
   \alpha _{n1} \beta _{1j} + \alpha _{n2} \beta _{2j} + \ldots + \alpha _{nn} \beta _{nj} \\ 
   \end{array}
   \right), \quad j = 1, 2, \ldots , n.


Równości :eq:`01.1` można zapisać w postaci macierzowej:

.. math::
   :label: 01.2

   \left( \begin{array}{c}
   \gamma _{1j} \\ 
   \gamma _{2j} \\ 
   \ldots       \\  
   \gamma _{nj} \\ 
   \end{array} \right) = \left( \begin{array}{cccc}
   \alpha _{11} & \alpha _{12} & \ldots & \alpha _{1n} \\
   \alpha _{21} & \alpha _{22} & \ldots & \alpha _{2n} \\
   \ldots       & \ldots       & \ldots & \ldots       \\
   \alpha _{n1} & \alpha _{n2} & \ldots & \alpha _{nn} \\
   \end{array} \right) \left( \begin{array}{c}
   \beta _{1j} \\
   \beta _{2j} \\
   \ldots      \\
   \beta _{nj} \\
   \end{array} \right), \quad \text{czyli} \quad \boldsymbol{C}_j = \boldsymbol{AB}_j , \quad j = 1, 2, \ldots ,n.


**Reguła 1:**

*j*-ta kolumna iloczynu macierzowego :math:`\boldsymbol{AB}` jest iloczynem macierzy :math:`\boldsymbol{A}` przez *j*-tą kolumnę macierzy :math:`\boldsymbol{B}`:
:math:`\boldsymbol{A} (\boldsymbol{B}_1 , \boldsymbol{B}_2 , \ldots , \boldsymbol{B}_n ) = (\boldsymbol{AB}_1 , \boldsymbol{AB}_2 , \ldots , \boldsymbol{AB}_n )`, czyli :math:`(\boldsymbol{AB})_j = \boldsymbol{A} \boldsymbol{B}_j , \quad j = 1, 2, \ldots , n`.

Z drugiej strony, te same równości :eq:`01.1` dają się przepisać jako

.. math::
   :label: 01.3

   \left( \begin{array}{c}
   \gamma _{1j} \\ 
   \gamma _{2j} \\ 
   \ldots       \\ 
   \gamma _{nj} \\ 
   \end{array} \right) = \left( \begin{array}{c}
   \alpha _{11} \\ 
   \alpha _{21} \\ 
   \ldots       \\ 
   \alpha _{n1} \\ 
   \end{array} \right) \beta _{1j} +
   \left( \begin{array}{c}
   \alpha _{12} \\ 
   \alpha _{22} \\ 
   \ldots       \\ 
   \alpha _{n2} \\ 
   \end{array} \right) \beta _{2j} + \ldots
   + \left( \begin{array}{c}
   \alpha _{1n} \\ 
   \alpha _{2n} \\ 
   \ldots       \\ 
   \alpha _{nn} \\ 
   \end{array} \right) \beta _{nj} , \quad \text{czyli} \quad
   \boldsymbol{C}_j = \sum_{s=1}^n \beta _{sj} \boldsymbol{A}_s , \quad j = 1, 2, \ldots , n.


**Reguła 2:**

*j*-ta kolumna iloczynu macierzowego :math:`\boldsymbol{AB}` jest kombinacją liniową kolumn macierzy :math:`\boldsymbol{A}` o współczynnikach z *j*-tej kolumny macierzy :math:`\boldsymbol{B}, \quad j = 1, 2,\ldots , n`.

