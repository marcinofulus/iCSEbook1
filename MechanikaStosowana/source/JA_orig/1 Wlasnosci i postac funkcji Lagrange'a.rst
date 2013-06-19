Własności i postać funkcji Lagrange'a
=====================================

Własności funkcji Lagrange'a
----------------------------


1.) Pomnożenie  funkcji  Lagrange'a  przez  stały  czynnik  nie  zmienia  równań  ruchu.

Niech

.. math::

   L'(q,\dot q,t) = aL(q,\dot q,t), \quad S[q] = \int_{t_{ 1} }^{t_{ 2} } {L(q,\dot q,t)} dt, \quad S'[q] = \int_{t_{ 1} }^{t_{ 2} } {L'(q,\dot q,t)} dt.


Wtedy

.. math::

   \begin{array}{c}
   \delta S'[q] = \delta \int_{t_{ 1} }^{t_{ 2} } {L'(q,\dot q,t)} dt = \delta \int_{t_{ 1} }^{t_{ 2} } {aL(q,\dot q,t)} dt =  \\ 
   = \delta \left[ {a\int_{t_{ 1} }^{t_{ 2} } {L(q,\dot q,t)} dt} \right] = a\delta \int_{t_{ 1} }^{t_{ 2} } {L(q,\dot q,t)} dt = a\delta S[q]. \\ 
   \end{array}


A  zatem

.. math::

   \delta S'[q] = 0 \quad \Leftrightarrow \quad \delta S[q] = 0.


To  samo  wynika  również  z  jednorodności  równań  Lagrange'a:

.. math::

   \frac{d}{{dt}}\frac{{\partial L}}{{\partial \dot q_{ l} }} - \frac{{\partial L}}{{\partial q_{ l} }} = 0, \quad l = 1,2, \ldots ,f.


**Wniosek**:  Funkcja  Lagrange'a  jest  określona  z  dokładnością  do  stałego  współczynnika.


2.) Rozważmy  dwa  układy  mechaniczne,  :math:`A`  i  :math:`B`,  z  których  każdy  wzięty  z  osobna  ma  swoją  funkcję  Lagrange'a,  odpowiednio:  :math:`L_A (q_A ,\dot q_A ,t)` oraz :math:`L_B (q_B ,\dot q_B ,t)`.  Jeżeli  układy  są  na  tyle  odległe  od  siebie,  że  ich  oddziaływanie  można  zaniedbać,  to  równania  ruchu  każdej  z  części  nie  powinny  zawierać  zmiennych  odnoszących  się  do  drugiej  części.  Tak  będzie,  gdy  funkcja  Lagrange'a  całości  będzie  sumą  funkcji  Lagrange'a   podukładów:

.. math::

   L_{AB} (q_A ,q_B ,\dot q_A ,\dot q_B ,t) = L_A (q_A ,\dot q_A ,t) + L_B (q_B ,\dot q_B ,t).


**Wniosek**:  Funkcja  Lagrange'a  układów  nieoddziaływujących  jest  sumą  funkcji  	poszczególnych  składowych.


3.) Dodanie  do  funkcji  Lagrange'a  zupełnej  pochodnej  czasowej  dowolnej  funkcji  współrzędnych i  czasu  nie  zmienia  równań  ruchu.

Niech

.. math::

   L'(q,\dot q,t) = L(q,\dot q,t) + \frac{d}{{dt}}f(q,t), \quad S[q] = \int_{t_{ 1} }^{t_{ 2} } {L(q,\dot q,t)} dt, \quad S'[q] = \int_{t_{ 1} }^{t_{ 2} } {L'(q,\dot q,t)} dt.


Wtedy

.. math::

   S'[q] = \int_{t_{ 1} }^{t_{ 2} } {L'(q,\dot q,t)} dt = \int_{t_{ 1} }^{t_{ 2} } {L(q,\dot q,t)} dt +  = S[q] + f\left[ {q(t_{ 2} ),t_2 } \right] - f\left[ {q(t_{ 1} ),t_1 } \right].


Całki  działania  :math:`S`  i  :math:`S'`  różnią  się  od  siebie  o  wyrazy  znikające  przy  wariowaniu  działania, czyli

.. math::

   \delta S'[q] = 0 \quad \Leftrightarrow \quad \delta S[q] = 0.


Równania  ruchu,  otrzymane  z  całek  działania  :math:`S`  i  :math:`S'`  są  także  równoważne.

