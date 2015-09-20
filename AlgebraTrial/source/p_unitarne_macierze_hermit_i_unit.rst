
Hermitian and Unitary Matrices
------------------------------

Hermitian Conjugation of a Matrix
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. admonition:: Definicja.

   *Sprzężeniem hermitowskim* prostokątnej zespolonej macierzy 
   :math:`\ \boldsymbol{A}\,=\,[\,\alpha_{ij}]_{m\times n}\ `
   jest macierz :math:`\ \boldsymbol{A}^+=\,[\,\alpha_{ij}^+\,]_{n\times m}\,,\ \,`
   gdzie :math:`\ \alpha_{ij}^+\,:\,=\,\alpha_{ji}^*\,,\ ` :math:`i=1,2,\dots,n,\ \ j=1,2,\dots,m\,.`
   
   Operacja sprzężenia hermitowskiego jest zatem złożeniem transponowania macierzy :math:`\\`
   i sprzężenia zespolonego jej elementów (dwie ostatnie operacje są przemienne):
   
   .. math::
      :label: A_plus
      
      \boldsymbol{A}^+\,:\,=\ (\boldsymbol{A}^T)^*\,=\ (\boldsymbol{A}^*)^T\,.

Nazwa pochodzi od nazwiska francuskiego matematyka Charlesa Hermite'a (1822-1901).

W analogii do sprzężenia zespolonego, termin "sprzężenie hermitowskie" będzie oznaczać również operację, której wynikiem jest sprzężenie hermitowskie macierzy..

.. W dalszym ciągu termin "sprzężenie hermitowskie" będzie oznaczać (zależnie do kontekstu)
   operację    sprzężenia bądź jej wynik.

**Przykład.**

.. math::
   
   \boldsymbol{A}\ =\ 
   \left[\begin{array}{ccc}
   2-i & 3 & 1+i \\ 0 & -1+2\,i & 4\,i
   \end{array}\right]\in M_{2\times 3}(C)\,:\quad
   \boldsymbol{A}^+\,=\ 
   \left[\begin{array}{cc}
   2+i & 0 \\ 3 & -1-2\,i \\ 1-i & -4\,i
   \end{array}\right]\in M_{3\times 2}(C)\,.

**Własności operacji sprzężenia hermitowskiego.**

1. Sprzężenie sumy macierzy :math:`\ \boldsymbol{A},\boldsymbol{B}\in M_{m\times n}(C)\ `
   równa się sumie ich sprzężeń:

   .. math::
      
      (\boldsymbol{A}+\boldsymbol{B})^+\,=\ \boldsymbol{A}^+\,+\ \boldsymbol{B}^+\,.

2. Pomnożenie macierzy przez :math:`\,\alpha\in C\ ` mnoży jej sprzężenie przez :math:`\,\alpha^*:`
   
   .. math::
      
      (\alpha\boldsymbol{A})^+\,=\ \alpha^*\boldsymbol{A}^+\,,\qquad
      \alpha\in C\,,\ \ \boldsymbol{A}\in M_{m\times n}(C)\,.

3. Sprzężenie iloczynu macierzy 
   :math:`\ \boldsymbol{A}\in M_{m\times p}\ \,\text{i}\ \ \boldsymbol{B}\in M_{p\times n}\ `
   równa się iloczynowi sprzężeń z odwróceniem kolejności czynników:
   
   .. math::
      
      (\boldsymbol{A}\boldsymbol{B})^+\,=\ \boldsymbol{B}^+\boldsymbol{A}^+\,.

4. Dwukrotne sprzężenie przywraca wyjściową macierz:
   
   .. math::
      
      (\boldsymbol{A}^+)^+\,=\ \boldsymbol{A}\,,\qquad\boldsymbol{A}\in M_{m\times n}(C)\,.

.. admonition:: Wniosek.
   
   Sprzężenie hermitowskie jest operacją antyliniową:
   
   .. math::
      
      (\alpha_1\boldsymbol{A}_1+\alpha_2\boldsymbol{A}_2)^+\,=\ 
      \alpha_1^*\,\boldsymbol{A}_1^+\,+\,\alpha_2^*\,\boldsymbol{A}_2^+\,,\quad
      \alpha_1,\alpha_2\in C\,,\ \ \boldsymbol{A}_1,\boldsymbol{A}_2\in M_{m\times n}(C)\,.

Dla rzeczywistej macierzy :math:`\,\boldsymbol{A}\in M_{m\times n}(R)\ `
sprzężenie hermitowskie sprowadza się do transpozycji: 
:math:`\,\boldsymbol{A}^+\,=\ \boldsymbol{A}^T\,.`

