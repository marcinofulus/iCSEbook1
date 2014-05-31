
Własności działań na macierzach
-------------------------------

Własności mnożenia macierzowego
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Opierając się na definicji iloczynu macierzy prostokątnych oraz na wyprowadzonych
   z niej regułach i wzorach można udowodnić następujące własności:

Odwołując się do definicji iloczynu macierzowego można udowodnić następujące własności:

1. Mnożenie macierzy jest łączne:

   :math:`\ (\boldsymbol{A} \boldsymbol{B})\,\boldsymbol{C} \ =\ 
   \boldsymbol{A}\,(\boldsymbol{B} \boldsymbol{C})\,,
   \qquad\quad
   \boldsymbol{A}\in M_{m\times p}(K),\ \  
   \boldsymbol{B}\in M_{p\times q}(K),\ \ 
   \boldsymbol{C}\in M_{q\times n}(K)\,.`

2. Mnożenie macierzy jest rozdzielne względem dodawania:

   :math:`\ (\boldsymbol{A}+\boldsymbol{B})\,\boldsymbol{C} \ =\ 
   \boldsymbol{A} \boldsymbol{C}\,+\,\boldsymbol{B} \boldsymbol{C}\,,
   \qquad\quad
   \boldsymbol{A},\boldsymbol{B}\in M_{m\times p}(K),\ \ \boldsymbol{C}\in M_{p\times n}(K)\,;`

   :math:`\ \boldsymbol{A}\,(\boldsymbol{B}+\boldsymbol{C})\ =\ 
   \boldsymbol{A} \boldsymbol{B}\ +\ \boldsymbol{A} \boldsymbol{C}\,,
   \qquad\quad
   \boldsymbol{A}\in M_{m\times p}(K),\ \ \boldsymbol{B},\boldsymbol{C}\in M_{p\times n}(K)\,.`

3. Mnożenie macierzy przez liczby wiąże się z mnożeniem macierzowym następująco:      
      
   :math:`\ c\ (\boldsymbol{A} \boldsymbol{B})\ =\ 
   (c \boldsymbol{A})\,\boldsymbol{B}\ =\ 
   \boldsymbol{A}\,(c \boldsymbol{B})\,,
   \qquad
   c\in K,\ \ \boldsymbol{A}\in M_{m\times p}(K),\ \ \boldsymbol{B}\in M_{p\times n}(K)\,.`

4. Elementem neutralnym dla mnożenia w zbiorze :math:`\ M_n(K)\ ` jest macierz jednostkowa 

   :math:`\ \qquad\qquad\qquad\qquad\boldsymbol{I}_n \ :\,=\ 
   \left[\begin{array}{cccc} 
   1      &    0   & \ldots &    0   \\
   0      &    1   & \ldots &    0   \\
   \ldots & \ldots & \ldots & \ldots \\
   0      &    0   & \ldots &    1     
   \end{array}\right]\,.`

   Oznacza to, że
   :math:`\quad\boldsymbol{I}_n\,\boldsymbol{A}\ =\ 
   \boldsymbol{A}\,\boldsymbol{I}_n\ =\ \boldsymbol{A}\quad`
   dla każdej macierzy :math:`\ \boldsymbol{A}\in M_n(K).`

5. | Mnożenie macierzowe jest nieprzemienne: :math:`\,` 
     na ogół :math:`\ \boldsymbol{A} \boldsymbol{B} \neq \boldsymbol{B} \boldsymbol{A}`
   | nawet dla macierzy kwadratowych tego samego stopnia, gdy obydwa iloczyny istnieją.
   
   Jedynie macierze proporcjonalne do macierzy jednostkowej

   :math:`\qquad\ \,
   c\ \boldsymbol{I}_n\ =\ \left[\begin{array}{cccc} 
   c      &    0   & \ldots &    0   \\
   0      &    c   & \ldots &    0   \\
   \ldots & \ldots & \ldots & \ldots \\
   0      &    0   & \ldots &    c     
   \end{array}\right]\,,\qquad c\,\in\,K,`
   
   są przemienne ze wszystkimi macierzami ze zbioru :math:`\ M_n(K).`

Pouczający przykład nieprzemienności mnożenia macierzowego.

