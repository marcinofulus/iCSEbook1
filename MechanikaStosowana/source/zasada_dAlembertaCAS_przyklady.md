---
subtitle: Wahadło matematyczne we współrzędnych kartezjańskich
title: 'Wahadło matematyczne - zasada d''Alemberta'
---

Wyprowadzamy równaniu ruchu wahadła matematycznego we współrzędnych
kartezjańskich. Kolejność procedury jest następująca.

1.  Układ składa się z jednego punktu materialnego na płaszczyźnie (dwa
    stopnie swobody) i jednego równania więzów: odleglość od punktu
    podwieszenia jest stała.
2.  Zapisujemy równanie więzów: $x^2+y^2-l^2=0$ w postaci różniczkowej
    tj. zawierające związek między przesunięciami wirtualnymi $\delta x$
    i $\delta y$.
3.  Z równania więzów wyliczamy jedno przesunięcie wirtualne.
4.  Zapisujemy równania dAlemberta dla tego układu i podstawiamy za
    jedno z przesunięć wyrażenie wyliczone z równania więzów.
5.  Przyrównujemy do zera wyrazy przy niezależnych przesunięciach
    wirtualnych (w tym przypadku przy jednym).
6.  Otrzymujemy równanie ruchu, które opisuje układ wraz z równaniem
    więzów.
7.  Jeżeli wykonujemy zmiany układu współrzędnych to mamy do czynienia z
    tzw. układem równań algebraiczno-różniczkowych (ang. DAE). Można
    numerycznie rozwiązać taki układ równań różniczkując dwukrotnie
    równanie więzów po czasie i traktując uzyskany system jako układ
    równań różniczkowych zwyczajych. Należy zwrócić uwagę, że w takim
    układzie długość wahadła jest warunkiem początkowym!

``` {.sourceCode .python}
sage: var('t')
sage: var('l g')
sage: xy_wsp = [('x','x'),('y','y')]
sage: for v,lv in xy_wsp:
...       var("%s"%v,latex_name=r'%s'%lv)
...       vars()[v.capitalize()] = function(v.capitalize(),t)
...       var("%sdd"%v,latex_name=r'\ddot %s'%lv)
...       var("%sd"%v,latex_name=r'\dot %s'%lv)
...       var("d%s"%v,latex_name=r'\delta %s'%lv)
sage: xy = [vars()[v] for v,lv in xy_wsp]
sage: dxy = [vars()['d'+repr(zm)] for zm in xy]
sage: to_fun=dict()
sage: for v,lv in xy_wsp:
...       to_fun[vars()[v]]=vars()[v.capitalize()]
...       to_fun[vars()[v+"d"]]=vars()[v.capitalize()].diff()
...       to_fun[vars()[v+"dd"]]=vars()[v.capitalize()].diff(2)
sage: to_var = dict((v,k) for k,v in to_fun.items())
```

``` {.sourceCode .python}
sage: f = x^2+y^2-l^2
sage: constr =sum([dzm*f.diff(zm) for zm,dzm in zip(xy,dxy)])
sage: show( constr)
```

$$2 \, \delta x x + 2 \, \delta y y$$

Zapisujemy równania d'Alembera:

``` {.sourceCode .python}
sage: dAlemb = (X.diff(t,2))*dx + (Y.diff(t,2)+g)*dy
```

Rozwiązujemy więzy w postaci różniczkowej na $\delta x$ i podstawiamy
wyrażenie do do zasady d'Alemberta. Następnie wykonujemy rozwinięcie
iloczynów sum (expand), bierzemy współczynnik przy $\delta y$ i
zamieniamy funkcje na zmienne pomocnicze xd,yd za pomocą słownika
to\_var:

``` {.sourceCode .python}
sage: rown1=(dAlemb.subs(constr.solve(dx)[0])*x).expand().coeff(dy).subs(to_var)
sage: show(rown1)
```

$$g x + x \ddot y - \ddot x y$$

Róźniczkujemy dwa razy po czasie równanie więzów:

``` {.sourceCode .python}
sage: rown2 = f.subs(to_fun).diff(t,2).subs(to_var)
sage: show(rown2)
```

$$2 \, x \ddot x + 2 \, \dot x^{2} + 2 \, y \ddot y + 2 \, \dot y^{2}$$

Rozwiązujemy powstały układ równań na $\ddot x$ i $\ddot y$:

``` {.sourceCode .python}
sage: sol = solve( [rown1,rown2],[xdd,ydd])
sage: show( sol[0] )
```

