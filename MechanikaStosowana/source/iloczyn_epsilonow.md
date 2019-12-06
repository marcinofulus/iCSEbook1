---
title: Zwężone iloczyny epsilonów
---

Zwężony iloczyny epsilonów
==========================

$$\varepsilon _{ijk} \,\varepsilon _{imn} \;\; = \;\;\delta _{jm} \,\delta _{kn} \; - \;\;\delta _{jn} \,\delta _{km} \text{ dla } j,\;m,\;k,\;n\;\; = \;\;1,\;2,\;3.$$

np.

$$\varepsilon _{i12} \,\varepsilon _{i23} \;\; = \;\;\;\varepsilon _{112} \,\varepsilon _{123} \; + \;\;\varepsilon _{212} \,\varepsilon _{223} \; + \;\;\varepsilon _{312} \,\varepsilon _{323} \;\; = \;\;\;0\;\;\; = \;\;\;\delta _{12} \,\delta _{23} \; - \;\;\delta _{13} \,\delta _{22} ,$$

$$\varepsilon _{i23} \,\varepsilon _{i23} \;\; = \;\;\;\varepsilon _{123} \,\varepsilon _{123} \; + \;\;\varepsilon _{223} \,\varepsilon _{223} \; + \;\;\varepsilon _{323} \,\varepsilon _{323} \;\;\; = \;\;\;1\;\;\; = \;\;\;\delta _{22} \,\delta _{33} \; - \;\;\delta _{23} \,\delta _{32},$$

$$\varepsilon _{i12} \,\varepsilon _{i21} \;\; = \;\;\;\varepsilon _{112} \,\varepsilon _{121} \; + \;\;\varepsilon _{212} \,\varepsilon _{221} \; + \;\;\varepsilon _{312} \,\varepsilon _{321} \;\; = \;\; - 1\;\;\; = \;\;\;\delta _{12} \,\delta _{21} \; - \;\;\delta _{11} \,\delta _{22}.$$

Dowód.

Gdy $j = k{\text{   lub   }}m = n$, obie strony znikają i równość
zachodzi. Załóżmy więc, że $j \ne k{\text{   i   }}m \ne n$. Lewa strona
jest sumą trzech składników, z których tylko jeden może być różny od
zera. Składnik ten nie znika wtedy i tylko wtedy, gdy
$\{ j,k\} \;\; = \;\;\{ m,n\}$. Prawa strona nie znika również wtedy i
tylko wtedy, gdy $\{ j,k\} \;\; = \;\;\{ m,n\}$. Gdy
$(j,\;k) = (m,\;n){\text{,   tzn}}{\text{.   }}j = m{\text{  i  }}k = n$,
obie strony równają się +1. Gdy
$(j,\;k) = (n,\;m){\text{,   tzn}}{\text{.   }}j = n{\text{  i  }}k = m$,
obie strony równają się –1.

Wzór (1) można też udowodnić bezpośrednio, korzystając z przedstawienia
symbolu epsilon przy pomocy wyznacznika.

Podwójnie zwężony iloczyn epsilonów:
====================================

$$\varepsilon _{ijk} \,\varepsilon _{ijn} \;\; = \;\;\;2\;\delta _{kn} \text{  } k,\;n\;\; = \;\;1,\;2,\;3.$$

Wyprowadzenie.

$$\varepsilon _{ijk} \,\varepsilon _{ijn} \;\; = \delta _{jj} \,\delta _{kn} \; - \;\;\delta _{jn} \,\delta _{kj} \;\; = \;\;\delta _{jj} \,\delta _{kn} \; - \;\;\delta _{kj} \,\delta _{jn} \;\; = \;\;3\;\delta _{kn} \; - \;\;\delta _{kn} \;\; = \;\;\;2\;\delta _{kn} .$$

Potrójnie zwężony iloczyn epsilonów:
====================================

$$\varepsilon _{ijk} \,\varepsilon _{ijk} \;\; = \;\;\;2\;\delta _{kk} \;\; = \;\;\;2\; \cdot \;3\;\; = \;\;6.$$

Dowód tożsamości wykorzystujący Sage
====================================

Ponieważ liczba kombinacji wskaźników do sprawdzenia jest skończona
można wykorzystać komputer do wykonania testów element po elemencie.
Jedną metodą jest wykonanie odpowiednich zagnieżdżonych pętli. Warto
jednak skorzystać w tym przypadku z wbudowanej w system Sage funkcji
"CartesianProduct", która jest generatorem wszystkich kombinacji
elementów z listy. Taki generator nie tworzy od razu całej listy jeśli
to nie konieczne (np. w pętli for nie jest to konieczne), ale posiada
metodę list(), która tworzy listę. Przekonajmy się sami jak działa :

