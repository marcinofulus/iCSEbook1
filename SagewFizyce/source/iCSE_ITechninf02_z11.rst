.. -*- coding: utf-8 -*-


Zmienne
-------


Używanie zmiennych
~~~~~~~~~~~~~~~~~~

Wróćmy na chwilę do zadania z podrzucaniem piłki w górę.


**Zadanie: Ruch pionowy w polu grawitacyjnym Ziemi**

W górę rzucono piłkę. Zaniedbując siły oporu, oblicz na jaką wysokość  wzniesie się piłka po 0.54 sekundy, jeżeli wartość początkowa prędkości wynosiła :math:`3.44m∕s`.

Rozwiązaliśmy ten problem już dwukrotnie \- raz bez zmiennych, a drugi raz z użyciem zmiennymi. Zatrzymajmy się teraz na tym samym problemie, ale skupmy się nie na rozwiązaniu, ale na metodyce wykorzystania zmiennych. Pamiętamy, że rozwiązanie dane jest wzorem

:math:`h(t) = {v}_{0}t -{1\over   2}g{t}^{2}`


możemy  zatem  napisać  w  Sage


.. code-block:: python

    sage: a = 9.81
    sage: b = 0.54
    sage: c = 3.44
    sage: d = c * b - 0.5 * a * b ^ 2
    sage: d


.. end of output

co zwróci nam oczywiście poprawne rozwiązanie. Jeżeli terazktoś zapyta się nas  a jak wysoko owa piłka poleci po 0.1 sekundy?
 .Mając dostępny wzór ( `1 <#x1-1001r1>`_ ) bez problemu zidentyﬁkujemy zmienne jako::math:`{v}_{0} = c,t = b` i:math:`g = a`.Gorzej, jeżeli wzoru nie widzimy. Może pamiętacie w jaki sposób podano rozwiązanieza pomocą zmiennych na poprzedniej lekcji? Wybór  nazw zmiennych
 nie byłprzypadkowy – dobrano je tak, aby jak najbardziej przypominały równanie ( `1 <#x1-1001r1>`_ ).


.. code-block:: python

    sage: g = 9.81
    sage: t = 0.54
    sage: v0 = 3.44
    sage: h = v0 * t - 0.5 * g * t ^ 2


.. end of output

W przypadku dość intuicyjnego (dla ﬁzyka) nazewnictwa zmiennych w równaniu( `1 <#x1-1001r1>`_ ), zrozumienie powyższego kodu nie powinno dla nikogo (z nas) stanowić problemu.Pamiętajcie: możemy jednak zapisać powyższe równanie w dowolny sposób

- niezrozumiale, wykorzystując pierwsze lepsze nazwy dla zmiennych     
- bardziej  zrozumiale,  choć  nieco  hermetycznie,  wykorzystując  naturalne  nazewnictwo zmiennych, np: z podręcznika do ﬁzyki     
- stosując  pełne  nazwy,  co  daje  nam  pełne  informacje  o  problemie     (zazwyczaj)


.. code-block:: python

    sage: przyspieszenie_ziemskie = 9.81
    sage: czas = 0.54
    sage: predkosc_poczatkowa = 3.44
    ...                                                                     
    sage: wysokosc_pilki = predkosc_poczatkowa * czas - 0.5 * przyspieszenie_ziemskie * czas ^ 2


.. end of output


Takie podejście do użycia zmiennych ma swoje plusy i minusy. Plusem jest czytelność rozwiązania. Minusem długość kodu i czas potrzebny na wprowadzenie takiej ilości tekstu (z czasem ten problem znika). Plusem łatwość modyﬁkacji i rozszerzania problemu (możemy dodać np: zmienną  przyspieszenie_ksiezyc = 1.622 i później łatwo i czytelnie wykorzystać ją w kodzie). Minusem (ale tylko dla alfabetów niespójnych z  `ASCII <http://pl.wikipedia.org/wiki/ASCII>`_ ) jest konieczność pisania  po polskiemu. Sami zdecydujecie w toku nauki programowania jaki styl kodu najbardziej Wam odpowiada \- bardziej hermetyczny i szybszy kod wykorzystujący typowe stałe matematyczno/ﬁzyczne oraz intuicję programisty, czy sposób wykorzystujący pełne nazwy. Często stosuje się też swego rodzaju mieszaninę ich obu, ale  nigdy nie powinniśmy programować używając pierwszych z brzegu nazw zmiennych.