$$\left[\ddot x = \frac{g x y - {\left(\dot x^{2} + \dot y^{2}\right)} x}{x^{2} + y^{2}}, \ddot y = -\frac{g x^{2} + {\left(\dot x^{2} + \dot y^{2}\right)} y}{x^{2} + y^{2}}\right]$$

Mając jawne wzory na drugie pochodne, można automatycznie skonstruować
układ równań różniczkowych, którego rozwiązanie numeryczne otrzymujemy
natychmiast stosując procedurę np. desolve\_odeint.

Ciekawostką jest fakt, że różniczkowanie usunęło nam stała $l$ z równań
i równania ruchu nie zależą od długości zawieszenia wahadła! Aby jednak
być konsystentym wartość tą trzeba zadać jako warunek początkowy.

Powyższy układ równań różniczkowych nie zachęca do prób rozwiązywania
algebraicznego, ale można bez problemu otrzymać jego rozwiązanie
numeryczne. Prawe strony układu równań możemy wydobyć ze zmiennej sol:

``` {.sourceCode .python}
sage: sol[0][0].rhs()
(g*x*y - (xd^2 + yd^2)*x)/(x^2 + y^2)
```

``` {.sourceCode .python}
sage: sol[0][1].rhs()
-(g*x^2 + (xd^2 + yd^2)*y)/(x^2 + y^2)
```

Ponieważ procedury rozwiązywania układów równań na ogół pracują na
równaniach pierwszego rzędu (np. desolve\_odeint) dlatego piszemy dwa
równania na pochodnie $x$ i $y$ i w Sage używamy zdefiniowanych
wcześniej zmiennych xd i yd do oznaczania prędkości. Kolejno równania są
więc na położenia x i y oraz prędkości w kierunkach x i y. Nie możemy
też zapomnieć o wstawieniu liczby za stałą g:

``` {.sourceCode .python}
sage: ode=[xd,yd,sol[0][0].rhs().subs({g:1}),sol[0][1].rhs().subs({g:1})]
sage: times = srange(0,14,0.01)
sage: numsol=desolve_odeint(ode,[0,-1,1.2,0],times,[x,y,xd,yd])
sage: p=line(zip(numsol[:,0],numsol[:,1]),figsize=5,aspect_ratio=1)
sage: p.show()
```

![image](MMK_dAlembert-CAS2_media/cell_17_sage0.png)

Dla małych drgań mamy oscylator harmoniczny, sprawdźmy czy rozwiązanie
się z nim pokrywa. Ponieważ oscylacje zachodzą wokół kąta
$-90\deg = -\pi/2$ musimy dodać ten kąt do klasycznego rozwiązania.
Ponadto porównanie z oscylatorem wykonujemy w przybliżeniu małych drgań,
czyli dla małej amplitudy. Rozwiążmy więc układ dla warunku
początkowego:

$$\begin{cases}x = 0\\y=-l\\v_x=0.2\\v_y=0 \end{cases}.$$

Taki warunek odpowiada rozwiązaniu o prędkości kątowej
$\omega=\dot \phi  = v_x/l$ dla oscylatora harmonicznego danego wzrorem:

$$\phi = -\pi/2 + 0.2 \sin(w_0 t),$$

gdzie $\omega_0=\sqrt{g/l}$

Z rozwiązania numerycznego w układzie kartezjąńskim kąt $\phi$ wyliczamy
jako $\phi=\arctan(y/x)$.

Uwaga: Warto stosować funkcję arctan2, która daje poprawny kąt we
wszystkich ćwiartkach.

Mamy więc:

``` {.sourceCode .python}
sage: times = srange(0,14,0.01)
sage: numsol=desolve_odeint(ode,[0,-1,.2,0],times,[x,y,xd,yd])
sage: import numpy as np
...    
sage: line(zip( times,np.arctan2(numsol[:,1],numsol[:,0]) ),figsize=5)+\
...    plot(0.2*sin(t)-pi/2,(t,0,10),color='red')
```

![image](MMK_dAlembert-CAS2_media/cell_16_sage0.png)

Sprawdźmy czy równanie więzów jest spełnione na końcu symulacji:

``` {.sourceCode .python}
sage: print "początkowa długość wahadła l:",numsol[0,0]**2+numsol[0,1]**2," i jej wartość na końcu symulacji ",numsol[-1,0]**2+numsol[-1,1]**2
początkowa długość wahadła l: 1.0  i jej wartość na końcu symulacji  0.999999990079
```

Układ współrzędnych zgodny z więzami
====================================

