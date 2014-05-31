
Macierze przekształceń liniowych
--------------------------------

Przed rozwinięciem ogólnej teorii wyjaśnimy na prostym przykładzie związek
przekształceń liniowych z macierzami.

Wprowadzenie
~~~~~~~~~~~~

Rozważmy odwzorowanie :math:`\ F:\,R^3\rightarrow R^2\ ` zadane wzorem

.. math::
   :label: ex_0
   
   F\left[\begin{array}{c} a_1 \\ a_2 \\ a_3 \end{array}\right]\ :\,=\ 
   \left[\begin{array}{c} 2\,a_1+\,a_2-\,a_3 \\ 4\,a_1-\,2\,a_2+\,4\,a_3 \end{array}\right]\,.

O tym, że :math:`\,F\,` jest przekształceniem liniowym, można się przekonać zapisując prawą stronę
równania :eq:`ex_0` w postaci iloczynu macierzowego:

.. math::
   
   F\left[\begin{array}{c} a_1 \\ a_2 \\ a_3 \end{array}\right]\ =\ 
   \left[\begin{array}{rrr} 2 &  1 & -1 \\ 
                            4 & -2 &  4 \end{array}\right]
   \left[\begin{array}{c} a_1 \\ a_2 \\ a_3 \end{array}\right]\,.

Teraz addytywność i jednorodność odwzorowania :math:`\,F\,` wynika z odpowiednich własności działań na macierzach.

Tak więc w naturalny sposób przypisaliśmy przekształceniu :math:`\,F\in\text{Hom}(R^3,R^2)\ `
macierz

.. math::
   
   M(F)\ =\ 
   \left[\begin{array}{rrr} 2 &  1 & -1 \\ 
                            4 & -2 &  4 \end{array}\right]
   \in M_{2\times 3}(R)\,,

przy pomocy której zadanie wyznaczenia obrazu wektora :math:`\,\boldsymbol{x}\in R^3\ ` przy przekształceniu :math:`\,F\,` sprowadza się do wykonania mnożenia macierzowego:

.. math::
   
   F(\boldsymbol{x})\ =\ M(F)\cdot \boldsymbol{x}\,,\qquad \boldsymbol{x}\in R^3\,.

Niech :math:`\ \boldsymbol{e}_1,\,\boldsymbol{e}_2,\,\boldsymbol{e}_3\ ` 
będą wektorami bazy kanonicznej przestrzeni :math:`\,R^3.\ `
Zauważmy, że :math:`\\`

.. math::

   \begin{array}{l}   
   F\boldsymbol{e}_1\ =\ F
   \left[\begin{array}{c} 1 \\ 0 \\ 0 \end{array}\right]\ =\ 
   \left[\begin{array}{rrr} 2 &  1 & -1 \\ 
                            4 & -2 &  4 \end{array}\right]
   \left[\begin{array}{c} 1 \\ 0 \\ 0 \end{array}\right]\ =\ 
   \left[\begin{array}{c} 2 \\ 4 \end{array}\right]\,,
   \\ \\
   F\boldsymbol{e}_2\ =\ F
   \left[\begin{array}{c} 0 \\ 1 \\ 0 \end{array}\right]\ =\ 
   \left[\begin{array}{rrr} 2 &  1 & -1 \\ 
                            4 & -2 &  4 \end{array}\right]
   \left[\begin{array}{c} 0 \\ 1 \\ 0 \end{array}\right]\ =\ 
   \left[\begin{array}{r} 1 \\ -2 \end{array}\right]\,,
   \\ \\
   F\boldsymbol{e}_3\ =\ F
   \left[\begin{array}{c} 0 \\ 0 \\ 1 \end{array}\right]\ =\ 
   \left[\begin{array}{rrr} 2 &  1 & -1 \\ 
                            4 & -2 &  4 \end{array}\right]
   \left[\begin{array}{c} 0 \\ 0 \\ 1 \end{array}\right]\ =\ 
   \left[\begin{array}{r} -1 \\ 4 \end{array}\right]\,.
   \end{array}

   \;

Jak widać, macierz :math:`\ M(F)\ ` składa się z kolumn, które są obrazami odpowiednich wektorów bazy kanonicznej przestrzeni :math:`\ R^3:\ ` 
:math:`\ M(F)\ =\ [\,F\boldsymbol{e}_1\,|\,F\boldsymbol{e}_2\,|\,F\boldsymbol{e}_3\,]\,.`

.. Uogólnienie tego przykładu opiera się na stwierdzeniu, że każde przekształcenie liniowe 
   przestrzeni :math:`\,K^n\ ` w przestrzeń :math:`\,K^m\ ` ma postać :eq:`ex_0`,
   to znaczy współrzędne obrazu są jednorodnymi liniowymi funkcjami współrzędnych argumentu.

