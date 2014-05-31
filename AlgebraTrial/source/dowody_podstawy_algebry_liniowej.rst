
Podstawy algebry liniowej
-------------------------

.. admonition:: Twierdzenie.
   
   Jeżeli w przestrzeni wektorowej istnieje baza :math:`\,n`-elementowa,
   to każdy układ liczący więcej niż :math:`\,n\,` wektorów jest liniowo zależny.

**Dowód.**

Załóżmy, że układ :math:`\ \mathcal{B}\,=\,(v_1,v_2,\ldots,v_n)\ ` 
jest bazą przestrzeni :math:`\,V(K).\ `

Trzeba pokazać, że dla :math:`\ p>n\ ` każdy układ :math:`\ \mathcal{C}=(w_1,w_2,\ldots,w_p)\ `
jest liniowo zależny.

Warunek ten oznacza, że istnieje nietrywialna kombinacja liniowa wektorów
:math:`\ w_1,w_2,\ldots,w_p\ ` równa wektorowi zerowemu :math:`\,\theta,\ ` czyli że równanie

.. math::
   :label: eqn_theta
   
   c_1\ w_1\ +\ c_2\ w_2\ +\ \ldots\ +\ c_p\ w_p\ =\ \theta

na współczynniki :math:`\ c_1,\,c_2,\,\ldots,\,c_p\in K\ \,` ma rozwiązania niezerowe.

Każdy z wektorów :math:`\ w_j\ ` można zapisać w postaci 
kombinacji liniowej wektorów bazy :math:`\ \mathcal{B}:`

.. math::
   :label: eqn_wj
   
   w_j\ =\ \sum_{i\,=\,1}^n\ a_{ij}\,v_i\,,\qquad j=1,2,\ldots,p.

Tutaj :math:`\ a_{1j},\,a_{2j},\,\ldots,\,a_{nj}\ ` są współrzędnymi wektora :math:`\ w_j\ `
w bazie :math:`\ \mathcal{B},\quad j=1,2,\ldots,p.`

Wstawiamy :eq:`eqn_wj` do :eq:`eqn_theta` i zapisujemy lewą stronę równania :eq:`eqn_theta`
w postaci kombinacji liniowej wektorów bazy :math:`\ \mathcal{B}:`

.. math::
   
   \sum_{j\,=\,1}^p\ c_j\,w_j\ \ =\ \ 
   \sum_{j\,=\,1}^p\ c_j\;\left(\ \sum_{i\,=\,1}^n\ a_{ij}\,v_i\right)\ \ =\ \  
   \sum_{i\,=\,1}^n\ \left(\ \sum_{j\,=\,1}^p\ a_{ij}\,c_j\right)\ v_i\ \ =

   \ \ =\ \ 
   \left(\ \sum_{j\,=\,1}^p\,a_{1j}\,c_j\right)\ v_1\ \ +\ \ 
   \left(\ \sum_{j\,=\,1}^p\,a_{2j}\,c_j\right)\ v_2\ \ +\ \ 
   \dots\ \ +\ \ 
   \left(\ \sum_{j\,=\,1}^p\,a_{nj}\,c_j\right)\ v_n\ \ =\ \ \theta\,. 
   
Wektory bazy :math:`\ v_1,\,v_2,\,\ldots,\,v_n\ ` są liniowo niezależne. 
Przyrównanie do wektora zerowego :math:`\,\theta\,` ich kombinacji liniowej 
implikuje zerowanie się współczynników tej kombinacji:

.. math::
   
   \sum_{j\,=\,1}^p\ a_{ij}\ c_j\ \,=\ \,0\,,\qquad i=1,2,\ldots,n.

Po rozpisaniu otrzymujemy układ równości

.. math::
   
   \begin{array}{l}
   a_{11}\ c_1\ +\ \,a_{12}\ c_2\ +\ \,\dots\ \,+\ \,a_{1p}\ c_p\ \,=\ \ 0 \\
   a_{21}\ c_1\ +\ \,a_{22}\ c_2\ +\ \,\dots\ \,+\ \,a_{2p}\ c_p\ \,=\ \ 0 \\
   \ \ \dots\qquad\quad\dots\qquad\,\dots\qquad\ \dots\qquad\ \dots\quad         \\
   a_{n1}\ c_1\ +\ \,a_{n2}\ c_2\ +\ \,\dots\ \,+\ \,a_{np}\ c_p\ \,=\ \ 0
   \end{array}
   \,,

który jest jednorodnym układem :math:`\,n\,` równań liniowych 
na :math:`\,p\,` niewiadomych :math:`\ c_1,\,c_2,\,\ldots,\,c_p\,,\ `
gdzie liczba równań jest mniejsza od liczby niewiadomych.

Taki układ ma rozwiązania niezerowe.
Rzeczywiście, rozwiązanie układu metodą eliminacji Gaussa polega na zastosowaniu operacji elementarnych na wierszach macierzy współczynników w celu doprowadzenia jej do zredukowanej postaci schodkowej.
Następnie niewiadome, odpowiadające kolumnom bez jedynek wiodących przyjmuje się za dowolne parametry, przez które wyrażają się pozostałe niewiadome (odpowiadające kolumnom z jedynkami wiodącymi).
Liczba parametrów jest różnicą liczby niewiadomych i liczby jedynek wiodących,
przy czym ta druga liczba (równa rzędowi macierzy współczynników) 
jest nie większa od liczby równań.
Jeżeli równań jest mniej niż niewiadomych, to liczba parametrów jest dodatnia, 
a to właśnie oznacza istnienie rozwiązań niezerowych. :math:`\\`

.. admonition:: Wniosek 1.
   
   Jeżeli w przestrzeni wektorowej istnieje baza :math:`\,n`-elementowa,
   to każda baza tej przestrzeni liczy :math:`\,n\ ` elementów.

Dla dowodu przypuśćmy, że przestrzeń :math:`\,V(K)\,` ma dwie bazy:
bazę :math:`\ \mathcal{B}\ ` o :math:`\,n\,` elementach oraz 
bazę :math:`\ \mathcal{C}\ ` o :math:`\,m\,` elementach.

Gdyby :math:`\,n>m,\ ` to układ :math:`\ \mathcal{B}\ ` byłby liniowo zależny (sprzeczność).
:math:`\,` A zatem :math:`\ \,n\le m.`

Gdyby :math:`\,m>n,\ ` to układ :math:`\ \mathcal{C}\ ` byłby liniowo zależny (sprzeczność).
:math:`\,` A zatem :math:`\ \,m\le n.`

Tak więc jednocześnie :math:`\ \,n\le m\ \ \text{i}\ \ m\le n,\ \,` skąd :math:`\ \,m=n.` 

Wniosek 1. pozwala na wprowadzenie pojęcia wymiaru przestrzeni wektorowej jako liczby elementów dowolnej skończonej bazy przestrzeni (o ile taka skończona baza istnieje). :math:`\\`

.. admonition:: Wniosek 2.
   
   W przestrzeni :math:`\,n`-wymiarowej każdy układ liczący więcej niż :math:`\,n\,` wektorów
   jest liniowo zależny.

.. admonition:: Wniosek 3.
   
   W przestrzeni :math:`\,n`-wymiarowej każdy liniowo niezależny układ :math:`\,n\,` wektorów jest 
   bazą.

Istotnie, wobec Wniosku 2. taki liniowo niezależny układ :math:`\,n\,` wektorów jest maksymalnym liniowo niezależnym układem, czyli jest bazą.


