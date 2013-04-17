10. WKW dla bazy przestrzeni wektorowej
=======================================

Niech  układ  wektorów  :math:`\cal B = (v_i )_1^n`  będzie  bazą  *n*-wymiarowej  przestrzeni  
:math:`V(\boldsymbol{K})`.

Rozważmy  układ  :math:`\cal B' = (v'_i )_1^n`,  gdzie

.. math::

   v' _j  = \sum\limits_{i = 1}^n \sigma _{ij} v_i , \quad j = 1,2, \ldots , n.


Udowodnić,  że układ  :math:`\cal B'` jest  bazą  przestrzeni  :math:`V`  wtedy  i  tylko wtedy,  gdy  
:math:`\det {\boldsymbol{S}} \ne 0`, gdzie  :math:`{\boldsymbol{S}} = (\sigma _{ij} )_{n \times n}`.

**Uwaga:**  gdy :math:`\det {\boldsymbol{S}} \ne 0` (a więc gdy :math:`\cal B'` jest bazą)  macierz  :math:`\boldsymbol{S}`  nazywa  się  macierzą przejścia  od  bazy  :math:`\cal B` do  bazy :math:`\cal B'`.

___________________________________________________________________________________


W  *n*-wymiarowej  przestrzeni  wektorowej  każdy  liniowo  niezależny  układ  *n*  wektorów  jest  bazą.
Wystarczy  więc  pokazać,  że  układ  :math:`\cal B'` jest  liniowo  niezależny  wtedy  i  tylko  wtedy,  
gdy  :math:`\det {\boldsymbol{S}} \ne 0`.

Zależności  pomiędzy  wektorami  układu :math:`\cal B'` i  :math:`\cal B`  mają  postać

.. math::
                                        
   \begin{array}{c}
   v'_1  = \sigma _{11} v_1  +  \sigma _{21} v_2  +  \ldots  +  \sigma _{n1} v_n  \\ 
   v'_2  = \sigma _{12} v_1  +  \sigma _{22} v_2  +  \ldots  +  \sigma _{n2} v_n  \\ 
    \ldots  \\ 
   v'_n  = \sigma _{1n} v_1  +  \sigma _{2n} v_2  +  \ldots  +  \sigma _{nn} v_n  \\ 
   \end{array}


co  można  zapisać  macierzowo:

.. math::

   \left( {\begin{array}{*{20}c}
   {v'_1 }  \\
   {v'_2 }  \\
    \ldots   \\
   {v'_n }  \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
   {\sigma _{11} } & {\sigma _{21} } &  \ldots  & {\sigma _{n1} }  \\
   {\sigma _{12} } & {\sigma _{22} } &  \ldots  & {\sigma _{n2} }  \\
    \ldots  &  \ldots  &  \ldots  &  \ldots   \\
   {\sigma _{1n} } & {\sigma _{2n} } &  \ldots  & {\sigma _{nn} }  \\
   \end{array}} \right)\left( {\begin{array}{*{20}c}
   {v_1 }  \\
   {v_2 }  \\
    \ldots   \\
   {v_n }  \\
   \end{array}} \right) = {\boldsymbol{S}}^{\rm{T}} \left( {\begin{array}{*{20}c}
   {v_1 }  \\
   {v_2 }  \\
    \ldots   \\
   {v_n }  \\
   \end{array}} \right)


albo,  po  transponowaniu  obu  stron,

.. math::

   \left( {v'_1 ,v'_2 , \ldots ,v'_n } \right) = \left( {v_1 ,v_2 , \ldots ,v_n  } \right)\left( {\begin{array}{*{20}c}
   {\sigma _{11} } & {\sigma _{12} } &  \ldots  & {\sigma _{1n} }  \\
   {\sigma _{21} } & {\sigma _{22} } &  \ldots  & {\sigma _{2n} }  \\
    \ldots  &  \ldots  &  \ldots  &  \ldots   \\
   {\sigma _{n1} } & {\sigma _{n2} } &  \ldots  & {\sigma _{nn} }  \\
   \end{array}} \right) = \left( {v_1 ,v_2 , \ldots ,v_n  } \right){\boldsymbol{S}}.


W  ten  sposób

.. math::

   v'_j  = \left( {v_1 ,v_2 , \ldots ,v_n  } \right)\left( {\begin{array}{*{20}c}
   {\sigma _{1j} }  \\
   {\sigma _{2j} }  \\
    \ldots   \\
   {\sigma _{1j} }  \\
   \end{array}} \right), \quad j = 1,2, \ldots , n.


czyli

.. math::
   :label: W10.1

   v'_j  = {\rm{V}}C_j ,  \quad \text{gdzie} \quad  {\rm{V}} = \left( {v_1 ,v_2 , \ldots ,v_n  } \right), \quad  C_j  = \left( {\begin{array}{*{20}c}
   {\sigma _{1j} }  \\
   {\sigma _{2j} }  \\
    \ldots   \\
   {\sigma _{1j} }  \\
   \end{array}} \right),  \quad j = 1,2, \ldots ,n.


