
Permutations
------------

Groups of Permutations
~~~~~~~~~~~~~~~~~~~~~~

*Permutacja* skończonego zbioru :math:`\,X=\{1,2,\dots,n\}\,` 
jest (wzajemnie jednoznacznym) :math:`\\` odwzorowaniem tego zbioru na siebie.

Zbiór wszystkich permutacji zbioru :math:`\,X=\{1,2,\dots,n\}\,` oznaczamy :math:`\,S_n.`

Wygodnym sposobem przedstawienia permutacji :math:`\,\sigma\in S_n\,` jest zapis dwuwierszowy:

.. math::
   
   \sigma\ =\ \left(\begin{array}{cccc} 
                        1     &     2     & \dots &     n     \\
                    \sigma(1) & \sigma(2) & \dots & \sigma(n)
                    \end{array}\right)\,,

gdzie w górnym wierszu wypisane są argumenty, 
a w dolnym :math:`\ ` - :math:`\ ` odpowiednie obrazy.

Kolejność argumentów jest dowolna, 
ważne jest tylko to, aby pod każdym z nich wystąpił właściwy obraz, na przykład:

.. math::
   
   \left(\begin{array}{cccc} 1 & 2 & 3 & 4 \\
                             3 & 1 & 2 & 4 \end{array}\right)\ =\
   \left(\begin{array}{cccc} 2 & 3 & 4 & 1 \\
                             1 & 2 & 4 & 3 \end{array}\right)\ =\ 
   \left(\begin{array}{cccc} 4 & 1 & 2 & 3 \\
                             4 & 3 & 1 & 2 \end{array}\right)\ =\ \dots

Permutacje można składać na zasadzie składania odwzorowań: :math:`\\`
jeżeli :math:`\,\rho,\sigma\in S_n,\ ` 
to złożenie :math:`\,\rho\circ\sigma\,` określone jest przez:

.. math::
   
   (\rho\circ\sigma)(k)\ =\ \rho\,[\,\sigma(k)\,]\,,\qquad k\in\{1,2,\dots,n\}\,.

W zapisie dwuwierszowym:

.. math::

   \rho\circ\sigma\ =\    
   \left(\begin{array}{cccc} 
            1    &    2    & \dots &    n     \\
         \rho(1) & \rho(2) & \dots & \rho(n)
         \end{array}\right)\ \circ\ 
   \left(\begin{array}{cccc} 
             1     &     2     & \dots &     n     \\
         \sigma(1) & \sigma(2) & \dots & \sigma(n)
         \end{array}\right)\ =

   =\ 
   \left(\begin{array}{cccc} 
                1       &         2       & \dots &         n       \\
         \rho\,[\sigma(1)] & \rho\,[\sigma(2)] & \dots & \rho\,[\sigma(n)]
         \end{array}\right)\,.

Należy zwrócić uwagę na kolejność wykonywania operacji: :math:`\\`
dla każdej liczby :math:`\,k\in\{1,2,\dots,n\}\,` najpierw wyznaczamy obraz :math:`\,k\,`
przy permutacji :math:`\,\sigma,\ ` :math:`\\` 
a następnie :math:`\,` - :math:`\,` obraz otrzymanego wyniku przy permutacji :math:`\,\rho.\ ` 
Przykład dla :math:`\,n=5:`
 
.. math::
   
   \left(\begin{array}{ccccc} 1 & 2 & 3 & 4 & 5 \\
                              4 & 1 & 3 & 5 & 2 \end{array}\right)\ \circ\ 
   \left(\begin{array}{ccccc} 1 & 2 & 3 & 4 & 5 \\
                              2 & 5 & 1 & 3 & 4 \end{array}\right)\ =\ 
   \left(\begin{array}{ccccc} 1 & 2 & 3 & 4 & 5 \\
                              1 & 2 & 4 & 3 & 5 \end{array}\right)\,.

   \;

**Twierdzenie.** :math:`\,` 
Struktura :math:`\ \left(\,S_n,\,\circ\,\right)\ ` jest grupą :math:`\ \ (n=1,2,\dots).`

**Dowód.**

0. Złożenie dwóch permutacji ze zbioru :math:`\,S_n\,` 
   jest również permutacją należącą do tego zbioru.
   Oznacza to, że składanie permutacji :math:`\,\circ\,` jest działaniem w zbiorze :math:`\,S_n.`

