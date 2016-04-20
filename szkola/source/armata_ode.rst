[10]l[0cm]4cm |image|

Z lekcji fizyki wszyscy wiemy, że prędkość cząstki :math:`v=\frac{\Delta
  x}{\Delta t}` opisuje tempo zmiany położenia :math:`\Delta x` w czasie
:math:`\Delta t`. Z kolei przyspieszenie
:math:`a=\frac{\Delta v}{\Delta t}` opisuje tempo zmiany prędkości
:math:`\Delta v` w czasie :math:`\Delta t`. Te pozornie mało
spektakularne wzory nabierają Mocy dopiero w zetknięciu z komputerem.
Czytelnika chcącego głębić tajniki metody rozwiązywania równań
różniczkowych zapraszamy do *aktywnej* lektury tego artykułu.

Odkrywanie praw fizycznych przez “komputerowe eksperymentowanie” z
równaniami jest celem projektu dydaktycznego iCSE prowadzonego na
Uniwersytecie Śląskim. Narzędzie stanowi system Sage  będący otwartą
implementacją systemu algebry komputerowej z językiem Python. Program
Sage jest dostępny z poziomu przeglądarki internetowej poprzez usługę
chmurową  lub serwer pojedyńczych obliczeń na którym bazuje interaktywna
wersja tego artykułu .

Rzut ukośny
===========

[11]l[0cm]5cm |image|

Rozpoczniemy od pozornie nudnego tematu jakim może się wydawać znany ze
szkoły rzut ukośny. W fizyce pojęcie to oznacza ruch punktu materialnego
o pewnej masie pod działaniem siły grawitacji (siły przyciągania
ziemskiego). Wiedza na temat tego zagadnienia była kluczowa podczas
konfliktów zbrojnych. Wysyłając bowiem w stronę wroga punkty materialne
w postaci różnorakich pocisków, chcieliśmy wiedzieć czy aby na pewno
dotrą one do celu. Z tego punktu widzenia interesujący jest zasięg
posiadanego przez nas urządzenia miotającego, oczywiście im większy tym
lepszy. Można się spodziewać, że ów zasięg zależy od siły miotającej
naszego urządzenia, a co za tym idzie prędkości początkowej pocisku.
Kolejną rzeczą jest uwzględnienie kąta wystrzału. Jeśli strzelimy pocisk
pionowo to z pewnością upadnie na nas - zasięg będzie zerowy. Jeśli
strzelimy poziomo to również pocisk nie poleci zbyt daleko. A zatem pod
jakim kątem powinniśmy strzelać? Odpowiedzi dręczące artylerzystów
dostarcza Fizyka, a mówiąc konkretnie jej gałąź zwana dynamiką.
Rozwiązując więc odpowiednie zagadnienie dynamiki dostajemy tor ruchu
pocisku.

Podstawowym prawem jest słynna druga zasada dynamiki Newtona, która
wyraża się równaniem:

.. math::

   \label{eq:Ni}
   m \vec  a = \vec F.

W równaniu tym :math:`m` jest masą pocisku, :math:`\vec a` jest
przyśpieszeniem (wektorem o składowej poziomej i składowej pionowej) i
:math:`\vec F` jest siłą także o dwóch składowych: poziomej i pionowej.
Podczas lekcji z reguły rozważa się przypadek, w którym pomijamy siły
tarcia. Wówczas jedyna siła działająca na ciało to siła o składowych
:math:`(0,-mg)`, tzn, składowa pozioma wynosi 0, natomiast siła w
kierunku pionowym wynosi :math:`mg` i jest skierowana w dół (dlatego
jest znak minus!). Możemy w takim przypadku rozważać ruch odbywający się
w płaszczyźnie rozpiętej przez wektor siły i prędkości początkowej -
czyli nasz pocisk będzie leciał w płaszczyźnie pionowej do Ziemi i nie
będzie skręcał w lewo ani w prawo. Klasyczne rozwiązanie tego problemu
oparte jest o fakt, że ruch w poziomie :math:`x` i ruch w pionie
:math:`y` są od siebie niezależne. W kierunku pionowym ruch jest
jednostajny, a w pionie zachodzi ruch jednostajnie przyśpieszony. Można
to zapisać w postaci :

.. math::

   \begin{aligned}
   \label{eq:param}
   x(t) &=& x_0+v_{x0} t, \nonumber \\
   y(t) &=& y_0 + v_{y0} t - \frac{1}{2}g t^2.\end{aligned}

