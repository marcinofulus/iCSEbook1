
Podstawowe pojęcia i oznaczenia
-------------------------------

Elementy logiki
~~~~~~~~~~~~~~~

*Zdanie* (w sensie logicznym) jest wypowiedzią, o której można stwierdzić
(na gruncie pewnej wiedzy, teorii), że jest prawdziwa albo fałszywa,
czyli że ma określoną *wartość logiczną*.
Zdania będą tutaj oznaczane symbolami :math:`\,p,\,q,\,\dots`

Przy pomocy *spójników logicznych*:

.. math::
   
   \begin{array}{ccccc}
   \qquad\sim\qquad & \qquad\lor\qquad & \qquad\land\qquad & 
   \quad\Rightarrow\qquad & \Leftrightarrow \\
   \qquad\text{nie}\qquad & \qquad\text{lub}\qquad & \qquad\ \text{i}\qquad & 
   \quad\text{implikuje}\quad & \ \ \text{jest równoważne}
   \end{array}

można ze zdań składowych tworzyć zdania złożone. Najważniejsze zdania złożone to:

*negacja*: :math:`\quad\sim p\quad` (nie :math:`\,p;\ ` nieprawda, że :math:`\,p`);

*alternatywa*: :math:`\quad p\lor q\quad` (:math:`\,p\ ` lub :math:`\ q`);

*koniunkcja*: :math:`\quad p\land q\quad` (:math:`\,p\ ` i :math:`\ q`);

*implikacja*: :math:`\quad p\Rightarrow q\quad` 
(jeśli :math:`\ p,\ \,\text{to}\ \ q\,;\quad` z :math:`\ p\ ` wynika :math:`\ q\,;\quad`
:math:`\ p\ ` implikuje :math:`\ q`);

*równoważność*: :math:`\quad p\Leftrightarrow q\quad` 
(:math:`\ p\ ` wtedy i tylko wtedy, gdy :math:`\ q`).

Jeżeli twierdzenie matematyczne jest sformułowane w postaci implikacji 
:math:`\ p\Rightarrow q\,,\ ` 
to używa się następujących określeń:

:math:`\ p\ ` - :math:`\,` założenie twierdzenia :math:`\,` 
(warunek wystarczający dla :math:`\ q`) :math:`;\ \ \\`
:math:`\ q\ ` - :math:`\,` teza twierdzenia :math:`\,`
(warunek konieczny dla :math:`\ p`).

.. W równoważności :math:`\,p\Leftrightarrow q,\ \,p\ `
   jest warunkiem koniecznym i wystarczającym dla :math:`\,q\,` i vice versa.

Przy dowodzeniu twierdzeń często stosuje się *tautologie logiczne*.
Są to wyrażenia, które zawsze przechodzą w zdania prawdziwe, niezależnie od 
wartości logicznych zdań :math:`\,p\ \,\text{i}\ \ q,\ \ ` np.:

.. math::
   
   \begin{array}{ccl}
   (p\Leftrightarrow q)\ \ \Leftrightarrow\ \ [\,(p\Rightarrow q)\land(q\Rightarrow p)\,] & &
   \\ \\
   (p\Rightarrow q)\ \Leftrightarrow\ [\,(\sim q)\Rightarrow (\sim p)\,] & 
   \quad & \text{(prawo kontrapozycji)}
   \\ \\
   \sim (p\lor q)\ \Leftrightarrow\ [\,(\sim p) \land (\sim q)\,] & 
   \quad & \text{(prawo negacji alternatywy)}
   \\
   \sim (p\land q)\ \Leftrightarrow\ [\,(\sim p) \lor (\sim q)\,] & 
   \quad & \text{(prawo negacji koniunkcji)}
   \end{array}
 
Oznaczenia teoriomnogościowe
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. | Najbardziej podstawowe pojęcia matematyki to: :math:`\,`
   *zbiór*, *element zbioru*, *przynależność do zbioru*. :math:`\,`
   Uznajemy je za pierwotne i nie wymagające definiowania.
   |

| Zbiory oznaczamy zazwyczaj dużymi literami: :math:`\ A,\,B,\,\dots,\,X,\,Y,\,Z,\,\dots`
| a ich elementy :math:`\,` - :math:`\,` małymi: :math:`\ a,\,b,\,c,\,\dots,\,x,\,y,\,z,\,\dots`
|
| Przynależność do zbioru zapisujemy następująco:
| :math:`\,a\in A\ \ ` - :math:`\ \ a\,` jest elementem zbioru :math:`\,A\,` 
  (:math:`a\,` należy do :math:`\,A`) ;
| :math:`\,a\notin A\ \ ` - :math:`\ \ a\,` nie jest elementem zbioru :math:`\,A\,` 
  (:math:`a\,` nie należy do :math:`\,A`) .
| Symbol :math:`\ \emptyset\ ` oznacza :math:`\,` *zbiór pusty*, :math:`\,` 
  do którego nie należy żaden element.
|
| Jeżeli określamy zbiór wymieniając jego elementy, używamy nawiasów klamrowych:
| :math:`\,\{a_1,a_2,\dots,a_k\}` :math:`\,` - :math:`\,` 
  zbiór złożony z elementów :math:`\,a_1,a_2,\dots,a_k\ ` (kolejność nieokreślona).
| Natomiast zwykłe nawiasy okrągłe oznaczają *układ*, czyli ciąg elementów:
| :math:`\,(a_1,a_2,\dots,a_k)` :math:`\,` - :math:`\,` 
  układ elementów :math:`\,a_1,a_2,\dots,a_k\ ` (ich kolejność jest istotna).
