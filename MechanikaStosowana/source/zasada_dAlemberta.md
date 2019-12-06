---
title: 'Zasada d''Alemberta'
---

Zasada d'Alemberta jest podejściem umożliwiającym wyprowadzenie równań
ruchu dla układów punktów materialnych z więzami.

Rozważmy ruch układu $N$ punktów materialnych podlegającym $p$ więzom:

$$\sum_{j=1}^{3N} (m_j \ddot x_j - F_j)\delta x_j =0$$

równania więzów holonomicznych są dane przez $p$ funkcji:

$$f_k(x, t) = 0$$

a wielkości $\delta x_j$, są dowolnymi liczbami spełniającymi:

$$\sum_{j=1}^{3N} \frac{\partial f_k}{\partial x_j} \delta x_j,\quad k=1,2,...,p.$$

Równania fdx tworzą jednorodny układ $p$ równań liniowych na $3N$
przesunięć wirtualnych $\delta x_j$: p przesunięć można wyrazić przez
$3N-p$ pozostałych które są dowolne.

Wstawiając te wyrażenia to równań d'Alemberta otrzymujemy z warunku
znikania współczynników przy niezależnych przesunięciach wirtualnych
układ $3N-p$ równań różniczkowych. Razem z równaniami więzów mamy w
sumie $3N$ równań na $3N$ niewiadomych $x_j$.

Ponieważ jest to układ równań algebraicznych (więzy) i różniczkowych
nosi on nazwę układu równań algebraiczno-różniczkowych (ang.
algebraic-differential equations - DAE).

Jednym ze sposobów rozwiązania takiego układu jest zróżniczkowanie
równania więzów i rozwiązanie tak powstałego układu równań różniczkowych
zwyczajnych.

Drugą możliwością jest dokonanie zamiany współrzędnych do takich w
których znika $p$ przesunięć wirtualnych. Sa to tak zwane współrzędne
zgodne z więzami. W takim przypadku procedura znacznie się upraszcza i
$p$ składków formy różniczkowych znika i od razu otrzymujemy układ
$3N-p$ równań różniczkowych drugiego rzędu.