Równania ([eq:param]) są tak zwanym parametrycznym przedstawieniem toru
ruchu. Oznacza to, że znamy jak w zależności od parametru :math:`t`
(czyli czasu) zmienia się każda ze współrzędnych :math:`x` i :math:`y`.
Wyliczając czas :math:`t` z pierwszego równania i wstawiając go do
drugiego równania można przekształcić te dwa równania do postaci
funkcyjnej :math:`y=f(x)`. Otrzymamy wtedy równanie paraboli o ujemnym
współczynniku przy wyrazie :math:`x^2`. Jednak w programie Sage mamy
bardzo wygodną procedurę do rysowania właśnie takich krzywych
parametrycznych - mianowicie funkcję ``parametric_plot``.

Rysownie tych krzywych jest fajną zabawą! Wyobraźmy sobie, że armata ma
funkcję działa przeciwlotniczego i pytamy się w jakim obszarze
przestrzeni jej pociśki mogą dosięgnąć wrogi samolot?

[8]l[0cm]4cm |image|

Narysujmy w Sage na jednym wykresie tory wystrzałów z prędkościami
:math:`v_{x0}=v_0 \cos(\alpha)` i :math:`v_{y0}=v_0 \sin(\alpha)`, dla
różnych kątów :math:`\alpha` (to jest kąt pomiędzy poziomem i wektorem
prędkości początkowej pocisku). Zachęcamy do samodzielnego napisania
kodu, który powinien generować coś zbliżonego do rysunku ([fig:rzut1]).

|image|

Brzeg obszaru skutecznego ognia działa przeciwlotniczego, jest
matematycznie rzecz biorąc obwiednią rodziny krzywych. Nasz rysunek
sugeruje, że ma on kształt paraboli - i dokładny rachunek pokazuje, że
tak jest rzeczywiście (zob. ).

Rzut ukośny - inaczej
=====================

Czytelnik pewnie zastanawia się, czy przypadkiem nie chcemy wrobić go w
przerobienie lekcji fizyki pod pretekstem rysowania wykresów funkcji na
komputerze. Otóż nie! Rozwiązanie matematyczne przyda się nam do
weryfikacji wyników rozważań nieco odmiennych niż te prezentowane
zazwyczaj w szkole. Rozważania te umożliwią nam analizę toru lotu
pocisku z uwzględnieniem bardziej realistycznych czynników takich jak
tarcie, wiatr czy nawet rotacja pocisku.

W równaniu Newtona dla ruchu pocisku występuje przyśpieszenie. Oznaczmy
przez :math:`t` pewną chwilę czasu, a przez :math:`\Delta t` mały
przyrost czasu. Dla składowej poziomej przyspieszenia otrzymujemy
relację

.. math::

   a_x = \frac{\Delta v_x}{\Delta t}=\frac{v_x(t+\Delta t)-v_x(t)}{\Delta t}. 
   \label{eq:dv}

Z prawa Newtona dla składowej :math:`x`-owej mamy:

.. math::

   a_x = \frac{F_x}{m}
   \label{eq:dv}

więc możemy napisać

.. math::

   \frac{v_x(t+\Delta t)-v_x(t)}{\Delta t} = \frac{F_x}{m}.
   \label{eq:dv3}

Załóżmy, że znamy prędkość :math:`v_x(t)` w chwili :math:`t`.
Chcielibyśmy obliczyć prędkość :math:`v_x(t+\Delta t)` w chwili
:math:`t+\Delta t`. Z równania ([eq:dv3]) wynika, że

.. math::

   v_x(t+\Delta t) =v_x(t) + \Delta t\cdot  \frac{F_x}{m}.
   \label{eq:euler1}

Świetnie! Zapiszmy podobne wzory dla składowej pionowej i będziemy mogli
obliczać prędkość w dowolnej chwili czasu. A co z położeniem? Możemy
postąpić podobnie, stosując wzór na prędkość. I tak np. dla :math:`x`:

.. math::

   v_x = \frac{x(t+\Delta t)-x(t)}{\Delta t}
   \label{eq:dx}

czyli

.. math::

   x(t+\Delta t)= x(t)+ \Delta t \cdot v_x 
   \label{eq:euler2}

Wzory ([eq:euler1]) oraz ([eq:euler2]) oraz odpowiedniki dla składowych
pionowych :math:`y` układają się w algorytm, który możemy zaprogramować
na komputerze. Ale chwileczkę...

Czy te wzory są poprawne? Niestety nie! W rów. ([eq:euler1]) założyliśmy
prawo dla ruchu jednostajnie przyśpieszonego, a siła w ogólności nie
musi być stała. W rów. ([eq:euler2]) założyliśmy, że prędkość jest
stała, a nie musi wcale tak być. No chyba, że :math:`\Delta
t` jest odpowiednio małe. Wtedy można by się spodziewać, że siła i
prędkość w czasie między :math:`t` a :math:`t+\Delta t` nie zmienią się.
Wówczas wzory byłyby przybliżeniem prawdy. Sprawdźmy to eksperymentalnie
wykonując poniższy kod w systemie Sage:

Podobnie jak w przypadku rysowania rozwiązania dokładnego startujemy z
zadania warunków początkowych i parametrów układu (linie 1-3). Następnie
zakładamy, że chcemy zastosować przybliżoną procedurę :math:`n=200` razy
w ciągu całego lotu pocisku. Wyliczamy :math:`\Delta
t=t_{end}/n` (linia 6). Wykonujemy :math:`n` razy pętlę w której
korzystamy z czterech przybliżonych wzorów ([eq:euler1]),([eq:euler2]) i
analogicznych dla komponentu pionowego. Linia 12 jest niezwykle ważna
bowiem “ustawia” wyliczone nowe wartości prędkości i położenia jako
warunki początkowe dla kolejnego kroku. W linii 13 dołączamy wybrane
parametry - akurat interesuje nas położenie - do listy punktów
potrzebnych do późniejszego narysowania (dwie ostatnie linie) toru
pocisku. Jeżeli w tej samej sesji Sage wykonaliśmy już pierwszy program,
to możemy łatwo narysować rozwiązanie dokładne i przybliżone na jednym
wykresie komendą: ``(p1+p2).show()``.

|image|

Na rysunku [fig:por] widzimy, że otrzymaliśmy tor ruchu zbliżony do
dokładnego. Zachęcamy Czytelnika do samodzielnych eksperymentów i
zbadania jak np. ilość iteracji - czyli krok czasowy - wpływa na wynik.
Ciekawostką jest, że nasz program nigdzie nie zawierał funkcji
kwadratowej, a pomimo tego narysował jej wykres - parabolę!

Po co robiliśmy tyle szumu i zaprzęgali komputer do obliczania tego co
było i tak znane? Przecież w przypadku rzutu ukośnego metoda numeryczna
z mozołem odtwarza wynik analityczny. Okazuje się, że nasz algorytm może
być użyty do rozwiązywania praktycznie KAŻDEGO zagadnienia opisanego
równaniem Newtona! Wystarczy zmodyfikować wyrażenia dla sił. Co więcej,
siły mogą zależeć w najdziwniejszy sposób od każdej ze zmiennych.
Wystarczy w naszym algorytmie zmienić zaledwie dwie linie:

 gdzie za :math:`F_x,F_y` wstawiamy odpowiednie wyrażenia na siły w
kierunku poziomym i pionowym, które chcemy modelować. Na przykład możemy
rozwiązać układ, w którym mamy realistyczną siłę oporu, która zależy
kwadratowo od prędkości. Możemy dodać wiatr i to nawet taki, który wieje
inaczej na wysokości 100m nad Ziemią, a inaczej na wysokości 10km.
Możemy uwzględnić zmianę gęstości powietrza na dużych wysokościach. W
takich przypadkach nie jest łatwo lub wręcz się nie da otrzymać
rozwiązania metodami analitycznymi.

Cierpliwych Czytelników zapraszamy do lektury następnej części tego
artykułu. Niecierpliwych zachęcamy do samodzielnego eksperymentowania od
zaraz.

A równania różniczkowe?
=======================

Czyżby dopadła nas cyfrowa demencja - przecież mieliśmy się dowiedzieć
czegoś o równaniach różniczkowych! Okazuje się, że nasz drugi program
tak na prawdę był schematem Eulera rozwiązującym układ czterech równań
różniczkowych zwyczajnych! Skoro potrafimy już je rozwiązywać, to może
dowiedzmy się co to jest? Mówiąc mniej precyzyjnie, jest to równanie
podobne do ([eq:dv3]), ale w granicy :math:`\Delta t\to0`. Lewa strona
przechodzi w wielkość zwaną pochodną (w tym przypadku pochodną
prędkości). Równania różniczkowe to właśnie takie równania, które
zawierają funkcje (w naszym przypadku :math:`x(t),v_x(t),y(t),v_y(t),` i
ich pochodne. Przybliżając granicę przez wzięcie pewnego małego, ale
skończonego :math:`\Delta t` otrzymaliśmy właśnie schemat numeryczny
rozwiązujący nasze równania różniczkowe.

1

http://sagemath.org http://cloud.sagemath.com
http://visual.icse.us.edu.pl/Warsztaty
http://pl.wikipedia.org/wiki/Rzut\_ukośny

.. |image| image:: 3.jpg
.. |image| image:: 1a.png
.. |image| image:: 2.jpg
.. |image| image:: pplot.pdf
.. |image| image:: porownanie.pdf
