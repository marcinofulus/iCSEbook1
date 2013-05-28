Zasada d'Alemberta
------------------ 


Zasada d'Alemberta jest podejściem umożliwiającym wyprowadzenie równań
ruchu dla układów punktów materialnych z więzami.


Rozważmy ruch układu :math:`N` punktów materialnych podlegającym
:math:`p` więzom:


.. MATH::

     \sum_{j=1}^{3N} (m_j \ddot x_j - F_j)\delta x_j =0


równania więzów holonomicznych są dane przez :math:`p` funkcji:



.. MATH::

     f_k(x, t) = 0


a wielkości :math:`\delta x_j`, są dowolnymi liczbami spełniającymi:



.. MATH::
   :label: fdx

    \sum_{j=1}^{3N} \frac{\partial f_k}{\partial x_j} \delta x_j,\quad k=1,2,...,p. 


Równania :eq:`fdx` tworzą jednorodny układ :math:`p` równań liniowych na
:math:`3N` przesunięć wirtualnych :math:`\delta x_j`: p przesunięć
można wyrazić przez :math:`3N-p` pozostałych które są dowolne.


Wstawiając te wyrażenia to równań d'Alemberta otrzymujemy z warunku
znikania współczynników przy niezależnych przesunięciach wirtualnych
układ :math:`3N-p` równań różniczkowych. Razem z równaniami więzów
mamy w sumie :math:`3N` równań na :math:`3N` nie wiadomych
:math:`x_j`.


Ponieważ jest to układ równań algebraicznych (więzy) i różniczkowych
nosi on nazwę układu równań algebraiczno\-różniczkowych
(ang. algebraic\-differential equations \- DAE).


Jednym ze sposobów rozwiązania takiego układu jest zróżniczkowanie
równania więzów i rozwiązanie tak powstałego układu równań
różniczkowych zwyczajnych.


Drugą możliwością jest dokonanie zamiany współrzędnych do takich w
których znika :math:`p` przesunięć wirtualnych. Sa to tak zwane
współrzędne zgodne z więzami. W takim przypadku procedura znacznie się
upraszcza i :math:`p` składków formy różniczkowych znika i od razu
otrzymujemy układ :math:`3N-p` równań różniczkowych drugiego rzędu.


