
Operatory normalne
------------------

Komutatory i ich własności
~~~~~~~~~~~~~~~~~~~~~~~~~~

Niech :math:`\,A,\,B\ ` będą elementami nieprzemiennej algebry,
np. zespolonymi bądź rzeczywistymi macierzami kwadratowymi stopnia :math:`\,n\ ` 
albo operatorami liniowymi określonymi na przestrzeni unitarnej bądź euklidesowej. 

.. admonition:: Definicja.
   
   Wyrażenie :math:`\ \ [\,A,B\,]\ :\,=\ AB-BA\ \ ` nazywa się :math:`\,` *komutatorem* :math:`\,`
   elementów :math:`\,A\ \ \,\text{i}\ \ B\,.`
   
   Jeżeli :math:`\ [\,A,B\,]\,=\,0\,,\ \ \text{czyli}\ \ AB=BA\,,\ \ `
   to mówimy, że elementy :math:`\,A\ \ \,\text{i}\ \ B\ ` *komutują*.

**Własności komutatorów:**

.. math::

   \begin{array}{cl}
   \left[\,A,A\,\right]\ =\ 0\,, & \\ \\
   \left[\,B,A\,\right]\ =\ -\ \left[\,A,B\,\right]\,, & \\ \\
   \left[\,A_1+A_2\,,\,B\,\right]\ =\ 
   \left[\,A_1\,,B\,\right]\ +\ \left[\,A_2\,,B\,\right]\,, & \\ \\
   \left[\,A,\,B_1+B_2\,\right]\ =\ \left[\,A,B_1\,\right]\ +\ \left[\,A,B_2\,\right]\,, & \\ \\
   \left[\,\lambda,A\,\right]\ =\ \left[\,A,\lambda\,\right]\ =\ 0\,, & 
   \lambda\equiv\lambda\,I,\ \ I\ \ \text{-}\ \ \text{element jednostkowy,} \\ \\
   \left[\,\lambda\,A,\,B\,\right]\ =\ \left[\,A,\,\lambda\,B\,\right]\ =\ 
   \lambda\ \left[\,A,B\,\right]\,, & \lambda\ \ \text{-}\ \ \text{czynnik liczbowy.}
   \end{array}

Komutator :math:`\ [\,A,B\,]\ ` jest więc wyrażeniem liniowym ze względu na obydwa elementy
:math:`\,A\ \ \,\text{i}\ \ \,B\,.`

Stosując zasadę indukcji matematycznej można pokazać, że:

.. math::

   \begin{array}{l}
   \left[\,A,\,B_1 B_2\ldots B_{n-1}B_n\,\right]\ \ = \\
   \left[A,B_1\right]\,B_2\ldots B_{n-1}B_n\ +\ 
   B_1\left[A,B_2\right]\ldots B_{n-1}B_n\ +\ \ldots\ +\ 
   B_1B_2\ldots B_{n-1}\left[A,B_n\right]\,; 
   \\ \\
   \left[\,A_1A_2\ldots A_{n-1}A_n\,,B\right]\ = \\
   \left[A_1\,,B\right]\,A_2\ldots A_{n-1}A_n\ +\ 
   A_1\left[A_2\,,B\right]\ldots A_{n-1}A_n\ +\ \ldots\ +\ 
   A_1A_2\ldots A_{n-1}\left[A_n\,,B\right]\,.
   \end{array}

W szczególności, dla :math:`\,n=2\ ` otrzymuje się często używane wzory:

.. math::

   \begin{array}{cc}
   \left[\,A,B_1B_2\,\right]\ =\ 
   \left[\,A,B_1\,\right]\,B_2\ +\ B_1\,\left[\,A,B_2\,\right]\,. & \\ \\
   \left[\,A_1A_2\,,B\,\right]\ =\ 
   A_1\,\left[\,A_2\,,B\,\right]\ +\ \left[\,A_1\,,B\,\right]\,A_2\,, &
   \end{array}

Gdy :math:`\ [A,B]=\lambda\,I\,,\ \lambda\in R,\,C,\ \ ` to 
kładąc :math:`\ B_1=\ldots=B_n=B\,,\ \ A_1=\ldots=A_n=A\ ` mamy:

.. :math:`\quad\left[\,A,B^n\,\right]\ =\ n\,\lambda\,B^{n-1},\quad
   \left[\,A^n,B\,\right]\ =\ n\,\lambda\,A^{n-1},\qquad n\in N.`

.. math::
   
   \left[\,A,B^n\right]\ =\ n\,\lambda\,B^{n-1},\qquad 
   \left[\,A^n,B\,\right]\ =\ n\,\lambda\,A^{n-1},\qquad n\in N.

