10. Iloczyn prosty macierzy
===========================

**Iloczyn  prosty  (tensorowy)  macierzy.**

Niech  :math:`\boldsymbol{A} = (\alpha _{ij} )_{m \times n} , \quad \boldsymbol{B} = (\beta _{ij} )_{p \times q} \in M(\boldsymbol{K})`.

Wtedy  (w zapisie blokowym)

.. math::

   \boldsymbol{A} \otimes \boldsymbol{B}: = \left( \begin{array}{*{20}c}
   \alpha _{11} \boldsymbol{B} & \alpha _{12} \boldsymbol{B} &  \ldots  & \alpha _{1n} \boldsymbol{B} \\ 
   \alpha _{21} \boldsymbol{B} & \alpha _{22} \boldsymbol{B} &  \ldots  & \alpha _{2n} \boldsymbol{B} \\ 
   \ldots  &  \ldots  &  \ldots  &  \ldots   \\ 
   \alpha _{m1} \boldsymbol{B} & \alpha _{m2} \boldsymbol{B} &  \ldots  & \alpha _{mn} \boldsymbol{B} \\ 
   \end{array} \right) \in M_{mp \times nq} (\boldsymbol{K}).


np.   dla

.. math::

   \boldsymbol{A} = \left( \begin{array}{*{20}c}
   3 &  2 \\ 
   { - 1} &  1 \\ 
   { - 2} &  0 \\ 
   \end{array} \right) , \quad  \boldsymbol{B} = \left( \begin{array}{*{20}c}
   2 &  { - 1} \\ 
   0 &  4 \\ 
   \end{array} \right): \\

   \boldsymbol{A} \otimes \boldsymbol{B} = \left( \begin{array}{*{20}c}
   {3\left( \begin{array}{*{20}c}
   2 &  { - 1} \\ 
   0 &  4 \\ 
   \end{array} \right)} & {2\left( \begin{array}{*{20}c}
   2 &  { - 1} \\ 
   0 &  4 \\ 
   \end{array} \right)}  \\ 
   { - 1\left( \begin{array}{*{20}c}
   2 &  { - 1} \\ 
   0 &  4 \\ 
   \end{array} \right)} & {1\left( \begin{array}{*{20}c}
   2 &  { - 1} \\ 
   0 &  4 \\ 
   \end{array} \right)}  \\ 
   { - 2\left( \begin{array}{*{20}c}
   2 &  { - 1} \\ 
   0 &  4 \\ 
   \end{array} \right)} & {0\left( \begin{array}{*{20}c}
   2 &  { - 1} \\ 
   0 &  4 \\ 
   \end{array} \right)}  \\ 
   \end{array} \right) = \left( \begin{array}{*{20}c}
   \begin{array}{*{20}c}
   6 &  { - 3} \\ 
   0 &  {12} \\ 
   \end{array} &\big | &   \begin{array}{*{20}c}
   4 &  { - 2} \\ 
   0 &  8 \\ 
   \end{array} \\ 
   \hline
   \begin{array}{*{20}c}
   { - 2} &  1 \\ 
   0 &  { - 4} \\ 
   \end{array} &\big | &   \begin{array}{*{20}c}
   2 &  { - 1} \\ 
   0 &  4 \\ 
   \end{array} \\ 
   \hline
   \begin{array}{*{20}c}
   { - 4} &  2 \\ 
   0 &  { - 8} \\ 
   \end{array} &\big | &   \begin{array}{*{20}c}
   0 &  0 \\ 
   0 &  0 \\ 
   \end{array} \\ 
   \end{array} \right); \\ 

   \boldsymbol{B} \otimes \boldsymbol{A} = \left( \begin{array}{*{20}c}
   {2\left( \begin{array}{*{20}c}
   3 &  2 \\ 
   { - 1} &  1 \\ 
   { - 2} &  0 \\ 
   \end{array} \right)} & { - 1\left( \begin{array}{*{20}c}
   3 &  2 \\ 
   { - 1} &  1 \\ 
   { - 2} &  0 \\ 
   \end{array} \right)}  \\ 
   {0\left( \begin{array}{*{20}c}
   3 &  2 \\ 
   { - 1} &  1 \\ 
   { - 2} &  0 \\ 
   \end{array} \right)} & {4\left( \begin{array}{*{20}c}
   3 &  2 \\ 
   { - 1} &  1 \\ 
   { - 2} &  0 \\ 
   \end{array} \right)}  \\ 
   \end{array} \right) = \left( \begin{array}{*{20}c}
   \begin{array}{*{20}c}
   6 &  4 \\ 
   { - 2} &  2 \\ 
   { - 4} &  0 \\ 
   \end{array} &\big | &  \begin{array}{*{20}c}
   { - 3} &  { - 2} \\ 
   1 &  { - 1} \\ 
   2 &  0 \\ 
   \end{array}  \\ 
   \hline
   \begin{array}{*{20}c}
   0 &  0 \\ 
   0 &  0 \\ 
   0 &  0 \\ 
   \end{array} &\big | &  \begin{array}{*{20}c}
   12 &  8 \\ 
   { - 4} &  4 \\ 
   { - 8} &  0 \\ 
   \end{array}  \\ 
   \end{array} \right).


