---
subtitle: |
    Sposób pracy w Sage z wyrażeniami występującymi podczas wyprowadzania
    równań ruchu z zasady d'Alemberta.
title: 'Zasada d''Alemberta z Systemem Algebry Komputerowej'
---

Jednym z problemów w manipulacjach na wzorach jest potrzeba traktowania
pochodnych czasowych zmiennych jak niezależne zmienne. Próbując to
wykonać można się przekonać, że nie wszystkie operacje będą wykonane
zgodnie z oczekiwaniamy. Na przykład w Sage 4.8 nie można rozwiązać
układu równań ze względu na pochodne.

Remedium jest zastąpienie pochodnych zmiennych dodatkowymi symbolami.
Metoda `.subs` może zastępować pochodne funkcji symbolami i na odwrót.
Ponadto warto ustalić system nazw zmiennych. W naszym przypadku dla
pewnej współrzędnej "a" oznaczamy:

-   współrzędna jako zmienna symboliczna Sage - mała litera np. "a"
-   jej pochodne po czasie $\dot a$ i $\ddot a$ - "ad" i "add",
    odpowiednio.
-   współrzędne jako funkcje Sage (od czasu) - duże litery np. "A"
-   przesunięcie wirtualne $\delta a$ - "da".

W systemie Sage istnieje ponadto możliwość dodania do zmiennej
symbolicznej jej reprezentacji w LaTeX, która jest widoczna przy użyciu
polecenia `show()`. Jest to szczególnie przydatne podczas inspekcji
otrzymanych wyrażeń.

Przykład krok po kroku
======================

Poniższy przykład ilustruje opisaną implementacje. Zdefiniujmy sobie
zmienna $a$, która będzie reprezentowała pewną współrzędną uogólnioną:

``` {.sourceCode .python}
sage: var('t')
sage: var('a')
a
```

Dadajmy dodatkowe symbole "ad" i "add" jako pochodne czasowe, którym
ponadto nadajemy reprezentacje LaTeX-ową:

``` {.sourceCode .python}
sage: var('ad',latex_name=r'\dot a')
sage: var('add',latex_name=r'\ddot a')
sage: show([a,ad,add])
```

$$\left[a, \dot a, \ddot a\right]$$

Ponieważ współrzędne są funkcjami czasu, zdefiniujmy także funkcję $A$,
która będzie "zmienna $a$ traktowaną jak funkcja czasu".

``` {.sourceCode .python}
sage: A = function('A',t)
sage: show(A)
```

$$A\left(t\right)$$

Wykonajmy na wyrażeniach zawierających $a$ następujące operacje:

Zapiszmy wyrażenie $1+\dot a(t)$:

``` {.sourceCode .python}
sage: show(1+A.diff())
sage: show ( (1+A.diff()).subs({A.diff():ad}) )
```

$$D[0]\left(A\right)\left(t\right) + 1$$

$$\dot a + 1$$

Policzmy drugą pochodną po czasie z (1+a)\^3.

Startując z zapisu:

``` {.sourceCode .python}
sage: expr = (1+a)^3
```

zamieniamy zmienną $a$ na funkcje $A(t)$:

``` {.sourceCode .python}
sage: expr  = expr.subs({a:A})
sage: show(expr)
```

$${\left(A\left(t\right) + 1\right)}^{3}$$

liczymy pochodną:

``` {.sourceCode .python}
sage: expr = expr.diff(t,2)
sage: show(expr)
```

$$3 \, {\left(A\left(t\right) + 1\right)}^{2} D[0, 0]\left(A\right)\left(t\right) + 6 \, {\left(A\left(t\right) + 1\right)} D[0]\left(A\right)\left(t\right)^{2}$$

widać, pochodne funkcji przedstawione są w mało czytelnej postaci z
operatorem "D". Możemy je jednak zapisać wykorzystując zmienne ad i add:

``` {.sourceCode .python}
sage: expr  = expr.subs({A:a,A.diff():ad,A.diff(2):add})
sage: show(expr)
```

$$3 \, {\left(a + 1\right)}^{2} \ddot a + 6 \, {\left(a + 1\right)} \dot a^{2}$$

Wyrażenie to można teraz zróżniczkować po np. $\dot a$:

``` {.sourceCode .python}
sage: expr = expr.diff(ad)
sage: show(expr)
```

$$12 \, {\left(a + 1\right)} \dot a$$

Automatyzacja procedury
=======================

Ponieważ dla jednej współrzędnej mamy kilka wielkości: przesuniecie
wirtualnie i dwie pochodne i reprezentacje poprzez funkcję, warto więc
zautomatyzować proces ich definicji. W tym celu warto jest użyć
dynamicznych własności python-a: słownika zmiennych vars() i jawnego
dostępu do reprezentacji obiektu. Poniższy przykład dla zmiennych x i y
deklaruje cały zestaw potrzebnych symboli jak i słowniki podstawień
pochodnych za ich symbole. Kluczową cechą tego algorytmu jest to, że
cała informacja potrzebna do generacji tyh wielkości zawarta jest w
tablicy xy\_wsp.

``` {.sourceCode .python}
sage: var('t')
sage: xy_wsp = [('x','x'),('y','y')]
sage: for v,lv in xy_wsp:
...       var("%s"%v,latex_name=r'%s'%lv)
...       vars()[v.capitalize()] = function(v.capitalize(),t)
...       var("%sdd"%v,latex_name=r'\ddot %s'%lv)
...       var("%sd"%v,latex_name=r'\dot %s'%lv)
...       var("d%s"%v,latex_name=r'\delta %s'%lv)
sage: to_fun=dict()
sage: for v,lv in xy_wsp:
...       to_fun[vars()[v]]=vars()[v.capitalize()]
...       to_fun[vars()[v+"d"]]=vars()[v.capitalize()].diff()
...       to_fun[vars()[v+"dd"]]=vars()[v.capitalize()].diff(2)
sage: to_var = dict((v,k) for k,v in to_fun.items())
```

