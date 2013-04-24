=16pt

Z52: Algebra liniowa

Zagadnienie: Zastosowania algebry liniowej

Zadanie: Operatory różniczkowania, zagadnienie brzegowe.

2mm

**Dyskretne operatory różniczkowania**

2mm

Numeryczne obliczanie pochodnych oraz rozwiązywanie wszelkiego typu
równań różniczkowych wymaga przedstawienia pochodnych i operatorów
różniczkowych w postaci dyskretnej. Mimo, że pojęcie pochodnej jest
stosunkowo proste, to może mieć wiele przedstawień dyskretnych i
umiejętne z nich korzystanie może znacznie poprawić efektywność obliczeń
komputerowych.

Rozpoczniemy od najprostszego problemu. Mamy zadaną funkcję
:math:`f\colon\mathbf R\to\mathbf R` i chcemy wyznaczyć jej pochodną w
jakimś punkcie :math:`x`\ . Wprost z definicji pochodnej otrzymujemy
wzór przybliżony

.. math:: f'(x)\approx \frac{f(x+h) -f(x)}{h}.

 Podstawowe pytanie jakie się tu pojawia, to jaki jest błąd tego
przybliżenia? Aby ten błąd wyznaczyć skorzystamy ze wzoru Taylora:

.. math:: f(x+h) =f(x)+f'(x)h+\frac {f''(x)}2  h^2+\dots.

 Stąd błąd przybliżenia w poprzednim wzorze wynosi

.. math:: \frac {f''(x)}2 h+\dots,

 a więc jest rzędu :math:`h`\ . Okazuje się, że pochodną można liczyć o
wiele dokładniej korzystając z innych wzorów, na przykład ze wzoru

.. math:: f'(x)\approx \frac{f(x+h) -f(x-h)}{2h}.

 Znowu skorzystamy ze wzoru Taylora:

.. math:: f(x+h) =f(x)+f'(x)h+\frac {f''(x)}2 h^2+\frac {f'''(x)}{3!} h^3+\dots,

.. math:: f(x-h) =f(x)-f'(x)h+\frac {f''(x)}2 h^2-\frac {f'''(x)}{3!} h^3+\dots.

 Wtedy

.. math:: \frac{f(x+h) -f(x-h)}{2h}=f'(x)+\frac {f'''(x)}{3!} h^2+\dots,

 a więc błąd przybliżenia jest rzędu :math:`h^2`\ . Oba wzory
przybliżone pozwalają nam wyrazić pochodną :math:`f'(x)` z dokładnością
zależną od :math:`h` za pomocą kombinacji liniowej wartości funkcji
:math:`f` w pewnych punktach.

Do zagadnienia wyznaczania dyskretnej wersji pochodnych wyższych rzędów
i innych operatorów różniczkowych powrócimy za chwilę, a teraz pokażemy
jak mozna obie definicje pochodnej dyskretnej stosować do rozwiązywania
równań i układów równań rózniczkowych *metodą łamanych Eulera*.

Rozważamy równanie

.. math:: \mathbf x'=\mathbf f(t,\mathbf x), \qquad \mathbf x(t_0)=\mathbf x_0,

 gdzie
:math:`\mathbf f\colon \mathbf R\times \mathbf R^n\to {\mathbf R^n}`\ .
Pokażemy, jak znaleźć przybliżoną wartość rozwiązania :math:`\mathbf x`
w przedziale :math:`[t_0,t]`\ . W tym celu dzielimy przedział
:math:`[t_0,t]` na :math:`n`\ -przedziałów :math:`[t_{k-1},t_k]`
przyjmując :math:`\,h=(t-t_0)/n`\ , :math:`\,t_k=t_0+k h`\ ,
:math:`k=1,\dots,n`\ . Metoda łamanych Eulera jest oparta na pierwszym
wzorze na pochodną przybliżoną funkcji :math:`\mathbf x(t)`\ , a więc

.. math:: \mathbf x'(t)=\frac{\mathbf x(t+h)-\mathbf x(t)}{h}.

 Z powyższego otrzymujemy