1. Składanie permutacji, jako składanie odwzorowań, jest łączne. :math:`\\`
   Rzeczywiście, :math:`\,` jeżeli :math:`\,\rho,\sigma,\tau\in S_n,\ ` 
   to dla każdego :math:`\,k\in\{1,2,\dots,n\}:`

   .. math::
      
      [\,\rho\circ(\sigma\circ\tau)\,]\,(k)
      \ =\ 
      \rho\,[\,(\sigma\circ\tau)(k)\,]
      \ =\ 
      \rho\,\{\,\sigma\,[\,\tau(k)\,]\,\}\,,

      [\,(\rho\circ\sigma)\circ\tau\,]\,(k)
      \ =\ 
      (\rho\circ\sigma)\,[\,\tau(k)\,]
      \ =\ 
      \rho\,\{\,\sigma\,[\,\tau(k)\,]\,\}\,.

   Wobec tego 
   :math:`\qquad\quad\rho\circ(\sigma\circ\tau)\ =\ 
   (\rho\circ\sigma)\circ\tau\,,\qquad\rho,\sigma,\tau\in S_n\,.`

2. Elementem neutralnym dla składania jest permutacja identycznościowa:

   .. math::
      
      \text{id}\ =\ \left(\begin{array}{cccccc}
                    1 & 2 & 3 & \dots & n \\
                    1 & 2 & 3 & \dots & n \end{array}\right)\,.

   Faktycznie, łatwo sprawdzić, że 
   :math:`\quad\sigma\circ\text{id}\ =\ \text{id}\circ\sigma\ =\ \sigma\,,\quad\sigma\in S_n.`

3. Dla każdej permutacji :math:`\ \sigma\in S_n\ ` istnieje permutacja odwrotna
   :math:`\ \sigma^{-1}\in S_n\ ` taka, :math:`\\` 
   że :math:`\ \ \sigma\circ\sigma^{-1}\ =\ \,\sigma^{-1}\circ\,\sigma\ =\ \text{id}\,.\ `
   Mianowicie,

   .. math::
      
      \text{jeżeli}\quad
      \sigma\ =\ \left(\begin{array}{cccccc} 1  &  2  &  3  & \dots &  n \\
                                            a_1 & a_2 & a_3 & \dots & a_n \end{array}\right)\,,
      \quad\text{to}\quad\ 
      \sigma^{-1}\ =\ \left(\begin{array}{cccccc} a_1 & a_2 & a_3 & \dots & a_n \\
                                                   1  &  2  &  3  & \dots &  n \end{array}\right)\,.

W dalszym ciągu będziemy opuszczać symbol :math:`\,\circ\ ` składania permutacji,
a złożenie permutacji będziemy nazywać ich iloczynem:

.. math::
   
   \rho\circ\sigma\ \rightarrow\ \rho\,\sigma\,.

Grupa :math:`\ S_n\ ` liczy :math:`\,n!\,` permutacji, :math:`\,` 
przy czym dla :math:`\,n>2\,` jest to grupa nieprzemienna.

Cyclic Permutations and Parity
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Permutacja :math:`\ \sigma\in S_n\ ` jest *cyklem* :math:`\,k`-*wyrazowym*,
gdy w zbiorze :math:`\,X=\{1,2,\dots,n\}\,` 
istnieje podzbiór :math:`\ Y=\{a_1,a_2,\dots,a_k\}\ ` taki, że

.. math::
   
   \sigma(a_1)=a_2,\quad\sigma(a_2)=a_3,\quad\dots,\quad\sigma(a_{k-1})=a_k,\quad\sigma(a_k)=a_1,

   \text{oraz}\qquad\sigma(i)=i\qquad\text{dla}\qquad i\notin Y\,.

Taki cykl zapisujemy jako :math:`\ \sigma=(a_1,a_2,\dots,a_k)\ `
pomijając wyrazy, które przechodzą w siebie. A zatem, w pełnym zapisie

.. math::
   
   S_n\,\ni\,(a_1,a_2,\dots,a_k)\ =\ 
   \left(\begin{array}{ccccccccc} 
   a_1 & a_2 & \dots & a_{k-1} & a_k & a_{k+1} & \dots & a_{n-1} & a_n \\
   a_2 & a_3 & \dots &   a_k   & a_1 & a_{k+1} & \dots & a_{n-1} & a_n
   \end{array}\right)\,.