``` {.sourceCode .python}
sage: from  sympy import Eijk
```

``` {.sourceCode .python}
sage: CartesianProduct([1,2,3],[1,2,3],[1,2,3],[1,2,3]).list()
[[1, 1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 3], [1, 1, 2, 1], [1, 1, 2, 2], [1, 1, 2, 3], [1, 1, 3, 1], [1, 1, 3, 2], [1, 1, 3, 3], [1, 2, 1, 1], [1, 2, 1, 2], [1, 2, 1, 3], [1, 2, 2, 1], [1, 2, 2, 2], [1, 2, 2, 3], [1, 2, 3, 1], [1, 2, 3, 2], [1, 2, 3, 3], [1, 3, 1, 1], [1, 3, 1, 2], [1, 3, 1, 3], [1, 3, 2, 1], [1, 3, 2, 2], [1, 3, 2, 3], [1, 3, 3, 1], [1, 3, 3, 2], [1, 3, 3, 3], [2, 1, 1, 1], [2, 1, 1, 2], [2, 1, 1, 3], [2, 1, 2, 1], [2, 1, 2, 2], [2, 1, 2, 3], [2, 1, 3, 1], [2, 1, 3, 2], [2, 1, 3, 3], [2, 2, 1, 1], [2, 2, 1, 2], [2, 2, 1, 3], [2, 2, 2, 1], [2, 2, 2, 2], [2, 2, 2, 3], [2, 2, 3, 1], [2, 2, 3, 2], [2, 2, 3, 3], [2, 3, 1, 1], [2, 3, 1, 2], [2, 3, 1, 3], [2, 3, 2, 1], [2, 3, 2, 2], [2, 3, 2, 3], [2, 3, 3, 1], [2, 3, 3, 2], [2, 3, 3, 3], [3, 1, 1, 1], [3, 1, 1, 2], [3, 1, 1, 3], [3, 1, 2, 1], [3, 1, 2, 2], [3, 1, 2, 3], [3, 1, 3, 1], [3, 1, 3, 2], [3, 1, 3, 3], [3, 2, 1, 1], [3, 2, 1, 2], [3, 2, 1, 3], [3, 2, 2, 1], [3, 2, 2, 2], [3, 2, 2, 3], [3, 2, 3, 1], [3, 2, 3, 2], [3, 2, 3, 3], [3, 3, 1, 1], [3, 3, 1, 2], [3, 3, 1, 3], [3, 3, 2, 1], [3, 3, 2, 2], [3, 3, 2, 3], [3, 3, 3, 1], [3, 3, 3, 2], [3, 3, 3, 3]]
```

``` {.sourceCode .python}
sage: len(CartesianProduct([1,2,3],[1,2,3],[1,2,3],[1,2,3]).list())
81
```

Zwężony iloczyn epsilonów, dowód przez sprawdzenie wszystkich kombinacji.
=========================================================================

``` {.sourceCode .python}
sage: from sympy import Eijk
sage: for j,k,m,n in CartesianProduct([1,2,3],[1,2,3],[1,2,3],[1,2,3]):
...       eps = sum([Eijk(j,k,i)*Eijk(i,m,n) for i in [1,2,3]])
...       deltas = kronecker_delta(j,m)*kronecker_delta(k,n) - kronecker_delta(j,n)*kronecker_delta(k,m)
...       if eps!=deltas:
...           print j,k,m,n,eps,deltas
...       else:
...           pass #print j,k,m,n,"OK"
```

Podwójnie zwężony iloczyn epsilonów, dowód przez sprawdzenie wszystkich kombinacji.
===================================================================================

``` {.sourceCode .python}
sage: from  sympy import Eijk
sage: for k,n in CartesianProduct([1,2,3],[1,2,3]):
...       eps = sum([Eijk(i,j,k)*Eijk(i,j,n) for i in [1,2,3] for j in [1,2,3]])
...       deltas = 2* kronecker_delta(k,n)
...       if eps!=deltas:
...           print k,n,eps,deltas
...       else:
...           print k,n,"OK"
1 1 OK
1 2 OK
1 3 OK
2 1 OK
2 2 OK
2 3 OK
3 1 OK
3 2 OK
3 3 OK
```

Potrójnie zwężony iloczyn epsilonów, dowód przez sprawdzenie wszystkich kombinacji.
===================================================================================

``` {.sourceCode .python}
sage: eps = sum([Eijk(i,j,k)*Eijk(i,j,k) for i in [1,2,3] for j in [1,2,3] for k in [1,2,3]])
sage: print eps
6
```