**Uwaga:** Na tym kursie używanie przypadkowych nazw zmiennych będzie skutkowało obniżeniem oceny.


Istnieją pewne reguły, do których można i powinno się stosować. Część z nich powoduje po prostu błędy, inne są wynikiem pewnych przyjętych standardów programowania.


W Sage (i w języku Python) nie musimy deklarować typu zmiennej, typ jest ściśle związany z wartością zmiennej, nie z jej identyﬁkatorem. Identyﬁkator (nazwa) zmiennej, może się składać z dowolnych liter, znaku podkreślenia oraz cyfr. Zwykłe zmienne powinny się rozpoczynać od litery, zmienne zaczynające lub kończące się od znaku podkreślenia mają zwykle specjalne znaczenie, zatem lepiej ich unikać, choć znak podkreślenia wewnątrz zmiennej jest dozwolony. Nazwy zmiennych nie mogą zaczynać się od cyfry. Należy zwrócić uwagę na fakt, że Sage (Python) rozróżnia wielkość liter.


.. code-block:: python

    sage: x = 0
    sage: X = 0
    sage: zmienna = 0 # zalecane dla nazw modulw
    sage: ZMIENNA = 0
    sage: pewna_zmienna = 0 # zalecane dla nazw funkcji i metod
    sage: PEWNA_ZMIENNA = 0 # zalecane dla stalych
    sage: pewnaZmienna = 0
    sage: PewnaZmienna = 0 # zalecane dla nazw klas


.. end of output

Do przypisania wartości do zmiennej służy operator przypisania(=). Powyżej do wszystkich zmiennych przypisaliśmy wartość:math:`0`.Oczywiście musimy być ostrożni, nie powinniśmy przypisywać nowych wartościnazwom już zdeﬁniowanym, może to prowadzić do nieoczekiwanych rezultatów:


.. code-block:: python

    sage: sin(pi)


.. end of output

teraz  przypiszemy  sobie


.. code-block:: python

    sage: sin = 'Ala ma kota'
    ...                                                                     
    ...                                                                     
    sage: sin(pi)


.. end of output

W ten sposób uszkodziliśmy funkcję sinus, przypisując pod nazwę sin napis. Pakiet Sagedostarcza funkcję  restore, która pozwala na przywrócenie domyślnej deﬁnicji danej nazwy:


.. code-block:: python

    sage: restore('sin')
    sage: sin(pi)


.. end of output

Jak widzieliśmy już wcześniej, aby podzielić długą linię,należy użyć znaku  \  (wsteczny ukośnik, lewy ukośnik).


.. code-block:: python

    sage: zmienna = \
    ...       0


.. end of output

należy jednak pamiętać, żeby po znaku ukośnika nie wpisywać żadnych znaków (wtym znaków białych).



Nazwy zarezerwowane
"""""""""""""""""""

W Sage jako pewnego rodzaju potomku języka Python występują nazwy, których niemożemy użyć jako nazw zmiennych, tzw. nazwy zarezerwowane. Oto ich lista:

and  assert  break  class  continue 


def  del  elif  else  except 


exec  finally  for  from  global 


if  import  in  is  lambda 


not  or  pass  print  raise 


return  try  while
Nie powinno się również używać poniższych nazw, aczkolwiek nie są to słowazarezerwowane. Użycie ich spowoduje jednak konﬂikt z dość szeroko używanymifunkcjami Python\-a.

Data  Float  Int  Numeric  Oxphys 


array  close  float  int  input 


open  range  type  write  zeros
Powinno się również unikać stosowania nazw popularnych funkcji matematycznych.

acos  asin  atan  cos  e 


exp  fabs  floor  log  log10 


pi  sin  sqrt  tan

**Uwaga:**  Jeżeli jednak zdarzy się nam użyć którejś z powyższych nazw (oprócz tychzastrzeżonych), zawsze można odzyskać ją funkcją  restore().



