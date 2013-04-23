40. WKW dla bazy przestrzeni wektorowej
=======================================

Niech  układ  wektorów  :math:`\cal{B} = (v_i )_1^n`   będzie  bazą  *n*-wymiarowej  przestrzeni  
:math:`V(K)`.  Rozważmy  układ  :math:`\cal{B'} = (v'_i )_1^n`,  gdzie

.. math::

   v'_j  = \sum\limits_{i = 1}^n {\sigma _{ij}} v_i , \quad j = 1,2, \ldots ,n.


Udowodnić,  że układ  :math:`\cal{B'}`  jest  bazą  przestrzeni  :math:`V`  wtedy  i  tylko wtedy,  gdy  :math:`\det {\boldsymbol{S}} \ne 0`,  gdzie  :math:`{\boldsymbol{S}} = (\sigma _{ij} )_{n \times n}`.

**Wskazówka:**  W  *n*-wymiarowej  przestrzeni  wektorowej  każdy  liniowo  niezależny  układ *n*  wektorów  jest  bazą.

**Uwaga:**  Gdy  :math:`\det {\boldsymbol{S}} \ne 0` (a więc gdy :math:`\cal{B'}` jest bazą)  macierz  :math:`\boldsymbol{S}`  nazywa  się  macierzą przejścia od  bazy  :math:`\cal{B}`  do  bazy :math:`\cal{B'}`.

___________________________________________________________________________________


W  *n*-wymiarowej  przestrzeni  wektorowej  każdy  liniowo  niezależny  układ  n  wektorów  jest  bazą.
Wystarczy  więc  pokazać,  że  układ :math:`\cal{B'}`  jest  liniowo niezależny  wtedy  i  tylko wtedy,  gdy :math:`\det {\boldsymbol{S}} \ne 0`.

Układ  :math:`\cal{B'} = (v'_1 ,v'_2 , \ldots ,v'_n )`  jest  liniowo  niezależny wtedy  i  tylko  wtedy,  gdy  jedynym  rozwiązaniem  równania

.. math::
   :label: PL40.1

   \alpha _1 v'_1  + \alpha _2 v'_2  +  \ldots \alpha _n v'_n  = {\rm{\theta }}


na  współczynniki  :math:`\alpha _1 ,\alpha _2 , \ldots ,\alpha _n`   jest  rozwiązanie  zerowe:  :math:`\alpha _{ 1}  = \alpha _2  =  \ldots  = \alpha _n  = 0`.

Ale

.. math::

   \sum\limits_{j = 1}^n {\alpha _j v'_j  = } \sum\limits_{j = 1}^n {\alpha _j \left( {\sum\limits_{i = 1}^n {\sigma _{ij} v_i } } \right) = \sum\limits_{i = 1}^n {\left( {\sum\limits_{j = 1}^n {\sigma _{ij} \alpha _j } } \right)v_i } } 


wobec  czego,  z  liniowej  niezależności  wektorów  :math:`v_1 ,v_2 , \ldots ,v_n`:

.. math::

   \sum\limits_{j = 1}^n {\alpha _j v'_j  =  {\rm{\theta }} \quad \Leftrightarrow \quad \sum\limits_{i = 1}^n {\left( {\sum\limits_{j = 1}^n {\sigma _{ij} \alpha _j } } \right) v_i }  =  {\rm{\theta }} \quad \Leftrightarrow \quad \sum\limits_{j = 1}^n {\sigma _{ij} \alpha _j  = 0, \quad i = 1,2, \ldots ,n} }.


A  zatem  równanie  :eq:`PL40.1`  jest  równoważne  jednorodnemu  układowi  równań

.. math::

   \left\{ \begin{array}{c}
   \sigma _{11} \alpha _1  + \sigma _{12} \alpha _2  +  \ldots  + \sigma _{1n} \alpha _n  = 0 \\ 
   \sigma _{21} \alpha _1  + \sigma _{22} \alpha _2  +  \ldots  + \sigma _{2n} \alpha _n  = 0 \\ 
   \ldots  \\ 
   \sigma _{n1} \alpha _1  + \sigma _{n2} \alpha _2  +  \ldots  + \sigma _{nn} \alpha _n  = 0 \\ 
   \end{array} \right.


z  niewiadomymi   :math:`\alpha _{ 1} ,\alpha _2 , \ldots ,\alpha _n`  o  macierzy   :math:`(\sigma _{ij} )_{n \times n}  = {\boldsymbol{S}}`.

Z  teorii  układów  równań  liniowych  wiadomo,  że  taki  układ  ma  wyłącznie  rozwiązanie  zerowe  wtedy  i  tylko  wtedy,  gdy  :math:`\det {\boldsymbol{S}} \ne 0`.

