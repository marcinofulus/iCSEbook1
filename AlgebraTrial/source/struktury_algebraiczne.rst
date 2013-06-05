.. -*- coding: utf-8 -*-

Podstawowe struktury algebraiczne
---------------------------------
|

| **Struktura algebraiczna** składa się z jednego albo kilku zbiorów oraz działań określonych na tych zbiorach.
| Definicja konkretnej struktury wymienia te zbiory i podaje postulaty, które powinny spełniać działania.

| Najważniejsze struktury to: :math:`\ ` grupa, :math:`\ ` pierścień, :math:`\ ` ciało, :math:`\ ` przestrzen liniowa,  :math:`\ ` algebra.
|

**Grupa** składa się z jednego zbioru :math:`\,G\ ` i :math:`\ ` jednego działania :math:`\,\perp\,:\ \ \mathbb{G}\;=\;(G,\,\perp).`

Działanie grupowe :math:`\,\perp\,` spełnia następujące warunki:

:math:`\ \ \ ` 1. :math:`\ \ ` jest łączne: :math:`\ \,(g_1\perp g_2)\perp g_3 \ =\ g_1\perp (g_2\perp g_3)\ \ ` 
dla dowolnych :math:`\ g_1,\,g_2,\,g_3\,\in\,G\,;`

:math:`\ \ \ ` 2. :math:`\ \ ` istnieje element neutralny :math:`\ e\in G\ \,`  
taki, :math:`\,` że :math:`\ e\perp g\ =\ g \perp e\ =\ g \ \ ` dla każdego :math:`\ g  \in G\,;`

:math:`\ \ \ ` 3. :math:`\ \ ` każdy element :math:`\ g \in G\ ` ma swoją odwrotność :math:`\ g^{-1}\in\,G\ ` 
taką, :math:`\,` że :math:`\ g \perp g^{-1}\ =\ g^{-1}\perp g\ =\ e\,.`

Jeżeli ponadto działanie :math:`\,\perp\,` jest przemienne:  :math:`\ \; g_1\perp g_2 \ =\ g_2\perp g_1\ ` 
dla dowolnych :math:`\ g_1, g_2\,\in\,G,\ ` to grupę nazywamy przemienną.

| Przykłady grup przemiennych:
| grupa addytywna liczb całkowitych :math:`\ (Z,\,+)\,;\ \ ` 
  grupa multiplikatywna liczb rzeczywistych różnych od zera :math:`\ (R\smallsetminus\{0\}\,,\;\cdot\ )\,.`

| Przykłady grup nieprzemiennych:
| grupa permutacji zbioru :math:`\,n`-elementowego :math:`\,(\Pi(n),\,\circ\,)\,;\ \ ` 
  grupa przekształceń symetrii figury na płaszczyźnie albo bryły w przestrzeni.

| 

**Pierścień** (ang.: ring) składa się z jednego zbioru :math:`\,P\ ` i :math:`\ ` dwóch działań:
  :math:`\ ` "dodawania" :math:`\,+\ \,` oraz :math:`\ ` "mnożenia" :math:`\ \cdot\ :\ \ \mathbb{P}\;=\;(P,\,+\,,\,\cdot\,)\,.`

Działania w pierścieniu spełniają następujące warunki:

1. :math:`\ ` :math:`(P,\,+)\ ` jest grupą przemienną;

2. :math:`\ ` mnożenie jest działaniem łącznym:
 
   :math:`\qquad\qquad\qquad\qquad\qquad (a_1\cdot a_2)\cdot a_3 \ =\ a_1\cdot (a_2\cdot a_3)\qquad` 
   dla dowolnych :math:`\ a_1,\,a_2,\,a_3\,\in\,P\,;`

3. :math:`\ ` mnożenie jest rozdzielne względem dodawania:
 
   | :math:`\qquad\qquad\qquad\qquad\qquad a\cdot(b_1+b_2)\ =\ (a\cdot b_1)\ +\ (a\cdot b_2) \qquad` dla dowolnych :math:`\ a,\,b_1,\,b_2\,\in\, P\,,`
   | :math:`\qquad\qquad\qquad\qquad\qquad (a_1+a_2)\cdot b\ =\ (a_1\cdot b)\ +\ (a_2\cdot b)\qquad` dla dowolnych :math:`\ a_1,\,a_2,\,b\,\in\, P\,.`