Komentarze
~~~~~~~~~~

Komentarze w języku Python a więc i w Sage zaczynają się od znaku  #. Wszystko coznajduje się za tym znakiem będzie pomijane przez interpreter. Komentarze stosujesię w kilku celach. Można nimi zablokować na jakiś czas kawałek kodu stwarzającyproblemy. Zwykle jednak służy on do bezpośredniego opisu samego kodu. Przykładowo


.. code-block:: python

    sage: ###
    sage: # ten program oblicza wysokosc na jaka doleci
    sage: # pilka wyrzucona w gore w polu ziemskim
    sage: ###
    sage: g = 9.81 # przyspieszenie grawitacyjne Ziemi
    sage: t = 0.54 # czas koncowy
    sage: v0 = 3.44 # predkosc poczatkowa
    sage: h = v0 * t - 0.5 * g * t^2 # wysokosc po czasie t


.. end of output

W ten sposób praktycznie każdy program przez nas napisany będzieczytelny.

Jest jeszcze jedna możliwość dodawanie komentarza doskryptów/programów Sage/Python \- używanie ciągów znakowych


.. code-block:: python

    sage: """to jest komentarz, ktory
    sage: moze
    sage: sie
    sage: ciagnac wiele linii"""


.. end of output

O ciągach znakowych poniżej.



Ciągi znaków
~~~~~~~~~~~~

Ciągi znaków w Sage traktowane są jako kolejny typ danych. Jedyną różnicąjest to, że należy podawać je używając cudzysłowów  "  lub apostrofów  ’.


.. code-block:: python

    sage: "Ala ma kota"


.. end of output

W przeciwnym wypadku Sage potraktuje nasz ciąg jako funkcjęi będzie chciał ją wywołać. W wyniku dostaniemy  Syntax Error.


.. code-block:: python

    sage: Ala ma kota


.. end of output

Ciągi znaków możemy dowolnie przypisywać do zmiennych


.. code-block:: python

    sage: k = "www.onet.pl"
    sage: znaki = "Ala ma kota"


.. end of output


Istnieje specjalna konstrukcja ciągu znaków zaczynająca i kończąca się trzemacudzysłowami  """. Jest to ciąg znaków charakterystyczny dla języka Python i możeon ciągnąć się przez wiele linii. Odstępy użyte w środku zostaną zachowane.Ponadto możemy w takim środowisku używać pojedynczych apostrofówi cudzysłowów w zasadzie dowolnie. Przed literałem łańcuchowym takimjak powyżej  "ala ma kota" możemy użyć preﬁksów  r,u,b. Oznaczają oneodpowiednio (pod warunkiem, że jako baza Sage mamy język Python w wersji 2.\*)

<dl class="description"><dt class="description">
<span class="plbx-10">r</span> </dt><dd class="description">(row, raw string literal) w tak oznaczonym literale łańcuchowym wszystkie
     znaki traktowane będą dosłownie, np. ukośnik wsteczny traktowany będzie
     jak zwykły ukośnik wsteczny<br class="newline" />np: <span class="obeylines-h"><span class="verb"><span class="pltt-10">r"ala</span><span class="pltt-10"> ma</span><span class="pltt-10"> kota"</span></span></span>, <span class="obeylines-h"><span class="verb"><span class="pltt-10">r’\sin</span><span class="pltt-10"> to</span><span class="pltt-10"> komenda</span><span class="pltt-10"> \LaTeX{}a’</span></span></span>
</dd><dt class="description">
<span class="plbx-10">u</span> </dt><dd class="description">(unicode) napis w Unikodzie<br class="newline" />np: <span class="obeylines-h"><span class="verb"><span class="pltt-10">u"ala</span><span class="pltt-10"> ma</span><span class="pltt-10"> kota"</span></span></span>, <span class="obeylines-h"><span class="verb"><span class="pltt-10">u’zażółć</span><span class="pltt-10"> gęślą</span><span class="pltt-10"> jaźń’</span></span></span>
</dd><dt class="description">
<span class="plbx-10">b</span> </dt><dd class="description">napis w ASCII<br class="newline" />np:                                                                     <span class="obeylines-h"><span class="verb"><span class="pltt-10">b"ala</span><span class="pltt-10"> ma</span><span class="pltt-10"> kota"</span></span></span>,
     <span class="obeylines-h"><span class="verb"><span class="pltt-10">b’A</span><span class="pltt-10"> quick</span><span class="pltt-10"> brown</span><span class="pltt-10"> fox</span><span class="pltt-10"> jumps</span><span class="pltt-10"> over</span><span class="pltt-10"> the</span><span class="pltt-10"> lazy</span><span class="pltt-10"> dog’</span></span></span></dd></dl>
Oczywiście jest spora różnica pomiędzy  1
  i  "1"


.. code-block:: python

    sage: 1 == "1"
    False

.. end of output

Ma to związek z typami danych.



Typy danych
~~~~~~~~~~~

Na chwilę skupimy się na języku Python. Język ten, jak wiemy, stanowi bazę dlaSage\-a, więc wszystko co powiemy o nim jest prawdziwe również w przypadkuSage.



Typy danych w Pythonie
""""""""""""""""""""""

