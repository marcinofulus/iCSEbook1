
Linear Operators
----------------

Operatorami liniowymi nazywamy endomorfizmy, 
czyli przekształcenia liniowe przestrzeni wektorowej w siebie.
Wszystkie twierdzenia, udowodnione dla homomorfizmów, obowiązują również w zbiorze endomorfizmów.
Ponieważ jednak mamy do czynienia tylko z jedną przestrzenią i jedną wybraną w niej bazą,
niektóre oznaczenia można uprościć.

Niech :math:`\,F\ ` będzie operatorem liniowym określonym na :math:`\,n`-wymiarowej przestrzeni :math:`\,V\ ` nad :math:`\,K.\ ` 
Dla macierzy operatora :math:`\,F\ ` w bazie :math:`\ \mathcal{B}=(v_1,v_2,\dots,v_n)\ `
przestrzeni :math:`\,V\ ` wprowadzamy oznaczenia: 
:math:`\ M_{\mathcal{B}}(F)=\boldsymbol{F}=[\,f_{ij}\,]_{n\times n}\in M_n(K).\ `
Jej elementy są określone przez układ równości, które przedstawiają obrazy kolejnych wektorów
bazy :math:`\ \mathcal{B}\ ` *w tej samej bazie*:

.. math::
   
   \begin{array}{l}
   Fv_1\ =\ f_{11}\,v_1\,+\ f_{21}\,v_2\,+\ \dots\ +\ f_{n1}\,v_n \\
   Fv_2\ =\ f_{12}\,v_1\,+\ f_{22}\,v_2\,+\ \dots\ +\ f_{n2}\,v_n \\
   \ \dots \\
   Fv_n\ =\ f_{1n}\,v_1\,+\ f_{2n}\,v_2\,+\ \dots\ +\ f_{nn}\,v_n
   \end{array}
   
czyli, w zapisie skróconym: 
:math:`\displaystyle\quad Fv_j\;=\;\sum_{i\,=\,1}^n\ f_{ij}\:v_i\,,\quad j=1,2,\dots,n.`

Stosując kolumnowy zapis macierzy, otrzymujemy:

.. math::
   
   M_{\mathcal{B}}(F)\ \,=\ \,
   \left[\;I_{\mathcal{B}}(Fv_1\,|\,I_{\mathcal{B}}(Fv_2\,|\ \dots\ |\,
   I_{\mathcal{B}}(Fv_n\,\right]\,,

gdzie :math:`\ I_{\mathcal{B}}(v)\ ` jest kolumną współrzędnych 
:math:`\,` (w bazie :math:`\,\mathcal{B}`) :math:`\,` wektora :math:`\,v\in V.`

Twierdzenie 10. można teraz zapisać następująco

.. math::
   :label: fund_end
      
   v'\,=\,F(v)\qquad\Rightarrow\qquad   
   I_{\mathcal{B}}(v')\ =\ M_{\mathcal{B}}(F)\,\cdot\,I_{\mathcal{B}}(v)\,,
   \qquad v,v'\in V.

W zbiorze :math:`\ \text{End}(V)\ ` operatorów liniowych na przestrzeni :math:`\,V\ `
zdefiniowane są działania dodawania, mnożenia przez liczby z :math:`\,K\ ` i składania
(przy tych działaniach :math:`\,\text{End}(V)\,` jest algebrą nad ciałem :math:`\,K`). :math:`\,`
Zajmiemy się macierzą złożenia dwóch operatorów liniowych.

.. admonition:: Twierdzenie 12. :math:`\\`
   
   Niech :math:`\,F,\,G\in\text{End}(V),\ ` gdzie :math:`\,V\,` jest skończenie wymiarową
   przestrzenią wektorową z bazą :math:`\,\mathcal{B}.\ `
   Wtedy macierz :math:`\,` (w bazie :math:`\,\mathcal{B}`) :math:`\,`
   złożenia operatorów :math:`\,F\ \,\text{i}\ \ G\ ` równa się iloczynowi ich macierzy
   w tej bazie:
   
   .. math::
      :label: multi
      
      M_{\mathcal{B}}(F\circ G)\ =\ M_{\mathcal{B}}(F)\,\cdot\,M_{\mathcal{B}}(G)\,.

**Dowód.** :math:`\,` 

Przypomnimy określenie złożenia dwóch operatorów liniowych
:math:`\,F,\,G\in\text{End}(V):`

.. math::
   
   (F\circ G)(v)\ :\,=\ F\,[\,G(v)\,]\,,\qquad v\in V\,.

Przyjmujemy oznaczenia:
:math:`\quad\dim\,V=n,\quad\mathcal{B}=(v_1,v_2,\dots,v_n)\quad` oraz

.. math::
   
   M_{\mathcal{B}}(F)=\boldsymbol{F}=[\,f_{ij}\,]_{n\times n}\,,\quad
   M_{\mathcal{B}}(G)=\boldsymbol{G}=[\,g_{ij}\,]_{n\times n}\,,\quad   
   M_{\mathcal{B}}(F\circ G)=\boldsymbol{H}=[\,h_{ij}\,]_{n\times n}\ \ \in\ M_n(K)\,.

Obraz :math:`\,j`-tego wektora bazy :math:`\,\mathcal{B}\ ` przy odwzorowaniu :math:`\,F\circ G\ `
można na dwa sposoby przedstawić w postaci kombinacji liniowej wektorów bazy :math:`\,\mathcal{B}:`

.. math::
   
   \triangleright\quad (F\circ G)(v_j)\ =\ \sum_{i\,=\,1}^n\ h_{ij}\:v_i\,;

   \triangleright\quad (F\circ G)(v_j)
   \ \,=\ \,F\,\left[\,G(v_j)\,\right]
   \ \,=\ \,F\,\left(\ \sum_{k\,=\,1}^n\ g_{kj}\:v_k\right)
   \ \ =\ \ \sum_{k\,=\,1}^n\ g_{kj}\:F(v_k)\ \ =
   
   \ \ =\ \ \sum_{k\,=\,1}^n\ g_{kj} \left(\ \sum_{i\,=\,1}^n\ f_{ik}\:v_i\right)
   \ \ =\ \ \sum_{i\,=\,1}^n\,\left(\ \sum_{k\,=\,1}^n\ f_{ik}\:g_{kj}\right)\,v_i\,,
   \qquad j=1,2,\dots,n.

Z jednoznaczności przedstawienia wektora w bazie wynika, że

.. math::
   
   h_{ij}\ \,=\ \ \sum_{k\,=\,1}^n\ f_{ik}\:g_{kj}\,,\qquad i,j=1,2,\dots,n,

co oznacza, że :math:`\quad\boldsymbol{H}=\boldsymbol{F}\boldsymbol{G},\quad`
czyli :math:`\quad M_{\mathcal{B}}(F\circ G)\,=\,M_{\mathcal{B}}(F)\cdot M_{\mathcal{B}}(G)\,.`

Przyporządkowanie (przy wybranej bazie przestrzeni) operatorom liniowym macierzy
jest więc nie tylko addytywne i jednorodne (patrz dowód Twierdzenia 11.), ale również
multiplikatywne w sensie :eq:`multi`. Pozwala to sformułować

.. admonition:: Wniosek. :math:`\\`

   Jeżeli :math:`\,V\,` jest przestrzenią nad ciałem :math:`\,K\,` z bazą
   :math:`\,\mathcal{B}=(v_1,\dots,v_n),\ ` to odwzorowanie
   
   .. math::
      
      M_{\mathcal{B}}:\quad
      \text{End}(V)\ni F\ \rightarrow\ M_{\mathcal{B}}(F):\,=
      \left[\;I_{\mathcal{B}}(Fv_1\,|\,\dots\,|\,
      I_{\mathcal{B}}(Fv_n\,\right]\in M_n(K)
      
   jest izomorfizmem algebr 
   :math:`\ \ \text{End}(V)\ \ \,\text{i}\ \ \,M_n(K).`

**Dygresja.**

Obowiązująca definicja mnożenia macierzowego została przyjęta m.in. dlatego,
że przy niej odwzorowanie :math:`\,M_{\mathcal{B}}\,` jest multiplikatywne:
iloczynowi (tzn. złożeniu) operatorów odpowiada iloczyn ich macierzy.
Innym uzasadnieniem takiej definicji jest to, że wyznacznik iloczynu macierzy równa się iloczynowi ich wyznaczników.

**Przykład.**

Omówimy macierzową reprezentację operatora liniowego :math:`\,F\,` określonego w trójwymiarowej
rzeczywistej przestrzeni :math:`\,V\,` wektorów geometrycznych wzorem

.. math::
   
   F(\vec{r})\ :\,=\,\vec{a}\times \vec{r}\,,\qquad\vec{r}\in V,

gdzie :math:`\,\vec{a}\,` jest ustalonym wektorem. 
Liniowość :math:`\,F\,` wynika z własności iloczynu wektorowego.

Jako bazę przestrzeni :math:`\,V\,` wybieramy prawoskrętną trójkę wzajemnie prostopadłych wektorów jednostkowych :math:`\ \mathcal{E}=(\vec{e}_1,\,\vec{e}_2,\,\vec{e}_3).\ ` Niech 
:math:`\ \,\vec{a}=a_1\,\vec{e}_1+a_2\,\vec{e}_2+a_3\,\vec{e}_3,\ \,
\vec{r}=x_1\,\vec{e}_1+x_2\,\vec{e}_2+x_3\,\vec{e}_3.\ `
Korzystając z przedstawienia iloczynu wektorowego w postaci wyznacznika, otrzymujemy

.. math::
   :label: prod_det
   
   F(\vec{r})\ \,=\ \,
   \left|\begin{array}{ccc}
   \vec{e}_1 & \vec{e}_2 & \vec{e}_3 \\
     a_1     &   a_2     &   a_3     \\  
     x_1     &   x_2     &   x_3       
   \end{array}\right|\,.

Aby wyznaczyć macierz operatora :math:`\,F\,` w bazie :math:`\ \mathcal{E},\ `
wyliczamy obrazy wektorów tej bazy:

.. math::

   \begin{array}{l}   
   F(\vec{e}_1)\ \,=\ \,\vec{a}\times\vec{e}_1\ \;=\ \ 
   \left|\begin{array}{ccc}
   \vec{e}_1 & \vec{e}_2 & \vec{e}_3 \\
     a_1     &   a_2     &   a_3     \\  
       1     &     0     &     0       
   \end{array}\right|\ \ \,=\ \ \,
   0\,\cdot\,\vec{e}_1\ \,+\ \,a_3\,\cdot\;\vec{e}_2\ \,-\ \,a_2\,\cdot\;\vec{e}_3\,, \\   
   F(\vec{e}_2)\ \,=\ \,\vec{a}\times\vec{e}_2\ \;=\ \ 
   \left|\begin{array}{ccc}
   \vec{e}_1 & \vec{e}_2 & \vec{e}_3 \\
     a_1     &   a_2     &   a_3     \\  
       0     &     1     &     0       
   \end{array}\right|\ \ \,=\ \ \,
   -\ a_3\,\cdot\,\vec{e}_1\ \,+\ \,0\,\cdot\;\vec{e}_2\ \,+\ \,a_1\,\cdot\;\vec{e}_3\,, \\  
   F(\vec{e}_3)\ \,=\ \,\vec{a}\times\vec{e}_3\ \;=\ \ 
   \left|\begin{array}{ccc}
   \vec{e}_1 & \vec{e}_2 & \vec{e}_3 \\
     a_1     &   a_2     &   a_3     \\  
       0     &     0     &     1       
   \end{array}\right|\ \ \,=\ \ \,
   a_2\,\cdot\,\vec{e}_1\ \,-\ \,a_1\,\cdot\;\vec{e}_2\ \,+\ \,0\,\cdot\;\vec{e}_3\,.
   \end{array}

Stąd szukana macierz: 
:math:`\quad M_{\mathcal{E}}(F)\ =\ \left[\begin{array}{ccc}
0 & -\ a_3 & a_2 \\ a_3 & 0 & -\ a_1 \\ -\ a_2 & a_1 & 0
\end{array}\right]\,.`

(Zauważmy na marginesie, że macierz :math:`\ M_{\mathcal{E}}(F)\equiv\boldsymbol{F}\,`
jest antysymetryczna: :math:`\ \boldsymbol{F}^{\,T}=-\,\boldsymbol{F}.`)

Oznaczając 
:math:`\ \,F(\vec{r})\,=\,\vec{r}\;'\,=\ x_1'\;\vec{e}_1+\,x_2'\;\vec{e}_2+\,x_3'\;\vec{e}_3\,,\ \,` 
mamy z równania :eq:`prod_det` :

.. math::
   
   \begin{array}{l}
   x_1'\ =\ a_2\;x_3\ -\ a_3\;x_2 \\
   x_2'\ =\ a_3\;x_1\ -\ a_1\;x_3 \\
   x_3'\ =\ a_1\;x_2\ -\ a_2\;x_1
   \end{array}
   \qquad\text{czyli}\qquad
   \left[\begin{array}{c} x_1' \\ x_2' \\ x_3' \end{array}\right]
   \ =\ 
   \left[\begin{array}{ccc}
             0  & -\ a_3 &    a_2 \\
            a_3 &     0  & -\ a_1 \\
         -\ a_2 &    a_1 &     0
   \end{array}\right] 
   \left[\begin{array}{c} x_1 \\ x_2 \\ x_3 \end{array}\right]\,.

Ostatnia równość stwierdza, :math:`\,` zgodnie z :eq:`fund_end`, :math:`\,` że 
:math:`\ \ I_{\mathcal{E}}(\vec{r}\;')\,=\,M_{\mathcal{E}}(F)\cdot I_{\mathcal{E}}(\vec{r})\,.`































