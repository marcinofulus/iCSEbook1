Rzut ukośny
------------

Zanim przejdziemy do opisu rzutu ukośnego wraz z uwzględnieniem oporu
ruchu przeanalizujmy sytuację w warunkach idealnych. W sytuacji gdy brak
jest oporu(ów) ruchu jedyną siłą działającą na ciało jest siła ciężkości
:math:`\vec{Q} = [0,-mg]`\ ; równania ruchu przybierają zatem postać:

.. math::

     \ddot{x} &= 0, \\
     \ddot{y} &= -g

gdzie :math:`g` jest przyspieszeniem ziemskim. Równania (1) i (2)
składają się na drugą zasadę dynamiki Newtona w postaci wektorowej:
:math:`m\ddot{\vec{r}}=\vec{Q}`\ , gdzie :math:`\vec{r}=[x,y]`\ .
Zwróćmy uwagę, iż wyrugowaliśmy masę :math:`m` - ruch w polu
grawitacyjnym nie zależy od masy ciała!

Zakładając, iż w chwili :math:`t_0=0` ciało znajdował się w położeniu
:math:`\vec{r}_0=[x_0,y_0]` oraz posiadało prędkość
:math:`\vec{v}_0=[v_{x0},v_{y0}]`\ , całkując równania (1) i (2)
otrzymujemy:

.. math::

       x(t) & =  x_0 + v_{x0}t, \\
     v_x(t) & =  v_{x0}, \nonumber \\
       y(t) & =  y_0+v_{y_0}t-\frac{1}{2}gt^2, \\
     v_x(t) & =  v_{x0}-gt. \nonumber

Z kolei rugując czas :math:`t` z równań określających składowe
przemieszczenia :math:`x(t)`\ , :math:`y(t)` równań mamy:

.. math:: y(x) = x\frac{v_{y0}}{v_{x0}}-\frac{g}{2v_{x0}^2}x^2,

co przedstawia tor ruchu. Z postaci funkcji :math:`y(x)` widzimy, że
jest nim parabola.

Często wygodnie jest sparametryzować początkowy wektor prędkości
:math:`\vec{v}_0` przy użyciu kąta jaki tworzy on z ziemią:
:math:`\vec{v}_0 = [v_0\cos(\alpha),v_0\sin(\alpha)]`\ , gdzie
:math:`v_0 = |\vec{v}_0|`\ . Wówczas wzór (5) przybiera znaną postać:

.. math:: y(x) = x\tan(\alpha)-\frac{g}{2v^2\cos^2(\alpha)}x^2.

Z ostatniego wzoru w łatwy sposób możemy odczytać zasięg rzutu :math:`d`
(tj. maksymalną wartość :math:`x`\ ), mamy bowiem :math:`y(d)=0`\ , skąd

.. math:: d = \frac{v_0^2\sin(2\alpha)}{g}

Z kolei maksymalna wysokość na jaką wniesie się ciało jest równa
:math:`y`\ -owej składowej wierzchołka paraboli i wynosi:

.. math:: h = \frac{v_0^2\sin^2(\alpha)}{2g},\quad (t_{h} = \frac{v_0\cos(\alpha)}{g}).

W nawiasie podaliśmy czas potrzebny na osiągniecie wysokości :math:`h`\ ;
łatwo może być obliczony z warunku :math:`v_x(t_{h})=0` (w najwyższym
punkcie składowa pionowa prędkości zeruje się). Zwróćmy ponadto uwagę,
iż czas potrzebny na pokonanie odległości odległości :math:`d` w poziome
wynosi :math:`t_{d}=2t_{h}`\ , co wynika z symetria zagadnienia oraz
braku oporów.


Opór powietrza.
===============

Pierwszym krokiem w celu realistycznego opisu rzutu ukośnego jest
uwzględnienie sił oporu powietrza. Dla szerokiego zakresu interesujących
nasz prędkości, możemy z dobrym przybliżeniem przyjąć, iż

.. math::

   \label{op}
   \vec{F}_{op} = -C v^2 \frac{\vec{v}}{v} \equiv -C v\hat{v},

gdzie :math:`C` jest pewną stałą (patrz zadanie 1) zależną od gęstości i
geometrii ciała (oraz własności aerodynamicznych). :math:`\hat{v}` jest
wersorem prędkości, tj. jednostkowym wektorem wskazującym kierunek
prędkości. Znak minus we wzorze (9) oznacza, iż siła oporu powietrza
jest *zawsze* zwrócona przeciwnie do prędkości ciała.

Warto tu wspomnieć, iż w ogólności prędkość :math:`\vec{v}` we wzorze
(9) oznacza prędkość ciała *względem* płynu (tu powietrza), w którym
porusza się ciało. Zatem mówiąc, iż ciało posiada w danym płynie "małą"
bądź "dużą" prędkość zawsze mamy na myśli "małą" bądź "dużą" w
porównaniu z prędkością płynu. W dalszym ciągu, dla przejrzystości
rozważań zakładać będziemy, iż w wybranym układzie odniesienia powietrze
spoczywa (opisujemy zagadnień w piękny bezwietrzny dzień).

Uwzględniając we wzorach (1) i (2) postać siły (2.1) otrzymujemy

.. math::


    \dot{v}_x & =  -C'\sqrt{v_x^2+v_y^2}\, v_x, \\
    \dot{v}_y & =  -C'\sqrt{v_x^2+v_y^2}\, v_y - g, \quad\text{gdzie}\quad C'=\frac{C}{m},

przy czym skorzystaliśmy ze związków :math:`\ddot{x} = \dot{v}_x` oraz
:math:`\ddot{y} = \dot{v}_y`\ . Uzyskane równania, w przeciwieństwie do
równań (1) i (2) nie dają się w prosty sposób odcałkować. W celu badania
ruchu ciała, w dalszej części posłużymy się metodami numerycznymi.
Ograniczymy się do najprostszego algorytmu zwanego metodą (łamanych)
Eulera.

Idea algorytmu polega na zastąpieniu, w równaniach ruchu, pochodnych
przez odpowiednie ilorazy różnicowe:

.. math::

    v_x(t+\Delta t) & =  v_x(t) - C'\sqrt{v_x(t)^2+v_y(t)^2}\, v_x(t)\,\Delta t, \\
    v_y(t+\Delta t) & =  v_y(t) - \left(C'\sqrt{v_x(t)^2+v_y(t)^2}\, v_y(t) - g\right)\Delta t, \nonumber\\
      x(t+\Delta t) & =  x(t) + v_x(t)\Delta t, \nonumber\\
      y(t+\Delta t) & =  y(t) + v_y(t)\Delta t, \nonumber 

gdzie :math:`\Delta t` jest stałym odcinkiem czasu (krok metody).
Powyższe wzory pozwalają obliczyć wartość prędkość oraz położenie w
dowolnej chwili czasu, pod warunkiem, iż znane są wartości prędkości i
położenia w chwili poprzedniej.