W Pythonie wartości, a nie zmienne, posiadają typ – tak więc Python jest językiem ztypami dynamicznymi. Wszystkie wartości przekazywane są przez referencję. Wporównaniu z innymi językami z typami dynamicznymi Python sprawdza typy wumiarkowanym stopniu. Dla typów numerycznych zdeﬁniowana jest automatycznakonwersja, tak więc możliwe jest np. mnożenie liczby zespolonej przez liczbęcałkowitą typu long bez rzutowania. Nie ma natomiast automatycznej konwersjipomiędzy napisami i liczbami.

Tutaj podamy jedynie podstawowe informacje na temat typów danych. Po niecoobszerniejszą lekturę odsyłamy np. do części  Wbudowane typy danych podręcznika `Zanurkuj w Pythonie <http://pl.wikibooks.org/wiki/Zanurkuj_w_Pythonie>`_.



<dl class="description"><dt class="description">
<span class="plbx-10">bool</span> </dt><dd class="description">typ logiczny<br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">True,</span><span class="pltt-10"> False</span></span></span>
</dd><dt class="description">
<span class="plbx-10">int</span> </dt><dd class="description">liczba całkowita<br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">1,</span><span class="pltt-10"> 13</span></span></span>
</dd><dt class="description">
<span class="plbx-10">ﬂoat</span> </dt><dd class="description">liczba zmiennoprzecinkowa<br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">3.1415</span></span></span>
</dd><dt class="description">
<span class="plbx-10">complex</span> </dt><dd class="description">liczba zespolona<br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">1</span><span class="pltt-10"> \+</span><span class="pltt-10"> 3j</span></span></span>
</dd><dt class="description">
<span class="plbx-10">str</span> </dt><dd class="description">napis (niezmienny)<br class="newline" />”To jest napis”
     </dd><dt class="description">
<span class="plbx-10">unicode</span> </dt><dd class="description">napis w Unikodzie (niezmienny)<br class="newline" />u”To jest napis”
     </dd><dt class="description">
<span class="plbx-10">bytes</span> </dt><dd class="description">napis w ASCII<br class="newline" />b”To jest napis ASCII”
                                                                  

                                                                  
     </dd><dt class="description">