**Wniosek**:  Funkcja  Lagrange'a  jest  określona  tylko  z  dokładnością  do  addytywnej  funkcji będącej  zupełną  pochodną  dowolnej  funkcji  współrzędnych  i  czasu.


Postać  funkcji  Lagrange'a
---------------------------


1.) Funkcja  Lagrange'a  swobodnego  punktu  materialnego.

W  inercjalnym  układzie  odniesienia  przestrzeń  jest  jednorodna  i  izotropowa,  a  czas  jest  jednorodny.  Wobec  tego  funkcja  Lagrange'a  pojedynczego,  swobodnego  i  nie  oddziałującego  z  niczym  punktu  materialnego  nie  powinna  zależeć  od  położenia,  czasu  ani  od  kierunku  prędkości,  może  więc  zależeć  tylko  od  bezwzględnej  wartości  prędkości,  czyli  od  :math:`v^2`:

.. math::

   L = L(v^{ 2} ).


Dokładniejszą  postać  tej  zależności  można  wyprowadzić  z  *zasady  względności  Galileusza*:
równania  ruchu  mają  tę  samą  postać  we  wszystkich  inercjalnych  układach  odniesienia.
Niech  wyjściowy  układ  inercjalny  :math:`K`  porusza  się  względem  innego  układu  inercjalnego  :math:`K'` z  nieskończenie  małą  prędkością  :math:`\vec \varepsilon`.

Jeżeli  w  układzie  :math:`K`  cząstka  ma  prędkość  :math:`\vec v`,  to w  układzie  :math:`K'`  jej  prędkość  wynosi   :math:`\vec v' = \vec v + \vec \varepsilon`.

Funkcja  Lagrange'a  cząstki  w  układzie  :math:`K'`:

.. math::

   L'(v'^{ 2} ) = L(\vec v'^{2} ) = L\left[ {(\vec v + \vec \varepsilon )^2 } \right] = L(\vec v^2  + 2\vec v\vec \varepsilon  + \vec \varepsilon ^2 ) = L(\vec v^2 ) + \frac{{\partial L}}{{\partial v^2 }} \cdot 2\vec v\vec \varepsilon  + 0(\varepsilon ^2 ).


Jeżeli  funkcja  :math:`L'(v'^{ 2})`  prowadzi  do  tych  samych  równań  Lagrange'a  co  funkcja :math:`L(v^2)`,  to  różni  się  od  niej  co  najwyżej  o  zupełną  pochodną  pewnej  funkcji  współrzędnej:

.. math::

   \frac{{\partial L}}{{\partial v^2 }} \cdot 2\vec v\vec \varepsilon  \sim \frac{d}{{dt}}f(\vec r) = \frac{d}{{dt}}f(x,y,z) = \frac{{\partial f}}{{\partial x}}\dot x + \frac{{\partial f}}{{\partial y}}\dot y + \frac{{\partial f}}{{\partial z}}\dot z \equiv \frac{{\partial f}}{{\partial \vec r}} \cdot \vec v


Z  porównania  wynika,  że  czynnik  :math:`\frac{{\partial L}}{{\partial v^2 }}`  nie  zależy  od  prędkości,  czyli  funkcja  Lagrange'a  jest  proporcjonalna  do  kwadratu  prędkości  (pomijamy dowolny dodatni składnik):

.. math::

   L(v^{ 2}) = av^{ 2}  \equiv {\textstyle{1 \over 2}}mv^{ 2}.


Tak  wprowadzona  wielkość  :math:`m`  nazywa  się  masą  punktu  materialnego.

Zauważmy,  że  teraz  funkcja  Lagrange'a  jest  niezmiennicza względem  transformacji  Galileusza  również  przy  skończonej  prędkości  względnej  :math:`\vec V`  układów  :math:`K`  i  :math:`K'`. Rzeczywiście,

.. math::

   L'(\vec v'^{2} ) = a\left( {\vec v + \vec V} \right)^2  = av^{ 2}  + 2a\vec v\vec V + aV^2  = L(\vec v^{ 2} ) + \frac{d}{{dt}}\left( {2a\vec r\vec V + aV^2 t} \right).



2.) Funkcja  Lagrange'a   :math:`N`  nieoddziałujących  punktów  materialnych.

Z  własności  addytywności  funkcji  Lagrange'a  dla  nieoddziałujących  podukładów  otrzymujemy:

.. math::

   L(v_1^2 ,v_2^2 , \ldots ,v_N^2 ) = \sum\limits_{i = 1}^N {{\textstyle{1 \over 2}}m_{ i} v_i^2 }.


3.) Funkcja  Lagrange'a  odosobnionego  układu :math:`N` punktów  materialnych  oddziałujących  ze  sobą.

Oddziaływanie  pomiędzy  punktami  materialnymi  układu  można  na  ogół  uwzględnić  dodając  do  funkcji  Lagrange'a  pewną  funkcję  współrzędnych:

.. math::

   L = \sum\limits_{i = 1}^N {{\textstyle{1 \over 2}}m_{ i} v_i^2 }  - U(\vec r_{ 1} ,\vec r_{ 2} , \ldots ,\vec r_{ N} ).


:math:`T: = \sum\limits_{i = 1}^N {{\textstyle{1 \over 2}}m_{ i} v_i^2 }`    –    energia  kinetyczna,     :math:`U(\vec r_{ 1} ,\vec r_{ 2} , \ldots ,\vec r_{ N} )`   –    energia  potencjalna.

W  tej  sytuacji  zmiana  położenia  jednego  punktu  materialnego  wpływa  natychmiast  na  wszystkie  pozostałe.  Można  więc  powiedzieć,  że  oddziaływanie  rozchodzi  się  natychmiastowo,  z  nieskończoną  prędkością.  Ten  stan  rzeczy  wynika  z  przyjęcia  absolutnego  czasu  (upływającego jednakowo we wszystkich układach inercjalnych)  oraz  z  zasady  względności  Galileusza.  Gdyby  oddziaływanie  rozchodziło  się  ze  skończoną  prędkością, to  prędkość  ta  byłaby  różna  w  różnych  poruszających  się  względem  siebie  inercjalnych  układach  odniesienia.  Wtedy  jednak  prawa  ruchu  ciał  oddziałujących  byłyby  różne w  różnych  układach,  co  przeczyłoby  zasadzie  względności.

Przy  transformacji  odwrócenia  czasu:  :math:`t \to  - t`

prędkość  zmienia  znak:  :math:`\vec v_i  \equiv \frac{d}{{dt}}\vec r_{ i}  \to  - \vec v_i , \quad i = 1,2, \ldots ,N`.

Ale  w  funkcji  Lagrange'a  prędkości  występują  w  kwadratach,  a  zatem  sama  funkcja  Lagrange'a  się  nie  zmienia:  jest  niezmiennicza  względem  odwrócenia  czasu.  Oznacza  to, że  jeżeli  w układzie  jest  możliwy  pewien  ruch,  to  możliwy  jest  również  ruch  odwrotny, to  znaczy  taki,  w  którym  układ  będzie  przechodził  przez  te  same  stany,  co  poprzednio, ale w odwrotnej  kolejności.

4.) Funkcja  Lagrange'a  układu  w  polu  zewnętrznym.

Rozważamy  układ  :math:`A`,  oddziałujący  z  układem  :math:`B`,  wykonującym  zadany  z  góry  ruch. Funkcję  Lagrange'a  układu  :math:`A`  otrzymamy  z  funkcji  całego  układu  :math:`A+B` podstawiając  w  niej  w  miejsce  współrzędnych  :math:`q_B`   zadane  funkcje  czasu:

.. math::

   L_A (q_A ,\dot q_A ) = L_{AB} \left[ { q_A ,q_B (t),\dot q_A ,\dot q_B (t) } \right].


Ale

.. math::

   L_{AB} ( q_A ,q_B ,\dot q_A ,\dot q_B ) = T_A (q_A ,\dot q_A ) + T_B (q_B ,\dot q_B ) - U(q_A ,q_B ),


więc,  po  odrzuceniu  zależnego  tylko  od  czasu  wyrazu  :math:`T_B \left[ {q_B (t),\dot q_B (t)} \right]`  (który jest pochodną zupełną jakiejś funkcji czasu)  otrzymujemy

.. math::

   L_A (q_A ,\dot q_A ,t) = T_A (q_A ,\dot q_A ) - U\left[ {q_A ,q_B (t)} \right]


czyli

.. math::

   L_A (q_A ,\dot q_A ,t) = T_A (q_A ,\dot q_A ) - U(q_A ,t).


A  zatem  funkcja  Lagrange'a  układu  w  polu  zewnętrznym  zawiera  energię  potencjalną  zależną  jawnie  od  czasu.