W przestrzeni :math:`\,C^n\ ` iloczyn skalarny wektorów :math:`\ \  
\boldsymbol{x}\,=\,
\left[\begin{array}{c} \alpha_1 \\ \alpha_2 \\ \dots \\ \alpha_n \end{array}\right]
\ \ \ \text{i}\quad
\boldsymbol{y}\,=\,
\left[\begin{array}{c} \beta_1 \\ \beta_2 \\ \dots \\ \beta_n \end{array}\right]`

można teraz zapisać zwięźle w postaci iloczynu macierzowego:

.. math::
   :label: x_y
   
   \langle \boldsymbol{x},\boldsymbol{y}\rangle\ \,=\ \,
   \sum_{i\,=\,1}^n\ \alpha_i^*\,\beta_i\ \,=\ \,
   [\,\alpha_1^*,\,\alpha_2^*,\,\dots,\,\alpha_n^*\,]\ 
   \left[\begin{array}{c} \beta_1 \\ \beta_2 \\ \dots \\ \beta_n \end{array}\right]\ \,=\ \,
   \boldsymbol{x}^+\,\boldsymbol{y}\,.

.. admonition:: Twierdzenie 5.

   Dla danej macierzy :math:`\,\boldsymbol{A}\in M_n(C),\ ` 
   :math:`\ \boldsymbol{A}^+\ ` jest jedyną macierzą spełniającą warunek
   
   .. math::
      :label: x_A_y 
      
      \langle\,\boldsymbol{x},\boldsymbol{A}^+\boldsymbol{y}\,\rangle\ =\ 
      \langle\,\boldsymbol{A}\boldsymbol{x},\boldsymbol{y}\,\rangle\qquad
      \text{dla dowolnych}\ \ \boldsymbol{x},\boldsymbol{y}\in C^n\,.

**Dowód.**

.. Najpierw sprawdzimy, że macierz :math:`\,\boldsymbol{A}^+\ ` spełnia warunek :eq:`x_A_y`:

Korzystając z 3. własności sprzężenia hermitowskiego i wzoru :eq:`x_y` stwierdzamy, że

.. math::
   
   \langle\boldsymbol{x},\boldsymbol{A}^+\boldsymbol{y}\rangle\,=\,
   \boldsymbol{x}^+(\boldsymbol{A}^+\boldsymbol{y})\,=\, 
   (\boldsymbol{x}^+\boldsymbol{A}^+)\ \boldsymbol{y}\,=\,
   (\boldsymbol{A}\boldsymbol{x})^+\boldsymbol{y}\,=\,
   \langle\boldsymbol{A}\boldsymbol{x},\boldsymbol{y}\rangle\,.

Tak więc macierz :math:`\,\boldsymbol{A}^+\ ` spełnia warunek :eq:`x_A_y`.
Aby pokazać, że jest to jedyna macierz o tej własności, :math:`\,`
oznaczmy :math:`\,\boldsymbol{A}=[\,\alpha_{ij}\,]_{n\times n}\ ` i :math:`\,` przypuśćmy,
że dla pewnej macierzy :math:`\,\boldsymbol{B}=[\,\beta_{ij}\,]_{n\times n}:`

.. math::

   \langle\,\boldsymbol{x},\boldsymbol{B}\boldsymbol{y}\,\rangle\ =\ 
   \langle\,\boldsymbol{A}\boldsymbol{x},\boldsymbol{y}\,\rangle\qquad
   \text{dla dowolnych}\ \ \boldsymbol{x},\boldsymbol{y}\in C^n\,.

Podstawiając za 
:math:`\ \,\boldsymbol{x},\,\boldsymbol{y}\ \,` wektory bazy kanonicznej
:math:`\ \,\boldsymbol{e}_i,\,\boldsymbol{e}_j\ \,` otrzymamy :math:`\,`
(:math:`\ i,j=1,2,\dots,n`) :

.. math::
   
   \beta_{ij}\,=\ \boldsymbol{e}_i^+\,\boldsymbol{B}\,\boldsymbol{e}_j\,=\ 
   \langle\,\boldsymbol{e}_i,\boldsymbol{B}\boldsymbol{e}_j\rangle\ =\ 
   \langle\,\boldsymbol{A}\boldsymbol{e}_i,\boldsymbol{e}_j\,\rangle\ =\ 
   \langle\,\boldsymbol{e}_j,\boldsymbol{A}\boldsymbol{e}_i\rangle^*\ =\ 
   (\boldsymbol{e}_j^+\boldsymbol{A}\;\boldsymbol{e}_i)^*\,=\ \alpha_{ji}^*\,=\ 
   \alpha_{ij}^+\,,