<span class="plbx-10">list</span> </dt><dd class="description">lista (zmienna zawartość i długość)<br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">[2,</span><span class="pltt-10"> "Ala",</span><span class="pltt-10"> \-12.32]</span></span></span>
</dd><dt class="description">
<span class="plbx-10">tuple</span> </dt><dd class="description">krotka (niezmienna)<br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">(2,</span><span class="pltt-10"> "Ala",</span><span class="pltt-10"> \-12.32)</span></span></span>
</dd><dt class="description">
<span class="plbx-10">set</span> </dt><dd class="description">zbiór (zmienny)<br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">set([2,</span><span class="pltt-10"> "Ala",</span><span class="pltt-10"> \-12.32])</span></span></span>
</dd><dt class="description">
<span class="plbx-10">frozenset</span> </dt><dd class="description">zbiór (niezmienny)<br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">frozenset([2,</span><span class="pltt-10"> "Ala",</span><span class="pltt-10"> \-12.32])</span></span></span>
</dd><dt class="description">
<span class="plbx-10">dict</span> </dt><dd class="description">słownik (tablica asocjacyjna) (zmienny)<br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">{1:</span><span class="pltt-10"> "jeden",</span><span class="pltt-10"> "dwa":</span><span class="pltt-10"> 2}</span></span></span>
</dd><dt class="description">
<span class="plbx-10">type(None)</span> </dt><dd class="description">odpowiednik <span class="obeylines-h"><span class="verb"><span class="pltt-10">null</span></span></span><br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">None</span></span></span></dd></dl>
Większość, jeżeli nie wszystkie powyższe typy poznacie w ramach tego kursu.Sage domyślnie posiada jednak swoje własne typy danych, które w większościodpowiadają typom Pythona, ale zbudowane są od nowa. Jako, że Sage pomyślanyzostał jako program przede wszystkim do obliczeń symbolicznych czy ich wizualizacji,typy wbudowane w Sage skonstruowane są podobnie jak w matematyce. Typyliczbowe budowane są w oparciu odpowiednie pierścienie (liczb całkowitych,wymiernych, itp.). Więcej na temat pierścieni znajdziesz w  `Samouczku <https://sage.phys.us.edu.pl/doc/live/tutorial/index.html>`_  lub wpodręczniku  `Konstrukcje Sage <https://sage.phys.us.edu.pl/doc/live/constructions/index.html>`_ .

Aby dowiedzieć się, jakiego typu jest dana zmienna należy użyć funkcji  type(). Np:


.. code-block:: python

    sage: z = 1
    sage: type(z)


.. end of output


Zadania
~~~~~~~

<dl class="description"><dt class="description"> <span class="plbx-10"><strong>Zadanie 1: Określ jaki typ mają poniższe zmienne</strong></span> </dt><dd class="description"><span class="underline">czas: 5 min.</span><br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">i</span><span class="pltt-10"> =</span><span class="pltt-10"> 1</span></span></span><br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">k</span><span class="pltt-10"> =</span><span class="pltt-10"> (1,2,3)</span></span></span><br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">zmienna_z_zadania</span><span class="pltt-10"> =</span><span class="pltt-10"> ("Ala",</span><span class="pltt-10"> 21,</span><span class="pltt-10"> 4.5)</span></span></span><br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">ocena</span><span class="pltt-10"> =</span><span class="pltt-10"> 3.5</span></span></span><br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">imie</span><span class="pltt-10"> =</span><span class="pltt-10"> "Feliks"</span></span></span></dd><dd class="description"><span class="obeylines-h"><span class="verb"><span class="pltt-10"><br /></span></span></span></dd><dt class="description"> <span class="plbx-10"><strong>Zadanie 2: Konwersja ze stopni Celsiusa do Fahrenheita</strong></span> </dt><dd class="description"><span class="underline">czas: 5 min.</span><br class="newline" />Napisz program konwertujący temperaturę mierzoną w stopniach Celsiusa do      stopni Fahrenheita według równania
<div class="math">\begin{eqnarray} F = {9\over   5}C \+ 32&amp;   &amp;   %&amp;                                                                                \\  \end{eqnarray}</div>