Ogólnie, przekształceniu liniowemu :math:`\,F\in\text{Hom}(K^n,K^m)\ ` odpowiada macierz,
której :math:`\,j`-ta kolumna jest obrazem :math:`\,j`-tego wektora bazy kanonicznej
przestrzeni :math:`\ K^n\,,\ \ j=1,2,\dots,n.\ `

Określone w ten sposób odwzorowanie :math:`\,M\,` przestrzeni :math:`\ \text{Hom}(K^n,K^m)\ `
przekształceń liniowych w przestrzeń :math:`\ M_{m\times n}(K)\ ` macierzy prostokątnych 
można zapisać następująco:

.. math::
   :label: intro
   
   M:\quad \text{Hom}(K^n,K^m)\,\ni\,F
   \ \ \rightarrow\ \ 
   M(F)\,:\,=\,[\,F\boldsymbol{e}_1\,|\,\dots\,|\,F\boldsymbol{e}_n\,]\,\in\,M_{m\times n}(K)\,,

gdzie :math:`\ \mathcal{E}=(\boldsymbol{e}_1,\,\dots,\,\boldsymbol{e}_n)\ \,` 
jest bazą kanoniczną przestrzeni :math:`\,K^n.\ ` Wtedy obraz dowolnego wektora 
:math:`\,\boldsymbol{x}\in K^n\ ` otrzymuje się mnożąc ten wektor (z lewej strony) przez macierz :math:`\,M(F):`

.. math::
   
   \boldsymbol{y}\,=\,F(\boldsymbol{x})\quad\Rightarrow\quad \boldsymbol{y}\ =\ 
   M(F)\,\cdot\,\boldsymbol{x}\,,\qquad \boldsymbol{x}\in K^n\,,\ \ \boldsymbol{y}\in K^m\,.

.. W następnym uogólnieniu pokażemy, :math:`\,` jak przekształceniu liniowemu *dowolnych* 
   skończenie wymiarowych przestrzeni nad ciałem :math:`\,K,\ ` w których wybrano bazy, można
   przyporządkować macierz o elementach z :math:`\,K.`

W następnym uogólnieniu zdefiniujemy macierz przekształcenia liniowego
:math:`\ F:V\rightarrow W,\ ` gdzie :math:`\ V\ ` i :math:`\ W\ ` 
są :math:`\,` *dowolnymi* :math:`\,` skończenie wymiarowymi przestrzeniami wektorowymi 
nad ciałem :math:`\ K\,,\ ` w każdej z których wybrano bazę.

Definicja macierzy przekształcenia liniowego
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Niech będą dane dwie skończenie wymiarowe przestrzenie wektorowe nad ciałem :math:`\,K:\ \\`
:math:`n`-wymiarowa przestrzeń :math:`\,V\,` 
z bazą :math:`\ \mathcal{B}=(v_1,\,v_2,\,\dots,\,v_n)\,,\ \\`
:math:`m`-wymiarowa przestrzeń :math:`\,W\,` 
z bazą :math:`\ \mathcal{C}=(w_1,\,w_2,\,\dots,\,w_m)\ \\`
oraz przekształcenie liniowe :math:`\,F\in\text{Hom}(V,W)\,.`

Obrazy wektorów bazy :math:`\ \mathcal{B}\ ` należą do przestrzeni :math:`\,W,\ `
można je więc zapisać w postaci kombinacji liniowych wektorów bazy :math:`\ \mathcal{C}:`

.. .. math::
   :label: exps
   
   \begin{array}{l}
   Fv_1\ =\ a_{11}\,w_1\,+\ a_{21}\,w_2\,+\ \dots\ +\ a_{m1}\,w_m \\
   Fv_2\ =\ a_{12}\,w_1\,+\ a_{22}\,w_2\,+\ \dots\ +\ a_{m2}\,w_m \\
   \dots \\
   Fv_n\ =\ a_{1n}\,w_1\,+\ a_{2n}\,w_2\,+\ \dots\ +\ a_{mn}\,w_m
   \end{array}

.. math::
   :label: exps
   
   \begin{array}{l}
   Fv_1\ =\ f_{11}\,w_1\,+\ f_{21}\,w_2\,+\ \dots\ +\ f_{m1}\,w_m \\
   Fv_2\ =\ f_{12}\,w_1\,+\ f_{22}\,w_2\,+\ \dots\ +\ f_{m2}\,w_m \\
   \dots \\
   Fv_n\ =\ f_{1n}\,w_1\,+\ f_{2n}\,w_2\,+\ \dots\ +\ f_{mn}\,w_m
   \end{array}