Dla macierzy :math:`\,A,\,B\,\in M_n(K)\,,\ \ K=R,\,C,\ \ ` można odnotować dalsze własności 
:math:`\\`
(ostatni związek dotyczy też operatorów liniowych w przestrzeni unitarnej bądź euklidesowej):

.. math::
   
   [\,A,B\,]^{\,T}\ \,=\ \ [\,B^T,A^T\,]\,,\qquad
   [\,A,B\,]^{\,*}\ \,=\ \ [\,A^*,B^*\,]\,,\qquad
   [\,A,B\,]^{\,+}\ \,=\ \ [\,B^+,A^+\,]\,.

Macierze i operatory normalne
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. admonition:: Definicja.
   
   Niech :math:`\ \boldsymbol{A}\in M_n(C)\,,\ F\in\text{End}(V)\,,\ \,\text{gdzie}\ \ V\ `
   - :math:`\,`  przestrzeń unitarna.

   Macierz :math:`\ \boldsymbol{A}\ ` jest *normalna*, :math:`\,` 
   gdy komutuje ze swoim sprzężeniem hermitowskim:
   
   .. math::
      
      [\,\boldsymbol{A},\boldsymbol{A}^+\,]\ =\ 0\qquad\text{czyli}\qquad
      \boldsymbol{A}\,\boldsymbol{A}^+\ =\ \boldsymbol{A}^+\boldsymbol{A}\,.
   
   Operator :math:`\,F\ ` jest *normalny*, :math:`\,`
   gdy komutuje ze swoim sprzężeniem hermitowskim:
   
   .. math::
      
      [\,F,F^+\,]\ =\ 0\qquad\text{czyli}\qquad F\,F^+\ =\ F^+F\,.

Do macierzy normalnych zaliczają się np. macierze hermitowskie i unitarne,
ale również rzeczywiste macierze symetryczne, antysymetryczne i ortogonalne.
Podobnie, normalne są np. operatory hermitowskie i unitarne.
 
Związek pomiędzy macierzami normalnymi i operatorami normalnymi przedstawia

.. admonition:: Twierdzenie 11.
   
   Operator liniowy :math:`\,F\,` określony na przestrzeni unitarnej :math:`\,V\,` 
   jest normalny wtedy i tylko wtedy, 
   gdy jego macierz w dowolnej ortonormalnej bazie :math:`\,\mathcal{B}\ ` jest normalna:
   
   .. math::
      
      F\,F^+\;=\ F^+F\qquad\Leftrightarrow\qquad
      \boldsymbol{A}\,\boldsymbol{A}^+\;=\ \boldsymbol{A}^+\boldsymbol{A}\,,
   
   gdzie :math:`\ \ \boldsymbol{A}\,=\,M_{\mathcal{B}}(F)\,.`

**Dowód.**

Podobnie jak przy dowodzie Twierdzenia 10., wykorzystamy bijektywność i multiplikatywność
odwzorowania :math:`\ M_{\mathcal{B}}\ ` oraz to, że w przy bazie ortonormalnej 
macierz sprzężenia hermitowskiego operatora równa się sprzężeniu hermitowskiemu jego macierzy.

Następujące warunki są wzajemnie równoważne:

.. math::
   :nowrap:
   
   \begin{eqnarray*}
   F\,F^+ & = & F^+F\,, \\
   M_{\mathcal{B}}(FF^+) & = & M_{\mathcal{B}}(F^+F)\,, \\
   M_{\mathcal{B}}(F)\ M_{\mathcal{B}}(F^+) & = & M_{\mathcal{B}}(F^+)\ M_{\mathcal{B}}(F)\,, \\
   M_{\mathcal{B}}(F)\ [\,M_{\mathcal{B}}(F)\,]^+ & = & 
   [\,M_{\mathcal{B}}(F)\,]^+\ M_{\mathcal{B}}(F)\,, \\
   \boldsymbol{A}\,\boldsymbol{A}^+ & = & \boldsymbol{A}^+\boldsymbol{A}\,.
   \end{eqnarray*}

Okazuje się, że ortogonalność wektorów własnych należących do różnych wartości
dotyczy nie tylko operatorów hermitowskich i unitarnych (co udowodniliśmy),
ale jest cechą szerszej klasy operatorów normalnych. Mówi o tym

.. admonition:: Twierdzenie 12.
   
   Wektory własne operatora normalnego,  
   należące do różnych wartości własnych, :math:`\\`
   są ortogonalne.

.. :math:`\;`

**Lemat.** :math:`\,` Dla normalnego operatora :math:`\ F\in\text{End}(V):`

.. math::
   :label: Lemma
   
   Fx=\lambda\,x\quad\Leftrightarrow\quad F^+\,x=\lambda^*\,x\,,\qquad x\in V,\quad\lambda\in C.