co oznacza równość macierzową :math:`\ \boldsymbol{B}=\boldsymbol{A}^+\,.`

Warunek :eq:`x_A_y` można więc przyjąć jako równoważną definicję sprzężenia hermitowskiego
:math:`\ \boldsymbol{A}^+\,` *kwadratowej* macierzy :math:`\,\boldsymbol{A}.\ `
Jak zobaczymy dalej, w taki właśnie sposób definiuje się sprzężenie hermitowskie operatora liniowego.

.. Tutaj raczej przyjęliśmy bardziej ogólne określenie :eq:`A_plus`, natomiast warunek analogiczny
   do :eq:`x_A_y` pojawi się w definicji sprzężenia hermitowskiego operatora liniowego.

.. admonition:: Twierdzenie 6.
   
   Wyznacznik sprzężenia hermitowskiego zespolonej macierzy kwadratowej 
   równa się sprzężeniu zespolonemu jej wyznacznika:
   
   .. math::
      
      \det\boldsymbol{A}^+\ =\ (\det\boldsymbol{A})^*\,,\qquad\boldsymbol{A}\in M_n(C)\,.
 
**Dowód.** :math:`\,` Niech :math:`\,\boldsymbol{A}=[\,\alpha_{ij}\,]_{n\times n}\in M_n(C).`
Na podstawie definicji :eq:`A_plus` mamy 

.. math::
   
   \det\boldsymbol{A}^+\,=\ \det\,(\boldsymbol{A}^*)^T\,=\ \det\boldsymbol{A}^*\,,
   \qquad\text{gdzie}\quad\boldsymbol{A}^*=[\,\alpha_{ij}^*\,]_{n\times n}\,.

Przywołując rozwinięcie permutacyjne wyznacznika łatwo uzasadnić, że wyznacznik macierzy sprzężonej (w sensie sprzężenia zespolonego) równa się sprzężeniu zespolonemu jej wyznacznika:
:math:`\ \,\det\boldsymbol{A}^*\equiv\det[\,\alpha_{ij}^*\,]\ =\ (\det\boldsymbol{A})^*\,,\ \,`
co bezpośrednio prowadzi do tezy.

Hermitian Matrices
~~~~~~~~~~~~~~~~~~

.. admonition:: Definicja.

   Macierz :math:`\,\boldsymbol{A}=[\,\alpha_{ij}\,]_{n\times n}\in M_n(C)\ `
   nazywa się *macierzą hermitowską*, :math:`\,` gdy równa się swojemu sprzężeniu hermitowskiemu:
   
   .. math::
      :label: A_hermit
      
      \boldsymbol{A}\,=\,\boldsymbol{A}^+\,,\qquad\text{czyli}\quad
      \alpha_{ij}=\alpha_{ji}^*\,,\quad i,j=1,2,\dots,n.

**Przykład** macierzy hermitowskiej:

.. math::
   
   \boldsymbol{A}\ =\ 
   \left[\begin{array}{ccc}
   3 & 2-i & -4+3\,i \\ 2+i & -1 & -i \\ -4-3\,i & i & 5 
   \end{array}\right]\,.

Przytoczone poniżej własności polegają na tym,  
że pewna wielkość związana z (zespoloną) :math:`\,` macierzą hermitowską jest rzeczywista. 
Gdy trzeba pokazać, że dana liczba zespolona jest liczbą rzeczywistą,
przydatny jest następujący 

**Lemat.** :math:`\,` Niech :math:`\,z\in C.\ \,` 
Wtedy :math:`\quad z\in R\quad\Leftrightarrow\quad z=z^*\,.`

Istotnie, :math:`\,` jeżeli :math:`\ z=a+b\,i\,,\ ` to warunek :math:`\ \,z=z^*\ \,`
oznacza :math:`\ \,a+b\,i=a-b\,i\,,\ \,` :math:`\\`
co jest równoważne stwierdzeniu, że :math:`\ \,b\equiv\text{im}\,z=0.`

**Własności** macierzy hermitowskich.

1. Diagonalne elementy macierzy hermitowskiej są liczbami rzeczywistymi. :math:`\\`
   Istotnie, zapisując warunek :eq:`A_hermit` dla :math:`\,i=j\ ` otrzymujemy
   :math:`\ \alpha_{ii}=\alpha_{ii}^*\,,\ ` :math:`\\`
   co oznacza, że :math:`\ \alpha_{ii}\in R\,,\ \ i=1,2,\dots,n\,.`
   