**Numeracja  elementów.**

.. math::
   \left( \boldsymbol{A} \otimes \boldsymbol{B} \right)_{ij,kl}  = \alpha _{ik} \beta _{jl} , \quad 
   \begin{array}{l}
   i = 1,2, \ldots ,m; & k = 1,2, \ldots ,n; \\ 
   j = 1,2, \ldots ,p; & l = 1,2, \ldots ,q. \\ 
   \end{array}

\ 

| :math:`i, k`  -  wiersze,  kolumny  blokowe,
| :math:`j, l`  -  wiersze,  kolumny  elementarne.


**Własności  iloczynu  prostego  macierzy.**

Jeżeli  wymiary  macierzy  :math:`\boldsymbol{A}, \boldsymbol{B}, \boldsymbol{C}, \boldsymbol{D} \in M(\boldsymbol{K})`  dobrane  są  tak,  że  występujące  działania  dodawania,  odejmowania  i  mnożenia  macierzowego  są  wykonalne,  to

.. math::

   \begin{array}{l}
   (\boldsymbol{A} \pm \boldsymbol{B})  \otimes  \boldsymbol{C} = (\boldsymbol{A} \otimes \boldsymbol{C}) \pm (\boldsymbol{B} \otimes \boldsymbol{C}), \\
   \boldsymbol{A}  \otimes  (\boldsymbol{B} \pm \boldsymbol{C}) = (\boldsymbol{A} \otimes \boldsymbol{B}) \pm (\boldsymbol{A} \otimes \boldsymbol{C}), \\
   (\gamma \boldsymbol{A})  \otimes  \boldsymbol{B} = \boldsymbol{A}  \otimes  (\gamma \boldsymbol{B}) = \gamma (\boldsymbol{A} \otimes \boldsymbol{B}), \quad \gamma  \in \boldsymbol{K}, \\
   (\boldsymbol{A} \otimes \boldsymbol{B})(\boldsymbol{C} \otimes \boldsymbol{D}) = (\boldsymbol{A} \boldsymbol{C})  \otimes  (\boldsymbol{B} \boldsymbol{D}).
   \end{array}


Jeżeli  :math:`\boldsymbol{A} \in M_m (\boldsymbol{K}), \quad \boldsymbol{B} \in M_n (\boldsymbol{K})`,  to

.. math::

   \begin{array}{l}
   \det (\boldsymbol{A} \otimes \boldsymbol{B}) = (\det \boldsymbol{A})^n (\det \boldsymbol{B})^m , \\
   \text{Tr} (\boldsymbol{A} \otimes \boldsymbol{B}) = \text{Tr} \boldsymbol{A} \cdot \text{Tr} \boldsymbol{B}, \\
   (\boldsymbol{A} \otimes \boldsymbol{B})^{ - 1}  = \boldsymbol{A}^{ - 1}  \otimes \boldsymbol{B}^{ - 1} , \quad (\text{o  ile } \det {\boldsymbol{A}},\det {\boldsymbol{B}} \ne 0).
   \end{array}