Warunek  :math:`\det {\boldsymbol{S}} = 0`  zachodzi  wtedy  i  tylko  wtedy,  gdy  kolumny  macierzy  :math:`\boldsymbol{S}`  są  liniowo  zależne, tzn.  gdy  jedna  z  nich  wyraża  się  liniowo  przez  pozostałe.

Przypuśćmy,  że  kolumna  :math:`C_j`   jest  kombinacją  liniową  kolumn  pozostałych:

.. math::

  C_j  = \sum\limits_{\scriptstyle k = 1  \atop 
  \scriptstyle k \ne j }^n {\gamma _k C_k }.


Wtedy,  na  podstawie  :eq:`W10.1`,

.. math::

   v'_j  = {\rm{V}}\sum\limits_{\scriptstyle k = 1  \atop 
   \scriptstyle k \ne j }^n {\gamma _k C_k }  = \sum\limits_{\scriptstyle k = 1  \atop 
   \scriptstyle k \ne j }^n {\gamma _k {\rm{V}}C_k }  = \sum\limits_{\scriptstyle k = 1  \atop 
   \scriptstyle k \ne j }^n {\gamma _k v'_k },


czyli  wektor  :math:`v'_j`   jest  taką  samą  kombinacją  liniową  pozostałych  wektorów  układu  
:math:`\cal B'`.

Odwrotnie,  załóżmy,  że  wektor  :math:`v'_j`   jest  kombinacją  liniową  wektorów  pozostałych:

.. math::
   :label: W10.2

   v'_j  = \sum\limits_{\scriptstyle k = 1  \atop 
   \scriptstyle k \ne j }^n {\gamma _k v'_k }.


Wtedy

.. math::

   {\rm{V}}C_j  = \sum\limits_{\scriptstyle k = 1  \atop 
   \scriptstyle k \ne j }^n {\gamma _k {\rm{V}}C_k }  = {\rm{V}}\sum\limits_{\scriptstyle k = 1  \atop 
   \scriptstyle k \ne j }^n {\gamma _k C_k },


czyli

.. math::

   {\rm{V}}\left( {C_j  - \sum\limits_{\scriptstyle k = 1  \atop 
   \scriptstyle k \ne j }^n {\gamma _k C_k } } \right) = {\rm{\theta }}.


Z  liniowej  niezależności  wektorów  bazy  :math:`\cal B = (v_1 ,v_2 , \ldots ,v_n  )`  wynika,  że  dla  kolumny  :math:`C \in \boldsymbol{K}^n`:

.. math::

   {\rm{V}}C = {\rm{\theta}} \quad \Rightarrow \quad C = \theta .


Rzeczywiście,  jeżeli

.. math::

   C = \left( {\begin{array}{*{20}c}
   {\rho _1 }  \\
   {\rho _2 }  \\
    \ldots   \\
   {\rho _n }  \\
   \end{array}} \right),


to     

.. math::

   {\rm{V}}C = \left( {v_1 ,v_2 , \ldots ,v_n  } \right)\left( {\begin{array}{*{20}c}
   {\rho _1 }  \\
   {\rho _2 }  \\
    \ldots   \\
   {\rho _n }  \\
   \end{array}} \right) = \rho _1 v_1  +  \rho _2 v_2  +  \ldots \rho _n v_n ,


a  z  drugiej  strony

.. math::

   \rho _1 v_1 +  \rho _2 v_2  +  \ldots \rho _n v_n  = {\rm{\theta}} \quad \Rightarrow \quad \rho _1  =  \rho _2  =  \ldots  = \rho _n   = 0.


Tak  więc  z  założenia  :eq:`W10.2`  wynika,  że

.. math::

   C_j  - \sum\limits_{\scriptstyle k = 1  \atop 
   \scriptstyle k \ne j }^n {\gamma _k C_k }  = \theta ,  \quad  \text{czyli} \quad C_j  = \sum\limits_{\scriptstyle k = 1  \atop 
   \scriptstyle k \ne j }^n {\gamma _k C_k } .


Ostatecznie  stwierdzamy,  że  zależność  liniowa  pomiędzy  kolumnami  macierzy  :math:`\boldsymbol{S}`   
jest  równoważna  takiej  samej  zależności  pomiędzy  wektorami :math:`v'_1 ,v'_2 , \ldots ,v'_n`   układu  :math:`\cal B'`.

A  zatem  :math:`\det {\boldsymbol{S}} = 0`  wtedy  i  tylko  wtedy,  gdy  układ  :math:`\cal B'` jest  liniowo  zależny,  a  więc  gdy  nie  jest  bazą.  Odwrotnie,  układ  :math:`\cal B'` jest  bazą  wtedy  i  tylko  wtedy,  gdy  :math:`\det {\boldsymbol{S}} \ne 0`.

