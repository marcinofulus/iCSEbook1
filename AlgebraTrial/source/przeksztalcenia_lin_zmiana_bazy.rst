
Zmiana bazy przestrzeni wektorowej
----------------------------------

Jeżeli w przestrzeni wektorowej została wybrana baza, to każdy wektor jest jednoznacznie
określony przez swoje współrzędne, a każdy operator liniowy :math:`\,` - :math:`\,` przez 
swoją macierz w tej bazie. W różnych bazach ten sam wektor ma jednak różne współrzędne,
a ten sam operator :math:`\,` - :math:`\,` różne macierze.

W tej sekcji wyprowadzimy wzory, opisujące transformację współrzędnych wektorów 
i macierzy operatorów liniowych przy przejściu od jednej do drugiej bazy.

Macierz przejścia
~~~~~~~~~~~~~~~~~

Niech układy :math:`\ \mathcal{B}\,=\,(v_1,\,v_2,\,\dots,\,v_n)\ ` 
i :math:`\ \,\mathcal{B'}\,=\,(v_1',\,v_2',\,\dots,\,v_n')\ ` będą dwiema bazami
przestrzeni wektorowej :math:`\,V\ ` nad ciałem :math:`\,K.`

.. admonition:: Lemat.
   
   Przekształcenie liniowe :math:`\ T:\,V\rightarrow V,\ ` zadane równaniem 
   
   .. math::
   
      Tv_i\ :\,=\ v_i'\,,\qquad i=1,2,\dots,n,
   
   jest automorfizmem przestrzeni wektorowej :math:`\,V.\ \\`
   Nazywamy go :math:`\,` *automorfizmem przejścia* :math:`\,` 
   od bazy :math:`\ \mathcal{B}\ ` do bazy :math:`\ \mathcal{B'}.`

.. które przekształca wektory bazy :math:`\ \mathcal{B}\ ` w odpowiednie wektory
   bazy :math:`\ \mathcal{B}':`

**Dowód.** :math:`\, \\` 
Zadanie obrazów wektorów bazy :math:`\ \mathcal{B}\ ` określa przekształcenie liniowe :math:`\,T\ ` jednoznacznie (patrz wniosek do Twierdzenia 5.).

Dla dowolnego wektora :math:`\displaystyle\ \,v=\sum_{i\,=\,1}^n\ a_i\,v_i\,\in\,V\ \,` mamy

.. math::
   
   T\,\left(\,\sum_{i\,=\,1}^n\ a_i\,v_i\right)\ \ =\ \ 
   \sum_{i\,=\,1}^n\ a_i\;Tv_i\ \ =\ \ \sum_{i\,=\,1}^n\ a_i\,v_i'\,.


Wektor, którego współrzędnymi w bazie :math:`\ \mathcal{B}\ \,` są 
:math:`\ \,\,a_1,\,a_2,\,\dots,\,a_n\,,\ \,`
jest przekształcony w wektor o tych samych współrzędnych w bazie :math:`\ \mathcal{B}'.\ `
Ponieważ, przy ustalonej bazie, przyporządkowanie wektorom układów współrzędnych 
jest wzajemnie jednoznaczne, 
przekształcenie :math:`\ T\ ` jest endomorfizmem bijektywnym, czyli automorfizmem.

.. admonition:: Definicja.
   
   | *Macierz przejścia* :math:`\ \boldsymbol{S}\ ` 
     od bazy :math:`\ \mathcal{B}\ ` do bazy :math:`\ \mathcal{B}'\ `
     przestrzeni wektorowej :math:`\,V\,` 
   | jest macierzą automorfizmu przejścia :math:`\,T\ ` 
     w bazie :math:`\,\mathcal{B}:\quad\boldsymbol{S}\ :\,=\ M_{\mathcal{B}}(T)\,.`

Niech :math:`\ \boldsymbol{S}\ =\ [\,s_{ij}\,]_{n\times n}\,.\ `
Z definicji macierzy operatora liniowego wynikają związki

.. math::
   :label: base_0

   \begin{array}{lcl}
   & & v_j'\;=\ Tv_j\;=\ \displaystyle\sum_{i\,=\,1}^n\ s_{ij}\:v_i\,,\qquad j=1,2,\dots,n\,, \\ \\
   \text{czyli} & \qquad\quad &
   \begin{array}{l}
   v_1'\ =\ s_{11}\,v_1\,+\ s_{21}\,v_2\,+\ \dots\ +\ s_{n1}\,v_n \\
   v_2'\ =\ s_{12}\,v_1\,+\ s_{22}\,v_2\,+\ \dots\ +\ s_{n2}\,v_n \\
   \ \dots \\
   v_n'\ =\ s_{1n}\,v_1\,+\ s_{2n}\,v_2\,+\ \dots\ +\ s_{nn}\,v_n
   \end{array}
   \end{array}

z których wynika praktyczny sposób konstrukcji macierzy przejścia:

.. admonition:: Wniosek 1. :math:`\\`
   
   :math:`j`-ta kolumna macierzy przejścia :math:`\ \boldsymbol{S}\ `
   od bazy :math:`\ \mathcal{B}\ ` do bazy :math:`\ \mathcal{B}'\ ` przestrzeni :math:`\,V\,` 
   jest kolumną współrzędnych :math:`\,` (w bazie :math:`\ \mathcal{B}`) :math:`\,`
   :math:`j`-tego wektora bazy :math:`\ \mathcal{B}',\ \ j=1,2,\dots,n:`
   
   .. math::
      :label: S_col
      
      \boldsymbol{S}\ \,=\ \,\left[\,I_{\mathcal{B}}(v_1')\,|\,
                                     I_{\mathcal{B}}(v_2')\,|\,
                                     \dots\,|\,
                                     I_{\mathcal{B}}(v_n')\,\right]\,.

Istotną własność macierzy przejścia stwierdza

.. admonition:: Wniosek 2. 
   
   Macierz przejścia jest nieosobliwa: :math:`\ \ \det\,\boldsymbol{S}\neq 0\,.`

**Dowód.** :math:`\,` Odwzorowanie :math:`\,I_{\mathcal{B}},\ ` jako izomorfizm
przestrzeni :math:`\,V\ ` na przestrzeń :math:`\,K^n,\ ` zachowuje liniową niezależność wektorów.
Z liniowej niezależności wektorów :math:`\ v_1',\,v_2',\,\dots,\,v_n'\ ` bazy :math:`\ \mathcal{B'}\ `
wynika więc liniowa niezależność kolumn macierzy :math:`\ \boldsymbol{S},\ \,` 
a to implikuje niezerową wartość jej wyznacznika.

**Przykład.**

Rozważmy trójwymiarową przestrzeń :math:`\,V\ ` z bazami 
:math:`\ \mathcal{B}=(v_1,\,v_2,\,v_3)\ \,\text{i}\ \ \mathcal{B'}=(v_1',\,v_2',\,v_3'),\ \,`
gdzie :math:`\ \ v_1'=\,v_1,` :math:`\ \ v_2'=\,v_1+\,v_2,` :math:`\ \ v_3'=\,v_1+\,v_2+\,v_3\,.`

Związki pomiędzy wektorami obydwu baz można zapisać jako

.. math::
   
   \begin{array}{l}
   v_1'\ =\ 1\cdot v_1\,+\;0\cdot v_2\,+\;0\cdot v_3 \\
   v_2'\ =\ 1\cdot v_1\,+\;1\cdot v_2\,+\;0\cdot v_3 \\
   v_3'\ =\ 1\cdot v_1\,+\;1\cdot v_2\,+\;1\cdot v_3\,,
   \end{array}
   \qquad\text{skąd macierz przejścia}\qquad
   \boldsymbol{S}\ =\ 
   \left[\begin{array}{ccc} 1 & 1 & 1 \\ 0 & 1 & 1 \\ 0 & 0 & 1 \end{array}\right]\,. 

Wzory transformacyjne
~~~~~~~~~~~~~~~~~~~~~

Odtąd bazy :math:`\ \mathcal{B}\,=\,(v_1,\,v_2,\,\dots,\,v_n)\ ` 
i :math:`\ \,\mathcal{B'}\,=\,(v_1',\,v_2',\,\dots,\,v_n')\ `
będą nazywane odpowiednio starą i nową bazą.
Relacje :eq:`base_0` pomiędzy ich wektorami można przepisać następująco:

.. math::

   \begin{array}{lcl}
   & & v_i'\;=\ Tv_i\;=\ \displaystyle\sum_{j\,=\,1}^n\ s_{ij}^T\:v_j\,,\qquad i=1,2,\dots,n\,, \\ \\
   \text{czyli} & \qquad\quad &
   \begin{array}{l}
   v_1'\ =\ s_{11}^T\,v_1\,+\ s_{12}^T\,v_2\,+\ \dots\ +\ s_{1n}^T\,v_n \\
   v_2'\ =\ s_{21}^T\,v_1\,+\ s_{22}^T\,v_2\,+\ \dots\ +\ s_{2n}^T\,v_n \\
   \ \dots \\
   v_n'\ =\ s_{n1}^T\,v_1\,+\ s_{n2}^T\,v_2\,+\ \dots\ +\ s_{nn}^T\,v_n
   \end{array}
   \end{array}

Ten układ :math:`\,n\ ` równości jest równoważny jednemu równaniu macierzowemu

.. math::
   :label: trans_base

   \blacktriangleright\quad   
   \left[\begin{array}{c} v_1' \\ v_2' \\ \dots \\ v_n' \end{array}\right]\ \,=\ \,
   \boldsymbol{S}^{\,T}\,
   \left[\begin{array}{c} v_1 \\ v_2 \\ \dots \\ v_n \end{array}\right]\,.
   
.. admonition:: Reguła 0. :math:`\,` Transformacja wektorów bazy.
   
   Kolumna złożona z wektorów nowej bazy równa się iloczynowi transponowanej macierzy przejścia 
   przez kolumnę, złożoną z wektorów starej bazy.

Warto zauważyć, że (inaczej niż w dotychczasowych równaniach macierzowych) elementami kolumn
po obydwu stronach są nie *skalary* (liczby), ale *wektory*.
Natomiast macierz w tym równaniu jest zwykłą macierzą liczbową.

Aby określić sposób transformowania się współrzędnych wektorów przy zmianie bazy,
zapiszemy przedstawienie dowolnego wektora :math:`\,v\in V\ ` w starej i nowej bazie:

.. math::
   :nowrap:
   
   \begin{eqnarray*}
   \sum_{i\,=\,1}^n\ a_i\:v_i\  & = & \ \sum_{j\,=\,1}^n\ a_j'\ v_j' \ \ = \\
                                & = & \ \sum_{j\,=\,1}^n\ a_j'\ \left(\,
                                        \sum_{i\,=\,1}^n\ s_{ij}\:v_i\right) \ \ = \\
                                & = & \ \sum_{i\,=\,1}^n\ \left(\,
                                        \sum_{j\,=\,1}^n\ s_{ij}\:a_j'\right)\;v_i\,.
   \end{eqnarray*}

Z jednoznaczności przedstawienia wektora w bazie :math:`\ \mathcal{B}\ ` wynikają związki

.. math::
   
   \begin{array}{lcl}
   & & a_i\ =\ \displaystyle\sum_{j\,=\,1}^n\ s_{ij}\:a_j'\,,\qquad i=1,2,\dots,n\,, \\ \\
   \text{czyli} & \qquad\quad &
   \begin{array}{l}
   a_1\ =\ s_{11}\,a_1'\,+\ s_{12}\,a_2'\,+\ \dots\ +\ s_{1n}\,a_n' \\
   a_2\ =\ s_{21}\,a_1'\,+\ s_{22}\,a_2'\,+\ \dots\ +\ s_{2n}\,a_n' \\
   \ \dots \\
   a_n\ =\ s_{n1}\,a_1'\,+\ s_{n2}\,a_2'\,+\ \dots\ +\ s_{nn}\,a_n'
   \end{array}
   \end{array}

Przechodząc do zapisu macierzowego, otrzymujemy

.. math::
   :label: trans_coord
   
   \left[\begin{array}{c} a_1 \\ a_2 \\ \dots \\ a_n \end{array}\right]
   \ \,=\ \,\boldsymbol{S}\;
   \left[\begin{array}{c} a_1' \\ a_2' \\ \dots \\ a_n' \end{array}\right]\,,
   \qquad\qquad\blacktriangleright\quad
   \left[\begin{array}{c} a_1' \\ a_2' \\ \dots \\ a_n' \end{array}\right]
   \ \,=\ \,\boldsymbol{S}^{-1}\,
   \left[\begin{array}{c} a_1 \\ a_2 \\ \dots \\ a_n \end{array}\right]\,.

.. admonition:: Reguła 1. :math:`\,` Transformacja współrzędnych wektora.
   
   .. Kolumna współrzędnych wektora w starej bazie równa się iloczynowi macierzy przejścia 
      przez kolumnę współrzędnych w nowej bazie.

   Kolumna współrzędnych wektora w nowej bazie równa się iloczynowi odwrotności macierzy przejścia 
   przez kolumnę współrzędnych w starej bazie.

   .. math::
      
      I_{\mathcal{B}'}(v)\ \ =\ \ \boldsymbol{S}^{-1}\,\cdot\,I_{\mathcal{B}}(v)\,,\qquad
      v\in V.
      

Zajmiemy się teraz transformacją macierzy operatora liniowego.

Niech :math:`\,F\in\text{End}(V),\quad 
M_{\mathcal{B}}(F)=\boldsymbol{F}=[\,f_{ij}\,]_{n\times n}\,,\quad
M_{\mathcal{B}'}(F)=\boldsymbol{F}'=[\,f_{ij}'\,]_{n\times n}\,.`

Wychodząc z definicji macierzy operatora :math:`\,F\ ` w bazie :math:`\,\mathcal{B}'\ ` 
otrzymujemy (:math:`j=1,2,\dots,n`):

.. math::
   :nowrap:
   
   \begin{eqnarray*}
   Fv_j' & = & \sum_{i\,=\,1}^n\ f_{ij}'\ v_i'\,, \\
   F\left(Tv_j\right) & = & \sum_{i\,=\,1}^n\ f_{ij}'\ Tv_i\,, \\
   T^{-1}\left[\,F\left(Tv_j\right)\,\right] & = & \sum_{i\,=\,1}^n\ f_{ij}'\ T^{-1}(Tv_i)\,, \\
   (T^{-1}\circ\,F\,\circ\,T)\ v_j & = & \sum_{i\,=\,1}^n\ f_{ij}'\ v_i\,.
   \end{eqnarray*}

Ostatnie równanie stwierdza, że :math:`\,\boldsymbol{F}'\ ` jest macierzą 
:math:`\,` (w bazie :math:`\,\mathcal{B}`) :math:`\,` operatora
:math:`\ \,T^{-1}\circ\,F\,\circ\,T` :

.. math::
   
   \boldsymbol{F}'\ =\ M_{\mathcal{B}}\left(\,T^{-1}\circ\,F\,\circ\,T\,\right)\ \,=\ \,
   M_{\mathcal{B}}(T^{-1})\,\cdot\,M_{\mathcal{B}}(F)\,\cdot\,M_{\mathcal{B}}(T)\ =
   
   =\  
   [\,M_{\mathcal{B}}(T)\,]^{-1}\,\cdot\,M_{\mathcal{B}}(F)\,\cdot\,M_{\mathcal{B}}(T)\ \,=\ \,
   \boldsymbol{S}^{-1}\,\boldsymbol{F}\ \boldsymbol{S}\,.

W ten sposób macierz :math:`\,\boldsymbol{F}'\ ` operatora liniowego :math:`\,F\ `
w bazie :math:`\,\mathcal{B}'\ ` dana jest przez

.. math::
   :label: F_prim
   
   \blacktriangleright\quad
   \boldsymbol{F}'\ =\ \boldsymbol{S}^{-1}\,\boldsymbol{F}\ \boldsymbol{S}\,.

   
.. .. math::

   \text{Ostatecznie}\qquad\blacktriangleright\quad
   \boldsymbol{F}'\ =\ \boldsymbol{S}^{-1}\,\boldsymbol{F}\ \boldsymbol{S}\,.

   Ostatecznie, macierz :math:`\,\boldsymbol{F}\ ` operatora liniowego :math:`\,F\ `
   przy zmianie bazy transformuje się następująco: 

   Ostatecznie, transformacja macierzy :math:`\,\boldsymbol{F}\ ` operatora liniowego :math:`\,F\ `
   wyraża się wzorem

   
.. admonition:: Reguła 2. :math:`\,` Transformacja macierzy operatora liniowego.
   
   Przy zmianie bazy opisanej przez macierz przejścia :math:`\,\boldsymbol{S}\ `
   macierz operatora liniowego :math:`\,F\ ` transformuje się według wzoru:
   
   .. math::
      
      M_{\mathcal{B}'}(F)\ \,=\ \,
      \boldsymbol{S}^{-1}\,\cdot\,M_{\mathcal{B}}(F)\,\cdot\,\boldsymbol{S}\,.

.. .. math::

   \begin{array}{lcc}
   & & \boldsymbol{F}'\ =\ 
     \boldsymbol{S}^{-1}\,\boldsymbol{F}\ \boldsymbol{S}\,, \\ \\
   \blacktriangleright & \quad & M_{\mathcal{B}'}(F)\ \,=\ \,
   \boldsymbol{S}^{-1}\,\cdot\,M_{\mathcal{B}}(F)\,\cdot\,\boldsymbol{S}\,.
   \end{array}

   .. math::

   \begin{array}{cccc}
   & & & \boldsymbol{F}'\ =\ 
   \boldsymbol{S}^{-1}\,\boldsymbol{F}\ \boldsymbol{S}\,, \\ \\
   \text{czyli}\quad & \quad\blacktriangleright & \quad & M_{\mathcal{B}'}(F)\ \,=\ \,
   \boldsymbol{S}^{-1}\,\cdot\,M_{\mathcal{B}}(F)\,\cdot\,\boldsymbol{S}\,.
   \end{array}

**Uwaga.**

Z porównania wzorów :eq:`trans_base` oraz :eq:`trans_coord` wynika, że przy zmianie bazy
współrzędne wektorów transformują się inaczej niż wektory bazy, :math:`\,` chyba że 

.. math::
   :label: orth_mat
   
   \boldsymbol{S}^{-1}\;=\ \boldsymbol{S}^{\,T}\,,
   \qquad\text{czyli}\qquad
   \boldsymbol{S}^{\,T}\boldsymbol{S}\ =\ \boldsymbol{I}_n\,.

Macierz :math:`\,\boldsymbol{S}\in M_n(K)\ ` spełniająca warunek :eq:`orth_mat` 
nazywa się :math:`\,` *macierzą ortogonalną*.

Przykładem jest macierz :math:`\,\boldsymbol{S}\,` przedstawiająca obrót 
bazy :math:`\,\mathcal{B}=(\vec{e}_1,\,\vec{e}_2,\,\vec{e}_3)\ ` trójwymiarowej przestrzeni
wektorów geometrycznych, gdzie :math:`\,(\vec{e}_1,\,\vec{e}_2,\,\vec{e}_3)\ ` 
jest trójką wzajemnie prostopadłych wektorów jednostkowych.
Ortogonalne są również macierze permutacji.

.. Innym przykładem mogą być macierze permutacji.
  
**Ćwiczenie.**

1. Uzasadnij, że macierz przejścia :math:`\ \boldsymbol{S}\ ` od bazy :math:`\,\mathcal{B}\ `
   do bazy :math:`\,\mathcal{B}'\ ` można równoważnie zdefiniować 
   jako macierz automorfizmu przejścia :math:`\,T\ ` w nowej bazie :math:`\,\mathcal{B}':`
   
   .. math::
      
      \boldsymbol{S}\ :\,=\ M_{\mathcal{B}}(T)\ =\ M_{\mathcal{B}'}(T)\,.

2. W uzupełnieniu wyprowadzenia wzoru :eq:`F_prim` pokaż, 
   że jeżeli :math:`\,T\in\text{Aut}(V),\ ` to

   .. math::
      
      M_{\mathcal{B}}(T^{-1})\ \ =\ \ [\,M_{\mathcal{B}}(T)\,]^{-1}\,.

Przykłady
~~~~~~~~~

**Przykład 0.**

W przestrzeni :math:`\,R^4\,` należy znaleźć macierz przejścia:

a. | od bazy kanonicznej :math:`\ \mathcal{E}\,=\,
     (\boldsymbol{e}_1,\,\boldsymbol{e}_2,\,\boldsymbol{e}_3,\,\boldsymbol{e}_4)\ =\ 
     \left(\ 
     \left[\begin{array}{c} 1 \\ 0 \\ 0 \\ 0 \end{array}\right]\,,  
     \left[\begin{array}{c} 0 \\ 1 \\ 0 \\ 0 \end{array}\right]\,,
     \left[\begin{array}{c} 0 \\ 0 \\ 1 \\ 0 \end{array}\right]\,,
     \left[\begin{array}{c} 0 \\ 0 \\ 0 \\ 1 \end{array}\right]
     \ \right)`
   |
   | do bazy :math:`\ \mathcal{F}\,=\,
     (\boldsymbol{f}_1,\,\boldsymbol{f}_2,\,\boldsymbol{f}_3,\,\boldsymbol{f}_4)\ =\ 
     \left(\ 
     \left[\begin{array}{r}  1 \\  2 \\ -1 \\ 0 \end{array}\right]\,,  
     \left[\begin{array}{r}  1 \\ -1 \\  1 \\ 1 \end{array}\right]\,,
     \left[\begin{array}{r} -1 \\  2 \\  1 \\ 1 \end{array}\right]\,,
     \left[\begin{array}{r} -1 \\ -1 \\  0 \\ 1 \end{array}\right]
     \ \right)\,.`

b. | od bazy :math:`\,\mathcal{F}\,=\,
     (\boldsymbol{f}_1,\,\boldsymbol{f}_2,\,\boldsymbol{f}_3,\,\boldsymbol{f}_4)`
   | do bazy :math:`\,\mathcal{G}\,=\,
     (\boldsymbol{g}_1,\,\boldsymbol{g}_2,\,\boldsymbol{g}_3,\,\boldsymbol{g}_4)\,=\,
     \left(\ 
     \left[\begin{array}{r}  2 \\ 1 \\ 0 \\ 1 \end{array}\right],  
     \left[\begin{array}{r}  0 \\ 1 \\ 2 \\ 2 \end{array}\right],
     \left[\begin{array}{r} -2 \\ 1 \\ 1 \\ 2 \end{array}\right],
     \left[\begin{array}{r}  1 \\ 3 \\ 1 \\ 2 \end{array}\right]
     \ \right).`

**Rozwiązanie.**

Wprowadzamy macierz :math:`\,\boldsymbol{F},\ ` złożoną kolumnowo 
z wektorów bazy :math:`\,\mathcal{F}:`

.. math::
   
   \boldsymbol{F}\ :\,=\ 
   [\,\boldsymbol{f}_1\,|\,\boldsymbol{f}_2\,|\,\boldsymbol{f}_3\,|\,\boldsymbol{f}_4\,]\ =\ 
   \left[\begin{array}{rrrr}
          1 &  1 & -1 & -1 \\
          2 & -1 &  2 & -1 \\
         -1 &  1 &  1 &  0 \\
          0 &  1 &  1 &  1 \end{array}\right]\,.

Kolumny macierzy przejścia od bazy :math:`\,\mathcal{E}\,` do bazy :math:`\,\mathcal{F}\,`
składają się ze współrzędnych wektorów bazy :math:`\ \mathcal{F}\ \,` w bazie :math:`\ \mathcal{E}:`

.. math::
   
   \boldsymbol{S}_{\mathcal{E}\rightarrow\mathcal{F}}\ =\ 
   [\,I_{\mathcal{E}}(\boldsymbol{f}_1)\,|\,
      I_{\mathcal{E}}(\boldsymbol{f}_2)\,|\,
      I_{\mathcal{E}}(\boldsymbol{f}_3)\,|\,
      I_{\mathcal{E}}(\boldsymbol{f}_4)\,]\,.

Ale w przestrzeni :math:`\,R^4\ ` każdy wektor jest kolumną swoich współrzędnych w bazie kanonicznej:

.. math::
   
   I_{\mathcal{E}}(\boldsymbol{x})\ =\ \boldsymbol{x}\,,\qquad \boldsymbol{x}\in R^4\,.

W takim razie szukana macierz przejścia jest dana po prostu przez

.. math::
   :label: S_EF
   
   \blacktriangleright\quad
   \boldsymbol{S}_{\mathcal{E}\rightarrow\mathcal{F}}\ =\   
   [\,\boldsymbol{f}_1\,|\,\boldsymbol{f}_2\,|\,\boldsymbol{f}_3\,|\,\boldsymbol{f}_4\,]\,=\,
   \boldsymbol{F}\ =\ 
   \left[\begin{array}{rrrr}
          1 &  1 & -1 & -1 \\
          2 & -1 &  2 & -1 \\
         -1 &  1 &  1 &  0 \\
          0 &  1 &  1 &  1 \end{array}\right]\,.

**Wniosek** (uogólnienie).

W przestrzeni :math:`\,K^n\ ` macierz przejścia od bazy kanonicznej :math:`\ \mathcal{E}\ ` 
do bazy :math:`\,\mathcal{B}\ ` jest macierzą :math:`\,\boldsymbol{B},\ `
otrzymaną przez zestawienie wektorów bazy :math:`\,\mathcal{B}\ `
zapisanych w postaci kolumnowej.

.. [\,\boldsymbol{f}_1\,|\,\boldsymbol{f}_2\,|\,\boldsymbol{f}_3\,|\,\boldsymbol{f}_4\,]\,=\,
   [\,\boldsymbol{g}_1\,|\,\boldsymbol{g}_2\,|\,\boldsymbol{g}_3\,|\,\boldsymbol{g}_4\,]\,=\,
   \boldsymbol{G}\ =\ 
   \left[\begin{array}{rrrr}
          2 & 0 & -2 & 1 \\
          1 & 1 &  1 & 3 \\
          0 & 2 &  1 & 1 \\
          1 & 2 &  2 & 2 \end{array}\right]\,.

Przy opisie przejścia :math:`\ \mathcal{F}\rightarrow\mathcal{G}\ ` przydatna będzie,
oprócz macierzy :math:`\,\boldsymbol{F},\ ` również macierz

.. math::
   
   \boldsymbol{G}\ :\,=\ 
   [\,\boldsymbol{g}_1\,|\,\boldsymbol{g}_2\,|\,\boldsymbol{g}_3\,|\,\boldsymbol{g}_4\,]\ =\ 
   \left[\begin{array}{rrrr}
          2 & 0 & -2 & 1 \\
          1 & 1 &  1 & 3 \\
          0 & 2 &  1 & 1 \\
          1 & 2 &  2 & 2 \end{array}\right]\,.

Z definicji (patrz wzór :eq:`base_0`), :math:`\,j`-ta kolumna macierzy 
:math:`\,\boldsymbol{S}_{\mathcal{F}\rightarrow\mathcal{G}}\equiv\boldsymbol{S}=
[\,s_{ij}\,]_{4\times 4}(R)\ `
przejścia od bazy :math:`\ \mathcal{F}\ ` do bazy :math:`\ \mathcal{G}\ ` jest 
kolumną współrzędnych (w bazie :math:`\ \mathcal{F}`) :math:`\,j`-tego wektora
bazy :math:`\ \mathcal{G}:`

.. math::
   :label: S_4
   
   \boldsymbol{g}_j\ =\ \sum_{i\,=\,1}^4\ s_{ij}\:\boldsymbol{f}_i\,,\qquad j=1,2,3,4.

Relację :eq:`S_4` można zinterpretować w duchu kolumnowej reguły mnożenia macierzowego:
:math:`\,j`-ta kolumna macierzy :math:`\,\boldsymbol{G}\ ` jest kombinacją liniową
kolumn macierzy :math:`\,\boldsymbol{F},\ ` o współczynnikach z :math:`\,j`-tej kolumny
macierzy :math:`\,\boldsymbol{S},\ \ j=1,2,3,4.\ ` Oznacza to, że 

.. math::
   
   \boldsymbol{G}\ =\ \boldsymbol{F}\boldsymbol{S}\,.

Macierz :math:`\,\boldsymbol{F},\ ` złożona z liniowo niezależnych kolumn
:math:`\ \boldsymbol{f}_1\,,\,\boldsymbol{f}_2\,,\,\boldsymbol{f}_3\,,\,\boldsymbol{f}_4\,,\ `
jest nieosobliwa: :math:`\ \det\,\boldsymbol{F}\neq 0,\ \,` a więc odwracalna. Stąd szukana macierz przejścia

.. math::
   :label: S_FG

   \blacktriangleright\quad   
   \boldsymbol{S}_{\mathcal{F}\rightarrow\mathcal{G}}\ =\ 
   \boldsymbol{F}^{-1}\,\boldsymbol{G}\,.

**Wariant rozwiązania.**

Niech :math:`\ T\in\text{Aut}(R^4)\ ` będzie automorfizmem przejścia
od bazy :math:`\ \mathcal{F}\ ` do bazy :math:`\ \mathcal{G}.\ ` Wtedy
szukana macierz przejścia jest macierzą automorfizmu :math:`\,T\,` w bazie 
:math:`\,\mathcal{F}:\ \boldsymbol{S}_{\mathcal{F}\rightarrow\mathcal{G}}\equiv\boldsymbol{S}=
M_{\mathcal{F}}(T).\ ` Ponadto 

.. math::
   
   \boldsymbol{g}_j\,=\,T\,\boldsymbol{f}_j\,,
   \qquad\text{skąd}\qquad
   \boldsymbol{g}_j\,=\,\boldsymbol{T}\cdot\boldsymbol{f}_j\,,
   \qquad j=1,2,3,4\,,

gdzie :math:`\ \,\boldsymbol{T}:\,=M_{\mathcal{E}}(T)\ \,` 
jest macierzą automorfizmu :math:`\,T\ ` w bazie kanonicznej. 
Na podstawie kolumnowej reguły mnożenia macierzowego stwierdzamy, że z równości wektorowych

.. math::
   
   \boldsymbol{g}_1\,=\,\boldsymbol{T}\cdot\boldsymbol{f}_1\,,\quad
   \boldsymbol{g}_2\,=\,\boldsymbol{T}\cdot\boldsymbol{f}_2\,,\quad
   \boldsymbol{g}_3\,=\,\boldsymbol{T}\cdot\boldsymbol{f}_3\,,\quad
   \boldsymbol{g}_4\,=\,\boldsymbol{T}\cdot\boldsymbol{f}_4\,,

wynika równość macierzowa

.. math::
   
   [\,\boldsymbol{g}_1\,|\,\boldsymbol{g}_2\,|\,\boldsymbol{g}_3\,|\,\boldsymbol{g}_4\,]\ =\ 
   \boldsymbol{T}\,\cdot\,
   [\,\boldsymbol{f}_1\,|\,\boldsymbol{f}_2\,|\,\boldsymbol{f}_3\,|\,\boldsymbol{f}_4\,]\,,
   \qquad\text{czyli}\qquad
   \boldsymbol{G}\ =\ \boldsymbol{T}\boldsymbol{F}\,.

Stąd :math:`\ \,\boldsymbol{T}\equiv M_{\mathcal{E}}(T)\ =\ \boldsymbol{G}\boldsymbol{F}^{-1}.\ \,`
Potrzebną macierz :math:`\,\boldsymbol{S}\equiv M_{\mathcal{F}}(T)\ ` można wyliczyć ze wzoru 

.. math::
   
   M_{\mathcal{F}}(T)\ =\ \boldsymbol{S}_{\mathcal{E}\rightarrow\mathcal{F}}^{-1}\,\cdot\, 
                          M_{\mathcal{E}}(T)\,\cdot\,
                          \boldsymbol{S}_{\mathcal{E}\rightarrow\mathcal{F}}\,.

Ale, jak zostało wcześniej pokazane (równanie :eq:`S_EF`):
:math:`\ \,\boldsymbol{S}_{\mathcal{E}\rightarrow\mathcal{F}}=\boldsymbol{F},\ \,` wobec czego

.. math::
   
   \boldsymbol{S}_{\mathcal{F}\rightarrow\mathcal{G}}\ =\ 
   \boldsymbol{F}^{-1}\,(\boldsymbol{G}\boldsymbol{F}^{-1})\,\boldsymbol{F}\ =\ 
   \boldsymbol{F}^{-1}\,\boldsymbol{G}\,.

Dla sprawdzenia poprawności rozwiązania :eq:`S_FG` rozważmy szczególny przypadek, gdy
baza :math:`\ \mathcal{F}\ \,` jest bazą kanoniczną: :math:`\ \mathcal{F}=\mathcal{E}.\ \,`
Wtedy :math:`\ \boldsymbol{F}=\boldsymbol{I}_4\ \ ` i :math:`\,` dochodzimy do wzoru
:math:`\ \boldsymbol{S}_{\mathcal{E}\rightarrow\mathcal{G}}\ =\ \boldsymbol{G},\ `
zgodnego (przy innym oznaczeniu) z poprzednim wynikiem :eq:`S_EF`.

.. .. math::
   
   \boldsymbol{S}_{\mathcal{E}\rightarrow\mathcal{G}}\ =\ \boldsymbol{G}\,,

Przechodząc do rachunków, trzeba obliczyć iloczyn macierzowy

.. math::
   
   \boldsymbol{F}^{-1}\,\boldsymbol{G}\ =\ 
      \left[\begin{array}{rrrr}
          1 &  1 & -1 & -1 \\
          2 & -1 &  2 & -1 \\
         -1 &  1 &  1 &  0 \\
          0 &  1 &  1 &  1 \end{array}\right]^{-1}
   \left[\begin{array}{rrrr}
          2 & 0 & -2 & 1 \\
          1 & 1 &  1 & 3 \\
          0 & 2 &  1 & 1 \\
          1 & 2 &  2 & 2 \end{array}\right]\,.

Komputerowe obliczenia przedstawiają się następująco:

.. code-block:: python

   sage: F = matrix(QQ,[[ 1, 1,-1,-1],
   ...                  [ 2,-1, 2,-1],
   ...                  [-1, 1, 1, 0],
   ...                  [ 0, 1, 1, 1]])
   
   sage: G = matrix(QQ,[[ 2, 0,-2, 1],
   ...                  [ 1, 1, 1, 3],
   ...                  [ 0, 2, 1, 1],
   ...                  [ 1, 2, 2, 2]])
   
   sage: F.I*G
   
   [1 0 0 1]
   [1 1 0 1]
   [0 1 1 1]
   [0 0 1 0]

**Przykład 1.**

W 4-wymiarowej przestrzeni :math:`\,V(R)\ ` wektor :math:`\,v\ ` ma w bazie
:math:`\,\mathcal{B}=(v_1,\,v_2,\,v_3,\,v_4)\ ` współrzędne :math:`\ 2,\ -3,\ 0,\ 4.\ `
Jakie współrzędne ma ten wektor w bazie :math:`\,\mathcal{B}'=(v_1',\,v_2',\,v_3',\,v_4'),\ `
gdzie

.. math::
   
   v_1'\,=\,-\ v_1\,,\quad v_2'\,=\,2\,v_1-\,v_3\,,\quad v_3'\,=\,v_1+\,v_2-\,v_3-\,2\,v_4\,,\quad
   v_4'\,=\,v_2-\,v_3+\,v_4\quad ?

**Rozwiązanie.** :math:`\,` 
Punktem wyjścia jest Reguła 1. przedstawiająca transformację współrzędnych:

.. math::
   
   I_{\mathcal{B}'}(v)\ \ =\ \ \boldsymbol{S}^{-1}\,\cdot\,I_{\mathcal{B}}(v)\,.

Macierz przejścia :math:`\,\boldsymbol{S}\ ` wyznaczymy z relacji
pomiędzy wektorami starej i nowej bazy:

.. math::
   :nowrap:

   \begin{alignat*}{5}
   v_1' & {\ } = {\ } & -\ v_1 &             &     &             &     &                      \\
   v_2' & {\ } = {\ } & 2\,v_1 &             &     & {\,} - {\;} & v_3 &                      \\
   v_3' & {\ } = {\ } &    v_1 & {\,} + {\;} & v_2 & {\,} - {\;} & v_3 & {\,} - {\;} & 2\,v_4 \\
   v_4' & {\ } = {\ } &        &             & v_2 & {\,} - {\;} & v_3 & {\,} + {\;} &    v_4
   \end{alignat*}

Mianowicie, na podstawie Wniosku 1. po definicji macierzy przejścia (równanie :eq:`S_col`) : 

.. math::
 
   \boldsymbol{S}
   \ \ =\ \ 
   \left[\begin{array}{rrrr} -1 &  2 &  1 &  0 \\
                              0 &  0 &  1 &  1 \\
                              0 & -1 & -1 & -1 \\
                              0 &  0 & -2 &  1 \end{array}\right]\,.

Z treści zadania:
:math:`\quad I_{\mathcal{B}}(v)\ =\ 
\left[\begin{array}{r} 2 \\ -3 \\ 0 \\ 4 \end{array}\right]\,;\quad`
przy oznaczeniu
:math:`\quad I_{\mathcal{B}'}(v)\ =\ 
\left[\begin{array}{r} a_1' \\ a_2' \\ a_3' \\ a_4' \end{array}\right]\quad`
mamy

.. math::
   :label: ex_1
   
   \left[\begin{array}{r} a_1' \\ a_2' \\ a_3' \\ a_4' \end{array}\right]\quad=\quad
   \left[\begin{array}{rrrr} -1 &  2 &  1 &  0 \\
                              0 &  0 &  1 &  1 \\
                              0 & -1 & -1 & -1 \\
                              0 &  0 & -2 &  1 \end{array}\right]^{-1}\cdot\quad
   \left[\begin{array}{r} 2 \\ -3 \\ 0 \\ 4 \end{array}\right]\,.

Dalsze obliczenia można wykonać dwoma sposobami. :math:`\\`
 
**Sposób 1.** :math:`\,` Bezpośrednie wyliczenie macierzy odwrotnej do :math:`\,\boldsymbol{S}.`

Macierz :math:`\,\boldsymbol{S}^{-1}\ ` można wyliczyć odręcznie, korzystając ze wzoru

.. math::
   
   (\boldsymbol{S}^{-1})_{ij}\ \,=\ \ \frac{1}{\det\boldsymbol{S}}\ \ S_{ji}\,,\qquad
   i,j=1,2,\dots,n\,,

gdzie :math:`\,S_{ij}\,` jest dopełnieniem algebraicznym elementu :math:`\,s_{ij}\,`
macierzy :math:`\,\boldsymbol{S},\ \\`
albo komputerowo, korzystając z funkcji wbudowanych do pakietu Sage. :math:`\\`

W drugim przypadku, po wyliczeniu macierzy :math:`\,\boldsymbol{S}^{-1}\ `
można od razu wykonać mnożenie macierzowe po prawej stronie równania :eq:`ex_1`,
co daje wynik w postaci kolumny współrzędnych wektora :math:`\,v\,` w bazie :math:`\,\mathcal{B}'.`

.. code-block:: python
   
   sage: S = matrix(QQ,[[-1, 2, 1, 0],
   ...                  [ 0, 0, 1, 1],
   ...                  [ 0,-1,-1,-1],
   ...                  [ 0, 0,-2, 1]])
   
   # Macierz odwrotna do S:
   sage: S_1 = S.I
   
   # Kolumna współrzędnych w bazie B:
   sage: I_B = vector(QQ,[2,-3,0,4]).column()
   
   sage: html.table([[S_1,'*',I_B,'=',S_1*I_B]])

.. math::
   :label: calc_comp
   
   \textstyle
   \left(\begin{array}{rrrr}
   -1 & -\frac{5}{3} & -2 & -\frac{1}{3} \\
    0 & -1           & -1 & 0            \\
    0 & \frac{1}{3}  &  0 & -\frac{1}{3} \\
    0 & \frac{2}{3}  &  0 & \frac{1}{3}
   \end{array}\right)
   \quad\ast\quad
   \left(\begin{array}{r} 2 \\ -3 \\ 0 \\ 4 \end{array}\right)
   \quad=\quad
   \left(\begin{array}{r} \frac{5}{3} \\ 3 \\ -\frac{7}{3} \\ -\frac{2}{3} \end{array}\right)

Dla przejrzystego zapisu liczbowych elementów macierzy i wektorów obliczenia zostały wykonane w ciele :math:`\,Q\,` liczb wymiernych.

**Odpowiedź.** :math:`\,` 
Współrzędne wektora :math:`\,v\ ` w bazie :math:`\,\mathcal{B}'\ ` wynoszą:
:math:`\textstyle\quad\frac{5}{3}\,,\ \ \ 3\,,\ \ -\ \frac{7}{3}\,,\ \ -\ \frac{2}{3}\,. \\`

**Sposób 2.** :math:`\,` 
Zamiast bezpośredniego wyliczania macierzy :math:`\,\boldsymbol{S}^{-1},\ ` odwrócimy relacje

.. math::
   :nowrap:

   \begin{alignat*}{6}
   v_1' & {\ } = {\ } & Tv_1 & {\ \,} = {\ \,} & -\ v_1 &             &     &             &     &                      \\
   v_2' & {\ } = {\ } & Tv_2 & {\ \,} = {\ \,} & 2\ v_1 &             &     & {\,} - {\;} & v_3 &                      \\
   v_3' & {\ } = {\ } & Tv_3 & {\ \,} = {\ \,} &    v_1 & {\,} + {\;} & v_2 & {\,} - {\;} & v_3 & {\,} - {\;} & 2\ v_4 \\
   v_4' & {\ } = {\ } & Tv_4 & {\ \,} = {\ \,} &        &             & v_2 & {\,} - {\;} & v_3 & {\,} + {\;} &    v_4
   \end{alignat*}

Po prostych elementarnych rachunkach otrzymujemy wzory 

.. math::
   :nowrap:

   \begin{alignat*}{6}
   v_1 & {\ } = {\ } & T^{-1}\,v_1' & {\ \,} = {\ \,} & -\ v_1'                        &             &      &             &                             &                                           \\
   v_2 & {\ } = {\ } & T^{-1}\,v_2' & {\ \,} = {\ \,} & -\ \textstyle\frac{5}{3}\ v_1' & {\,} - {\;} & v_2' & {\,} + {\;} & \textstyle\frac{1}{3}\ v_3' & {\,} + {\;} & \textstyle\frac{2}{3}\ v_4' \\
   v_3 & {\ } = {\ } & T^{-1}\,v_3' & {\ \,} = {\ \,} & -\ 2\ v_1'                     & {\,} - {\;} & v_2' &             &                             &                                           \\
   v_4 & {\ } = {\ } & T^{-1}\,v_4' & {\ \,} = {\ \,} & -\ \textstyle\frac{1}{3}\ v_1' &             &      & {\,} - {\;} & \textstyle\frac{1}{3}\ v_3' & {\,} + {\;} & \textstyle\frac{1}{3}\ v_4'
   \end{alignat*}

na podstawie których można wypisać macierz automorfizmu :math:`\,T^{-1}\ `
w bazie :math:`\,\mathcal{B}':`

.. math::
   :label: MB_prim_T_1
   
   M_{\mathcal{B}'}(T^{-1})\ \ =\ \ \textstyle
   \left[\begin{array}{rrrr}
         -1 & -\frac{5}{3} & -2 & -\frac{1}{3} \\
          0 & -1           & -1 &   0          \\ 
          0 &  \frac{1}{3} &  0 & -\frac{1}{3} \\
          0 &  \frac{2}{3} &  0 &  \frac{1}{3}
         \end{array}\right]\,.

Nas interesuje raczej macierz :math:`\ \boldsymbol{S}^{-1}=[\,M_{\mathcal{B}}(T)\,]^{-1}.\ \,`
Ale, zgodnie z Regułą 2.:

.. math::
   
   M_{\mathcal{B}'}(T^{-1})\ \,=\ \,
   \boldsymbol{S}^{-1}\cdot M_{\mathcal{B}}(T^{-1})\cdot\boldsymbol{S}\ \,=\ \,
   \boldsymbol{S}^{-1}\cdot [\,M_{\mathcal{B}}(T)\,]^{-1}\cdot\boldsymbol{S}\ \,=\ \,
   \boldsymbol{S}^{-1}\cdot\boldsymbol{S}^{-1}\cdot\boldsymbol{S}\ \,=\ \,\boldsymbol{S}^{-1}\,.

Równanie :eq:`MB_prim_T_1` daje więc szukaną macierz :math:`\ \boldsymbol{S}^{-1},\ `
co prowadzi dalej do wyniku :eq:`calc_comp`.

.. a rozwiązanie przykładu daje wzór :eq:`calc_comp`.

**Wariant rozwiązania.** :math:`\,`

Związek :eq:`trans_coord` pomiędzy współrzędnymi wektora w nowej i starej bazie, zapisany w postaci

.. math::
   
   \boldsymbol{S}\cdot I_{\mathcal{B}'}(v)\ =\  I_{\mathcal{B}}(v)
   \qquad\text{czyli}\qquad
   \left[\begin{array}{rrrr} -1 &  2 &  1 &  0 \\
                              0 &  0 &  1 &  1 \\
                              0 & -1 & -1 & -1 \\
                              0 &  0 & -2 &  1 \end{array}\right]
   \left[\begin{array}{r} a_1' \\ a_2' \\ a_3' \\ a_4' \end{array}\right]\ =\ 
   \left[\begin{array}{r} 2 \\ -3 \\ 0 \\ 4 \end{array}\right]

przedstawia kramerowski układ równań

.. math::
   :nowrap:
   
   \begin{alignat*}{5}
   -\ a_1' & {\,} + {\,} & 2\,a_2' & {\,} + {\,} &    a_3' &             &      & {\;} = {} &  2 \\
           &             &         &             &    a_3' & {\,} + {\,} & a_4' & {\;} = {} & -3 \\
           & {\,} - {\,} &    a_2' & {\,} - {\,} &    a_3' & {\,} - {\,} & a_4' & {\;} = {} &  0 \\
           &             &         & {\,} - {\,} & 2\,a_3' & {\,} + {\,} & a_4' & {\;} = {} &  4
   \end{alignat*}

który można rozwiązać odręcznie albo komputerowo z użyciem funkcji pakietu Sage:

.. code-block:: python
   
   sage: S = matrix(QQ,[[-1, 2, 1, 0],
   ...                  [ 0, 0, 1, 1],
   ...                  [ 0,-1,-1,-1],
   ...                  [ 0, 0,-2, 1]])

   sage: I_B = vector(QQ,[2,-3,0,4]) # wektor wolnych wyrazów
   
   sage: S \ I_B

   (5/3, 3, -7/3, -2/3)

:math:`\;`

**Przykład 2.**

W bazie :math:`\,\mathcal{B}=(v_1,\,v_2,\,v_3)\ ` przestrzeni wektorowej 
:math:`\,V(R)\ ` operator :math:`\,F\in\text{End}(V)\ ` ma macierz

.. math::
   
   \boldsymbol{F}\ =\ 
   \left[\begin{array}{rrr}
         3 & -2 & -1 \\
         2 &  1 & -3 \\
         1 &  3 &  2 \end{array}\right]\,.

Należy podać macierz :math:`\,\boldsymbol{F}'\ ` tego operatora w bazie
:math:`\,\mathcal{B}'=(v_1',\,v_2',\,v_3'):\,=(v_3,\,v_2,\,v_1).`

**Rozwiązanie.**

**Sposób 1.** (bezpośredni) :math:`\,` 

Z definicji macierzy :math:`\,\boldsymbol{F}=[\,f_{ij}\,]_{3\times 3}\ ` oraz
:math:`\,\boldsymbol{F}'=[\,f_{ij}'\,]_{3\times 3}\ ` operatora :math:`\,F\ `
w bazach :math:`\,\mathcal{B}\ ` oraz :math:`\,\mathcal{B}':`

.. math::
   
   Fv_j\,=\ f_{1j}\,v_1+\,f_{2j}\,v_2+\,f_{3j}\,v_3\,,
   \qquad
   Fv_j'\,=\ f_{1j}'\,v_1'+\,f_{2j}'\,v_2'+\,f_{3j}'\,v_3'\,,
   \qquad j=1,2,3,

oraz z zależności :math:`\ v_1'=v_3,\ v_2'=v_2,\ v_3'=v_1\ ` wynikają związki

.. math::
   
   \begin{array}{l}
   Fv_1\,=\quad 3\,v_1+\,2\,v_2+\,1\,v_3 \\
   Fv_2\,=\  -2\,v_1+\,1\,v_2+\,3\,v_3 \\
   Fv_3\,=\  -1\,v_1-\,3\,v_2+\,2\,v_3\,,
   \end{array}
   \qquad\qquad
   \begin{array}{l}
   Fv_1'\,=\ 2\,v_1'-\,3\,v_2'-\,1\,v_3' \\
   Fv_2'\,=\ 3\,v_1'+\,1\,v_2'-\,2\,v_3' \\
   Fv_3'\,=\ 1\,v_1'+\,2\,v_2'+\,3\,v_3'\,.
   \end{array}

Z drugiego układu równości odczytujemy:

.. math::
   
   \boldsymbol{F}'\ =\ 
   \left[\begin{array}{rrr}
          2 &  3 & 1 \\
         -3 &  1 & 2 \\
         -1 & -2 & 3 \end{array}\right]\,.

**Sposób 2.** (standardowy)

Stosujemy Regułę 2. transformacji macierzy operatora liniowego (wzór :eq:`F_prim`):

.. math::
   :label: F_prim_bis
   
   \boldsymbol{F}'\ =\ \boldsymbol{S}^{-1}\,\boldsymbol{F}\ \boldsymbol{S}\,,

gdzie :math:`\,\boldsymbol{S}\ ` jest macierzą przejścia 
od bazy :math:`\,\mathcal{B}=(v_1,\,v_2,\,v_3)\ `
do bazy :math:`\,\mathcal{B}'=(v_3,\,v_2,\,v_1).`

Zapisując związki pomiędzy wektorami nowej i starej bazy

.. math::
   
   \begin{array}{l}
   v_1'\,=\ 0\,v_1+\,0\,v_2+\,1\,v_3 \\
   v_2'\,=\ 0\,v_1+\,1\,v_2+\,0\,v_3 \\
   v_3'\,=\ 1\,v_1+\,0\,v_2+\,0\,v_3
   \end{array}
   \qquad\text{otrzymujemy}\qquad
   \boldsymbol{S}\ =\ 
   \left[\begin{array}{ccc} 0 & 0 & 1 \\ 
                            0 & 1 & 0 \\ 
                            1 & 0 & 0 \end{array}\right]\,.

Zamiast wyliczać bezpośrednio macierz :math:`\,\boldsymbol{S}^{-1}\ `
zauważmy, że automorfizm przejścia :math:`\,T,\ ` który przekształca 
wektory bazy :math:`\,\mathcal{B}\ ` w odpowiednie 
wektory bazy :math:`\,\mathcal{B}':\ \ Tv_i=v_i',\ \ i=1,2,3,\ \ `
spełnia warunek :math:`\,T^2=I,\ ` gdzie :math:`\,I\ ` jest przekształceniem identycznościowym:

.. math::
   
   \begin{array}{l} Tv_1=v_3 \\ Tv_2=v_2 \\ Tv_3=v_1 \end{array}
   \qquad\Rightarrow\qquad
   \begin{array}{l}
   T^2\,v_1=\,Tv_3=\,v_1=\,I\,v_1 \\ T^2\,v_2=\,Tv_2=\,v_2=\,I\,v_2 \\ T^2\,v_3=\,Tv_1=\,v_3=\,I\,v_3
   \end{array}

Z multiplikatywności macierzowej reprezentacji operatorów liniowych wynika, że analogiczną własność ma macierz przejścia: :math:`\ \boldsymbol{S}^2\ =\ \boldsymbol{I}_3,\ \,` 
skąd :math:`\ \boldsymbol{S}^{-1}=\,\boldsymbol{S}.`

Wyznaczone macierze podstawiamy do wzoru :eq:`F_prim_bis`. :math:`\\`

.. code-block:: python

   sage: F = matrix(QQ,[[3, -2, -1],
   ...                  [2,  1, -3],
   ...                  [1,  3,  2]])

   sage: S = matrix(QQ,[[0,  0,  1],
   ...                  [0,  1,  0],
   ...                  [1,  0,  0]])

   sage: F_1 = S*F*S
   
   sage: html.table([[S, '*', F, '*', S, '=', F_1]])

.. math::
   
   \left(\begin{array}{ccc} 0 & 0 & 1 \\ 
                            0 & 1 & 0 \\ 
                            1 & 0 & 0 \end{array}\right)
   \ \ast\ 
   \left(\begin{array}{rrr} 3 & -2 & -1 \\
                            2 &  1 & -3 \\
                            1 &  3 &  2 \end{array}\right)
   \ \ast\ 
   \left(\begin{array}{ccc} 0 & 0 & 1 \\ 
                            0 & 1 & 0 \\ 
                            1 & 0 & 0 \end{array}\right)
   \ =\ 
   \left(\begin{array}{rrr}
          2 &  3 & 1 \\
         -3 &  1 & 2 \\
         -1 & -2 & 3 \end{array}\right)\,.
   
:math:`\\`