Przykład: 
:math:`\quad
\left(\begin{array}{cccccc}
1 & 2 & 3 & 4 & 5 & 6 \\
1 & 6 & 4 & 2 & 5 & 3 \end{array}\right)\ =\ 
\left(\begin{array}{cccccc}
2 & 6 & 3 & 4 & 1 & 5 \\
6 & 3 & 4 & 2 & 1 & 5 \end{array}\right)\ =\ (2,6,3,4)\,.`

Natomiast permutacja 
:math:`\quad
\left(\begin{array}{ccccc}
1 & 2 & 3 & 4 & 5 \\
3 & 1 & 2 & 5 & 4 \end{array}\right)\ =\ 
\left(\begin{array}{ccccc}
1 & 3 & 2 & 4 & 5 \\
3 & 2 & 1 & 5 & 4 \end{array}\right)\quad`
nie jest cyklem.

Przy jednowierszowym zapisie permutacji cyklicznej można przestawić pierwszy wyraz na ostatnie miejsce bądź ostatni na miejsce pierwsze, np.:

.. math::
   
   (2,6,3,4)\ =\ (6,3,4,2)\ =\ (3,4,2,6)\ =\ (4,2,6,3)\,.

Cykl 1-wyrazowy jest permutacją identycznościową:

.. math::
   
   S_n\,\ni\,\text{id}\ =\ (1)\ =\ (2)\ =\ \dots\ =\ (n)\,.

Cykl 2-wyrazowy :math:`\ \tau_{ij}=(i,j)=(j,i)\ ` nazywamy *transpozycją*. Przykład:

.. math::
   
   S_6\,\ni\,\tau_{25}\ =\ (2,5)\ =\ \left(\begin{array}{cccccc}
                                     1 & 2 & 3 & 4 & 5 & 6 \\
                                     1 & 5 & 3 & 4 & 2 & 6 \end{array}\right)\,.

Cykl :math:`\,k`-wyrazowy można zapisać w postaci iloczynu :math:`\ k-1\ ` transpozycji
:math:`\ (k\geq 2):`

