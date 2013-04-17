01. Iloczyny w rozwinięciu wyznacznika
======================================

Czy  podane  iloczyny  wchodzą  w  skład  wyznacznika  macierzy  :math:`{\boldsymbol{A}} = (\alpha _{ij} )_{7 \times 7}`?

Jeżeli  tak,  to  z  jakim  znakiem ?

.. math::
   :label: W01.1

   \alpha _{45} \alpha _{71} \alpha _{23} \alpha _{67} \alpha _{34} \alpha _{12} \alpha _{56} 


.. math::
   :label: W01.2

   \alpha _{23} \alpha _{52} \alpha _{77} \alpha _{34} \alpha _{61} \alpha _{12} \alpha _{45}


.. math::
   :label: W01.3

   \alpha _{71} \alpha _{17} \alpha _{26} \alpha _{62} \alpha _{53} \alpha _{35} \alpha _{44}

___________________________________________________________________________________


.. math::

   \begin{array}{l}
   \det (\alpha _{ij} )_{n \times n} & = \sum\limits_{\sigma  \in \Pi (n)} {{\mathop{\rm sgn}} \sigma  \cdot \alpha _{\sigma (1),1} \alpha _{\sigma (2),2}  \ldots \alpha _{\sigma (n),n} }  =  \\ 
   &  = \sum\limits_{\sigma  \in \Pi (n)} {{\mathop{\rm sgn}} \sigma  \cdot \alpha _{ 1,\sigma (1)} \alpha _{ 2,\sigma (2)}  \ldots \alpha _{ n,\sigma (n)} } . \\ 
   \end{array}


W  szczególności

.. math::

   \det (\alpha _{ij} )_{7 \times 7}  = \sum\limits_{\sigma  \in \Pi (7)} {{\mathop{\rm sgn}} \sigma  \cdot \alpha _{ 1,\sigma (1)} } \alpha _{ 2,\sigma (2)} \alpha _{ 3,\sigma (3)} \alpha _{ 4,\sigma (4)} \alpha _{ 5,\sigma (5)} \alpha _{ 6,\sigma (6)} \alpha _{ 7,\sigma (7)}.


1.)	Iloczynowi :math:`\alpha _{45} \alpha _{71} \alpha _{23} \alpha _{67} \alpha _{34} \alpha _{12} \alpha _{56}` odpowiada  odwzorowanie

.. math::

   \sigma  = \left( {\begin{array}{*{20}c}
    1 &  2 &  3 &  4 &  5 &  6 &  7 \\
    2 &  3 &  4 &  5 &  6 &  7 &  1 \\
   \end{array}} \right) = \left( {1,2,3,4,5,6,7} \right) = (1,7)(1,6)(1,5)(1,4)(1,3)(1,2)


\ 
	które  jest  permutacją  parzystą  (rozkład  na  iloczyn  6  transpozycji).  
	Iloczyn  występuje  w  rozwinięciu  wyznacznika  7.  stopnia  ze  znakiem  plus.

2.)	Iloczynowi  :math:`\alpha _{23} \alpha _{52} \alpha _{77} \alpha _{34} \alpha _{61} \alpha _{12} \alpha _{45}`  odpowiada  odwzorowanie

.. math::

   \sigma  = \left( {\begin{array}{*{20}c}
    1 &  2 &  3 &  4 &  5 &  6 &  7 \\
    2 &  3 &  4 &  5 &  2 &  1 &  7 \\
   \end{array}} \right),


\ 
	które  nie  jest  permutacją.  Występują  tutaj  dwa  elementy  z  2.  kolumny,
	natomiast  nie  ma  żadnego  elementu  z  6.  kolumny.
	Iloczyn  nie  wchodzi  w  skład  rozwinięcia  wyznacznika  7.  stopnia.


3.)	Iloczynowi  :math:`\alpha _{71} \alpha _{17} \alpha _{26} \alpha _{62} \alpha _{53} \alpha _{35} \alpha _{44}`  odpowiada  odwzorowanie

.. math::

   \left( {\begin{array}{*{20}c}
    1 &  2 &  3 &  4 &  5 &  6 &  7 \\
    7 &  6 &  5 &  4 &  3 &  2 &  1 \\
   \end{array}} \right) = (1,7)(2,6)(3,5)


\ 
	które  jest  permutacją  nieparzystą.
	Iloczyn  występuje  w  rozwinięciu  wyznacznika  7.  stopnia  ze  znakiem  minus.