Otrzymana w ten sposób macierz :math:`\ \boldsymbol{F}=[\,f_{ij}\,]_{m\times n}(K)\ `
jest :math:`\,` *z definicji* :math:`\,` macierzą :math:`\,M_{\mathcal{B}\mathcal{C}}(F)\ `
przekształcenia liniowego :math:`\ F\ ` w bazach :math:`\ \mathcal{B}\ \,\text{i}\ \ \mathcal{C}:`

.. .. math::
   
   M_{\mathcal{B}\mathcal{C}}(F)\ :\,=\ 
   \left[
   \begin{array}{cccc}
   a_{11} & a_{12} & \dots & a_{1n} \\
   a_{21} & a_{22} & \dots & a_{2n} \\
   \dots  & \dots  & \dots & \dots  \\
   a_{m1} & a_{m2} & \dots & a_{mn}
   \end{array}
   \right]\,.

.. math::
   
   M_{\mathcal{B}\mathcal{C}}(F)\ :\,=\ 
   \left[
   \begin{array}{cccc}
   f_{11} & f_{12} & \dots & f_{1n} \\
   f_{21} & f_{22} & \dots & f_{2n} \\
   \dots  & \dots  & \dots & \dots  \\
   f_{m1} & f_{m2} & \dots & f_{mn}
   \end{array}
   \right]\,.


Zauważmy przy tym, że elementy :math:`\ f_{1j},\,f_{2j},\,\dots,\,f_{mj}\,,\ `
tworzące :math:`\,j`-tą kolumnę macierzy, :math:`\\` są współrzędnymi wektora
:math:`\ Fv_j\ ` w bazie :math:`\ \mathcal{C},\ \ j=1,2,\dots,n.\ `

.. Wynika stąd następująca 

.. admonition:: Definicja. :math:`\\`
   
   Niech :math:`\ \,V\ \,\text{i}\ \ W\ \,` będą dwiema skończenie wymiarowymi przestrzeniami
   wektorowymi nad ciałem :math:`\,K,\ ` przy czym układ 
   :math:`\ \mathcal{B}=(v_1,\,v_2,\,\dots,\,v_n)\ ` jest bazą przestrzeni :math:`\ \,V,\ `
   a układ :math:`\ \mathcal{C}=(w_1,\,w_2,\,\dots,\,w_m)\,` :math:`\,` - :math:`\,`
   bazą przestrzeni :math:`\ W.\ \,` 
   Wtedy :math:`\ j`-ta kolumna macierzy :math:`\ M_{\mathcal{B}\mathcal{C}}(F)\ ` 
   przekształcenia :math:`\,F\in\text{Hom}(V,W)\ ` w bazach :math:`\ \mathcal{B}\ `
   i :math:`\ \mathcal{C}\ ` jest kolumną współrzędnych :math:`\,` (w bazie :math:`\ \mathcal{C}`)
   :math:`\,` obrazu :math:`\,` - :math:`\,` przy odwzorowaniu :math:`\,F\ ` :math:`\,` - :math:`\,`
   :math:`\ j`-tego wektora bazy :math:`\ \mathcal{B}\quad (j=1,2,\dots,n).`

   A zatem :math:`\ \,M_{\mathcal{B}\mathcal{C}}(F)\ =\ \,[\,f_{ij}\,]_{m\times n}\,,\ \,`
   gdzie elementy :math:`\ f_{ij}\ ` określone są przez związki
   
   .. math::
      
      Fv_j\;=\ \sum_{i\,=\,1}^m\ f_{ij}\ w_i\,,\qquad j=1,2,\dots,n\,.

**Przykład.**

Omówimy operację różniczkowania określoną w zbiorze wielomianów rzeczywistych.

:math:`\,V\ ` jest przestrzenią wektorową wielomianów zmiennej :math:`\,x\ `
stopnia (nie większego od) :math:`\,n,\ \,` a :math:`\ \,W\ \ ` - :math:`\,` przestrzenią takich wielomianów stopnia (nie większego od) :math:`\ n-1:`

.. math::
   
   V\ =\ \{\,a_0\,+\,a_1\,x\,+\,a_2\,x^2\,+\,a_3\,x^3\,+\,\ldots\,+\,a_n\,x^n:
   \quad a_i\in R\,,\quad i=0,1,\dots,n\,\}\,,

   
   W\ =\ \{\,b_0\,+\,b_1\,x\,+\,b_2\,x^2\,+\,\ldots\,+\,b_{n-1}\,x^{n-1}:
   \quad b_i\in R\,,\quad i=0,1,\dots,n-1\,\}\,.

:math:`\dim\,V=\,n+1\,,\ \ \mathcal{B}\,=\,(1,\,x,\,x^2,\,x^3,\,\dots,\,x^n)\,;\quad 
\dim\,W=\,n\,,\ \ \mathcal{C}\,=\,(1,\,x,\,x^2,\,\dots,\,x^{n-1})\,.`