2. Ślad i wyznacznik macierzy hermitowskiej są rzeczywiste:
   :math:`\ \text{tr}\,\boldsymbol{A},\,\det\boldsymbol{A}\,\in\,R\,.`
   Wynika to z definicji śladu jako sumy elementów diagonalnych macierzy 
   oraz z Twierdzenia 6. o wyznaczniku sprzężenia hermitowskiego macierzy:
   
   .. math::
      
      \begin{array}{rclcl}
      \boldsymbol{A}=\boldsymbol{A}^+ & \Rightarrow & \det\boldsymbol{A}\ =\ \det\boldsymbol{A}^+   &                 &                           \\
                                      &             & \det\boldsymbol{A}\ =\ (\det\boldsymbol{A})^* & \Leftrightarrow & \det\boldsymbol{A}\in R\,. 
      \end{array}

3. Jeżeli :math:`\,\boldsymbol{A}\in M_n(C)\ ` jest macierzą hermitowską,
   to dla każdego wektora :math:`\ \boldsymbol{x}\in C^n\ ` iloczyn skalarny
   :math:`\ \langle\,\boldsymbol{x},\boldsymbol{A}\boldsymbol{x}\,\rangle\ `
   jest liczbą rzeczywistą:

   .. math::
      :label: xAx
      
      \langle\,\boldsymbol{x},\boldsymbol{A}\boldsymbol{x}\,\rangle\in R\,,\qquad
      \boldsymbol{x}\in C^n\,.
      
   
   **Dowód.** :math:`\,` Podstawiając  
   :math:`\ \,\boldsymbol{A}^+=\boldsymbol{A},\ \ \boldsymbol{y}=\boldsymbol{x}\ `
   w równaniu :eq:`x_A_y` otrzymujemy
   
   .. math::
      :label: xAx_Axx

      \langle\,\boldsymbol{x},\boldsymbol{A}\boldsymbol{x}\,\rangle\ =\ 
      \langle\,\boldsymbol{A}\boldsymbol{x},\boldsymbol{x}\,\rangle\,,\qquad
      \boldsymbol{x}\in C^n\,.

   Ale :math:`\ \,\langle\,\boldsymbol{A}\boldsymbol{x},\boldsymbol{x}\,\rangle=
   \langle\,\boldsymbol{x},\boldsymbol{A}\boldsymbol{x}\,\rangle^*\,,\ \,` więc 
   :math:`\ \,\langle\,\boldsymbol{x},\boldsymbol{A}\boldsymbol{x}\,\rangle=
   \langle\,\boldsymbol{x},\boldsymbol{A}\boldsymbol{x}\,\rangle^*\,,\ \,` skąd
   :math:`\ \,\langle\,\boldsymbol{x},\boldsymbol{A}\boldsymbol{x}\,\rangle\,\in R\,.`

   Można udowodnić, że warunek :eq:`xAx` jest nie tylko konieczny, ale i wystarczający 
   do tego, aby zespolona macierz :math:`\,\boldsymbol{A}\ ` była hermitowska. Wynika stąd

   .. admonition:: Wniosek.
      
      Jeżeli :math:`\ \boldsymbol{A}\in M_n(C)\,,\ ` to
      :math:`\qquad        
      \boldsymbol{A}\ =\ \boldsymbol{A}^+\quad\Leftrightarrow\quad
      \langle\,\boldsymbol{x},\boldsymbol{A}\boldsymbol{x}\,\rangle\in R\,,\quad
      \boldsymbol{x}\in C^n\,.`