W przypadku rozważania układów mechanicznych, najlepiej jest wprowadzić
układ współrzednych w który jest zgodny z więzami, tzn. warunek więzów
powoduję, że przesunięcia wirtualne wzdłuż niektórych współrzędnych są
zero. W takim przypadku znika nam wyrażenie z drugą pochodną tych
współrzędnych a w konsekwencji zamiast układu DAE otrzymujemy układ
równań różniczkowych.

W przypadku wahadła matematycznego mamy oczywisty wybór układu polarnego
a współrzędną uogólnioną będzie promień.

W implemetacji przekształceń w Sage dodatkowo definiujemy zmienną $\phi$
i słownik przejścia z układu $(x,y)$, do układu $(\phi)$.

``` {.sourceCode .python}
sage: var('x y t')
sage: var('l g')
sage: xy_wsp = [('x','x'),('y','y')]
sage: uv_wsp = [('phi','\phi')]
sage: for v,lv in uv_wsp+xy_wsp:
...       var("%s"%v,latex_name=r'%s'%lv)
...       vars()[v.capitalize()] = function(v.capitalize(),t)
...       var("%sdd"%v,latex_name=r'\ddot %s'%lv)
...       var("%sd"%v,latex_name=r'\dot %s'%lv)
...       var("d%s"%v,latex_name=r'\delta %s'%lv)
sage: uv = [vars()[v] for v,lv in uv_wsp]
sage: xy = [vars()[v] for v,lv in xy_wsp]
sage: to_fun=dict()
sage: for v,lv in uv_wsp:
...       to_fun[vars()[v]]=vars()[v.capitalize()]
...       to_fun[vars()[v+"d"]]=vars()[v.capitalize()].diff()
...       to_fun[vars()[v+"dd"]]=vars()[v.capitalize()].diff(2)
sage: to_var = dict((v,k) for k,v in to_fun.items())
sage: x2u = {x:l*cos(phi),y:l*sin(phi)}
```

Musimy teraz przetransformować zasadę d'Alemberta do nowych
współrzędnych. Implementujmy więc następujące wzory transformacyjne dla
przesunięć wirtualnych:

$$\delta x = \frac{\partial x(r,\phi)}{\partial r}\delta r + \frac{\partial x(r,\phi)}{\partial \phi}\delta \phi$$

$$\delta y = \frac{\partial y(r,\phi)}{\partial r}\delta r + \frac{\partial y(r,\phi)}{\partial \phi}\delta \phi$$

``` {.sourceCode .python}
sage: for w in xy:
...       vars()['d'+repr(w)+'_polar']=sum([w.subs(x2u).diff(w2)*vars()['d'+repr(w2)] for w2 in uv])
sage: show([dx_polar,dy_polar])
```

$$\left[-\delta \phi l \sin\left(\phi\right), \delta \phi l \cos\left(\phi\right)\right]$$

Pozostaje podstawić zależności $x(\phi)$ i $y(\phi)$ i możemy zapisać
zasadę d'Alemberta w nowych, a właściwie w nowej, współrzędnej $\phi$:

``` {.sourceCode .python}
sage: dAlemb = (x.subs(x2u).subs(to_fun).diff(t,2))*dx_polar + \
...            (y.subs(x2u).subs(to_fun).diff(t,2)+g)*dy_polar
sage: dAlemb = dAlemb.subs(to_var)
```

Równania ruchu są spełnione jeśli wszystkie współczynniki przy
nieznikających przesunięciach wirtualnych się zerują. Chociaż mamy tylko
jedną taką współrzędna, użyjmy ogólnego sformułowania algorytmicznego i
napiszmy:

``` {.sourceCode .python}
sage: show(dAlemb)
```

$${\left(l \dot \phi^{2} \cos\left(\phi\right) + l \ddot \phi \sin\left(\phi\right)\right)} \delta \phi l \sin\left(\phi\right) - {\left(l \dot \phi^{2} \sin\left(\phi\right) - l \ddot \phi \cos\left(\phi\right) - g\right)} \delta \phi l \cos\left(\phi\right)$$

``` {.sourceCode .python}
sage: for v in uv:
...       show(dAlemb.expand().coeff(vars()['d'+repr(v)]).trig_simplify())
```

$$g l \cos\left(\phi\right) + l^{2} \ddot \phi$$

W powyższym wzorze rozpoznajemy znane równanie:

``` {.sourceCode .python}
sage: show( dAlemb.expand().coeff(dphi).trig_simplify().solve(phidd) )
```

$$\left[\ddot \phi = -\frac{g \cos\left(\phi\right)}{l}\right]$$
