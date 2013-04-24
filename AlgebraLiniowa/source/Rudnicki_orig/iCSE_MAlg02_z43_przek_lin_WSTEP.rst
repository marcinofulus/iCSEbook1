=16pt

Z43: Algebra liniowa

Zagadnienie: przekształcenie liniowe, macierze, wyznaczniki

Zadanie: przekształcenie liniowe, jądro i obraz, interpretacja
geometryczna.

Przestrzeń liniowa
==================

Już w starożytności człowiek próbował opisać przestrzeń, w której żyjemy
oraz poznać jej własności. Matematyzacja pojęcia przestrzeni fizycznej
nie jest zagadnieniem prostym i jednoznacznym. Punktem wyjścia do
poznania różnorodnych przestrzeni fizycznych jest pojęcie przestrzeni
liniowej, zwanej również przestrzenią wektorową. Ruch punktów w
przestrzeni wyznaczony jest przez funkcje opisujące ich przemieszczenie.
Tego typu funkcje nazywamy przekształceniami przestrzeni. Ze względu na
prawa zachowania ważną rolę odgrywają przekształcenia liniowe i dlatego
ich opisowi należy poświęcić należną uwagę.

Zbiór :math:`X` z wyróżnionym elementem :math:`\mathbf 0` nazywamy
*przestrzenia liniową* (albo *wektorową*) nad zbiorem liczb
rzeczywistych :math:`\mathbf R` lub zespolonych :math:`\mathbf C`
oznaczanym dalej przez :math:`K`\ , jeżeli określone zostały działania
*dodawania* elementów zbioru :math:`X` oraz działanie *mnożenia*
elementów zbioru :math:`X` przez elementy z :math:`K` spełniające
następujące warunki:

(L1) :math:`\mathbf x+\mathbf y=\mathbf y+\mathbf x`\ , (L2)
:math:`(\mathbf x +\mathbf y)+\mathbf z=\mathbf x+(\mathbf y+\mathbf z)`\ ,
(L3) :math:`\mathbf 0+\mathbf x=\mathbf x`\ , (L4) dla każdego
:math:`\mathbf x` istnieje :math:`\mathbf y` takie, że
:math:`\mathbf x+ \mathbf y=\mathbf 0`\ , (L5)
:math:`\alpha(\beta\mathbf x)=(\alpha\beta)\mathbf x`\ , (L6)
:math:`\alpha(\mathbf x+\mathbf y)=\alpha\mathbf x+\alpha\mathbf y`\ ,
(L7) :math:`(\alpha+\beta)\mathbf x=\alpha\mathbf x+\beta\mathbf x`\ ,
(L8) :math:`1\mathbf x=\mathbf x`\ ,

gdzie :math:`\mathbf x, \mathbf y, \mathbf z\in X` i
:math:`\alpha,\beta\in K`\ .

Elementy przestrzeni :math:`X` nazywamy *wektorami*, a element
:math:`\mathbf 0` nazywamy *wektorem zerowym*. Elementy zbioru :math:`K`
nazywamy *skalarami*. Z warunków (L1)–(L4) wynika natychmiast, że dla
każdego :math:`\mathbf x\in X` istnieje dokładnie jeden element
przeciwny :math:`-\mathbf x`\ , tj. spełniający warunek
:math:`\mathbf x+(-\mathbf x)=\mathbf 0`\ .

Wektory :math:`{\mathbf x_1}, ... ,{\mathbf x_k}` nazywamy *liniowo
niezależnymi*, jeżeli z warunku

.. math:: \alpha_1 \mathbf x_1+... +\alpha_k \mathbf x_k =\mathbf 0

 dla pewnych skalarów :math:`\alpha_1,...,\alpha_k` wynika, że
:math:`\alpha_1=\alpha_2=...=\alpha_k=0`\ . W przeciwnym przypadku, a
więc, gdy wcześniejsze równanie ma inne rozwiązania niż
:math:`\alpha_1=\alpha_2=...=\alpha_k=0`\ , wektory
:math:`\mathbf x_1,...,\mathbf x_k` nazywamy *liniowo zależnymi*. Sumę
:math:`\sum_{i=1}^k \alpha_i \mathbf x_i` nazywamy *kombinacją liniową*
wektorów :math:`\mathbf x_1,...,\mathbf x_k`\ .