.. \begin{array}{lcl}
   \dim\,V\,=\,n+1\,, & \qquad & \text{baza:}\quad 
                                 \mathcal{B}\,=\,(1,\,x,\,x^2,\,x^3,\,\dots,\,x^n)\,, \\
   \dim\,w\,=\,n\,,   & \qquad & \text{baza:}\quad 
                                 \mathcal{C}\,=\,(1,\,x,\,x^2,\,\dots,\,x^{n-1})\,.
   \end{array}

Operacja różniczkowania :math:`\ D\equiv {d\over dx}\ ` przekształca liniowo przestrzeń :math:`\,V\ `
w przestrzeń :math:`\,W.\ ` Aby wyznaczyć macierz tej operacji w bazach 
:math:`\,\mathcal{B}\ \ \text{i}\ \ \mathcal{C},\ ` zapiszemy rozkłady :eq:`exps` obrazów 
kolejnych wektorów bazy :math:`\,\mathcal{B}\ \ \text{w bazie}\ \ \mathcal{C}:`

.. math::
   :nowrap:
   
   \begin{alignat*}{7}
   D\,1\:\  & {\,} = {\,} & 0          & {\quad} = {\quad} & 0\cdot 1 & {\ } + {\ } & 0\cdot x & {\ } + {\ } & 0\cdot x^2 & {\ } + {\ } & \dots & {\ } + {\ } & 0\cdot x^{n-1} \\ 
   D\,x\,\  & {\,} = {\,} & 1          & {\quad} = {\quad} & 1\cdot 1 & {\ } + {\ } & 0\cdot x & {\ } + {\ } & 0\cdot x^2 & {\ } + {\ } & \dots & {\ } + {\ } & 0\cdot x^{n-1} \\
   D\,x^2 & {\,} = {\,} & 2\,x       & {\quad} = {\quad} & 0\cdot 1 & {\ } + {\ } & 2\cdot x & {\ } + {\ } & 0\cdot x^2 & {\ } + {\ } & \dots & {\ } + {\ } & 0\cdot x^{n-1} \\
   D\,x^3 & {\,} = {\,} & 3\,x^2     & {\quad} = {\quad} & 0\cdot 1 & {\ } + {\ } & 0\cdot x & {\ } + {\ } & 3\cdot x^2 & {\ } + {\ } & \dots & {\ } + {\ } & 0\cdot x^{n-1} \\
   \dots  & {\,}   {\,} & \dots      & {\quad}   {\quad} & \dots    & {\ }   {\ } & \dots    & {\ }   {\ } & \dots      & {\ }   {\ } & \dots & {\ }   {\ } & \dots          \\   
   D\,x^n & {\,} = {\,} & n\,x^{n-1} & {\quad} = {\quad} & 0\cdot 1 & {\ } + {\ } & 0\cdot x & {\ } + {\ } & 0\cdot x^2 & {\ } + {\ } & \dots & {\ } + {\ } & n\cdot x^{n-1} 
   \end{alignat*}

.. math::
   :label: MBC_D

   M_{\mathcal{B}\mathcal{C}}(D)\ =\ 
   \left[
   \begin{array}{cccccc}
     0   &   1   &   0   &   0   & \dots &   0   \\
     0   &   0   &   2   &   0   & \dots &   0   \\
     0   &   0   &   0   &   3   & \dots &   0   \\ 
   \dots & \dots & \dots & \dots & \dots & \dots \\
     0   &   0   &   0   &   0   & \dots &   n
   \end{array}
   \right]\ 
   \in\,M_{n\times (n+1)}(R)\,.

   \;

Wprowadzimy teraz dalsze oznaczenia, które pozwolą w czytelny sposób zapisać kolumnową postać 
macierzy :math:`\,M_{\mathcal{B}\mathcal{C}}(F)\,.`
Z wniosku do Twierdzenia 8. wynika, że :math:`\,n`-wymiarowa przestrzeń :math:`\,V\ `
jest izomorficzna z przestrzenią :math:`\,K^n,\ \ \text{a}\ \ m`-wymiarowa 
przestrzeń :math:`\,W\ ` jest izomorficzna z przestrzenią :math:`\ K^m:\quad
V\,\simeq\,K^n\,,\qquad W\,\simeq\,K^m\,.`

.. .. math::

   V\,\simeq\,K^n\,,\qquad W\,\simeq\,K^m\,.

W przestrzeniach :math:`\,V\ \,\text{i}\ \ W\ ` przyjęliśmy bazy

.. math::
   
   \mathcal{B}=(v_1,\,v_2,\,\dots,\,v_n)
   \qquad\text{i}\qquad
   \mathcal{C}=(w_1,\,w_2,\,\dots,\,w_m)\,.

Niech układy