<p class="nopar">Użyj identycznych nazw zmiennych. Następnie napisz program konwertujący      temperaturę w drugą stronę.</p>
</dd><dt class="description"> <span class="plbx-10"><strong>Zadanie 3: Oblicz z wykorzystaniem tych samych zmiennych</strong></span> </dt><dd class="description"><span class="underline">czas: 10 min.</span><br class="newline" />
<div class="math">:math:`                                                     \text{Area} = \pi {r}^{2},\quad \text{gdzie}\quad r = {\pi}^{{1\over   3} }-  1 `</div>
<div class="math">:math:` \text{_}0 ={\cosh }^{2}(x) +{\sinh }^{2}(x),\quad \text{gdzie}\quad x = 32 \pi`</div>
<div class="math">:math:`  f = {{(x + {y}^{0.4})}^{0.25x}\over           0.8}         +\log \Big ({x\over  y}\Big ) + 10^{x+{y}^{2}         },\quad \text{gdzie}\quad x =\sinh (1),y =\tanh (20)`</div>
<div class="math"></div>
</dd><dt class="description"> <span class="plbx-10"><strong>Zadanie 4: Rzut ukośny</strong></span> </dt><dd class="description"><span class="underline">czas: 20 min.</span><br class="newline" />Jeżeli w polu grawitacyjnym wyrzucimy piłkę z wysokości      :math:`h_0` i z prędkością      początkową :math:`{v}_{0}`      zorientowaną pod kątem :math:`\alpha`      w stosunku do poziomu otrzymujemy zagadnienie rzutu ukośnego.      Rozwiązywać je będziecie analitycznie na zajęciach z mechaniki. Równanie      toru takiego ruchu we współrzędnych kartezjańskich (x,y) dane jest      wzorem:</dd><dd class="description"><br /></dd><dd class="description">
<div class="math">:math:`y = h_0 + x\mathop {tg} (\alpha) -     {g\over   2{v}_{0}^{2}{\mathop{ cos}^{2}(\alpha) }}{x}^{2}`</div>

<p class="nopar">Napisz program znajdujący ”wysokość”piłki      :math:`y`      dla zadanych wartości przyspieszenia grawitacyjnego      :math:`g`, kąta :math:`\alpha`, prędkości      początkowej :math:`{v}_{0}`      i odległości :math:`x`.      Postaraj się napisać jak najbardziej czytelny kod.</p>
</dd></dl>




Formatowanie tekstu
~~~~~~~~~~~~~~~~~~~

Polecenie (które może być używane jak funkcja)  print  służy do wyświetlania tekstu. Tekstem nie musi być ciąg znaków (literał łańcuchowy). Może nim być zmienna bądź literał dowolnego typu.


.. code-block:: python

    sage: print 4
    sage: print "cztery"
    sage: cztery = 4
    sage: print cztery
    sage: cztery = 4.0
    sage: print cztery
    sage: print(cztery)


.. end of output

Polecenie  print  łamie końcową linię przechodząc do nowegowiersza, chyba, że na końcu polecenia umieścimy przecinek


.. code-block:: python

    sage: print "pi =",
    sage: print 3.14154


.. end of output

Oczywiście przecinkiem możemy również oddzielać kolejne obiekty


.. code-block:: python

    sage: print "liczba pi =", 3.1415, "a jej kwadrat to", 3.1415 * 3.1415
    liczba pi = 3.14150000000000 a jej kwadrat to 9.86902225000000

.. end of output

To samo możemy osiągnąć stosując formatowanie tekstu w poleceniu  print.


.. code-block:: python

    sage: print "liczba pi = %f a jej kwadrat to %f" % (3.1415, 3.1415 * 3.1415)


.. end of output

Po kolei. Polecenie  print  drukuje na ekran ciąg znaków \- wszystko, co zawarte jest pomiędzy cudzysłowami (lub apostrofami). Pomiędzy nimi występują specjalne znaki zaczynające się od znaku  %. W ich miejsce podstawiane są odpowiednio interpretowane wartości zmiennych (bądź literały) występujące za identycznym znakiem znajdującym się za ciągiem zawartym w cudzysłowach. Pierwsza wartość z nawiasu podstawiana jest do w miejsce pierwszego wystąpienia  %f. Analogicznie druga wartość podstawiana jest w miejsce drugiego wystąpienia  %f. Znak  f  występujący po procencie wymusza interpretację argumentu jako liczby zmiennoprzecinkowej (ﬂoat). Inne możliwe formatowania print