Zbiór wektorów :math:`V\subset X` nazywamy *liniowo niezależnym*, jeżeli
wektory należące do dowolnego skończonego podzbioru :math:`V` są liniowo
niezależne. Zbiór wektorów :math:`V` *rozpina przestrzeń* :math:`\,X`\ ,
jeżeli dowolny wektor :math:`\mathbf x\in X` jest kombinacją liniową
pewnych wektorów ze zbioru :math:`V`\ . Jeżeli zbiór wektorów :math:`V`
jest liniowo niezależny i rozpina przestrzeń :math:`\,X`\ , to mówimy,
że zbiór :math:`
V` jest *bazą* przestrzeni :math:`X`\ . W szczególności, wektory
:math:`\mathbf x_1,...,\mathbf x_k` są bazą w przestrzeni :math:`X`\ ,
wtedy i tylko wtedy, gdy dla każdego wektora :math:`\mathbf x\in X`
istnieje dokładnie jeden ciąg skalarów :math:`\alpha_1,...,\alpha_k`
taki, że

.. math::

   \mathbf x=\alpha_1 \mathbf x_1+... +\alpha_k \mathbf
   x_k.

Każda przestrzeń liniowa ma bazę i ilość wektorów w bazie nie zależy od
jej wyboru. Jeżeli baza przestrzeni :math:`X` składa się z :math:`k`\ -wektorów,
to :math:`k` nazywamy *wymiarem* przestrzeni :math:`X` i piszemy
:math:`\dim X=k` (czytamy ,,wymiar :math:`X` jest równy :math:`k`\ ’’).
Mówimy wtedy, że :math:`X` jest *przestrzenią :math:`k`\ -wymiarową*.
Wymiar przestrzeni :math:`X` oznaczamy przez :math:`\mathrm{dim\,}X`\ .

Podzbiór :math:`X_0` przestrzeni liniowej :math:`X` nazywamy
*podprzestrzenią liniową*, jeżeli jest zamknięty ze względu na działania
w przestrzeni :math:`X`\ , tj. :math:`\,\mathbf x+\mathbf y\in X_0\,` i
:math:`\,\alpha \mathbf x\in X_0\,` dla dowolnych
:math:`\mathbf x,\mathbf y\in
X_0` oraz :math:`\alpha\in K`\ .

2mm

Przykłady przestrzeni liniowych
===============================

2mm

1. Przestrzeń :math:`\mathbf R^n` nad zbiorem :math:`\mathbf R` z
działaniami

.. math:: (x_1,...,x_n)+(y_1,...,y_n)=(x_1+y_1,...,x_n+y_n),

.. math:: \alpha (x_1,...,x_n)=(\alpha x_1,...,\alpha x_n)

 i wektorem zerowym :math:`\mathbf 0=(0,...,0)` jest przestrzenią
liniową. Na przykład płaszczyznę można utożsamiać z przestrzenią
:math:`\mathbf R^2`\ , zaś to co w języku potocznym nazywamy
przestrzenią można utożsamić z :math:`\mathbf R^3`\ . Para wektorów
:math:`\mathbf e_1=(1,0)` i :math:`\mathbf e_2=(0,1)` w
:math:`\mathbf R^2` jest liniowo niezależna. Dowolny wektor
:math:`\mathbf x=(x_1,x_2)` można przedstawić w postaci

.. math:: \mathbf x= x_1\mathbf e_1+x_2\mathbf e_2,

 a więc zbiór :math:`\{ \mathbf e_1, \mathbf e_2\}` jest bazą. Ogólnie,
zbiór wektorów postaci

.. math:: \mathbf e_1=(1,0,...,0),\,\,\mathbf e_2=(0,1,...,0),...,\,\,\mathbf e_n=(0,0,...,1)

 jest bazą w przestrzeni :math:`\mathbf R^n`\ . Taką bazę nazywamy *bazą