.. math::
   
   \mathcal{E}\,=\,(e_1,\,e_2,\,\dots,\,e_n)
   \qquad\text{i}\qquad
   \mathcal{F}\,=\,(f_1,\,f_2,\,\dots,\,f_m)

będą bazami kanonicznymi przestrzeni :math:`\,K^n\ \,\text{i}\ \ K^m.`

Wtedy odwzorowania :math:`\ I_{\mathcal{B}}:\,V\rightarrow K^n \ \ \text{oraz}\ \ \,
I_{\mathcal{C}}:\,W\rightarrow K^m\,,\ \,`
określone poprzez zadanie obrazów wektorów bazy (odpowiednio 
bazy :math:`\,\mathcal{B}\ ` albo bazy :math:`\ \mathcal{C}):`

.. określone wzorami

.. math::
   
   I_{\mathcal{B}}(v_j)\ :\,=\ e_j\,,\quad j=1,2,\dots,n\,,
   \qquad
   I_{\mathcal{C}}(w_i)\ :\,=\ f_i\,,\quad i=1,2,\dots,m\,,

są przykładami izomorfizmów: 
:math:`\ I_{\mathcal{B}}\in\text{Izo}(V,K^n)\,,\ \,I_{\mathcal{C}}\in\text{Izo}(W,K^m)\,.`

.. Odwzorowania :math:`\ I_{\mathcal{B}}\ \ \text{oraz}\ \ I_{\mathcal{C}}\ \,` 
   zostały określone poprzez zadanie obrazów wektorów bazy, odpowiednio 
   bazy :math:`\ \mathcal{B}\ \,` albo bazy :math:`\ \,\mathcal{C}.`

Dla dowolnych wektorów :math:`\displaystyle\quad v\,=\,\sum_{j\,=\,1}^n\ a_j\,v_j\,\in V\,,\quad
w\,=\,\sum_{i\,=\,1}^m\ b_i\,w_i\,\in W\,:`

.. math::
   
   I_{\mathcal{B}}(v)\ =\ I_{\mathcal{B}}\,\left(\,\sum_{j\,=\,1}^n\ a_j\,v_j\right)\ =\ 
   \sum_{j\,=\,1}^n\ a_j\,I_{\mathcal{B}}(v_j)\ =\ 
   \sum_{j\,=\,1}^n\ a_j\,e_j\ =\ 
   \left[\begin{array}{c} a_1 \\ a_2 \\ \dots \\ a_n \end{array}\right]\,,

   I_{\mathcal{C}}(w)\ =\ I_{\mathcal{C}}\,\left(\,\sum_{i\,=\,1}^m\ b_i\,w_i\right)\ =\ 
   \sum_{i\,=\,1}^m\ b_i\,I_{\mathcal{C}}(w_i)\ =\ 
   \sum_{i\,=\,1}^m\ b_i\,f_i\ =\ 
   \left[\begin{array}{c} b_1 \\ b_2 \\ \dots \\ b_m \end{array}\right]\,.

Tak więc izomorfizm :math:`\ I_{\mathcal{B}}\ `  przekształca wektor :math:`\,v\in V\ `
w kolumnę współrzędnych tego wektora w bazie :math:`\ \mathcal{B},\ \,`
a :math:`\,` izomorfizm :math:`\ \,I_{\mathcal{C}}\ ` przekształca wektor :math:`\,w\in W\ `
w kolumnę współrzędnych tego wektora w bazie :math:`\ \mathcal{C}.\ `
Macierz przekształcenia liniowego :math:`\ F\in\text{Hom}(V,W)\ `
w bazach :math:`\ \mathcal{B}\ \,\text{i}\ \ \,\mathcal{C}\ ` ma teraz w zapisie kolumnowym postać

.. math::
   
   M_{\mathcal{B}\mathcal{C}}(F)\ \,=\ \,
   \left[\;I_{\mathcal{C}}(Fv_1\,|\,I_{\mathcal{C}}(Fv_2\,|\ \dots\ |\,
   I_{\mathcal{C}}(Fv_n\,\right]\,.

Podstawowe twierdzenia
~~~~~~~~~~~~~~~~~~~~~~

Sens wprowadzenia macierzowej reprezentacji przekształceń liniowych wyjaśnia

.. admonition:: Twierdzenie 10. :math:`\\`

   Niech :math:`\ F\in\text{Hom}(V,W),\ ` gdzie :math:`\,V\ \,\text{i}\ \ W\ `
   są przestrzeniami wektorowymi nad ciałem :math:`\,K\ ` z bazami :math:`\ \mathcal{B}\ \,`
   i :math:`\ \mathcal{C}.\ `
   Jeżeli wektor :math:`\,w\in W\ ` jest obrazem wektora :math:`\,v\in V\ `
   przy przekształceniu :math:`\,F,\ \,` to kolumna współrzędnych (w bazie :math:`\,\mathcal{C}`)
   wektora :math:`\ w\ ` równa się iloczynowi macierzy przekształcenia :math:`\,F\ `
   w bazach :math:`\ \mathcal{B}\ \,\text{i}\ \ \,\mathcal{C}\ ` 
   przez kolumnę współrzędnych (w bazie :math:`\,\mathcal{B}`) :math:`\,` wektora :math:`\,v:`
   
   .. math::
      :label: fund
      
      w\,=\,F(v)\qquad\Rightarrow\qquad   
      I_{\mathcal{C}}(w)\ =\ M_{\mathcal{B}\mathcal{C}}(F)\,\cdot\,I_{\mathcal{B}}(v)\,.

W ten sposób abstrakcyjne zagadnienie wyznaczenia obrazu wektora :math:`\,v\ `
przy przekształceniu :math:`\,F\ ` jest sprowadzone do konkretnego rachunku na macierzach.

**Dowód.** :math:`\,` Przyjmujemy dotychczasowe oznaczenia:

.. math::
   
   \mathcal{B}\,=\,(v_1,\,v_2,\,\dots,\,v_n)\,,\qquad\mathcal{C}\,=\,(w_1,\,w_2,\,\dots,\,w_m)\,,
   
   v\,=\,\sum_{j\,=\,1}^n\ a_j\,v_j\,,\quad
   w\,=\,\sum_{i\,=\,1}^m\ b_i\,w_i\,,\quad
   M_{\mathcal{B}\mathcal{C}}(F)\,=\,[\,f_{ij}\,]_{m\times n}\,.\quad

   \text{Wtedy}\qquad
   w\ =\ F(v)\ =\ F\,\left(\,\sum_{j\,=\,1}^n\ a_j\,v_j\right)\ \ =\ \ 
                             \sum_{j\,=\,1}^n\ a_j\,F(v_j)\ \ =

   =\ \  
   \sum_{j\,=\,1}^n\ a_j\,\left(\,\sum_{i\,=\,1}^m\ f_{ij}\ w_i\right)\ \ =\ \ 
   \sum_{i\,=\,1}^m\,\left(\,\sum_{j\,=\,1}^n\ f_{ij}\ a_j\right)\ w_i\,.

Z jednoznaczności przedstawienia wektora :math:`\,w\ ` w bazie :math:`\,\mathcal{C}\ ` otrzymujemy

.. math::
   :label: bfa
   
   b_i\ =\ \sum_{j\,=\,1}^n\ f_{ij}\ a_j\,,\qquad i=1,2,\dots,m\,.
   
Związki :eq:`bfa` przedstawiają równość macierzową :math:`\\`

.. math::
   
   \left[\begin{array}{c} b_1 \\ b_2 \\ \dots \\ b_m \end{array}\right]\ =\ 
   \left[\begin{array}{cccc}
         f_{11} & f_{12} & \dots & f_{1n} \\
         f_{21} & f_{22} & \dots & f_{2n} \\
          \dots &  \dots & \dots &  \dots \\ 
         f_{m1} & f_{m2} & \dots & f_{mn}
         \end{array}
   \right]
   \left[\begin{array}{c} a_1 \\ a_2 \\ \dots \\ a_n \end{array}\right]\,,

   \;

   \text{czyli}\qquad 
   I_{\mathcal{C}}(w)\ =\ M_{\mathcal{B}\mathcal{C}}(F)\,\cdot\,I_{\mathcal{B}}(v)\,.

**Przykład.**

Powróćmy do operacji różniczkowania :math:`\ D = {d\over dx}\ \,` jako przekształcenia liniowego 
przestrzeni :math:`\,V\ ` wielomianów rzeczywistych stopnia :math:`\,n\ ` w przestrzeń :math:`\,W\ `
wielomianów stopnia :math:`\,n-1.\ ` 
Macierz tej operacji w naturalnych bazach przestrzeni
:math:`\ V\ \,\text{i}\ \ W\ ` jest dana przez :eq:`MBC_D`.

Jeżeli :math:`\ v\,=\,a_0\,+\,a_1\,x\,+\,a_2\,x^2\,+\,a_3\,x^3\,+\,\ldots\,+\,a_n\,x^n\,\in V,`

to :math:`\quad w\,\equiv D(v)\,=\,a_1\,+\,2\,a_2\,x\,+\,3\,a_3\,x^2\ +\ \ldots\ +n\,a_n\,x^{n-1}\,.`

Zapisany macierzowo związek pomiędzy współrzędnymi wielomianów :math:`\,v\ \,\text{i}\ \ w:`

.. math::
   
   \left[
   \begin{array}{c} a_1 \\ 2\,a_2 \\ 3\,a_3 \\ \dots \\ n\,a_n \end{array}
   \right]\ \ =\ \ 
   \left[
   \begin{array}{cccccc}
     0   &   1   &   0   &   0   & \dots &   0   \\
     0   &   0   &   2   &   0   & \dots &   0   \\
     0   &   0   &   0   &   3   & \dots &   0   \\ 
   \dots & \dots & \dots & \dots & \dots & \dots \\
     0   &   0   &   0   &   0   & \dots &   n
   \end{array}
   \right]\ 
   \left[
   \begin{array}{c} a_0 \\ a_1 \\ a_2 \\ a_3 \\ \dots \\ a_n \end{array}
   \right]

jest właśnie relacją :eq:`fund` z Twierdzenia 10.

:math:`\;`

Wyjaśnimy dokładnie charakter związku pomiędzy przekształceniami liniowymi i macierzami.
W dotychczasowych rozważaniach wystąpiły następujące przestrzenie wektorowe 
(wszystkie nad tym samym ciałem :math:`\,K`):

* | :math:`n`-wymiarowa przestrzeń :math:`\,V\,` 
    z bazą :math:`\ \mathcal{B}=(v_1,\,v_2,\,\dots,\,v_n)\,,\ `
  | :math:`m`-wymiarowa przestrzeń :math:`\,W\,` 
    z bazą :math:`\ \mathcal{C}=(w_1,\,w_2,\,\dots,\,w_m)\,;`

* | przestrzeń :math:`\ \text{Hom}(V,W)\ ` przekształceń liniowych 
    przestrzeni :math:`\ V\ ` w przestrzeń :math:`\ W;`

* | przestrzeń :math:`\ M_{m\times n}(K)\ ` macierzy prostokątnych 
    o elementach z ciała :math:`\ K. \,`

.. Istotę przyporządkowania przekształceniom z :math:`\,\text{Hom}(V,W)\,`
   macierzy z :math:`\,M_{m\times n}(K)\,` przedstawia

:math:`\;`

.. admonition:: Twierdzenie 11. :math:`\\`
   
   Odwzorowanie
   
   .. math::
      
      M_{\mathcal{B}\mathcal{C}}:\quad
      \text{Hom}(V,W)\ni F\ \rightarrow\ M_{\mathcal{B}\mathcal{C}}(F):\,=
      \left[\;I_{\mathcal{C}}(Fv_1\,|\,\dots\,|\,
      I_{\mathcal{C}}(Fv_n\,\right]\in M_{m\times n}(K)
      
   jest izomorfizmem przestrzeni wektorowych 
   :math:`\ \text{Hom}(V,W)\ \ \,\text{i}\ \ \,M_{m\times n}(K).`

:math:`\;`

**Dowód** poprzedzimy przypomnieniem definicji działań na przekształceniach liniowych,
przy których :math:`\,\text{Hom}(V,W)\,` jest przestrzenią wektorową. 
Jeżeli :math:`\,F_1,F_2,F\in\text{Hom}(V,W),\ a\in K,\,` to 

.. math::
   :nowrap:
   
   \begin{eqnarray*}
   (F_1+F_2)(v) & :\;= & F_1(v)\,+\,F_2(v) \\
      (a\,F)(v) & :\;= & a\cdot F(v)\,,\qquad v\in V\,.
   \end{eqnarray*}

Aby pokazać, że :math:`\,M_{\mathcal{B}\mathcal{C}}\ ` jest izomorfizmem, 
czyli wzajemnie jednoznacznym homomorfizmem, trzeba udowodnić jego 
addytywność, jednorodność i bijektywność.

a. Addytywność. :math:`\,`
   
   Niech :math:`\,F_1,F_2\,\in\,\text{Hom}(V,W).\ ` Wtedy :math:`\,j`-ta kolumna macierzy
   :math:`\,M_{\mathcal{B}\mathcal{C}}(F_1+F_2)`
   
   .. math::
      
      I_{\mathcal{C}}\,[\,(F_1+F_2)(v_j)\,]\ =\ I_{\mathcal{C}}\,[\,F_1(v_j)+F_2(v_j)\,]\ =\ 
      I_{\mathcal{C}}\,[\,F_1(v_j)\,]+I_{\mathcal{C}}\,[\,F_2(v_j)\,]

   jest sumą :math:`\,j`-tych kolumn macierzy :math:`\ M_{\mathcal{B}\mathcal{C}}(F_1)\ ` 
   i :math:`\ \,M_{\mathcal{B}\mathcal{C}}(F_2)\,,\ \ j=1,2,\dots,n.\ \,` Stąd
   
   .. math::
   
      M_{\mathcal{B}\mathcal{C}}(F_1+F_2)\ =\ M_{\mathcal{B}\mathcal{C}}(F_1)
                                         \,+\,M_{\mathcal{B}\mathcal{C}}(F_2)\,.

b. Jednorodność.
   
   Niech :math:`\,F\in\text{Hom}(V,W),\ \ a\in K.\ \,` Wtedy :math:`\,j`-ta kolumna macierzy
   :math:`\,M_{\mathcal{B}\mathcal{C}}(aF)`
   
   .. math::

      I_{\mathcal{C}}\,[\,(aF)(v_j)\,]\ =\ I_{\mathcal{C}}\,[\,a\cdot F(v_j)\,]\ =\ 
      a\cdot I_{\mathcal{C}}\,[\,F(v_j)\,]
      
   jest pomnożoną przez :math:`\,a\ \ j`-tą kolumną macierzy 
   :math:`\,M_{\mathcal{B}\mathcal{C}}(F)\,,\ \ j=1,2,\dots,n.\ \,` Stąd
   
   .. math::
      
      M_{\mathcal{B}\mathcal{C}}(a\,F)\ =\ a\,M_{\mathcal{B}\mathcal{C}}(F)\,.

c. Bijektywność.
   
   Trzeba pokazać, że każda macierz :math:`\,\boldsymbol{F}\in M_{m\times n}(K)\ ` odpowiada 
   dokładnie jednemu przekształceniu :math:`\,F\in\text{Hom}(V,W).\ \,`
   Istotnie, kolumny macierzy :math:`\boldsymbol{F}\,` wyznaczają (poprzez współrzędne w bazie
   :math:`\ \mathcal{C}`) :math:`\,` obrazy :math:`\ Fv_j\ ` wektorów :math:`\,v_j\ ` bazy 
   :math:`\ \mathcal{B},\ ` przez co (patrz wniosek do Twierdzenia 5.) :math:`\,`
   przekształcenie :math:`\ F\ ` jest jednoznacznie określone.

:math:`\;`

Na podstawie Twierdzenia 8. można teraz zapisać 

.. admonition:: Wniosek.
   
   Jeżeli :math:`\,V\ \,\text{i}\ \ W\ ` są skończenie wymiarowymi przestrzeniami 
   nad ciałem :math:`\,K,\ \,` to
   
   .. math::
      
      \dim\,\text{Hom}(V,W)\ =\ \dim\,V\,\cdot\,\dim\,W\,.

:math:`\;`

Zajmiemy się jeszcze przypadkiem, gdy :math:`\,V=K^n\ ` 
z bazą kanoniczną :math:`\ \mathcal{E}=
(\boldsymbol{e}_1,\boldsymbol{e}_2,\dots,\boldsymbol{e}_n)\,,\ `
:math:`\,W=K^m\ ` z bazą kanoniczną 
:math:`\ \mathcal{F}=(\boldsymbol{f}_1,\boldsymbol{f}_2,\dots,\boldsymbol{f}_m)\ `
oraz :math:`\,F\in\text{Hom}(K^n,K^m).`

Macierz przekształcenia :math:`\,F\ ` w bazach kanonicznych 
:math:`\ \mathcal{E}\ \,\text{i}\ \ \mathcal{F}\ ` ma postać

.. math::
   
   M_{\mathcal{E}\mathcal{F}}(F)\ =\ 
   [\,I_{\mathcal{F}}(F\boldsymbol{e}_1)\,|\,I_{\mathcal{F}}(F\boldsymbol{e}_2)\,|\,\dots\,
   |\,I_{\mathcal{F}}(F\boldsymbol{e}_n)\,]\,.

Ale w przestrzeni :math:`\,K^m\ ` każdy wektor jest kolumną swoich współrzędnych
w bazie kanonicznej: 
:math:`\ \ I_{\mathcal{F}}(\boldsymbol{w})=\boldsymbol{w},\ \ \boldsymbol{w}\in K^m.\ `
Oznaczając macierz przekształcenia :math:`\,F\ ` w bazach kanonicznych 
po prostu przez :math:`\,M(F),\ ` otrzymujemy wzór uproszczony:

.. math::
   
   M(F)\ =\ [\,F\boldsymbol{e}_1\,|\,F\boldsymbol{e}_2\,|\,\dots\,|\,F\boldsymbol{e}_n\,]\,,

wprowadzony wstępnie już wcześniej w równaniu :eq:`intro`. 
Wzór :eq:`fund` w Twierdzeniu 10. przyjmuje teraz postać

.. math::
   
   \boldsymbol{y}\,=\,F(\boldsymbol{x})\quad\Rightarrow\quad \boldsymbol{y}\ =\ 
   M(F)\,\cdot\,\boldsymbol{x}\,,\qquad \boldsymbol{x}\in K^n\,,\ \ \boldsymbol{y}\in K^m\,.










