**Dowód lematu.** :math:`\,`
 
Zauważmy najpierw, że jeżeli :math:`\,F\ ` jest operatorem normalnym, to
dla dowolnego :math:`\,x\in V:`

.. :math:`\ \|\,Fx\,\| = \|\,F^+x\,\|\,,\ x\in V.\ `
   Wynika to stąd, że

.. math::
   
   \|\,Fx\,\|^2\ =\ \langle Fx,Fx\rangle\ =\ \langle F^+F\,x,x\rangle\ =\ 
   \langle FF^+x,x\rangle\ =\ \langle F^+x,F^+x\rangle\ =\ \|\,F^+x\,\|^2\,,

skąd otrzymujemy równość norm:

.. math::
   :label: norm_eq
   
   \|\,Fx\,\|\ =\ \|\,F^+x\,\|\,,\quad x\in V\,.

Dalej, jeżeli operator :math:`\ F\ ` jest normalny,
to normalny jest również operator :math:`\ F-\lambda\,I\,,` :math:`\\`
gdzie :math:`\ \,\lambda\in C,\ \ I\ ` - operator jednostkowy:

.. to również operator :math:`\ F-\lambda\,I\ ` jest normalny:

.. math::

   \begin{array}{cl}   
   \quad\left[\,(F-\lambda\,I),\,(F-\lambda\,I)^+\,\right]\ = &
   \\ \\
   =\ \left[\,F-\lambda\,I,\,F^+-\lambda^*\,I\,\right]\ = & 
   \\ \\
   =\ \left[\,F,F^+\,\right]-\left[\,F,\,\lambda^*\,I\,\right]-
   \left[\,\lambda\,I,F^+\,\right]+\left[\,\lambda\,I,\,\lambda^*\,I\,\right]\ = & 
   \\ \\
   =\ \left[\,F,F^+\,\right]-\lambda^*\left[\,F,I\,\right]-
   \lambda\,\left[\,I,F^+\,\right]+\lambda\,\lambda^*\,\left[\,I,I\,\right]\ = & 
   \left[\,F,F^+\,\right]\ =\ 0\,.
   \end{array}

Podstawiając :math:`\ F\rightarrow F-\lambda\,I\ ` w równaniu :eq:`norm_eq`, otrzymujemy

.. math::
   
   \begin{array}{ccc}
   & \|\,(F-\lambda\,I)\,x\,\|\ =\ \|\,(F-\lambda\,I)^+\,x\,\| &
   \\ \\
   \text{czyli} 
   & \|\,F x-\lambda\,x\,\|\ =\ \|\,F^+x-\lambda^*\,x\,\|\,, & \lambda\in C\,,\ \ x\in V\,.
   \end{array}

Na tej podstawie można zapisać ciąg równoważności, który kończy dowód lematu:

.. math::
   
   \begin{array}{ccc}
   Fx\ =\ \lambda\,x & & \\ \\
   Fx-\lambda\,x\,=\,\theta & & \\ \\
   \|\,Fx-\lambda\,x\,\|\,=\,0 & \quad\Leftrightarrow & \quad\|\,F^+x-\lambda^*\,x\,\|\,=\,0 \\ \\
   & & \quad F^+x-\lambda^*\,x\,=\,\theta \\ \\
   & & \quad F^+x\ =\ \lambda^*\,x\,.
   \end{array}

**Dowód twierdzenia 12.** :math:`\,` Zakładamy, że :math:`\,F\ ` jest operatorem normalnym.

Niech :math:`\quad Fx_1\,=\ \lambda_1\,x_1\,,\quad Fx_2\,=\ \lambda_2\,x_2\,,\quad
x_1,\,x_2\,\in\,V\!\smallsetminus\!\{\theta\}\,,\ \ \lambda_1\neq\lambda_2\,.\ \,` Wtedy

.. math::
   
   \begin{array}{l}
   \langle\,x_1,Fx_2\rangle\ =\ 
   \langle\,x_1,\lambda_2\,x_2\rangle\ =\
   \lambda_2\ \langle\,x_1,x_2\rangle\,,
   \\ \\
   \langle\,x_1,Fx_2\rangle\ =\ 
   \langle\,F^+x_1,x_2\rangle\ =\ 
   \langle\,\lambda_1^*\,x_1,x_2\rangle\ =\ 
   \lambda_1\ \langle\,x_1,x_2\rangle\,.
   \end{array}

Odejmując stronami mamy
:math:`\ \ (\lambda_2-\lambda_1)\,\langle\,
x_1,x_2\rangle = 0\,,\ `
skąd :math:`\ \langle\,x_1,x_2\rangle=0\,,\ ` co należało udowodnić.



   
   
   
    

