| Układ dwóch elementów, :math:`\,(a_1,a_2),\,` nazywany jest :math:`\,` *parą uporządkowaną*. 
|
| Zapis :math:`\ \{\,x\in X:\ \phi(x)\,\}\ \,` przedstawia zbiór tych elementów :math:`\,x\in X,\ `
  dla których spełniony jest warunek :math:`\,\phi.\ ` 
  Dla przykładu stwierdzenie :math:`\ \{\,x\in R:\ x^2+x-2=0\,\}\ =\ \{-2,\,1\,\}\ `
  należy odczytać następująco: zbiór liczb rzeczywistych :math:`\,x,\ ` 
  dla których :math:`\,x^2+x-2=0,\ ` jest zbiorem dwuelementowym, składającym się z liczb 
  :math:`\,-2\ \ \text{i}\ \ 1\,.`

Odwzorowania i działania
~~~~~~~~~~~~~~~~~~~~~~~~

*Odwzorowanie* :math:`\ f: X\to Y\ ` zbioru :math:`\,X\,` w zbiór :math:`\,Y\,`
jest przyporządkowaniem każdemu elementowi zbioru :math:`\,X\,` 
dokładnie jednego elementu zbioru :math:`\,Y.\ `
Jeżeli elementowi :math:`\,x\in X\,` odpowiada element :math:`\,y\in Y,\,`
to mówimy, że :math:`\,y\,` jest *obrazem* elementu :math:`\,x\,` przy odwzorowaniu 
:math:`\,f:\ \ y=f(x).`

Zbiór :math:`\,X\,` nazywamy *dziedziną* (*zbiorem argumentów*) odwzorowania :math:`\,f,\ `
a zbiór :math:`\,f(X)\ ` złożony z obrazów :math:`\,f(x)\ ` wszystkich elementów :math:`\,x\in X\ `
jest :math:`\,` *zbiorem wartości* :math:`\,` tego odwzorowania.

Odwzorowanie :math:`\ f: X\to Y\ ` jest:

* | *surjekcją* :math:`\,` (odwzorowaniem zbioru :math:`\ X\ ` *na* zbiór :math:`\ Y`), :math:`\,`
    gdy :math:`\ f(X)=Y\,.\ `
  | Wtedy każdemu elementowi :math:`\,y\in Y\ ` 
    odpowiada *co najmniej jeden* element :math:`\,x\in X.`

* | *injekcją* :math:`\,` (odwzorowaniem różnowartościowym), :math:`\,` gdy 
    :math:`\ \ x_1\neq x_2\ \Rightarrow\ f(x_1)\neq f(x_2)\ `
  | (czyli gdy różnym argumentom :math:`\ x_1,x_2\in X\ ` odpowiadają różne obrazy).
  | Wtedy każdemu elementowi :math:`\,y\in Y\ ` 
    odpowiada *co najwyżej jeden* element :math:`\,x\in X.`

* | *bijekcją* :math:`\,` (odwzorowaniem wzajemnie jednoznacznym), 
    gdy jest surjekcją i injekcją. 
  | Wtedy każdemu elementowi :math:`\,y\in Y\ ` 
    odpowiada *dokładnie jeden* element :math:`\,x\in X.`

*Iloczyn kartezjański* :math:`\,` zbiorów :math:`\,A\ \ \text{i}\ \ B\,` jest z definicji
zbiorem wszystkich par uporządkowanych :math:`\,(a,b)\,` takich, że element :math:`\,a\,`
należy do zbioru :math:`\,A\ ` i :math:`\,` element :math:`\,b\,` należy do zbioru :math:`\,B\,` :

.. math::
   
   A\times B\ :\,=\ \{\,(a,b):\ a\in A \,\land\, b\in B\,\}\,.

*Działanie wewnętrzne* :math:`\,\odot\,` w zbiorze :math:`\,A\,` jest odwzorowaniem
:math:`\,\odot: A\times A\to A.\ `
Jeżeli dla :math:`\,a_1,a_2,a_3\in A\,` zachodzi :math:`\,\odot\,(a_1,a_2)=a_3,\ `
to mówimy, że :math:`\,a_3\,` jest wynikiem działania :math:`\,\odot\,` 
na elementach :math:`\,a_1\ \ \text{i}\ \ a_2,\ ` co zapisujemy :math:`\ a_3=a_1\odot a_2.\ `
Przykłady: dodawanie liczb naturalnych, odejmowanie liczb całkowitych, dodawanie wektorów geometrycznych, mnożenie wektorów w sensie iloczynu wektorowego. 
W tych przykładach każdej uporządkowanej parze elementów pewnego zbioru :math:`\,A\,` odpowiada dokładnie jeden element tego samego zbioru.

*Działanie zewnętrzne* :math:`\,\boxdot\,` w zbiorze :math:`\,A\,` jest odwzorowaniem
:math:`\,\boxdot: K\times A\to A,\ ` gdzie :math:`\,K\,` jest pewnym zbiorem.
Wynik :math:`\ \boxdot\,(\lambda,a)\ ` działania :math:`\,\boxdot\,` na elementach 
:math:`\,\lambda\in K\ \ \text{i}\ \ a\in A\,` zapisujemy jako :math:`\,\lambda\boxdot a.\ `
Przykłady: mnożenie wektorów geometrycznych przez liczby rzeczywiste, mnożenie macierzy przez liczby, mnożenie funkcji przez liczby.
Teraz każdej uporządkowanej parze elementów należących odpowiednio do zbioru :math:`\,K\,` oraz do zbioru :math:`\,A\,` odpowiada dokładnie jeden element zbioru :math:`\,A.`


