kanoniczną* w :math:`\mathbf R^n`\ . Nie każda para wektorów w
przestrzeni :math:`\mathbf R^2` jest bazą. Na przykład wektory
:math:`(1,0)` i :math:`(2,0)` są liniowo zależne i nie tworzą bazy.

1mm

2. Przestrzeń :math:`\mathbf C^n` nad zbiorem :math:`\mathbf C` lub nad
zbiorem :math:`\mathbf R` z wprowadzonymi poprzednio działaniami
dodawania i mnożenia przez skalar i wektorem zerowym
:math:`\mathbf 0=(0,...,0)` jest przestrzenią liniową. W przypadku, gdy
przestrzeń :math:`\mathbf C^n` jest określona nad zbiorem
:math:`\mathbf C`\ , to podobnie jak poprzednio zbiór
:math:`\{\mathbf e_1,\mathbf e_2,..., \mathbf e_n\}` jest bazą w tej
przestrzeni, a więc jest to przestrzeń :math:`n`\ -wymiarowa. Jeżeli
przestrzeń :math:`\mathbf C^n` jest określona nad zbiorem
:math:`\mathbf R`\ , to zbiór

.. math::

   \{\mathbf e_1,\mathbf e_2,..., \mathbf e_n,
   i\mathbf e_1,i\mathbf e_2,..., i\mathbf e_n\}

 jest bazą w tej przestrzeni, a więc jest to przestrzeń :math:`2n`\ -wymiarowa.

3. Niech :math:`E` będzie dowolnym zbiorem i niech :math:`X` będzie
przestrzenią funkcji z :math:`E` w :math:`\mathbf R`\ . Wtedy przestrzeń
:math:`X` z działaniami dodawania funkcji i mnożenia funkcji przez
liczbę rzeczywistą oraz z funkcją :math:`f\equiv 0` jako elementem
zerowym jest przestrzenią liniową. Zauważmy, że jeżeli
:math:`E=\{1,2,...,n\}` , to :math:`X=\mathbf R^n`\ , bo funkcję
:math:`f\colon E\to \mathbf R` możemy utożsamić z ciągiem
:math:`(f(1),f(2),...,f(n))`\ . Podobnie, jeżeli :math:`E` jest zbiorem
liczb naturalnych, to przestrzeń :math:`X` jest przestrzenią ciągów
nieskończonych. W przyszłości poznamy inne przestrzenie funkcji tworzące
przestrzenie liniowe. Poza przypadkiem, gdy :math:`E` jest zbiorem
skończonym, nie można efektywnie wypisać bazy w przestrzeni :math:`X`\ .

Przekształcenie liniowe
=======================

Niech :math:`X` będzie przestrzenią liniową nad zbiorem :math:`K` i
niech :math:`Y` będzie przestrzenią liniową nad zbiorem :math:`K`\ .
Odwzorowanie :math:`S\colon
X\to Y` nazywamy *odwzorowaniem liniowym,* jeżeli

.. math::

   S(\alpha\mathbf x+\beta\mathbf y)=
   \alpha S(\mathbf x)+\beta
   S(\mathbf y)

 dla dowolnych :math:`\mathbf x,\mathbf y\in X` i
:math:`\alpha,\beta\in K`\ . Jeżeli :math:`S` jest odwzorowaniem
liniowym, to często piszemy :math:`S\mathbf x` zamiast
:math:`S(\mathbf x)`\ .

Przekształcenie liniowe można wyznaczyć wiedząc jak działa na wektorach
z dowolnej bazy. Ograniczymy się do odwzorowania liniowego
:math:`S\colon \mathbf R^n\to \mathbf R^m`\ . Niech
:math:`\mathbf v_1, ...,
\mathbf v_n` będzie bazą w przestrzeni :math:`\mathbf R^n` i niech
:math:`\mathbf
w_1, ..., \mathbf w_m` będzie bazą w przestrzeni :math:`\mathbf R^m`\ .
Dla dowolnego :math:`1\le i\le n` wektor :math:`S\mathbf v_i` jest
elementem przestrzeni :math:`\mathbf R^m`\ , a więc istnieje ciąg liczb
rzeczywistych :math:`a_{1i},a_{2i},...,a_{mi}` taki, że