4. Dla hermitowskiej macierzy :math:`\,\boldsymbol{A}\in M_n(C)\ `
   pierwiastki wielomianu charakterystycznego 
   :math:`\,w(\lambda)=\det\,(\boldsymbol{A}-\lambda\,\boldsymbol{I}_n)\ `
   są liczbami rzeczywistymi.
   
   **Dowód.**
   
   Jeżeli :math:`\ \det\,(\boldsymbol{A}-\lambda\,\boldsymbol{I}_n)=0\,,\ ` to jednorodny problem 
   liniowy o macierzy :math:`\,\boldsymbol{A}-\lambda\,\boldsymbol{I}_n\ ` :math:`\\` 
   ma rozwiązania niezerowe. :math:`\,` 
   Istnieje więc niezerowy wektor :math:`\,\boldsymbol{x}\in C^n\,,\ \,` dla którego
   
   .. math::
      :nowrap:

      \begin{eqnarray*}
      (\boldsymbol{A}-\lambda\,\boldsymbol{I}_n)\ \boldsymbol{x} & \! = \! & \boldsymbol{0}\,,  \\
      \boldsymbol{A}\,\boldsymbol{x} & \! = \! & \lambda\,\boldsymbol{I}_n\,\boldsymbol{x}\,, \\
      \boldsymbol{A}\,\boldsymbol{x} & \! = \! & \lambda\,\boldsymbol{x}\,, 
      \quad\text{gdzie}\quad\boldsymbol{x}\neq\boldsymbol{0}\,.
      \end{eqnarray*}

   Wstawiając ostatnią równość do wzoru :eq:`xAx_Axx` otrzymujemy

   .. math::
      :nowrap:

      \begin{eqnarray*}
      \langle\,\boldsymbol{x},\boldsymbol{A}\,\boldsymbol{x}\,\rangle & \! = \! & 
      \langle\,\boldsymbol{A}\,\boldsymbol{x},\boldsymbol{x}\,\rangle\,,          \\
      \langle\,\boldsymbol{x},\,\lambda\,\boldsymbol{x}\,\rangle & \! = \! &        
      \langle\,\lambda\,\boldsymbol{x},\boldsymbol{x}\,\rangle\,,                 \\
      \lambda\ \langle\,\boldsymbol{x},\boldsymbol{x}\,\rangle & \! = \! &        
      \lambda^*\;\langle\,\boldsymbol{x},\boldsymbol{x}\,\rangle\,,
      \quad\text{gdzie}\quad\langle\,\boldsymbol{x},\boldsymbol{x}\,\rangle>0\,;             \\
      \lambda & \! = \! & \lambda^*
      \quad\ \ \Leftrightarrow\quad\ \ \,\lambda\in R\,.
      \end{eqnarray*}

Rzeczywista macierz hermitowska jest macierzą symetryczną: :math:`\,`
dla :math:`\ \boldsymbol{A}\in M_n(R)`

.. math:: 
   
   \boldsymbol{A}=\boldsymbol{A}^+\quad\Leftrightarrow\quad\boldsymbol{A}=\boldsymbol{A}^T\,.

Unitary Matrices
~~~~~~~~~~~~~~~~

.. admonition:: Definicja.
   
   Macierz :math:`\ \boldsymbol{B}\in M_n(C)\ \,` jest :math:`\,` *unitarna*, :math:`\,` gdy
   iloczyn sprzężenia hermitowskiego :math:`\\`
   macierzy :math:`\boldsymbol{B}\ ` 
   i :math:`\,` samej macierzy :math:`\boldsymbol{B}\ ` równa się macierzy jednostkowej:
 

   .. \,=\,[\,\boldsymbol{b}_1\,|\,\boldsymbol{b}_2\,|\,\dots\,|\,
      \boldsymbol{b}_n\,]\,=\,[\,\beta_{ij}\,]_{n\times n}
   
   .. math::
      :label: unitary
      
      \boldsymbol{B}^+\boldsymbol{B}\,=\,\boldsymbol{I}_n\,.

:math:`\;`

**Przykład.**
:math:`\qquad\boldsymbol{B}\ =\ \displaystyle\frac{1}{\sqrt{2}}\ 
\left[\begin{array}{rr} 1 & i \\ i & 1 \end{array}\right]\,;\qquad
\boldsymbol{B}^+\ =\ \displaystyle\frac{1}{\sqrt{2}}
\left[\begin{array}{rr} 1 & -i \\ -i & 1 \end{array}\right]\,;`

.. math::

   \boldsymbol{B}^+\boldsymbol{B}\ \ =\ \ \frac{1}{2}\ 
   \left[\begin{array}{rr} 1 & -i \\ -i & 1 \end{array}\right]\ 
   \left[\begin{array}{rr} 1 & i \\ i & 1 \end{array}\right]\ \ =\ \ \frac{1}{2}\ 
   \left[\begin{array}{rr} 2 & 0 \\ 0 & 2 \end{array}\right]\ \ =\ \ 
   \left[\begin{array}{rr} 1 & 0 \\ 0 & 1 \end{array}\right]\,. 

:math:`\;`

**Własności macierzy unitarnych.** :math:`\\`

0. Warunek :eq:`unitary` oznacza, że :math:`\,\boldsymbol{B}^+=\boldsymbol{B}^{-1},\ `
   z czego wynika dalej, że :math:`\,\boldsymbol{B}\boldsymbol{B}^+\,=\,\boldsymbol{I}_n\,.\ `
   Unitarna macierz :math:`\,\boldsymbol{B}\ ` spełnia więc równości
   
   .. math::
      
      \boldsymbol{B}^+\boldsymbol{B}\,=\,\boldsymbol{B}\boldsymbol{B}^+\,=\,\boldsymbol{I}_n\,.