.. math::

   \mathbf x(t_{k+1})-\mathbf x(t_k)
   \approx 
   \mathbf x'(t_k) h=\mathbf f(t_k,\mathbf x(t_k))h .

 Jeżeli :math:`\mathbf x_k=\mathbf x(t_k)`\ , to rozwiązanie w kolejnych
punktach wyraża się wzorem rekurencyjnym

.. math::

   \mathbf x_{k+1}=
   \mathbf x_k+\mathbf f(t_k,\mathbf x_k)h, 
   \qquad k=0,\dots,n-1.

 Jeżeli zastosujemy drugi wzór na pochodną :math:`\mathbf x'(t)`\ , a
więc

.. math:: \mathbf x'(t_k)=\frac{\mathbf x(t_{k+1})-\mathbf x(t_{k-1})}{2h},

 to

.. math::

   \mathbf x_{k+1}=
   \mathbf x_{k-1}+2\mathbf f(t_k,\mathbf x_k)h.

Zauważmy, że ostatni wzór nie wystarcza nam do obliczenia
:math:`{\mathbf x_1}`\ , bo musielibyśmy znać wartość wyrażenia
:math:`{\mathbf x(t_0-h)}`\ . W tym przypadku możemy skorzystać z
pierwszego wzoru
:math:`\mathbf x_1={\mathbf x_0}+{\mathbf f}(t_0,\mathbf x_0)h`\ .

W przypadku równań różniczkowych wyższych rzędów są możliwe dwie metody
postępowania. Pierwsza polega na tym, że równania wyższych rzędów
zastępujemy odpowiadającymi im układami równań rzędu pierwszego, a więc
można stosować opisaną wyżej metodę Eulera. Druga metoda polega na
zastosowaniu wzorów przybliżonych na pochodne wyższych rzędów. Wprost z
definicji pochodnych wyższych rzędów otrzymujemy następujące wzory
przybliżone

.. math::

   f^{(n)} (x)\approx \frac 1{h^n} \sum_{i=0}^{n}  (-1)^{n-i} 
   {n\choose i}
   f(x+hi ).

 Należy podkreślić, że można znaleźć wzory lepiej przybliżające pochodną
:math:`f^{(n)} (x)`\ . W szczególności, wzór

.. math:: f''(x)\approx \frac{f(x+h)+f(x-h)-2f(x)}{h^2}

lepiej przybliża :math:`f''(x)`\ , choć nie zawsze można go stosować
przy rozwiązywaniu równań różniczkowych.

Pochodne cząstkowe pierwszego rzędu, to nic innego jak zwykłe pochodne
przy ustalonych pozostałych współrzędnych zatem wzory przybliżone są
następujące

.. math::

   \frac {\partial u}{\partial x}(x,y)\approx  \frac{u(x+h,y) -u(x-h,y)}{2h},
   \quad
   \frac {\partial u}{\partial x}(x,y)\approx  \frac{u(x,y+h) -u(x,y-h)}{2h}.

Również wypisanie wzorów na wyższe pochodne cząstkowe nie sprawia
większych kłopotów. W szczególności

.. math:: \Delta u=  \frac {\partial^2u}{\partial x^2}(x,y)+\frac {\partial^2u}{\partial y^2}(x,y),

 gdzie

.. math:: \frac {\partial^2u}{\partial x^2}(x,y) \approx  \frac{u(x+h_1,y)-2u(x,y)+u(x-h_1,y)}{h_1^2},

.. math::

   \frac {\partial^2u}{\partial y^2}(x,y)
   \approx
    \frac{u(x,y+h_2)-2u(x,y)+u(x,y-h_2)}{h_2^2},

 gdzie :math:`h_1` i :math:`h_2` są przyrostami odpowiednio :math:`x` i
:math:`y`\ .

Największą trudność w numerycznym rozwiązywaniu równań różniczkowych
sprawiają zagadnienia brzegowe. Po pierwsze na brzegu obszaru należy
dobrać odpowiednie wzory na pochodne. Po drugie, zwykła metoda
rekurencyjna, taka jak metoda łamanych Eulera, nie wystarcza do
wyznaczenia rozwiązania. Rozważmy na przykład równanie

