
Definicje i terminologia
------------------------

Zaczniemy od najbardziej ogólnej definicji homomorfizmu.

Niech będzie dany zbiór :math:`\,A\ ` z działaniem :math:`\ \bot\ \,` 
oraz zbiór :math:`\ A'\ ` z działaniem :math:`\,\circ\,.`

Odwzorowanie :math:`\ f:\ A\,\rightarrow\,A'\ \,` jest :math:`\,` *homomorfizmem*, :math:`\,`
gdy zachowuje działania w tym sensie,
że obraz złożenia dwóch elementów zbioru :math:`\,A\,`
równa się złożeniu ich obrazów:

.. :math:`\qquad f(a_1\,\bot\;a_2)\,=\,f(a_1)\circ f(a_2)\,,\qquad a_1,a_2\in A\,.`

.. math::
   :label: hom
   
   f(a_1\,\bot\;a_2)\ =\ f(a_1)\,\circ\,f(a_2)\,,\qquad a_1,a_2\in A\,.

.. Bijektywny (czyli wzajemnie jednoznaczny) homomorfizm nazywa się *izomorfizmem*.

Jeżeli w zbiorach określonych jest więcej działań wewnętrznych, 
to warunek :eq:`hom` powinien być spełniony dla każdej pary odpowiednich działań.
W ten sposób definiuje się homomorfizm oraz izomorfizm (czyli bijektywny homomorfizm) 
grup, pierścieni i ciał.

W przestrzeni wektorowej i algebrze oprócz działań wewnętrznych występuje działanie zewnętrzne:
mnożenie wektorów przez liczby. Odpowiednia definicja brzmi następująco:

.. .. admonition:: Definicja.

   | Niech :math:`\ V\ \ \text{i}\ \ \,W\ ` będą przestrzeniami wektorowymi 
     nad (tym samym) ciałem :math:`\,K\,.\ ` 
   | Odwzorowanie :math:`\ \,F:\ V\,\rightarrow W\ \,`
     jest :math:`\,` *homomorfizmem* :math:`\,` tych przestrzeni, :math:`\,` gdy jest 
   
   1. | addytywne: :math:`\quad F(v_1+v_2)\ =\ F(v_1)+F(v_2)\,,\qquad v_1,v_2\in V\,;`
      | (obraz sumy dwóch wektorów równa się sumie ich obrazów) :math:`\ ` oraz  
   2. | jednorodne: :math:`\quad F(a\,v)\,=\,a\,F(v)\,,\qquad a\in K,\ v\in V\,.`
      | (pomnożenie argumentu przez liczbę :math:`\,a\ \,` mnoży przez tę liczbę obraz)

.. admonition:: Definicja.

   | Niech :math:`\ \,V\ \ \text{i}\ \ \,W\ \,` będą przestrzeniami wektorowymi 
     nad (tym samym) ciałem :math:`\,K.` 
   | Odwzorowanie :math:`\ \,F:\ V\rightarrow W\ \,`
     jest :math:`\,` *homomorfizmem* :math:`\,` (*przekształceniem liniowym*) :math:`\,`
     przestrzeni :math:`\,V\ ` w przestrzeń :math:`\,W,\ \,` gdy jest jednocześnie 
   
   1. | addytywne: :math:`\quad F(v_1+v_2)\ =\ F(v_1)+F(v_2)\,,\qquad v_1,v_2\in V`
      | (obraz sumy dwóch wektorów równa się sumie ich obrazów) :math:`\ ` oraz
 
   2. | jednorodne: :math:`\quad F(a\,v)\,=\,a\,F(v)\,,\qquad a\in K,\ v\in V`
      | (pomnożenie argumentu przez liczbę :math:`\,a\ \,` mnoży przez tę liczbę obraz).


Warunki addytywności i jednorodności można zapisac jednym wzorem:

.. math::
   :label: hom_suc
   
   F(a_1\,v_1+a_1\,v_2)\ \,=\ \,a_1\,F(v_1)\,+\,a_2\,F(v_2)\,,\qquad a_1,a_2\in K,\ \ v_1,v_2\in V\,.

(obraz kombinacji liniowej dwóch wektorów jest taką samą kombinacją liniową ich obrazów)