1. Warunek :math:`\ \boldsymbol{B}\boldsymbol{B}^+=\boldsymbol{I}_n\ ` można przepisać jako
   :math:`\ (\boldsymbol{B}^+)^+\boldsymbol{B}^+=\boldsymbol{I}_n\ ` co oznacza,
   że jeśli :math:`\ \boldsymbol{B}\in M_n(C)\ ` jest macierzą unitarną, to unitarna
   jest również macierz sprzężona :math:`\ \boldsymbol{B}^+\ ` oraz macierz odwrotna
   :math:`\ \boldsymbol{B}^{-1}\,.`

2. Niech :math:`\ \boldsymbol{B}_1,\boldsymbol{B}_2\in M_n(C)\ ` będą macierzami unitarnymi:
   :math:`\ \ \boldsymbol{B}_1^+\,\boldsymbol{B}_1=\boldsymbol{B}_2^+\,\boldsymbol{B}_2=
   \boldsymbol{I}_n\,.\ ` 
   Wtedy, korzystając z własności sprzężenia hermitowskiego macierzy, otrzymujemy
   
   .. math::
      
      (\boldsymbol{B}_1\boldsymbol{B}_2)^+(\boldsymbol{B}_1\boldsymbol{B}_2)\ =\ 
      \boldsymbol{B}_2^+\,(\boldsymbol{B}_1^+\boldsymbol{B}_1)\,\boldsymbol{B}_2\ =\ 
      \boldsymbol{B}_2^+\,\boldsymbol{I}_n\,\boldsymbol{B}_2\ =\ 
      \boldsymbol{B}_2^+\,\boldsymbol{B}_2\ =\ \boldsymbol{I}_n\,.
   
   Tak więc iloczyn macierzy unitarnych jest macierzą unitarną. :math:`\\`
   Ponieważ macierz jednostkowa :math:`\ \boldsymbol{I}_n\ ` jest unitarna,
   można zapisać
   
   .. admonition:: Wniosek 1.
      
      Macierze unitarne stopnia :math:`\,n\ ` tworzą (nieprzemienną) grupę :math:`\\`
      ze względu na mnożenie  macierzowe.

3. Iloczyn skalarny :math:`\,i`-tej oraz :math:`\,j`-tej
   kolumny unitarnej macierzy :math:`\,\boldsymbol{B}\ ` dany jest przez
   
   .. math::
      
      \langle\,\boldsymbol{b}_i,\boldsymbol{b}_j\rangle\ \,=\ \,
      \boldsymbol{b}_i^+\,\boldsymbol{b}_j\ \,=\ \,
      \left(\boldsymbol{B}^+\boldsymbol{B}\right)_{ij}\ \,=\ \,
      \left(\boldsymbol{I}_n\right)_{ij}\ \,=\ \,\delta_{ij}\,,\qquad i,j=1,2,\dots,n\,,

   gdyż :math:`\,\boldsymbol{b}_i^+\ ` jest :math:`\,i`-tym wierszem macierzy 
   :math:`\,\boldsymbol{B}^+,\ \ i=1,2,\dots,n.`
   
   Biorąc pod uwagę fakt, że macierz :math:`\,\boldsymbol{B}^+,\ `
   której kolumny są hermitowsko sprzężonymi wierszami macierzy :math:`\,\boldsymbol{B},\ `
   jest również unitarna, zapisujemy

   .. admonition:: Wniosek 2.
      
      Macierz :math:`\ \boldsymbol{B}\in M_n(C)\ ` jest unitarna 
      wtedy i tylko wtedy, :math:`\,`  gdy jej kolumny :math:`\\` 
      (a także wiersze) :math:`\,` 
      tworzą w przestrzeni :math:`\,C^n\ ` układ ortonormalny.