Wykorzystanie powyższego kodu najlepiej zrozumieć śledząc jego działanie
na przykładzie:

``` {.sourceCode .python}
sage: show( (1+x^2*y) )
sage: show( (1+x^2*y).subs(to_fun))
sage: show( (1+x^2*y).subs(to_fun).diff(t,2) )
sage: show( (1+x^2*y).subs(to_fun).diff(t,2).subs(to_var) )
```

$$x^{2} y + 1$$

$$X\left(t\right)^{2} Y\left(t\right) + 1$$

$$X\left(t\right)^{2} D[0, 0]\left(Y\right)\left(t\right) + 2 \, X\left(t\right) Y\left(t\right) D[0, 0]\left(X\right)\left(t\right) + 4 \, X\left(t\right) D[0]\left(X\right)\left(t\right) D[0]\left(Y\right)\left(t\right) + 2 \, Y\left(t\right) D[0]\left(X\right)\left(t\right)^{2}$$

$$x^{2} \ddot y + 4 \, x \dot x \dot y + 2 \, x \ddot x y + 2 \, \dot x^{2} y$$

``` {.sourceCode .python}
sage: show( (1+x^2*y).subs(to_fun).diff(t,2).subs(to_var).diff(xd).diff(x) )
```

$$4 \, \dot y$$

Jak to działa?
==============

Zautomatyzowanie definicji zarówno deklaracji zmiennych i funkcji jak i
słowników, pozwala na uniknięcie licznych pomyłek przy wpisywaniu
powyższych formuł ręcznie. Jednak dla potrzeb dydaktycznych pokażemy
równoważny kod zapisany jawnie dla przypadku wahadła matematycznego.

Wykonajmy powyższy kod i spróbujmy przetestować go na tym samym
przykładzie:

$$x^{2} y + 1$$

$$X\left(t\right)^{2} Y\left(t\right) + 1$$

$$X\left(t\right)^{2} D[0, 0]\left(Y\right)\left(t\right) + 2 \, X\left(t\right) Y\left(t\right) D[0, 0]\left(X\right)\left(t\right) + 4 \, X\left(t\right) D[0]\left(X\right)\left(t\right) D[0]\left(Y\right)\left(t\right) + 2 \, Y\left(t\right) D[0]\left(X\right)\left(t\right)^{2}$$

$$x^{2} \ddot y + 4 \, x \dot x \dot y + 2 \, x \ddot x y + 2 \, \dot x^{2} y$$

$$4 \, \dot y$$

Widzimy, że powyższa definicja zmiennych i słowników jest łatwiejsza do
zrozumienia, ale jej napisanie wymaga zmiany całego kodu dla różnych
zmiennych. Widzimy, że większość poleceń się powtarza, dlatego zgodnie z
zasada programowania DRY lepiej jednak napisać bardziej ugólny kod.

Widzimy, że operacje na naszym wyrażeniu są takie sme niezależnie czy
zastosowaliśmy automatyczną czy ręczną generację słowników i zmiennych.

Przyjrzyjmy się poszczególnym elementom implemtentacji automatycznej.
Punktem wyjscia są nazwy zmiennych i ich reprezentacje LaTeXowe.
Reprezentacja LaTeX-owa zmiennej działa w następujący sposób.
Zdefiniujmy zmienną 'a' o reprezentacji `\bar\alpha_1` -$\bar\alpha_1$:

``` {.sourceCode .python}
sage: var('a',latex_name=r'\bar\alpha_1')
a
```

Funkcja print drukuje nam pythonową nazwę zmiennej czyli:

``` {.sourceCode .python}
sage: print a
a
```

Ale funkcja show, pokazuję naszą reprezentacje.

``` {.sourceCode .python}
sage: show(a)
```

$$\bar\alpha_1$$

Wracajac do omawianego algorytmu, punktem wyjścia jest definicja tablicy
par nazw (nazwa\_sage, reprezentacja\_latex):

``` {.sourceCode .python}
sage: xy_wsp = [('x','x'),('y','y')]
```

Tablica ta może zostać przeiterowana w celu deklaracji zmiennych
wykorzystując Sage-owe 'var()' oraz pythonowy dostep do słownika
bieżącej [przestrzeni
nazw](http://pl.wikipedia.org/wiki/Przestrze%C5%84_nazw) 'vars()'. Ten
ostatni umożliwia bezpośrednie "włożenie" nazwy obiektu i powiązanie jej
z samym obiektem. Tego typu operacje są przykładem zastosowania cech
dynamicznego typowania i introspekcji języka python.

Zmienne zadajemy jako ciągi znaków (strings). Jednak będziemy
potrzebowali czasem obieków pythonowych (Sage-owych), które
reprezentują. Startując z listy par xy\_wsp mamy listę nazw zmiennych:

``` {.sourceCode .python}
sage: [v for v,lv in xy_wsp]
['x', 'y']
```

oraz listę samych zmiennych:

``` {.sourceCode .python}
sage: [vars()[v] for v,lv in xy_wsp]
[x, y]
```

Warto zwrócić też uwagę na technikę odwrócenia słownika, wykorzystaną w
celu uniknięcia podobnych definicji:

``` {.sourceCode .python}
sage: mojslownik  = {12:'dwanascie',1:'jeden'}
sage: odwrocony_slownik = dict((v,k) for k,v in mojslownik.items())
sage: print mojslownik
sage: print odwrocony_slownik
{1: 'jeden', 12: 'dwanascie'}
{'jeden': 1, 'dwanascie': 12}
```