.. math::
   
   (a_1,a_2,a_3,\dots,a_{k-1},a_k)\ =\ (a_1,a_k)(a_1,a_{k-1},\ \dots,\ (a_1,a_3)(a_1,a_2)\,.

**Uwaga:** :math:`\,` kolejność czynników po prawej stronie jest istotna!

Dwa cykle, :math:`\ \rho=(a_1,a_2,\dots,a_k),\ \sigma=(b_1,b_2,\dots,b_l)\in S_n\,,\ `
są *rozłączne*, gdy odpowiadające im podzbiory 
:math:`\ Y_{\rho}=\{a_1,a_2,\dots,a_k\},` :math:`\ Y_{\sigma}=\{b_1,b_2,\dots,b_l\}\ `
są rozłączne: :math:`\ Y_{\rho}\cap Y_{\sigma}=\emptyset\,.\ \,`
Dla przykładu, w grupie :math:`\ S_7\ ` cykle :math:`\ (3,6,2)\ \ \text{i}\ \ (1,7,4,5)\ `
są rozłączne, a cykle :math:`\ (4,2,5,1)\ \ \text{i}\ \ (3,1,6,2)\ ` nie są rozłączne.
Zauważmy, że jeżeli cykle :math:`\ \rho\ \ \text{i}\ \ \sigma\ ` są rozłączne, 
to w iloczynie są przemienne: :math:`\ \rho\,\sigma=\sigma\,\rho\,.`

**Twierdzenie.** :math:`\\`
Każda permutacja jest cyklem albo może być przedstawiona w postaci iloczynu cykli rozłącznych.
Przedstawienie takie jest jednoznaczne z dokładnością do kolejności czynników.

Przykład:
:math:`\quad\left(\begin{array}{cccccccccc}
1 & 2 & 3 & 4 & 5 & 6 & 7 &  8 & 9 & 10 \\
6 & 2 & 4 & 3 & 5 & 9 & 8 & 10 & 1 &  7 \end{array}\right)\ =\ 
(1,6,9)(3,4)(7,8,10)\,.`

**Wniosek.** :math:`\\`
Każdą permutację :math:`\ \sigma\in S_n,\ ` gdzie :math:`\ n\geq 2,\ `
można przedstawić w postaci iloczynu transpozycji (przedstawienie takie nie jest jednoznaczne).
Przykład:

.. math::
   :label: ex
   
   \left(\begin{array}{ccccc}
   1 & 2 & 3 & 4 & 5 \\
   2 & 5 & 4 & 3 & 1 \end{array}\right)\ =\ (1,2,5)(3,4)\ =

   =\ (1,5)(1,2)(3,4)\ =\ (1,3)(3,4)(4,5)(2,4)(1,4)\,.

**Twierdzenie.** :math:`\,`
Jeżeli permutacja :math:`\ \sigma\in S_n\ ` ma dwa różne rozkłady na iloczyn transpozycji:

.. math::
   
   \sigma\ =\ \tau_1\,\tau_2\,\dots\,\tau_r\ =\ \tau'_1\,\tau'_2\,\dots\,\tau'_s\,,

to :math:`\quad (-1)^r\,=\ (-1)^s\,.`

**Wniosek.** :math:`\\`
Jakkolwiek rozkład danej permutacji na iloczyn transpozycji nie jest jednoznaczny, 
to jednak przy każdym takim rozkładzie parzystość liczby czynników jest taka sama.
Pozwala to określić funkcję 
:math:`\,` - :math:`\,` znak permutacji sgn (od łac. signum) :math:`\,` - :math:`\,` następująco:

.. math::
   
   \text{sgn}:\qquad S_n\,\ni\,\sigma\quad\rightarrow
   \quad\text{sgn}\,\sigma\ :\,=\ (-1)^r\,\in\,\{-1,1\}\,,

gdzie :math:`\,r\,` jest liczbą czynników w dowolnym rozkładzie permutacji :math:`\ \sigma\ `
na iloczyn transpozycji.
Dodatkowo umawiamy się, że jeśli :math:`\ \sigma\in S_1\ ` (wtedy :math:`\,\sigma=\text{id}`),
:math:`\ ` to z definicji :math:`\,\text{sgn}\,\sigma = +1.`

Permutacja :math:`\ \sigma\in S_n\ ` jest *parzysta*, gdy :math:`\,\text{sgn}\,\sigma = +1\,,\ `
oraz jest *nieparzysta*, gdy :math:`\,\text{sgn}\,\sigma = -1\,.`

Na tej zasadzie permutacja w równaniu :eq:`ex` jest nieparzysta. 

**Twierdzenie.** :math:`\\`
W grupie :math:`\,S_n\ ` jest tyle samo permutacji parzystych, co nieparzystych :math:`\,(n>1).\\`

Rozkład permutacji na iloczyn transpozycji można posunąć dalej, wykorzystując

**Twierdzenie.** :math:`\\`
Każda transpozycja jest iloczynem nieparzystej ilości transpozycji liczb sąsiednich.

**Dowód.** :math:`\,` Niech :math:`\,i<j.\ ` Teza wynika z równości

.. math::
   
   \begin{array}{ccc}
   (i,j) & = & (i,i+1)\,(i+1,i+2)\,\dots\,(j-2,j-1)\,\circ \\
         &   & \circ\,(j-1,j)\,\circ                       \\
         &   & \circ\,(j-1,j-2)\,\dots\,\,(i+2,i+1)\,(i+1,i)\,,
   \end{array}

w której po prawej stronie występuje :math:`\,2(j-i-1)+1=2(j-i)-1\ ` czynników, będących transpozycjami liczb sąsiednich. 
Równość tę można sprawdzić bezpośrednio, porównując obrazy wszystkich liczb 
:math:`\,k\in\{1,2,\dots,n\}\ ` przy zastosowaniu permutacji po lewej i prawej stronie.

**Przykład.**

.. math::
   
   (1,4)\ =\ (1,2)\,(2,3)\,(3,4)\,(3,2)\,(2,1)\ =\ (1,2)\,(2,3)\,(3,4)\,(2,3)\,(1,2)\,.

**Wniosek.** :math:`\,` 
Każdą permutację :math:`\,\sigma\in S_n\ ` 
można zapisać w postaci iloczynu transpozycji liczb sąsiednich :math:`\,(n>1)`.


















                                               
