:math:`\qquad\text{Dla}\quad\boldsymbol{A}\ =\ [\,a_1\ a_2\ a_3\,]\,,\quad 
\boldsymbol{B}\ =\ \left[\begin{array}{c} b_1 \\ b_2 \\ b_3 \end{array}\right]\,:`

:math:`\qquad\boldsymbol{A} \boldsymbol{B}\ =\ 
[\,a_1\ a_2\ a_3\,]\ \left[\begin{array}{c} b_1 \\ b_2 \\ b_3 \end{array}\right]\ =\    
[\,a_1\,b_1\;+\;a_2\,b_2\;+\;a_3\,b_3\,]\ \simeq\ a_1\,b_1\;+\;a_2\,b_2\;+\;a_3\,b_3\,,`

.. :math:`\qquad` (formalnie :math:`\ \boldsymbol{A} \boldsymbol{B}\,\in M_{1\times 1}(K),\ \,`
   ale :math:`\ M_{1\times 1}(K)\simeq\,K)\,;`

:math:`\qquad\ \boldsymbol{B} \boldsymbol{A}\ \,=\ \,
\left[\begin{array}{c} b_1 \\ b_2 \\ b_3 \end{array}\right]\ 
[\,a_1\ a_2\ a_3\,]\ =\ 
\left[\,\begin{array}{ccc}
b_1\,a_1 & b_1\,a_2 & b_1\,a_3 \\ 
b_2\,a_1 & b_2\,a_2 & b_2\,a_3 \\
b_3\,a_1 & b_3\,a_2 & b_3\,a_3
\end{array}\right]\,.`

Z przedstawionych własności wynika, że zbiór :math:`\ M_n(K)\ ` jest nieprzemienną algebrą 
z jednością.

.. ze względu na dodawanie macierzy, mnożenie ich przez liczby z :math:`\,K\,`
   i mnożenie macierzowe.

Alternatywna definicja iloczynu macierzy kwadratowych
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Pomnożenie :math:`\,n`-elementowego wektora kolumnowego 
z lewej strony przez macierz kwadratową stopnia :math:`\,n\ ` 
daje w wyniku wektor tego samego typu. 
Operacja ta jest więc działaniem (zewnętrznym) w zbiorze :math:`\ K^n\ \,n`-elementowych wektorów :math:`\ ` - :math:`\ ` uogólnieniem mnożenia wektorów przez liczby.
Otrzymany w ten sposób wektor można powtórnie pomnożyć z lewej strony przez (jakąś inną) macierz,
czego wynikiem będzie znowu pewien wektor ze zbioru :math:`\,K^n.`

Taka interpretacja pozwala wprowadzić niezależne określenie iloczynu dwóch macierzy kwadratowych tego samego stopnia.

.. admonition:: Definicja. :math:`\,`

   Niech będą dane macierze :math:`\,\boldsymbol{A},\boldsymbol{B}\in M_n(K)\,.` :math:`\\`
   Wtedy ich iloczyn :math:`\,\boldsymbol{A}\boldsymbol{B}\ `
   jest macierzą ze zbioru :math:`\,M_n(K)\ ` spełniającą warunek   

   .. math::
      :label: alt_def
   
      \boldsymbol{A}\,(\boldsymbol{B}\,\boldsymbol{x}) \ =\ 
      (\boldsymbol{A} \boldsymbol{B})\,\boldsymbol{x}
      \qquad\text{dla każdego wektora}\quad\boldsymbol{x}\in K^n\,.

Dla sprawdzenia, że ta definicja jest zgodna z bardziej ogólnym
określeniem mnożenia macierzy prostokątnych w poprzedniej sekcji, 
rozważmy wektory kolumnowe 

.. math::
   
   \boldsymbol{x} = [x_i]_n,\quad\boldsymbol{y} = [y_i]_n,\quad\boldsymbol{z} = [z_i]_n\ \ \in\ K^n

oraz macierze kwadratowe 

.. math::
   
   \boldsymbol{A} = [a_{ij}]_{n\times n}\,,\quad
   \boldsymbol{B} = [b_{ij}]_{n\times n}\ \ \in\ M_n(K)\,,

dla których zachodzą związki:

.. math::

   \boldsymbol{z}\ =\ \boldsymbol{A}\,\boldsymbol{y}\,,
   \qquad\text{czyli}\qquad z_i\ =\ \sum_{k=1}^n\;a_{ik}\;y_k\,, \quad i=1,2,\ldots,n\,,
   \qquad\qquad\text{(a)}

   \boldsymbol{y}\ =\ \boldsymbol{B}\,\boldsymbol{x}\,,
   \qquad\text{czyli}\qquad y_k\ =\ \sum_{j=1}^n\;b_{kj}\;x_j\,, \quad k=1,2,\ldots,n\,.
   \qquad\qquad\text{(b)}

Podstawiając wyrażenia w wierszu (b) do odpowiednich wzorów w wierszu (a), otrzymujemy

.. math::

   \boldsymbol{z}\ =\ \boldsymbol{A}\,(\boldsymbol{B}\,\boldsymbol{x})\,,

   z_i\ =\ \sum_{k=1}^n\ a_{ik}\,\left(\;\sum_{j=1}^n\;b_{kj}\;x_j \right)
   \ =\ \sum_{k,j=1}^n\;a_{ik}\;b_{kj}\;x_j
   \ =\ \sum_{j=1}^n\ \left(\ \sum_{k=1}^n\;a_{ik}\;b_{kj}\right)\ x_j\,.

Ostatni wzór można przepisać jako

.. math::
   :label: 07
   
   \begin{array}{lclcl}
   & z_i\ =\ \displaystyle\sum_{j=1}^n\;c_{ij}\;x_j\,,\quad & \text{gdzie}
   & \quad c_{ij}\ =\ \displaystyle\sum_{k=1}^n\;a_{ik}\;b_{kj}\,, & i,j\,=\,1,2,\ldots,n\,, \\ \\
   \text{czyli} & \boldsymbol{z} = \boldsymbol{C}\,\boldsymbol{x}\,,\quad & \text{gdzie}
   & \quad\boldsymbol{C}\,=\,[c_{ij}]_{n\times n}\,. &
   \end{array}

A zatem
:math:`\ \boldsymbol{A}\,(\boldsymbol{B}\,\boldsymbol{x})=\boldsymbol{C}\,\boldsymbol{x},\ `
gdzie macierz :math:`\ \boldsymbol{C}\ ` o elementach :math:`\,c_{ij}\ ` danych przez :eq:`07`
jest iloczynem macierzy :math:`\ \boldsymbol{A}\ ` i :math:`\ \boldsymbol{B}\ ` 
w sensie definicji iloczynu macierzowego w poprzedniej sekcji.
 
.. Wzór :eq:`alt_def` pozwala interpretować iloczyn dwóch macierzy kwadratowych tego samego stopnia 
   jako macierz, odpowiadającą złożeniu dwóch operacji liniowych na wektorach kolumnowych.

Wierszowa reguła mnożenia macierzowego
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Niech będą dane dwie macierze nad ciałem :math:`\,K,\,` zapisane w postaci wierszowej:

.. math::
   
   \boldsymbol{A}\ =\ \left[\begin{array}{c}
                            \boldsymbol{A}_1 \\ 
                            \boldsymbol{A}_2 \\
                            \dots            \\
                            \boldsymbol{A}_m \end{array}\right]\ =\ [a_{ij}]_{m\times p}\,,
   \qquad
   \boldsymbol{B}\ =\ \left[\begin{array}{c}
                            \boldsymbol{B}_1 \\ 
                            \boldsymbol{B}_2 \\
                            \dots            \\
                            \boldsymbol{B}_p \end{array}\right]\ =\ [b_{ij}]_{p\times n}\,.

Tutaj
:math:`\quad\boldsymbol{A}_i\ =\ [\;a_{i1}\ a_{i2}\ \dots a_{ip}\;]\ \ (i=1,2,\dots,m),\quad
\boldsymbol{B}_i\ =\ [\;b_{i1}\ b_{i2}\ \dots b_{in}\;]\ \ (i=1,2,\dots,p). \\`

Iloczyn macierzy :math:`\,\boldsymbol{A}\ \ \text{i}\ \ \boldsymbol{B}\ `
można teraz zapisać następująco: :math:`\\`

.. math::
   :label: rule_verse_1

   \boldsymbol{A}\boldsymbol{B}\ \equiv\    
   \left[\begin{array}{c}
         \boldsymbol{A}_1 \\ 
         \boldsymbol{A}_2 \\
         \dots            \\
         \boldsymbol{A}_m \end{array}\right]\boldsymbol{B}
   \ \ =\ \   
   \left[\begin{array}{c}
         \boldsymbol{A}_1\,\boldsymbol{B} \\ 
         \boldsymbol{A}_2\,\boldsymbol{B} \\
         \dots            \\
         \boldsymbol{A}_m\,\boldsymbol{B} \end{array}\right],

.. math::
   :label: rule_verse_2

   \text{przy czym}\qquad
   \boldsymbol{A}_i\,\boldsymbol{B}\ \ =\ \ 
   \sum_{k=1}^p \,a_{ik}\,\boldsymbol{B}_k\,,\quad i=1,2,\dots, m.

.. Wzory :math:`\,` :eq:`rule_verse_1` :math:`\,` i :math:`\,` :eq:`rule_verse_2` :math:`\,`
   są odpowiednikami równań :math:`\,` :eq:`rule_col_1` :math:`\,` i :math:`\,` :eq:`rule_col_2`,
   a wynikająca z nich reguła jest wierszowym odpowiednikiem Reguły 1.: 

Reguła wynikająca ze wzorów 
:math:`\,` :eq:`rule_verse_1` :math:`\,` i :math:`\,` :eq:`rule_verse_2` :math:`\,`
jest wierszowym odpowiednikiem Reguły 1.:

.. admonition:: Reguła 3. :math:`\,` (wierszowa reguła mnożenia macierzowego) :math:`\\`

   Jeżeli 
   :math:`\ \boldsymbol{A}\,\in M_{m\times p}(K),\ \boldsymbol{B}\,\in M_{p\times n}(K),\ `
   to :math:`\ i`-ty wiersz iloczynu :math:`\ \boldsymbol{A} \boldsymbol{B}\,:` :math:`\\`

   1. jest iloczynem :math:`\ i`-tego wiersza macierzy :math:`\ \boldsymbol{A}\ `
      przez macierz :math:`\ \boldsymbol{B}\,;` :math:`\\`

   2. jest kombinacją liniową wierszy macierzy :math:`\boldsymbol{B},\,`
      której współczynnikami są kolejne elementy :math:`\,i`-tego wiersza macierzy 
      :math:`\,\boldsymbol{A},\ \ i\,=\,1,2,\ldots,m.`

:math:`\,`

**Dowód.** :math:`\,` Wprowadzamy oznaczenie

.. math::
   
   \boldsymbol{W}\ \equiv\ \left[\begin{array}{c}
                            \boldsymbol{W}_1 \\ 
                            \boldsymbol{W}_2 \\
                            \dots            \\
                            \boldsymbol{W}_m \end{array}\right]\ :\,=\ 
   \left[\begin{array}{c}
         \boldsymbol{A}_1\,\boldsymbol{B} \\ 
         \boldsymbol{A}_2\,\boldsymbol{B} \\
         \dots            \\
         \boldsymbol{A}_m\,\boldsymbol{B} \end{array}\right],
   \qquad
   \boldsymbol{W}\ =\ [w_{ij}]_{m\times n}\,,

oraz zapisujemy macierz :math:`\ \boldsymbol{B}\ ` w postaci kolumnowej:

.. math::
   
   \boldsymbol{B}\ \,=\ \,
   \left[\;\boldsymbol{C}_1\,|\,\boldsymbol{C}_2\,|\,\dots\,|\,\boldsymbol{C}_n\,\right],
   \qquad
   \boldsymbol{C}_j\ =\ \left[\begin{array}{c}
                              b_{1j} \\ b_{2j} \\ \dots \\ b_{pj}
                              \end{array}\right]\,,\quad j=1,2,\dots,n.

Wykorzystując kolumnową regułę mnożenia macierzowego otrzymujemy

.. math::
   
   \boldsymbol{W}_i\ =\ 
   \boldsymbol{A}_i\,\boldsymbol{B}\ \,=\ \,
   \boldsymbol{A}_i\ \,
   \left[\;\boldsymbol{C}_1\,|\,\boldsymbol{C}_2\,|\,\dots\,|\,\boldsymbol{C}_n\,\right]\ \ =\ \ 
   \left[\;\boldsymbol{A}_i\,\boldsymbol{C}_1\;|\; 
           \boldsymbol{A}_i\,\boldsymbol{C}_2\;|\; 
           \dots\;|\;
           \boldsymbol{A}_i\,\boldsymbol{C}_n\,\right],

.. math::

   w_{ij}\ =\ \boldsymbol{A}_i\,\boldsymbol{C}_j\ \,=\ \,
   [\,a_{i1}\ a_{i2}\ \dots a_{ip}\,]\ 
   \left[\begin{array}{c} b_{1j} \\ b_{2j} \\ \dots \\ b_{pj} \end{array}\right]\ \ =\ \ 
   \sum_{k=1}^p\,a_{ik}\,b_{kj}\,,\qquad
   \begin{array}{l} i\,=\,1,2,\ldots,m\,; \\ j\,=\,1,2,\ldots,n. \end{array}

Macierze :math:`\ \boldsymbol{A}\boldsymbol{B}\ \ \text{i}\ \ \boldsymbol{W}\ `
mają te same rozmiary (:math:`m\,` wierszy i :math:`\,n\,` kolumn), :math:`\\`
a ich odpowiednie elementy są sobie równe:

.. math::
   
   (\boldsymbol{A}\boldsymbol{B})_{ij}\ =\ \sum_{k=1}^p\,a_{ik}\,b_{kj}\ =\ 
   w_{ij}\ =\ (\boldsymbol{W})_{ij}\,,
   \qquad
   i=1,2,\dots,m;\ \ j=1,2,\dots,n.

Oznacza to równość samych macierzy:
:math:`\qquad\boldsymbol{A}\boldsymbol{B}\ =\ \boldsymbol{W}\,.`

W ten sposób wzór :math:`\,` :eq:`rule_verse_1` :math:`\,` został udowodniony.

Dla wykazania związku :math:`\,` :eq:`rule_verse_2` :math:`\,` zauważmy, że :math:`\\`

.. .. math::
   :nowrap:
   
   \begin{eqnarray*}
   \boldsymbol{W}_i & \ =\  & \left[\ \ \ w_{i1}\quad w_{i2}\quad \ldots\quad w_{in}\ \ \ \right]
   \\ \\
   & \ =\ & \left[\quad\sum_{k=1}^p\,a_{ik}\,b_{k1}\quad\, 
                                     \sum_{k=1}^p\,a_{ik}\,b_{k2}\quad\,
                                     \ldots\quad\,
                                     \sum_{k=1}^p\,a_{ik}\,b_{kn}\ \ \,\right] \\
   & \ =\  & \ \sum_{k=1}^p\ \ \left[\ \, a_{ik}\,b_{k1}\quad
                               a_{ik}\,b_{k2}\quad 
                               \ldots\quad 
                               a_{ik}\,b_{kn}\ \, \right] \\
   & \ =\  & \ \sum_{k=1}^p\ \ a_{ik}\ \left[\ \,b_{k1}\ \ b_{k2}\ \ \ldots\ \ b_{kn}\ \,\right] \\
   & \ =\  & \ \sum_{k=1}^p\ a_{ik}\ \boldsymbol{B}_k \,,\qquad\quad i=1,2,\dots,m.
   \end{eqnarray*}

.. math::
   
   \begin{array}{ccl}
   \boldsymbol{W}_i & = & \left[\ \ w_{i1}\quad w_{i2}\quad \ldots\quad w_{in}\ \ \right]\ \ \ = \\ \\
   & = & \left[\quad\displaystyle\sum_{k=1}^p\,a_{ik}\,b_{k1}\quad\, 
                                 \sum_{k=1}^p\,a_{ik}\,b_{k2}\quad\,
                                 \ldots\quad\,
                                 \sum_{k=1}^p\,a_{ik}\,b_{kn}\ \ \,\right]\ \ \ = \\ \\
   & = & \ \displaystyle\sum_{k=1}^p\ \ a_{ik}\ 
         \left[\ \,b_{k1}\ \ b_{k2}\ \ \ldots\ \ b_{kn}\ \,\right]\ \ \ = \\ \\
   & = & \ \displaystyle\sum_{k=1}^p\ a_{ik}\ \boldsymbol{B}_k \,,\qquad\quad i=1,2,\dots,m.
   \end{array}

   \; 
   


























