.. -*- coding: utf-8 -*-

Mnożenie macierzy
=================


Wprowadzenie macierzy
---------------------

Układ równań :math:`n\times n`:

.. math::
   :label: ukl1

   \begin{cases}
   \alpha_{11} x_1 & \alpha_{12} x_2 & \ldots & \alpha _{1n} x_n &=& b_1 \\
   \alpha_{21} x_1 & \alpha_{22} x_2 & \ldots & \alpha _{2n} x_n &=& b_2 \\
   \ldots       & \ldots       & \ldots & \ldots       \\
   \alpha_{n1} x_1 & \alpha_{n2} x_2 & \ldots & \alpha _{nn} x_n &=& b_n \\
   \end{cases}


możemy zapisać za pomocą tabeli współczynników: 


.. math::
   :label: ukl_m

   \left( \begin{array}{cccc}
   \alpha _{11} & \alpha _{12} & \ldots & \alpha _{1n} \\
   \alpha _{21} & \alpha _{22} & \ldots & \alpha _{2n} \\
   \ldots       & \ldots       & \ldots & \ldots       \\
   \alpha _{n1} & \alpha _{n2} & \ldots & \alpha _{nn} \\
   \end{array} \right) \left( \begin{array}{c}
   x_{1} \\
   x_{2} \\
   \ldots      \\
   x_{n} \\
   \end{array} \right) =  \left( \begin{array}{c}
   \beta _{1} \\
   \beta _{2} \\
   \ldots      \\
   \beta _{n} \\
   \end{array} \right)

Tabela ta jest zwana macierzą kwadratową :math:`\boldsymbol{A} =
(\alpha _{ij})`.  Warto zapamiętać, że w notacji :math:`\alpha _{ij}`
pierwszy wskaźnik oznacza wiersz a drugi kolumnę. Jest to standardowe
oznaczenie konsystencja poźniejszych rozważań wymaga jego stosowania. 

.. sidebar:: Ciało  pierścień, przypomnienie

   Ciałem (ang. field) nazywa się pierścień przemienny (tzn. mnożenie jest
   przemienne), w którym każdy niezerowy element jest odwracalny.
   
   Pierścień (ang. ring)  to intuicyjnie zbiór, którego elementy mogą być bez
   przeszkód dodawane, odejmowane i mnożone, lecz niekoniecznie
   dzielone.


Precyzyjne okreśnienie macierzy wymaga podania ciała do którego należą
jej elementy. Będziemy używać zapisu :math:`M_{m \times n}
(\boldsymbol{K})`, który oznacza zbiór macierzy o rozmiarach :math:`m`
rzędach i :math:`n` kolumnach nad ciałem :math:`K`. W **Sage** definiując
macierz, można wyspecyfikować ciało nad których jest ona określona, np:

.. code-block:: python
   
   A = matrix(QQ,[[2,1],[3,2/3]])

oznacza macierz nad ciałem liczb wymiernych.


Mnożenie macierzy przez wektor
------------------------------


Układ równań :eq:`ukl1` można więc zapisać jako:

.. math::
   \boldsymbol{A} \boldsymbol{x} =\boldsymbol{b}.

Ponieważ zapis za pomocą tabeli i ten klasyczny powinny być takie
same, determinują one nam działanie macierzy na wektor zwane mnożeniem
macierzy przez wektor. Mamy więc:

.. math::

   \left( \boldsymbol{A} \boldsymbol{x}  \right)_i = \sum_{j=1}^{j=n} \alpha_{ij} x_j


Aby nabyć wprawy w zapisie sumacyjnym zauważmy, że powyższy wzór jest
równoważny z następującymi:


.. math::

   \left( \boldsymbol{A} \boldsymbol{x}  \right)_i = \sum_{j=1}^{j=n} x_j \alpha_{ij} \\
   \left( \boldsymbol{A} \boldsymbol{x}  \right)_i = \sum_{k=1}^{k=n} \alpha_{ik} x_k

ale **nie** jest równoważny z tym:

.. math::

   \left( \boldsymbol{A} \boldsymbol{x}  \right)_i \neq \sum_{j=1}^{j=n} \alpha_{ji} x_j.



Możemy również sformułować następującą interpretację mnożenia macierzy
przez wektor:

Wynikiem mnożenia macierzy przez wektor :math:`\boldsymbol{Ax}` jest
kombinacją liniową kolumn macierzy :math:`\boldsymbol{A}` o
współczynnikach będącym kolejnymi elementami wektora: :math:`x_i`.

.. math::
   :label: Ax1

   \;\boldsymbol{Ax} = \left( \begin{array}{c}
   \alpha _{11} \\ 
   \alpha _{21} \\ 
   \ldots       \\ 
   \alpha _{n1} \\ 
   \end{array} \right) x_1 +
   \left( \begin{array}{c}
   \alpha _{12} \\ 
   \alpha _{22} \\ 
   \ldots       \\ 
   \alpha _{n2} \\ 
   \end{array} \right) x_2 + \ldots
   + \left( \begin{array}{c}
   \alpha _{1n} \\ 
   \alpha _{2n} \\ 
   \ldots       \\ 
   \alpha _{nn} \\ 
   \end{array} \right) x_n