Wykorzystując zasadę indukcji matematycznej, można uogólnić wzór :eq:`hom_suc` na przypadek kombinacji liniowej dowolnej liczby wektorów. 

.. Homomorfizm :math:`\ \,F:\ V\,\rightarrow W\ \,` nazywa się również 
   :math:`\,` *przekształceniem liniowym* :math:`\,` 
   przestrzeni :math:`\ V\ ` w przestrzeń :math:`\ W\,.`

Okazuje się, że przy naturalnie określonych działaniach na odwzorowaniach, zbiór wszystkich przekształceń liniowych przestrzeni :math:`\ V\ ` w przestrzeń :math:`\ W\ ` jest sam w sobie 
również przestrzenią wektorową nad ciałem :math:`\ K.\ `
Aby wyjaśnić tę sprawę dokładnie, wprowadzamy oznaczenia:

:math:`\text{Map}(V,W)\ ` - :math:`\,` zbiór wszystkich odwzorowań przestrzeni :math:`\,V\ `
w przestrzeń :math:`\,W;`

:math:`\text{Hom}(V,W)\ ` - :math:`\,` zbiór wszystkich homomorfizmów przestrzeni :math:`\,V\ `
w przestrzeń :math:`\,W.`

Sprawdzając postulaty z definicji przestrzeni wektorowej można udowodnić 

.. admonition:: Lemat 1. :math:`\\`
   
   Jeżeli :math:`\ V\ \ \text{i}\ \ \,W\ ` są przestrzeniami wektorowymi nad ciałem :math:`\,K,\ `
   to zbiór :math:`\ \text{Map}(V,W)\ ` z działaniami dodawania odwzorowań 
   i mnożenia ich przez liczby z ciała :math:`\,K:`

   .. math::
      :label: oper_hom
   
      \begin{array}{lcl}
      (F_1+F_2)(v)\ :\,=\ F_1(v)\,+\,F_2(v) & \qquad & F_1,F_2,F\in \text{Map}(V,W)\,, \\
      (a\,F)(v)\ :\,=\ a\,F(v)              & \qquad & \,a\in K,\ \ v\in V\,,
      \end{array}

   jest przestrzenią wektorową nad ciałem :math:`\,K.`

(twierdzenie to pozostaje słuszne dla zbioru :math:`\ \text{Map}(X,W),\ `
gdzie :math:`\ X\ ` jest dowolnym zbiorem)

Również przez bezpośrednie sprawdzenie dowodzi się

.. admonition:: Lemat 2. :math:`\\`

   Jeżeli :math:`\ V\ \ \text{i}\ \ \,W\ ` są przestrzeniami wektorowymi nad ciałem :math:`\,K,\ `    
   to zbiór :math:`\text{Hom}(V,W)\ ` jest domknięty ze względu na dodawanie odwzorowań i mnożenie 
   ich przez liczby z ciała :math:`\,K.\ `
   Mianowicie, dla dowolnych :math:`\ F_1,F_2\in\text{Map}(V,W),\ a\in K:`
   
   .. math::
      
      F_1,F_2\in \text{Hom}(V,W)\quad\Rightarrow\quad
      \left[\ (F_1+F_2)\in\text{Hom}(V,W)\ \ \wedge\ \ (a\,F_1)\in\text{Hom}(V,W)\ \right]

W oparciu o kryterium dla podprzestrzeni można więc sformułować

.. admonition:: Twierdzenie 1. :math:`\\`
   
   Niech :math:`\ V\ \,\text{i}\ \ W\ ` będą przestrzeniami wektorowymi nad ciałem :math:`\,K.\ `
   Wtedy zbiór :math:`\text{Hom}(V,W)\ ` przekształceń liniowych przestrzeni
   :math:`\ V\ ` w przestrzeń :math:`\ W\ ` jest również przestrzenią wektorową 
   nad ciałem :math:`\,K,\ ` przy czym jest to podprzestrzeń przestrzeni :math:`\text{Map}(V,W)\ `
   wszystkich odwzorowań przestrzeni :math:`\ V\ ` w przestrzeń :math:`\ W:`

   .. math::
   
      \text{Hom}(V,W)<\text{Map}(V,W)   