4. Unitarna macierz :math:`\,\boldsymbol{B}\in M_n(C)\ ` zachowuje 
   iloczyn skalarny w przestrzeni :math:`\,C^n:`
   
   .. math::
      
      \langle\,\boldsymbol{B}\boldsymbol{x},\,\boldsymbol{B}\boldsymbol{y}\,\rangle\ \,=\ \,
      \langle\boldsymbol{x},\boldsymbol{y}\rangle\,,\qquad 
      \boldsymbol{x},\boldsymbol{y}\in C^n\,.

   Rzeczywiście, na podstawie definicji iloczynu skalarnego w przestrzeni :math:`\,C^n\ ` mamy
   
   .. math::
      
      \langle\,\boldsymbol{B}\boldsymbol{x},\,\boldsymbol{B}\boldsymbol{y}\,\rangle\ =\ 
      (\boldsymbol{B}\boldsymbol{x})^+(\boldsymbol{B}\boldsymbol{y})\ =\ 
      (\boldsymbol{x}^+\boldsymbol{B}^+)(\boldsymbol{B}\boldsymbol{y})\ =

      \ =\   
      \boldsymbol{x}^+(\boldsymbol{B}^+\boldsymbol{B})\ \boldsymbol{y}\ =\ 
      \boldsymbol{x}^+\boldsymbol{I}_n\,\boldsymbol{y}\ =\ 
      \boldsymbol{x}^+\boldsymbol{y}\ =\ 
      \langle\boldsymbol{x},\boldsymbol{y}\rangle\,.

   W szczególności, dla :math:`\,\boldsymbol{y}=\boldsymbol{x}\ ` otrzymujemy równość

   .. math::
      :label: Bx_Bx
      
      \langle\,\boldsymbol{B}\boldsymbol{x},\,\boldsymbol{B}\boldsymbol{x}\,\rangle\ \,=\ \,
      \langle\boldsymbol{x},\boldsymbol{x}\rangle\,,\qquad 
      \boldsymbol{x}\in C^n\,,

   która oznacza zachowanie normy :  
   :math:`\quad\|\,\boldsymbol{B}\boldsymbol{x}\,\|=
   \|\boldsymbol{x}\|\,,\ \ \boldsymbol{x}\in C^n\,.`

   Ostatnia własność pozwala interpretować operację pomnożenia (z lewej strony)
   wektora :math:`\,\boldsymbol{x}\in C^n\ ` przez unitarną macierz :math:`\,\boldsymbol{B}\ `
   jako uogólniony obrót tego wektora.

5. Wyznacznik unitarnej macierzy :math:`\,\boldsymbol{B}\ ` jest liczbą zespoloną o module 1:
   :math:`\ \,|\det\boldsymbol{B}\,|=1\,.`

   Istotnie, przyrównując do siebie wyznaczniki obu stron równości :eq:`unitary` otrzymujemy
   
   .. math::
      
      \det\,(\boldsymbol{B}^+\boldsymbol{B})=   
      \det\boldsymbol{B}^+\cdot\,\det\boldsymbol{B}=
      (\det\boldsymbol{B})^*\cdot\,\det\boldsymbol{B}=
      |\det\boldsymbol{B}\,|^2\quad=\quad
      \det\boldsymbol{I}_n=1\,.

6. Dla unitarnej macierzy :math:`\,\boldsymbol{B}\in M_n(C)\ `
   pierwiastki wielomianu charakterystycznego 
   :math:`\,w(\lambda)=\det\,(\boldsymbol{B}-\lambda\,\boldsymbol{I}_n)\ `
   są liczbami zespolonymi o module 1.
   
   **Dowód.** :math:`\,` 
   Jeżeli :math:`\ \det\,(\boldsymbol{B}-\lambda\,\boldsymbol{I}_n)=0\,,\ ` to jednorodny problem 
   liniowy o macierzy :math:`\,\boldsymbol{B}-\lambda\,\boldsymbol{I}_n\ `  
   ma rozwiązania niezerowe: :math:`\,` istnieje niezerowy wektor 
   :math:`\,\boldsymbol{x}\in C^n\,,\ \,` dla którego
   
   .. math::
      :nowrap:

      \begin{eqnarray*}
      (\boldsymbol{B}-\lambda\,\boldsymbol{I}_n)\;\boldsymbol{x} & \! = \! & \boldsymbol{0}\,,  \\
      \boldsymbol{B}\,\boldsymbol{x} & \! = \! & \lambda\,\boldsymbol{I}_n\,\boldsymbol{x}\,, \\
      \boldsymbol{B}\,\boldsymbol{x} & \! = \! & \lambda\,\boldsymbol{x}\,, 
      \quad\text{gdzie}\quad\boldsymbol{x}\neq\boldsymbol{0}\,.
      \end{eqnarray*}

   Wstawiając ostatnią równość do wzoru :eq:`Bx_Bx` otrzymujemy
 
   .. math::
      :nowrap:

      \begin{eqnarray*}
      \langle\,\boldsymbol{B}\boldsymbol{x},\,\boldsymbol{B}\boldsymbol{x}\,\rangle & \! = \! & 
      \langle\,\boldsymbol{x},\boldsymbol{x}\,\rangle\,, \\
      \langle\,\lambda\,\boldsymbol{x},\,\lambda\,\boldsymbol{x}\,\rangle & \! = \! & 
      \langle\,\boldsymbol{x},\boldsymbol{x}\,\rangle\,, \\
      \lambda^*\lambda\ \langle\,\boldsymbol{x},\boldsymbol{x}\,\rangle & \! = \! &        
      \langle\,\boldsymbol{x},\boldsymbol{x}\,\rangle\,, \\
      |\lambda|^2\ \langle\,\boldsymbol{x},\boldsymbol{x}\,\rangle & \! = \! &        
      \langle\,\boldsymbol{x},\boldsymbol{x}\,\rangle\,,
      \quad\text{gdzie}\quad\langle\,\boldsymbol{x},\boldsymbol{x}\,\rangle>0\,; \\
      |\lambda|^2 & \! = \! & 1
      \quad\Rightarrow\quad|\lambda|=1\,.
      \end{eqnarray*}