<dl class="description"><dt class="description"> <span class="plbx-10">%s</span> </dt><dd class="description">ciąg znaków </dd><dt class="description"> <span class="plbx-10">%d</span> </dt><dd class="description">liczba całkowita </dd><dt class="description"> <span class="plbx-10">%0Nd</span> </dt><dd class="description">liczba całkowita poprzedzona zerami w taki sposób, że otrzymujemy N      cyfr na wyjściu (pod warunkiem, że N ¡ liczby cyfr danej liczby) </dd><dt class="description"> <span class="plbx-10">%f</span> </dt><dd class="description">liczba zmiennoprzecinkowa </dd><dt class="description"> <span class="plbx-10">%e</span> </dt><dd class="description">notacja naukowa (e przy eksponencie) </dd><dt class="description"> <span class="plbx-10">%E</span> </dt><dd class="description">notacja naukowa (E przy eksponencie) </dd><dt class="description"> <span class="plbx-10">%g,%G</span> </dt><dd class="description">notacja dziesiątkowa </dd><dt class="description"> <span class="plbx-10">%Xz</span> </dt><dd class="description">formatowanie liczby z do prawej dla pola o szerokości X<br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">print</span><span class="pltt-10"> "%31f"</span><span class="pltt-10"> %</span><span class="pltt-10"> 0.0123412</span></span></span> </dd><dt class="description"> <span class="plbx-10">%\-Xz</span> </dt><dd class="description">formatowanie liczby z do lewej dla pola o szerokości X<br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">print</span><span class="pltt-10"> "%\-31f"</span><span class="pltt-10"> %</span><span class="pltt-10"> 0.0123412</span></span></span> </dd><dt class="description"> <span class="plbx-10">%.Yz</span> </dt><dd class="description">formatowanie liczby :math:`z`      z Y miejscami po przecinku </dd><dt class="description"> <span class="plbx-10">%X.Yz</span> </dt><dd class="description">formatowanie liczby :math:`z`      z Y miejscami po przecinku w polu o szerokości X </dd><dt class="description"> <span class="plbx-10">%%</span> </dt><dd class="description">znak procenta</dd></dl>



Zadania
"""""""

<dl class="description"><dt class="description"> <span class="plbx-10"><strong>Zadanie 5: Rzut ukośny</strong></span> </dt><dd class="description"><span class="underline">czas: 10 min.</span><br class="newline" />Przepisz kod tak, aby zwracał m/w taką informację
<div id="verbatim-4" class="verbatim">Na odległości 2.963 m ciało rzucone z wysokości 12.5 m z       <br />prędkością początkową 3 m/s pod kątem 0.12 rad       <br />znajduje się na wysokości 8.0 m w polu grawitacyjnym Ziemi.</div>
<div class="verbatim"></div>
</dd><dt class="description"> <span class="plbx-10"><strong>Zadanie 6: Słownik przyspieszeń</strong></span> </dt><dd class="description"><span class="underline">czas: 10 min.</span><br class="newline" />Zbuduj słownik zawierający jako klucz nazwę ciała niebieskiego      a jako wartość wartość przyspieszenia na nim podają w      :math:`m∕s^2`. Słowinik powinien zawierać wpisy dla conajmniej 7 ciał niebieskich.</dd><dd class="description"><br /></dd><dt class="description"> <span class="plbx-10"><strong>Zadanie 7: Przyrost pieniędzy w banku</strong></span> </dt><dd class="description"><span class="underline">czas: 15 min.</span><br class="newline" />Niech :math:`p`      oznacza stopę procentową banku wyrażoną w procentach na rok. Początkowa      wartość odłożonej gotówki w tym banku urośnie zgodnie ze wzorem      
<table class="equation" border="0">
<tbody>
<tr>
<td>
<div class="math">W = A\Big( 1 \+ {p \over   100}\Big )^n</div>
<a id="x1-9001r5"></a></td>
<td class="eq-no"><br /></td>
</tr>
</tbody>
</table>
<p class="nopar">po :math:`n`      latach. Oblicz do jakiej kwoty wzrośnie</p>
<ol class="enumerate1">
<li id="x1-9003x1" class="enumerate">1000 Euro po 3 latach dla stopy 5 procentowej </li>
<li id="x1-9005x2" class="enumerate">23513 zł po 5 latach dla stopy 3,54% </li>
<li id="x1-9007x3" class="enumerate">112,12 miliona Rubli po 1 roku dla stopy 7.14%</li>
</ol> 
<p class="noindent">Powyższe wielkości sformatuj odpowiednio dla wszystkich trzech przypadków      tak, by inwestor otrzymał pełną, <span class="underline">czytelną</span> informację.</p>
</dd></dl>