Bijektywne przekształcenie liniowe przestrzeni :math:`\ V\ ` w przestrzeń :math:`\ W\ `
jest :math:`\,` *izomorfizmem* :math:`\,` tych przestrzeni. 
Zbiór wszystkich takich izomorfizmów oznacza się :math:`\,\text{Izo}(V,W).\ \\` 
Jeżeli :math:`\ \text{Izo}(V,W)\ne\emptyset,\ ` to mówimy 
że przestrzenie :math:`\ V\ \text{i}\ \ W\ ` są :math:`\,` *izomorficzne*: 
:math:`\ V\simeq W.`

Przekształcenie liniowe przestrzeni :math:`\ V\ ` w siebie jest :math:`\,` *endomorfizmem* :math:`\,`
(*operatorem liniowym*). Izomorfizm przestrzeni na siebie, czyli bijektywny endomorfizm, nazywamy
:math:`\,` *automorfizmem*. Dla zbiorów takich przekształceń wprowadzamy oznaczenia:

.. math::
   
   \text{End}(V)\ :\,=\ \text{Hom}(V,V)\,,\qquad\text{Aut}(V)\ :\,=\ \text{Izo}(V,V)\,.

Relacje pomiędzy tymi pojęciami można przedstawić przy pomocy schematu,
w którym strzałki w prawo oznaczają warunek bijektywności, 
a strzałki w dół :math:`\,` - :math:`\,` podstawienie :math:`\ W=V:`

.. math::
   
   \left.\begin{array}{ccc}
   \text{homo-} & \longrightarrow & \text{izo-}  \\ \\
   \downarrow   &                 & \downarrow   \\ \\
   \text{endo-} & \longrightarrow & \text{auto-} 
   \end{array}\quad\right\}
   \quad\text{-morfizm}

W zbiorze :math:`\ \text{End}(V)\ ` operatorów liniowych działających w przestrzeni :math:`\ V,\ `
oprócz działań :eq:`oper_hom` można określić operację składania (superpozycji),
oznaczoną tutaj symbolem :math:`\ \circ` :

.. math::
   
   (F\circ G)(v)\ \,:\,=\ \,F\,[\,G(v)\,]\,,\qquad F,\,G\in\text{End}(V),\ \ v\in V\,. 

Przez sprawdzenie postulatów w definicji algebry można łatwo udowodnić

.. admonition:: Twierdzenie 2.  :math:`\\`
   
   Dla przestrzeni :math:`\ V(K)\ ` zbiór :math:`\ \text{End}(V)\ ` z działaniami dodawania,
   mnożenia    przez liczby z :math:`\ K\ ` i składania jest nieprzemienną algebrą 
   nad ciałem :math:`\ K.`

.. Przekształcenie liniowe :math:`F: V\rightarrow W` nazywa się :math:`\,`
   *epimorfizmem liniowym*, :math:`\,` gdy jest surjekcją, 
   tj. odwzorowaniem przestrzeni :math:`V\,` *na* przestrzeń :math:`\,W\,`
   (zbiorem wartości jest cała przestrzeń :math:`\,W`). 
   Natomiast :math:`\,` *monomorfizm liniowy* :math:`\,` jest z definicji przekształceniem liniowym 
   różnowartościowym, czyli injekcją (różnym argumentom odpowiadają różne obrazy).

.. Izomorfizm przestrzeni wektorowych, jako bijekcja, jest jednocześnie
   epimorfizmem i monomorfizmem.


Jeżeli :math:`\ V\ ` jest przestrzenią wektorową nad ciałem :math:`\ K,\ ` 
to przekształcenie liniowe :math:`\ f:\ V\rightarrow K,\ ` gdzie ciało 
:math:`\ K\equiv K^1\ ` jest traktowane jako 1-wymiarowa przestrzeń nad :math:`\,K,\ ` 
nazywa się :math:`\,` *funkcjonałem liniowym*. 
Zbiór :math:`\ V^\ast :\,=\ \text{Hom}(V,K)\ ` funkcjonałów liniowych określonych na przestrzeni :math:`\, V\,` jest :math:`\,` *przestrzenią sprzężoną* :math:`\,` (*dualną*) :math:`\,` 
do :math:`\,V.`