Związek macierzy unitarnej z uogólnionym obrotem sugeruje również

.. admonition:: Twierdzenie 7.
   
   Dana skończenie wymiarowa przestrzeń unitarna :math:`\,V(C)\ ` z ortonormalną bazą 
   :math:`\,\mathcal{B}.` :math:`\\`
   Baza :math:`\,\mathcal{C}\ ` tej przestrzeni jest ortonormalna 
   wtedy i tylko wtedy, :math:`\\`
   gdy macierz przejścia :math:`\,\boldsymbol{S}\ ` 
   od bazy :math:`\,\mathcal{B}\ ` do bazy :math:`\,\mathcal{C}\ ` jest unitarna.

**Dowód.** :math:`\,`
Niech :math:`\ \ \dim V=n\,,\ \ \mathcal{B}=(u_1,u_2,\dots,u_n)\,,\ \ 
\mathcal{C}=(w_1,w_2,\dots,w_n)\,,\ \ \boldsymbol{S}=[\,\sigma_{ij}\,]_{n\times n}\,.`

Baza :math:`\,\mathcal{B}\ ` jest z założenia ortonormalna: 
:math:`\quad\langle u_i,u_j\rangle\,=\,\delta_{ij}\,,\quad i,j=1,2,\dots,n.`

Z definicji macierzy przejścia wynikają związki:
:math:`\quad w_j\ =\ \displaystyle\sum_{i\,=\,1}^n\ \sigma_{ij}\,u_i\,,\quad j=1,2,\dots,n.`

Rozważmy iloczyn skalarny dwóch wektorów bazy :math:`\,\mathcal{C}\ \ (i,j=1,2,\dots,n):`

.. math::
   
   \begin{array}{ccccc}
   \langle w_i,w_j\rangle & = & 
   \left\langle\ \displaystyle\sum_{k\,=\,1}^n\ \sigma_{ki}\,u_k\,,\ 
   \sum_{l\,=\,1}^n\ \sigma_{lj}\,u_l\right\rangle\ \,=\ \,
   \displaystyle\sum_{k,\,l\,=\,1}^n \sigma_{ki}^*\,\sigma_{lj}\,\langle u_k,u_l\rangle & = & 
   \\
   & = & \displaystyle\sum_{k,\,l\,=\,1}^n\ \sigma_{ki}^*\ \sigma_{lj}\ \delta_{kl}\ \ \,=\ \ \,
   \displaystyle\sum_{k\,=\,1}^n\ \sigma_{ki}^*\ \sigma_{kj}\ \ \,=\ \ \,
   \displaystyle\sum_{k\,=\,1}^n\ \sigma_{ik}^+\ \sigma_{kj} & = & 
   \left(\,\boldsymbol{S}^+\boldsymbol{S}\,\right)_{ij}\ .
   \end{array}

W szczególności wynika stąd, że

.. math::
   
   \langle w_i,w_j\rangle\ =\ \delta_{ij}\qquad\Leftrightarrow\qquad
   \left(\,\boldsymbol{S}^+\boldsymbol{S}\,\right)_{ij}=\delta_{ij}=
   \left(\,\boldsymbol{I}_n\right)_{ij}\,,\qquad i,j=1,2,\dots,n,

czyli, że baza :math:`\,\mathcal{C}\ ` jest ortonormalna wtedy i tylko wtedy, :math:`\,` 
gdy :math:`\ \boldsymbol{S}^+\boldsymbol{S}=\boldsymbol{I}_n.` :math:`\\`

Rzeczywista macierz unitarna jest macierzą ortogonalną. Mianowicie, dla 
:math:`\ \boldsymbol{B}\in M_n(R):`

.. math:: 
   
   \boldsymbol{B}^+\boldsymbol{B}=\boldsymbol{I}_n
   \quad\Leftrightarrow\quad
   \boldsymbol{B}^T\boldsymbol{B}=\boldsymbol{I}_n\,.






