Jeżeli dodatkowo :math:`\ ` mnożenie :math:`\ ` jest przemienne:  :math:`\ \; a_1\cdot a_2 \ =\ a_2\cdot a_1\ ` 
dla dowolnych :math:`\ a_1, a_2\,\in\,P,\ ` to pierścień nazywamy przemiennym.

| Jeśli natomiast istnieje element neutralny ze względu na mnożenie
  :math:`\ ` (nazywamy go jednością pierścienia i oznaczamy 1),
| a więc taki, :math:`\ ` że :math:`\ \ 1\cdot a\ =\ a\cdot 1\ =\ a\ \ ` dla każdego :math:`\ a\in P\,,\ `
  to mówimy o pierścieniu z jednością.

| Przykłady przemiennych pierścieni z jednością:

| pierścień liczb całkowitych: :math:`\ \ \mathbb{Z} \,=\, (Z,\ +\,,\ \cdot\,)\ \ ` ze zwykłym dodawaniem i mnożeniem liczb;

| pierścień reszt modulo :math:`\,n:\ \ \mathbb{Z}_n = (Z_n,\ +_n\,,\ \cdot_n\,)\,,\ ` 
  gdzie :math:`\ Z_n\,=\,\{0,1,\ldots,n-1\}\,,\ `
| a działania :math:`\ +_n\ \text{i} \ \cdot_n\ ` są dodawaniem  i  mnożeniem modulo :math:`\,n,\ \ n=2,3,\ldots`

Nieprzemienny pierścień z jednością tworzą macierze kwadratowe stopnia :math:`\,n\,` ze względu na dodawanie i mnożenie macierzowe.

|

**Ciało** (ang.: field) składa się z jednego zbioru :math:`\,K\ ` i :math:`\ ` dwóch działań:
:math:`\ ` "dodawania" :math:`\,+\ \,` oraz :math:`\ ` "mnożenia" :math:`\ \cdot\ :\ \ \mathbb{K}\;=\;(K,\,+\,,\,\cdot\,)\,.`

Działania w ciele spełniają następujące warunki:

1. :math:`\ ` :math:`(K,\,+)\ \,` jest grupą przemienną z elementem neutralnym :math:`\,` 0 :math:`\,` (zero ciała);

2. :math:`\ ` :math:`(K\smallsetminus\{0\},\ \cdot\;)\ \,` jest grupą przemienną z elementem neutralnym :math:`\,` 1 :math:`\,` (jedność ciała);

3. :math:`\ ` mnożenie jest rozdzielne względem dodawania:
   
   :math:`\qquad\qquad\qquad\qquad\qquad\alpha\cdot(\beta_1+\beta_2)\ =\ (\alpha\cdot \beta_1)\ +\ (\alpha\cdot \beta_2)\qquad`
   dla dowolnych :math:`\ \alpha,\,\beta_1,\,\beta_2\,\in\, K\,.`

Jak widać, każde ciało jest pierścieniem. :math:`\ ` A dokładnie:

| ciało jest pierścieniem przemiennym z jednością, w którym dla każdego elementu niezerowego istnieje odwrotność.

| Przykłady:
| ciało liczb wymiernych: :math:`\ \mathbb{Q}\,=\,(Q,\,+\,,\;\cdot\;)\;;\ ` 
  ciało liczb rzeczywistych: :math:`\ \mathbb{R}\,=\,(R,\,+\,,\;\cdot\;)\;;\ `
  ciało liczb zespolonych: :math:`\ \mathbb{C}\,=\,(C,\,+\,,\;\cdot\;)\;.`

| Ciałem (skończonym) jest również pierścień :math:`\ \mathbb{Z}_n\ ` 
  reszt modulo :math:`\,n,\ ` gdy :math:`\,n\ ` jest liczbą pierwszą.

|

.. admonition:: Uwaga

   | Często grupą (pierścieniem, ciałem) nazywa się sam zbiór :math:`\ G\ (P,\ K),\ ` 
   | o ile są w nim określone działania spełniające odpowiednie postulaty.