.. math::

   S\mathbf v_i=a_{1i}\mathbf w_1+ a_{2i}\mathbf w_2+...
   +a_{mi}\mathbf w_m.

 Niech teraz :math:`\mathbf x` będzie dowolnym wektorem z
:math:`\mathbf R^n`\ . Wtedy istnieją stałe :math:`x_1,...,x_n`\ , zwane
*współrzędnymi wektora* :math:`\mathbf x` w bazie
:math:`\mathbf v_1, ..., \mathbf v_n` takie, że

.. math:: \mathbf x= x_1\mathbf v_1+...+x_n\mathbf v_n.

 Z definicji odwzorowania liniowego otrzymujemy

.. math:: S\mathbf x=S (x_1\mathbf v_1+...+x_n\mathbf v_n),

 a stąd

.. math:: S\mathbf x=x_1S \mathbf v_1+...+x_nS\mathbf v_n,

 a więc wyznaczyliśmy wektor :math:`S\mathbf x` znając wartości
odwzorowania :math:`S` na wektorach bazowych. Korzystając z ostatniego
wzoru oraz z przedstawienia wektorów :math:`S\mathbf v_i` w bazie
:math:`\mathbf w_1, ...,
\mathbf w_m` możemy również wyznaczyć przedstawienie wektora
:math:`S\mathbf
x` w bazie :math:`\mathbf w_1, ..., \mathbf w_m`\ :

.. math::

   S\mathbf x=
   x_1 
   \Big
   (\sum_{i=1}^m a_{i1}\mathbf w_i
   \Big)
   +...+
   x_n 
   \Big
   (\sum_{i=1}^m a_{in}\mathbf w_i
   \Big).

 Zmieniając kolejność sumowania otrzymujemy

.. math::

   S\mathbf x=
   \sum_{j=1}^n \sum_{i=1}^m a_{ij}x_j\mathbf w_i=
   \sum_{i=1}^m  
   \Big(
   \sum_{j=1}^n a_{ij} x_j
   \Big)\mathbf w_i.

Przykłady przekształceń liniowych
=================================

Graficzną reprezentaję działania przekształcenia można w Sage otrzymać
transformując krzywą daną parametrycznie i rysując obie krzywe za pomocą
``parametric_plot``. Na przykład weźmy okrąg jednostkowy:

var(’t’) x=( cos(t), sin(t) )

wykonując przekształcenie następującym poleceniem:

y=(x[0]+x[1],x[1]+1)

otrzymujemy wektor :math:`y(t)` dany przez: :math:`\ST@wsf{try:^^J
 _st_.inline(\theST@inline, latex(y))^^Jexcept:^^J
 _st_.goboom(\the\inputlineno)}\ifST@paused
  \mbox{(Sage\TeX{} is paused)}\else
  \begin{NoHyper}\ref{@sageinline\theST@inline}\end{NoHyper}  \@ifundefined{r@@sageinline\theST@inline}{\gdef\ST@rerun{x}}{}\fi
\stepcounter{ST@inline}`\ . Wektory :math:`x(t)` oraz :math:`y(t)` można
narysować używająć

parametric\ :sub:`p`\ lot( x,(t,0,2\*pi))+parametric\ :sub:`p`\ lot(
y,(t,0,2\*pi))

W dalszej części przykładów zostanie użyta funkcja:

def show\ :sub:`t`\ ransform(T1,\*\*reszta): var(’t’)
Identycznosc=lambda w:w k1=vector((cos(t),sin(t)+1+0.1))
k2=vector((.2\*cos(t)+.4, .2\*sin(t)+1.4)) k3=vector((.2\*cos(t)-.4,
.2\*sin(t)+1.4) ) k4=vector((.5\*cos(t), .2\*sin(t)+.5) )
ks=[k1,k2,k3,k4] colors=[’gray’,’red’,’blue’,’green’] pltlist=[] for T
in [Identycznosc,T1]: ks\ :sub:`t`\ ransformed = map(T,ks) p=[
parametric\ :sub:`p`\ lot(k,(t,0,2\*pi), figsize=3,fill=True,
fillcolor=colors[i color=colors[i for i,k in
enumerate(ks\ :sub:`t`\ ransformed)] pltlist.append(sum(p)) return
pltlist

Symetria osiowa
---------------

Rozważmy odwzorowanie liniowe
:math:`:S\colon  \mathbf R^2\to \mathbf R^2` określone na wektorach
bazowych :math:`\mathbf e_1,\mathbf e_2` wzorami :math:`S(1,0)=(-1,0)`\ ,
:math:`\,S(0,1)=(0,1)`\ . Wtedy :math:`S` jest symetrią osiową względem
prostej :math:`x=0`\ .

Tlin=lambda (x,y):vector((-x,y)) pltlist=show\ :sub:`t`\ ransform(Tlin)

[width=0.45]pltlist[0] [width=0.45]pltlist[1]

Przekształcenie liniowe: symetria osiową względem prostej :math:`x=0`\ .
[fig:sinx]

Symetria względem punktu :math:`(0,0)`
--------------------------------------

Rozważmy odwzorowanie liniowe
:math:`:S\colon \mathbf R^2\to \mathbf R^2` określone wzorami
:math:`S(1,0)=(-1,0)`\ , :math:`\,S(0,1)=(0,-1)`\ . Wtedy :math:`S` jest
symetrią względem punktu :math:`(0,0)`\ .

Tlin=lambda (x,y):vector((-x,-y)) pltlist=show\ :sub:`t`\ ransform(Tlin)

[width=0.45]pltlist[0] [width=0.45]pltlist[1]

Symetria względem punktu :math:`(0,0)`\ . [fig:sinx]

Obrót
-----

Niech :math:`\alpha` będzie ustalonym kątem. Wtedy odwzorowanie liniowe
:math:`:S\colon \mathbf R^2\to \mathbf R^2` określone wzorami
:math:`S(1,0)=(\cos
\alpha,\sin\alpha)`\ , :math:`S(0,1)=(-\sin\alpha,\cos\alpha)` jest
obrotem względem początku układu współrzędnych o kąt :math:`\alpha`
przeciwnie do ruchu wskazówek zegara.

phi=pi/5 Tlin=lambda (x,y):vector((cos(phi)\*x+sin(phi)\*y,
-sin(phi)\*x+cos(phi)\*y )) pltlist=show\ :sub:`t`\ ransform(Tlin)

[width=0.45]pltlist[0] [width=0.45]pltlist[1]

Obrót o :math:`\pi/5`\ . [fig:obrot]

Jednokładność
-------------

Ustalmy :math:`k>0`\ . Wtedy odwzorowanie liniowe
:math:`:S\colon \mathbf R^n\to
 \mathbf R^n` określone wzorem :math:`S\mathbf x=k\mathbf x` jest
jednokładnością w skali :math:`k` względem początku układu
współrzędnych.

k=0.5 Tlin=lambda (x,y):vector((k\*x,k\*y))
pltlist=show\ :sub:`t`\ ransform(Tlin)
pltlist[0].axes\ :sub:`r`\ ange(-1,1,0,2.2)
pltlist[1].axes\ :sub:`r`\ ange(-1,1,0,2.2)

[width=0.45]pltlist[0] [width=0.45]pltlist[1]

Jednokładność dla :math:`k=0.5`\ . [fig:jednokladkosc]

Rzut
----

Niech :math:`S\colon \mathbf R^3\to \mathbf R^2` będzie odwzorowaniem
danym wzorem :math:`S(x_1,x_2,x_3)=(x_1,x_2)`\ . Wtedy :math:`S` jest
rzutem prostopadłym z :math:`\mathbf R^3` na :math:`\mathbf R^2`\ .

Pokażmy to graficznie dla :math:`S\colon \mathbf R^2\to \mathbf R^1`

Tlin=lambda (x,y):vector((x,0))
pltlist=show\ :sub:`t`\ ransform(Tlin,thickness=5)
pltlist[0].axes\ :sub:`r`\ ange(-1.1,1.1,0,2.2)
pltlist[1].axes\ :sub:`r`\ ange(-1.1,1.1,0,2.2)

[width=0.45]pltlist[0] [width=0.45]pltlist[1]

Rzut równoległy na oś :math:`x`\ . [fig:rzut]

Przekształcenie nieliniowe
--------------------------

Przekształcenie nieliniowe :math:`S\colon \mathbf R^2\to \mathbf R^2`
może zawierać dowolne funkcje wpólrzędnych punktów. Zobaczmy jak będzie
wyglądać figura wyjściowa po działaniu przekształcenia
:math:`S(x_1,x_2)=(x_1,\sin(2 x_2))`\ . W Sage funkcja defniujące
wygląda następująco:

Tnonlin=lambda (x,y):vector((x,sin(y\*2)))
pltlist=show\ :sub:`t`\ ransform(Tnonlin)

Na rysunku [fig:nieliniowe] widzimy podstawowe różnice w działaniu
powyższego przekształcenia a poprzednimi liniowymi: obrazy trzech
nieprzecinających się okręgów mogą się przecinać a rozciąganie i
przesuwanie figur zachodzi w niejednorodny sposób.

[width=0.45]pltlist[0] [width=0.45]pltlist[1]

Przekształcenie nieliniowe :math:`S(x_1,x_2)=(x_1,\sin(2x_2))`\ .
[fig:nieliniowe]

Iloczyn skalarny w :math:`\mathbf R^n`
--------------------------------------

Niech :math:`(a_1,...,a_n)` będzie ustalonym wektorem w przestrzeni
:math:`\mathbf R^n`\ . Odwzorowanie
:math:`S\colon \mathbf R^n\to \mathbf R` określone wzorem

.. math:: S\mathbf x=a_1x_1+a_2x_2+...+a_nx_n

 jest odwzorowaniem liniowym, zaś sumę :math:`a_1x_1+a_2x_2+...+a_nx_n`
nazywamy *iloczynem skalarnym* wektorów :math:`\mathbf a` i
:math:`\mathbf x`\ . Iloczyn skalarny wektorów
:math:`\mathbf a,\mathbf x` oznaczamy
:math:`\langle \mathbf a,\mathbf x\rangle` lub
:math:`\mathbf a\cdot \mathbf x`\ .

W Sage możemy pokazać, że definiując:

var(’y1 y2 c x1 x2 a1 a2’) x=vector([x1,x2]) y=vector([y1,y2])
a=vector([a1,a2])
wlasnosci=[(x+y).dot\ :sub:`p`\ roduct(a)==x.dot\ :sub:`p`\ roduct(a)+y.dot\ :sub:`p`\ roduct(a)
, (c\*x).dot\ :sub:`p`\ roduct(a)==c\*x.dot\ :sub:`p`\ roduct(a)]

zachodzą następujące własności:

-  :math:`\ST@wsf{try:^^J
    _st_.inline(\theST@inline, latex(wlasnosci[0]))^^Jexcept:^^J
    _st_.goboom(\the\inputlineno)}\ifST@paused
     \mbox{(Sage\TeX{} is paused)}\else
     \begin{NoHyper}\ref{@sageinline\theST@inline}\end{NoHyper}  \@ifundefined{r@@sageinline\theST@inline}{\gdef\ST@rerun{x}}{}\fi
   \stepcounter{ST@inline}` ma wartość logiczną:
   ``bool(wlasnosci[0])``:math:`=\ST@wsf{try:^^J
    _st_.inline(\theST@inline, latex(bool(wlasnosci[0])))^^Jexcept:^^J
    _st_.goboom(\the\inputlineno)}\ifST@paused
     \mbox{(Sage\TeX{} is paused)}\else
     \begin{NoHyper}\ref{@sageinline\theST@inline}\end{NoHyper}  \@ifundefined{r@@sageinline\theST@inline}{\gdef\ST@rerun{x}}{}\fi
   \stepcounter{ST@inline}`

-  :math:`\ST@wsf{try:^^J
    _st_.inline(\theST@inline, latex(wlasnosci[1]))^^Jexcept:^^J
    _st_.goboom(\the\inputlineno)}\ifST@paused
     \mbox{(Sage\TeX{} is paused)}\else
     \begin{NoHyper}\ref{@sageinline\theST@inline}\end{NoHyper}  \@ifundefined{r@@sageinline\theST@inline}{\gdef\ST@rerun{x}}{}\fi
   \stepcounter{ST@inline}` ma wartość logiczną:
   ``bool(wlasnosci[1])``:math:`=\ST@wsf{try:^^J
    _st_.inline(\theST@inline, latex(bool(wlasnosci[1])))^^Jexcept:^^J
    _st_.goboom(\the\inputlineno)}\ifST@paused
     \mbox{(Sage\TeX{} is paused)}\else
     \begin{NoHyper}\ref{@sageinline\theST@inline}\end{NoHyper}  \@ifundefined{r@@sageinline\theST@inline}{\gdef\ST@rerun{x}}{}\fi
   \stepcounter{ST@inline}`

Iloczyn skalarny w :math:`\mathbf C^n`
--------------------------------------

Niech :math:`(a_1,...,a_n)` będzie ustalonym wektorem w przestrzeni
:math:`\mathbf C^n`\ . Określmy odwzorowanie
:math:`S\colon \mathbf C^n\to \mathbf
C` wzorem

.. math:: S\mathbf z=z_1\bar a_1+z_2\bar a_2+...+z_n\bar a_n,

 gdzie :math:`\bar a_i` jest liczbą sprzężoną do :math:`a_i`\ .
Odwzorowanie :math:`S` jest liniowe. Sumę
:math:`\langle \mathbf z,\mathbf a\rangle =z_1\bar
a_1+z_2\bar a_2+...+z_n\bar a_n` nazywamy *iloczynem skalarnym* wektorów
:math:`\mathbf z` i :math:`\mathbf a`\ . Jeżeli zamiast odwzorowania
:math:`S` rozważymy odwzorowanie

.. math:: T\mathbf z=a_1\bar z_1+a_2\bar z_2+...+a_n\bar z_n,

 to :math:`T(\mathbf z+\mathbf z')=
T\mathbf z+T\mathbf z'` oraz
:math:`T(\alpha\mathbf z)=\bar \alpha \,T \mathbf z`\ . Odwzorowanie
spełniające powyższe dwa warunki nazywamy *antyliniowym*.

Przestrzenie funkcji
--------------------

Niech :math:`X` będzie przestrzenią funkcji z :math:`E` w
:math:`\mathbf R` i niech :math:`\varphi` będzie dowolną funkcją z
:math:`E` w :math:`E`\ . Wtedy odwzorowanie :math:`S\colon X\to X`
określone wzorem :math:`Sf(x)=f(\varphi(x))` jest odwzorowaniem
liniowym.

Jądro i obraz przekształcenia
=============================

Niech :math:`S\colon X\to Y` będzie przekształceniem liniowym. Wtedy
zbiór

.. math::

   \mathrm{Ker\,} S=
   \{\mathbf x \in X\colon \,\,S(\mathbf  x)=\mathbf 0\}

 nazywamy *jądrem* odwzorowania :math:`S`\ , a zbiór

.. math::

   \mathrm{Im\,} S=
   \{S(\mathbf  x)\colon 
   \,\, \mathbf x\in X\}

nazywamy *obrazem* odwzorowania :math:`S`\ . Jądro i obraz
przekształcenia liniowego są podprzestrzeniami liniowymi, odpowiednio,
przestrzeni :math:`X` i :math:`Y`\ . Jeżeli
:math:`\mathrm{Ker\,} S=\{\mathbf 0\}`\ , to odwzorowanie :math:`S` jest
różnowartościowe, a więc z warunku :math:`S(\mathbf
x)=S(\mathbf y)` wynika, że :math:`\mathbf x=\mathbf y`\ . Wymiar jądra
i obrazu odwzorowania :math:`S` spełniają warunek

.. math::

   \mathrm{dim\,} \mathrm{Ker\,} S
    + 
    \mathrm{dim\,} \mathrm{Im\,} S
    =n.