Nasuwa się tu analogia między wzorem :eq:`Ax1` a interpretacją
kolumnową układu równań, co jest zrozumiałe ponieważ zapis
:math:`\boldsymbol{Ax}` jest inną postacią zapisu właśnie lewej strony
układu równań :eq:`ukl1`.





Mnożenie macierzy przez macierz
-------------------------------

Wynikiem mnożenia macierzy jest wektor, więc nic nie stoi na
przeszkodzie by pomnożyć go przez inną macierz. Weźmy na przykład
wektor :math:`x` i pomnóźmy go przez macierz :math:`\boldsymbol{A}` a
wynik przez macierz :math:`\boldsymbol{B}`:

.. math::

   \left( \boldsymbol{B} \left( \boldsymbol{A} \boldsymbol{x}  \right) \right)_k = \sum_{i=1}^{i=n} \beta_{ki} \sum_{j=1}^{j=n} \alpha_{ij} x_j   

wyrazy pod sumą można przestawiać, z tym że należy uważać by nie
"wyjąć" wskaźnika po którym sumujemy przed daną sumę.

.. math::
   :label: BA1

   \sum_{i=1}^{i=n} \beta_{ki} \sum_{j=1}^{j=n} \alpha_{ij} x_j = \sum_{j=1}^{j=n} \left( \sum_{i=1}^{i=n} \beta_{ki} \alpha_{ij} \right)   x_j   

Wyrażenie w nawiasie można potraktować jako element pewnej macierzy :math:`\boldsymbol{C}` 

.. math::

   (\boldsymbol{C})_{kj} = \sum_{i=1}^{i=n} \beta_{ki} \alpha_{ij} 

Biorąc pod uwagę punkt wyjścia równości :eq:`BA1` powyższy wzór definiuje iloczyn dwóch macierzy:

.. math::

    \boldsymbol{C} = \boldsymbol{BA}



Własności mnożenia macierzy
---------------------------

#) Mnożenie jest łączne: :math:`\boldsymbol{A} (\boldsymbol{B C}) = (\boldsymbol{A B}) \boldsymbol{C}`.
#) Mnożenie jest rozdzielne względem dodawania:: :math:`\boldsymbol{A} (\boldsymbol{B} + \boldsymbol{C}) = \boldsymbol{A B} +\boldsymbol{A C}` oraz :math:`(\boldsymbol{A} + \boldsymbol{B}) \boldsymbol{C} = \boldsymbol{A C} + \boldsymbol{B C}`
#) Mnożenie nie jest przemienne :math:`\boldsymbol{AB} \neq\boldsymbol{ BA}`. 
#) Mnożenie macierzy przez skalar, polegające na pomnożeniu przez
   skalar wszysktich jej elementów jest przemienne
   :math:`c\boldsymbol{A}=\boldsymbol{A}c`.







Interpretacja mnożenia macierzy
-------------------------------

Dane dwie macierze kwadratowe :math:`\boldsymbol{A} = (\alpha _{ij}
)_{n \times n}, \boldsymbol{B} = (\beta _{ij} )_{n \times n}` stopnia
*n* nad ciałem **K**.

W  zapisie  kolumnowym: :math:`\boldsymbol{A} = (\boldsymbol{A}_1 , \boldsymbol{A}_2 , \ldots , \boldsymbol{A}_n )`, :math:`\boldsymbol{B} = (\boldsymbol{B}_1 , \boldsymbol{B}_2 , \ldots , \boldsymbol{B}_n )`. Pokazać, że

.. math::

   \boldsymbol{A} \boldsymbol{B} = (\boldsymbol{AB}_1 , \boldsymbol{AB}_2 , \ldots , \boldsymbol{AB}_n ),
   \quad \text{przy czym} \quad
   \boldsymbol{AB}_j = \sum_{s=1}^n \beta _{sj} \boldsymbol{A}_s , \quad j = 1,2, \ldots ,n.



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

   \;\left( \begin{array}{c}
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

   \;\;\;\left( \begin{array}{c}
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
   \end{array} \right) \beta _{nj} ,  


czyli: 

.. math::
   :label: 01.3a

   \;\boldsymbol{C}_j = \sum_{s=1}^n \beta _{sj} \boldsymbol{A}_s , \quad j = 1, 2, \ldots , n.


**Reguła 2:**

*j*-ta kolumna iloczynu macierzowego :math:`\boldsymbol{AB}` jest kombinacją liniową kolumn macierzy :math:`\boldsymbol{A}` o współczynnikach z *j*-tej kolumny macierzy :math:`\boldsymbol{B}, \quad j = 1, 2,\ldots , n`.

