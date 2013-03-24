Przestrzeń liniowa
------------------

Już w starożytności człowiek próbował opisać przestrzeń, w której
żyjemy orazpoznać jej własności. Matematyzacja pojęcia przestrzeni
ﬁzycznej nie jestzagadnieniem prostym i jednoznacznym. Punktem wyjścia
do poznaniaróżnorodnych przestrzeni ﬁzycznych jest pojęcie przestrzeni
liniowej, zwanejrównież przestrzenią wektorową. Ruch punktów w
przestrzeni wyznaczony jestprzez funkcje opisujące ich
przemieszczenie. Tego typu funkcje nazywamyprzekształceniami
przestrzeni. Ze względu na prawa zachowania ważną rolęodgrywają
przekształcenia liniowe i dlatego ich opisowi należy poświęcić
należnąuwagę.

Zbiór :math:`X` z wyróżnionym elementem :math:`\mathbf{0}` nazywamy
przestrzenia liniową (albo wektorową ) nad zbiorem liczb
rzeczywistych :math:`\mathbf{R}` lub zespolonych :math:`\mathbf{C}`
oznaczanym dalej przez :math:`K`, jeżeli określone zostały działania
dodawania elementów zbioru :math:`X` oraz działanie mnożenia elementów
zbioru :math:`X` przez elementy z :math:`K` spełniające następujące
warunki:

- (L1) :math:`\mathbf{x} + \mathbf{y} = \mathbf{y} + \mathbf{x}`,
- (L2) :math:`(\mathbf{x} + \mathbf{y}) + \mathbf{z} = \mathbf{x} + (\mathbf{y} + \mathbf{z})`, 
- (L3) :math:`\mathbf{0} + \mathbf{x} = \mathbf{x}`, 
- (L4)  dla każdego :math:`\mathbf{x}` istnieje :math:`\mathbf{y}` takie, że :math:`\mathbf{x} + \mathbf{y} = \mathbf{0}`,
- (L5) :math:`(\mathbf{x}) = ()\mathbf{x}`,
- (L6) :math:`(\mathbf{x} + \mathbf{y}) = \mathbf{x} + \mathbf{y}`,
- (L7) :math:`( + )\mathbf{x} = \mathbf{x} + \mathbf{x}`,
- (L8) :math:`1\mathbf{x} = \mathbf{x}`,

gdzie :math:`\mathbf{x},\mathbf{y},\mathbf{z}\in  X` i :math:`,  K`.

Elementy przestrzeni :math:`X` nazywamy wektorami, a element
:math:`\mathbf{0}` nazywamy wektorem zerowym.  Elementy zbioru
:math:`K` nazywamy skalarami. Z warunków (L1) - (L4) wynika
natychmiast, że dla każdego :math:`\mathbf{x}\in X` istnieje dokładnie
jeden element przeciwny :math:`\mathbf{x}` , tj.spełniający warunek
:math:`\mathbf{x} + (\mathbf{x}) = \mathbf{0}`.

Wektory :math:`{\mathbf{x}}_{1},...,{\mathbf{x}}_{k}` nazywamy liniowo
niezależnymi, jeżeli z warunku 

.. math::

 {}_{1}{\mathbf{x}}_{1} \+ ... \+ {}_{k}{\mathbf{x}}_{k} = \mathbf{0} 

dla pewnych skalarów :math:`{}_{1},...,{}_{k}` wynika, że
:math:`{}_{1} = {}_{2} = ... = {}_{k} = 0`.  W przeciwnym przypadku, a
więc, gdy wcześniejsze równanie ma inne rozwiązania niż:math:`{}_{1} =
{}_{2} = ... = {}_{k} = 0`,
wektory :math:`{\mathbf{x}}_{1},...,{\mathbf{x}}_{k}` nazywamy liniowo
zależnymi . Sumę :math:`{\mathop{\mathop{ }}\nolimits
}_{i=1}^{k}{}_{i}{\mathbf{x}}_{i}` nazywamy kombinacją liniową
wektorów :math:`{\mathbf{x}}_{1},...,{\mathbf{x}}_{k}`.

Zbiór wektorów :math:`V X`nazywamy liniowo niezależnym, jeżeli wektory
należące do dowolnego skończonego podzbioru :math:`V` są liniowo
niezależne.Zbiór wektorów :math:`V` rozpina przestrzeń :math:`\,X`,
jeżeli dowolny wektor :math:`\mathbf{x} X` jest kombinacją liniową
pewnych wektorów ze zbioru :math:`V`. Jeżeli zbiór wektorów :math:`V`
jest liniowo niezależnyi rozpina przestrzeń :math:`\,X`, tomówimy, że
zbiór :math:`V` jest bazą przestrzeni :math:`X`. W szczególności,
wektory :math:`{\mathbf{x}}_{1},...,{\mathbf{x}}_{k}` są bazą w
przestrzeni :math:`X`, wtedy i tylko wtedy, gdy dla każdego wektora
:math:`\mathbf{x} X` istnieje dokładnie jeden ciąg skalarów
:math:`{}_{1},...,{}_{k}` taki, że 

.. math::

  \mathbf{x} = {}_{1}{\mathbf{x}}_{1} \+ ... \+ {}_{k}{\mathbf{x}}_{k}.


Każda przestrzeń liniowa ma bazę i ilość wektoróww bazie nie zależy od
jej wyboru. Jeżeli baza przestrzeni :math:`X` składa się z :math:`k`
-wektorów, to :math:`k` nazywamy wymiarem przestrzeni :math:`X` i
piszemy :math:`\mathop{dim}\nolimits X = k` (czytamy „wymiar :math:`X`
jest równy :math:`k` ”). Mówimy wtedy,że :math:`X` jest przestrzenią
:math:`k` -wymiarową. Wymiar przestrzeni :math:`X` oznaczamy przez
:math:`\mathrm{dim\,}X`.

Podzbiór :math:`{X}_{0}` przestrzeni liniowej :math:`X` nazywamy
podprzestrzenią liniową, jeżeli jest zamknięty ze względu na działania
wprzestrzeni :math:`X`, tj.  :math:`\,\mathbf{x} +
\mathbf{y}{X}_{0}\,` i :math:`\,\mathbf{x} {X}_{0}\,` dla dowolnych
:math:`\mathbf{x},\mathbf{y} {X}_{0}` oraz :math:`K`.



