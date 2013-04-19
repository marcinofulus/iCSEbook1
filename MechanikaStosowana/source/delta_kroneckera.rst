.. -*- coding: utf-8 -*-


Delta Kroneckera  i  umowa sumacyjna.
-------------------------------------

Delta Kroneckera zdefiniowana jest jako:

.. MATH::

    \delta _{ij} : = \left\{ \begin{array}{l}  1{\text{   dla   }}i = j \\   0{\text{   dla   }}i \ne j \\   \end{array} \right. \quad i,j = 1,2,3.


(9 składowych).


Symetria:


.. MATH::

 \delta _{ij}  = \delta _{ji} ,{\text{     }}i,j = 1,2,3. 


Różne od zera składowe: 

.. MATH::

 \delta _{11}  = \delta _{22}  = \delta _{33}  = 1, 

   
pozostałe składowe (w liczbie 6) znikają.  Macierz złożona z elementów
:math:`\delta _{ij}` jest macierzą jednostkową 3. stopnia:

.. MATH::

 (\delta _{ij} )_{3 \times 3}  = \left( {\begin{array}{ccc}    1  0  0  \\    0  1  0  \\    0  0  1  \\ \end{array}} \right). 


Sumy z deltą Kroneckera. 

.. MATH::

 \sum_{j = 1}^{3} \delta _{ij} A_{j}  = A_{i},  i = 1, 2, 3.  


    
Bezpośrednie sprawdzenie:
   
.. MATH::

  \begin{array}{l}  i = 1:  \sum\limits_{j\, = \,1}^3 {\,\delta _{\,1j} \,A_{\,j}  = \delta _{\,11} \,A_{\,1}  + \delta _{\,12} \,A_{\,2}  + \delta _{\,13} \,A_{\,3}  = A_{\,1} ,}  \\   i = 2:  \sum\limits_{j\, = \,1}^3 {\,\delta _{\,2j} \,A_{\,j}  = \delta _{\,21} \,A_{\,1}  + \delta _{\,22} \,A_{\,2}  + \delta _{\,23} \,A_{\,3}  = A_{\,2} ,}  \\   i = 3:  \sum\limits_{j\, = \,1}^3 {\,\delta _{\,3j} \,A_{\,j}  = \delta _{\,31} \,A_{\,1}  + \delta _{\,32} \,A_{\,2}  + \delta _{\,33} \,A_{\,3}  = A_{\,3} .}  \\   \end{array}  

    
Uzasadnienie: Dla ustalonego i lewa strona jest sumą trzech
składników, spośród których różny od zera jest tylko ten dla :math:`j
= i`: czynnik :math:`\delta _{ii}` równa się 1, wobec czego cały
składnik równa się :math:`A_{\,i}`.  

.. MATH::

   \sum\limits_{i,j = 1}^3
   {\delta _{ij} a_i b_j = \sum\limits_{i = 1}^3 {a_{i} b_{i} } } 


Wyprowadzenie:

.. MATH::

  \sum\limits_{i,j\, = \,1}^3 {\delta _{\,ij} \,a_i \,b_j  = \sum\limits_{i\, = \,1}^3 {\left( {\sum\limits_{j\, = \,1}^3 {\,\delta _{\,ij} \,} a_{\,i} \,b_{\,j} } \right)}  = \sum\limits_{i\, = \,1}^3 {a_{\,i} \left( {\sum\limits_{j\, = \,1}^3 {\,\delta _{\,ij} \,} b_{\,j} } \right) = \sum\limits_{i\, = \,1}^3 {\,a_{\,i} \,b_i } } }. 


    
Umowa sumacyjna Einsteina.  

Jeżeli wskaźnik sumowania powtarza się w wyrażeniu sumowanym
dwukrotnie, opuszczamy symbol sumy. Odwrotnie, jeżeli w danym
wyrażeniu pewien wskaźnik powtarza się dwukrotnie, wyrażenie to jest
domyślnie sumą po tym wskaźniku (granice sumowania są określone przez
kontekst rozważań). 

Przykłady:
    
.. MATH::

 \delta _{ij} \,A_j  \equiv \,\sum\limits_{j\, = \,1}^3 {\,\delta _{ij} \,A_j }  = A_{\,i} , 
   

.. MATH::    

 a_{\,i} \,b_{\,i}  \equiv \,\sum\limits_{i\, = \,1}^3 {\,a_{\,i} \,b_{\,i} }  = \,\vec a\, \cdot \,\vec b, 


.. MATH::

 c_{\,ik} \,b_{\,k}  \equiv \,\sum\limits_{k\, = \,1}^3 \, c_{\,ik} \,b_{\,k},  

    
    

.. MATH::

 \delta _{ij} \,\delta _{jk}  \equiv \,\sum\limits_{j\, = \,1}^3 {\delta _{ij} \,\delta _{jk} }  = \,\delta _{ik}, 


.. MATH::

 \delta _{ii}  \equiv \,\sum\limits_{i\, = \,1}^3 \, \delta _{ii}  = \,\delta _{11}  + \,\delta _{22}  + \,\delta _{33}  = \,3. 


W Sage, jest zdefiniowany symbol Kroneckera:

.. code-block:: python

    sage: type(x)
    <type 'sage.symbolic.expression.Expression'>

.. end of output

.. code-block:: python

    sage: var('i')
    sage: sum(kronecker_delta(i,i),i,1,3)
    3

.. end of output