.. math:: x''(t)=f(x(t))

 z warunkami brzegowymi :math:`x(0)=x_0,\quad x(1)=x_1`\ . Aby rozwiązać
nasze równanie metodą łamanych Eulera należy oprócz wartości funkcji
:math:`x` w zerze również znać wartość jej pochodnej w zerze. Można
postąpić w ten sposób, że przyjmujemy, że :math:`x'(0)=c`\ , gdzie
:math:`c` jest pewną stałą rzeczywistą, a następnie rozwiązujemy
równanie metodą łamanych Eulera. Na koniec, korzystając z warunku
brzegowego :math:`
x(1)=x_1` wyznaczamy :math:`c`\ . W przypadku równań cząstkowych
rozwiązywanie zagadnień brzegowych jest dość trudne i jest kilka
istotnie różnych technik numerycznych ich rozwiązywania od
algebraicznych, poprzez wariacyjne do metod probabilistycznych (*metoda
Monte Carlo*).

2mm

**Operatory teorii pola**

Poznamy teraz kilka operatorów różniczkowych występujących w fizyce i
teorii całki. Wszystkie używane przez nas funkcje będą określone w
pewnym podzbiorze otwartym :math:`U\subset \mathbf R^n`\ .

Niech :math:`f\colon  U\to\mathbf R` i :math:`f` ma pochodne cząstkowe
pierwszego rzędu. Operator określony wzorem

.. math:: \mathrm{grad\,} f =\Big[\frac{ \partial f}{\partial x_1}, \frac{\partial f}{\partial x_2},\cdots,\frac{\partial f}{\partial x_n}\Big]

 nazywamy *gradientem* funkcji :math:`f`\ . Niech
:math:`f\colon  U\to\mathbf R` i :math:`f` ma drugie pochodne cząstkowe
:math:`\frac{\partial^2f}{\partial x_1^2}`\ , :math:`\dots`\ ,
:math:`\frac{\partial^2f}{\partial x_n^2}` w :math:`U`\ . Wtedy operator
:math:`\Delta` określony wzorem

.. math::

   \Delta f=\frac{\partial^2f}{\partial x_1^2}+\frac{\partial^2f}{\partial x_2^2} 
   +\dots +\frac{\partial^2f}{\partial x_n^2}

 nazywamy *operatorem Laplace’a*. Na przykład, jeżeli
:math:`f(x,y)=\ln(x^2+y^2)`\ , to

.. math::

   \frac{\partial f}{\partial x}=\frac{2x}{x^2+y^2} \quad \textrm{i} \quad 
   \frac{\partial f}{\partial y}=\frac{2y}{x^2+y^2},

 więc

.. math::

   \Delta f=\frac{\partial^2 f}{\partial  x^2} +\frac{\partial^2f}{\partial 
   y^2}=
   \frac{2(x^2+y^2)-4x^2}{(x^2+y^2)^2}
   +\frac{2(x^2+y^2)-4y^2}{(x^2+y^2)^2}=0.

2mm

Niech :math:`\mathbf F\colon  U\to\mathbf R^n`\ . Można przyjąć, że
odwzorowanie :math:`\mathbf F` przyporządkowuje każdemu punktowi
:math:`\mathbf x\in U` wektor :math:`\mathbf F(\mathbf x)` o początku w
punkcie :math:`\mathbf x` i dlatego :math:`\mathbf F` będziemy nazywać
*polem wektorowym*. Operator :math:`\textrm{div\,} ` określony wzorem

.. math:: \textrm{div\,}  \mathbf F=\frac{\partial F_1}{\partial x_1} +\dots +\frac{\partial F_n}{\partial x_n}

 nazywamy *dywergencją* pola wektorowego :math:`\mathbf F`\ .
Dywergencję i gradient funkcji można zapisać używając symbolicznego
*operatora nabla*:

.. math:: \nabla=\Big[\frac{ \partial }{\partial x_1}, \frac{\partial}{\partial x_2},\cdots,\frac{\partial}{\partial x_n}\Big].

 Mianowicie

.. math:: \mathrm{grad\,} f =\nabla f, \quad \textrm{div\,}  \mathbf F=\nabla\cdot \mathbf F.

W przypadku funkcji :math:`\mathbf F\colon  U\to\mathbf R^3`\ , gdzie
:math:`U\subset \mathbf R^3`\ , *rotację* :math:`\mathbf F` określamy
wzorem

.. math::

   \mathrm{rot\,}\mathbf F=\Big[\frac{\partial F_3}{\partial y} -\frac{\partial F_2}{\partial z},
   \frac{\partial F_1}{\partial z} -\frac{\partial F_3}{\partial x}, \frac{\partial F_2}{\partial x}-\frac{\partial F_1}{\partial y}\Big].

 Rotację :math:`\mathrm{rot\,} \mathbf F` można również zdefiniować
korzystając z wyznacznika:

.. math::

   \mathrm{rot\,}\mathbf F=
   \left|
   \begin{array}{ccc}
   \mathbf i &\mathbf j &\mathbf k\\
   {}&{}&{}\\
   \frac{\partial}{\partial x}& \frac{\partial}{\partial y} & \frac{\partial}{\partial z}\\
   {}&{}&{}\\
   F_1 & F_2 & F_3
   \end{array}
   \right|,

 gdzie :math:`\mathbf i`\ , :math:`\mathbf j`\ , :math:`\mathbf k` są
*wersorami* osi :math:`Ox`\ , :math:`Oy` i :math:`Oz`\ , tzn.
:math:`\mathbf i=[1,0,0]`\ , :math:`\mathbf j=[0,1,0]`\ ,
:math:`\mathbf k=[0,0,1]`\ . Używając operatora nabla i iloczynu
wektorowego wzór ten możemy zapisać w postaci

.. math:: \mathrm{rot\,} \mathbf F=\nabla \times \mathbf F.

 Między dywergencją, rotacją, gradientem i operatorem Laplace’a są
następujące zależności

.. math::

   \mathrm{div\,} (\mathrm{rot\,}\mathbf F)=0,
   \quad
   \mathrm{rot\,}(\mathrm{grad\,} u)=\mathbf 0,
   \quad
   \mathrm{div\,} (\mathrm{grad\,} u)=\Delta u,

.. math:: \mathrm{div\,} (u\mathbf F)=u\,\mathrm{div\,}\mathbf F+\mathbf F\cdot\mathrm{grad\,} u.

 2mm **Ekstrema funkcji** 2mm

Następujące twierdzenie podaje warunek wystarczający istnienia ekstremum
lokalnego funkcji dwóch zmiennych. Niech :math:`f` będzie funkcją
określoną w otoczeniu punktu :math:`P\in\mathbf R^2`\ . Zakładamy, że
funkcja :math:`f` ma ciągłe drugie pochodne cząstkowe w punkcie
:math:`P` oraz

.. math:: \frac{\partial f}{\partial x}(P)=\frac{\partial f}{\partial y}(P)=0.

 Niech

.. math::

   W=\left|
   \begin{array}{cc}
   {}&{}\\
   \frac{\partial^2f}{\partial x^2}(P)& \frac{\partial^2f}{\partial x\partial y}(P)\\
   {}&{}\\
   \frac{\partial^2f}{\partial x\partial y}(P)& \frac{\partial^2f}{\partial y^2}(P)\\
   {}&{}
   \end{array}
   \right|\, .

 Jeżeli :math:`W>0`\ , to funkcja :math:`f` ma w punkcie :math:`P` silne
ekstremum lokalne:

gdy :math:`\,\frac{\partial^2f}{\partial x^2}(P)>0\,`\ , to jest to
minimum,

gdy :math:`\,\frac{\partial^2f}{\partial x^2}(P)<0\,`\ , to jest to
maksimum.

Jeżeli :math:`W<0`\ , to funkcja :math:`f` nie ma w punkcie :math:`P`
ekstremum.
