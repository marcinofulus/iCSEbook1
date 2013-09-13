.. -*- coding: utf-8 -*-


Zmienne
-------


Używanie zmiennych
~~~~~~~~~~~~~~~~~~

Wróćmy na chwilę do zadania z podrzucaniem piłki w górę.


**Zadanie: Ruch pionowy w polu grawitacyjnym Ziemi**

W górę rzucono piłkę. Zaniedbując siły oporu, oblicz na jaką wysokość  wzniesie się piłka po 0.54 sekundy, jeżeli wartość początkowa prędkości wynosiła 3.44 m/s.

Rozwiązaliśmy ten problem już dwukrotnie - raz bez zmiennych, a drugi raz z użyciem zmiennymi. Zatrzymajmy się teraz na tym samym problemie, ale skupmy się nie na rozwiązaniu, ale na metodyce wykorzystania zmiennych. Pamiętamy, że rozwiązanie dane jest wzorem

.. math::
   :label: Z1

   h(t) = {v}_{0}t -{1\over 2}g{t}^{2}


możemy  zatem  napisać  w  Sage


.. code-block:: python

    sage: a = 9.81
    sage: b = 0.54
    sage: c = 3.44
    sage: d = c * b - 0.5 * a * b ^ 2
    sage: d


.. end of output

co zwróci nam oczywiście poprawne rozwiązanie. Jeżeli teraz ktoś zapyta się nas  a jak wysoko owa piłka poleci po 0.1 sekundy?

Mając dostępny wzór :eq:`Z1` bez problemu zidentyfikujemy zmienne jako: :math:`{v}_{0} = c,t = b` i :math:`g = a`. Gorzej, jeżeli wzoru nie widzimy. Może pamiętacie w jaki sposób podano rozwiązanie za pomocą zmiennych na poprzedniej lekcji? Wybór nazw zmiennych nie był przypadkowy – dobrano je tak, aby jak najbardziej przypominały równanie :eq:`Z1`.


.. code-block:: python

    sage: g = 9.81
    sage: t = 0.54
    sage: v0 = 3.44
    sage: h = v0 * t - 0.5 * g * t ^ 2


.. end of output

W przypadku dość intuicyjnego (dla fizyka) nazewnictwa zmiennych w równaniu :eq:`Z1`, zrozumienie powyższego kodu nie powinno dla nikogo (z nas) stanowić problemu. Pamiętajcie: możemy jednak zapisać powyższe równanie w dowolny sposób

- niezrozumiale, wykorzystując pierwsze lepsze nazwy dla zmiennych     
- bardziej  zrozumiale,  choć  nieco  hermetycznie,  wykorzystując  naturalne  nazewnictwo zmiennych, np: z podręcznika do fizyki     
- stosując  pełne  nazwy,  co  daje  nam  pełne  informacje  o  problemie     (zazwyczaj)


.. code-block:: python

    sage: przyspieszenie_ziemskie = 9.81
    sage: czas = 0.54
    sage: predkosc_poczatkowa = 3.44
    ...                                                                     
    sage: wysokosc_pilki = predkosc_poczatkowa * czas - 0.5 * przyspieszenie_ziemskie * czas ^ 2


.. end of output


Takie podejście do użycia zmiennych ma swoje plusy i minusy. Plusem jest czytelność rozwiązania. Minusem długość kodu i czas potrzebny na wprowadzenie takiej ilości tekstu (z czasem ten problem znika). Plusem łatwość modyfikacji i rozszerzania problemu (możemy dodać np: zmienną  przyspieszenie_ksiezyc = 1.622 i później łatwo i czytelnie wykorzystać ją w kodzie). Minusem (ale tylko dla alfabetów niespójnych z  `ASCII <http://pl.wikipedia.org/wiki/ASCII>`_ ) jest konieczność pisania  po polskiemu. Sami zdecydujecie w toku nauki programowania jaki styl kodu najbardziej Wam odpowiada - bardziej hermetyczny i szybszy kod wykorzystujący typowe stałe matematyczno/fizyczne oraz intuicję programisty, czy sposób wykorzystujący pełne nazwy. Często stosuje się też swego rodzaju mieszaninę ich obu, ale  nigdy nie powinniśmy programować używając pierwszych z brzegu nazw zmiennych.

**Uwaga:** Na tym kursie używanie przypadkowych nazw zmiennych będzie skutkowało obniżeniem oceny.


Istnieją pewne reguły, do których można i powinno się stosować. Część z nich powoduje po prostu błędy, inne są wynikiem pewnych przyjętych standardów programowania.


W Sage (i w języku Python) nie musimy deklarować typu zmiennej, typ jest ściśle związany z wartością zmiennej, nie z jej identyfikatorem. Identyfikator (nazwa) zmiennej, może się składać z dowolnych liter, znaku podkreślenia oraz cyfr. Zwykłe zmienne powinny się rozpoczynać od litery, zmienne zaczynające lub kończące się od znaku podkreślenia mają zwykle specjalne znaczenie, zatem lepiej ich unikać, choć znak podkreślenia wewnątrz zmiennej jest dozwolony. Nazwy zmiennych nie mogą zaczynać się od cyfry. Należy zwrócić uwagę na fakt, że Sage (Python) rozróżnia wielkość liter.


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

Do przypisania wartości do zmiennej służy operator przypisania (=). Powyżej do wszystkich zmiennych przypisaliśmy wartość :math:`0`. Oczywiście musimy być ostrożni, nie powinniśmy przypisywać nowych wartości nazwom już zdefiniowanym, może to prowadzić do nieoczekiwanych rezultatów:


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

W ten sposób uszkodziliśmy funkcję sinus, przypisując pod nazwę sin napis. Pakiet Sage dostarcza funkcję  restore, która pozwala na przywrócenie domyślnej definicji danej nazwy:


.. code-block:: python

    sage: restore('sin')
    sage: sin(pi)


.. end of output

Jak widzieliśmy już wcześniej, aby podzielić długą linię, należy użyć znaku  \\  (wsteczny ukośnik, lewy ukośnik).


.. code-block:: python

    sage: zmienna = \
    ...       0


.. end of output

należy jednak pamiętać, żeby po znaku ukośnika nie wpisywać żadnych znaków (w tym znaków białych).



Nazwy zarezerwowane
"""""""""""""""""""

W Sage jako pewnego rodzaju potomku języka Python występują nazwy, których nie możemy użyć jako nazw zmiennych, tzw. nazwy zarezerwowane. Oto ich lista:

``and  assert  break  class  continue``


``def  del  elif  else  except``


``exec  finally  for  from  global``


``if  import  in  is  lambda``


``not  or  pass  print  raise``


``return  try  while``

Nie powinno się również używać poniższych nazw, aczkolwiek nie są to słowa zarezerwowane. Użycie ich spowoduje jednak konflikt z dość szeroko używanymifunkcjami Python\-a.

``Data  float  Int  Numeric  Oxphys``


``array  close  float  int  input``


``open  range  type  write  zeros``

Powinno się również unikać stosowania nazw popularnych funkcji matematycznych.

``acos  asin  atan  cos  e``


``exp  fabs  floor  log  log10``


``pi  sin  sqrt  tan``


**Uwaga:**  Jeżeli jednak zdarzy się nam użyć którejś z powyższych nazw (oprócz tych zastrzeżonych), zawsze można odzyskać ją funkcją  restore().



Komentarze
~~~~~~~~~~

Komentarze w języku Python, a więc i w Sage zaczynają się od znaku  #. Wszystko coznajduje się za tym znakiem będzie pomijane przez interpreter. Komentarze stosujesię w kilku celach. Można nimi zablokować na jakiś czas kawałek kodu stwarzającyproblemy. Zwykle jednak służy on do bezpośredniego opisu samego kodu. Przykładowo


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

W ten sposób praktycznie każdy program przez nas napisany będzie czytelny.

Jest jeszcze jedna możliwość dodawanie komentarza do skryptów/programów Sage/Python \- używanie ciągów znakowych


.. code-block:: python

    sage: """to jest komentarz, ktory
    sage: moze
    sage: sie
    sage: ciagnac wiele linii"""


.. end of output

O ciągach znakowych poniżej.



Ciągi znaków
~~~~~~~~~~~~

Ciągi znaków w Sage traktowane są jako kolejny typ danych. Jedyną różnicą jest to, że należy podawać je używając cudzysłowów  "  lub apostrofów  ’.


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


Istnieje specjalna konstrukcja ciągu znaków zaczynająca i kończąca się trzema cudzysłowami  """. Jest to ciąg znaków charakterystyczny dla języka Python i możeon ciągnąć się przez wiele linii. Odstępy użyte w środku zostaną zachowane. Ponadto możemy w takim środowisku używać pojedynczych apostrofów i cudzysłowów w zasadzie dowolnie. Przed literałem łańcuchowym takim jak powyżej  "ala ma kota" możemy użyć prefiksów  r,u,b. Oznaczają one odpowiednio (pod warunkiem, że jako baza Sage mamy język Python w wersji 2.\*)

``r`` (row, raw string literal) w tak oznaczonym literale łańcuchowym wszystkie znaki traktowane będą dosłownie, np. ukośnik wsteczny traktowany będzie jak zwykły ukośnik wsteczny
np: r"ala ma kota", r’\sin to komenda \LaTeX{}a’

``u`` (unicode) napis w Unikodzie
np: u"ala ma kota", u’zażółć gęślą jaźń’

``b`` napis w ASCII
np: b"ala ma kota", b’A quick brown fox jumps over the lazy dog’

Oczywiście jest spora różnica pomiędzy  1  i  "1"


.. code-block:: python

    sage: 1 == "1"
    False

.. end of output


Ma to związek z typami danych.



Typy danych
~~~~~~~~~~~

Na chwilę skupimy się na języku Python. Język ten, jak wiemy, stanowi bazę dla Sage\-a, więc wszystko co powiemy o nim jest prawdziwe również w przypadku Sage.



Typy danych w Pythonie
""""""""""""""""""""""

W Pythonie wartości, a nie zmienne, posiadają typ – tak więc Python jest językiem z typami dynamicznymi. Wszystkie wartości przekazywane są przez referencję. W porównaniu z innymi językami z typami dynamicznymi Python sprawdza typy w umiarkowanym stopniu. Dla typów numerycznych zdefiniowana jest automatyczna konwersja, tak więc możliwe jest np. mnożenie liczby zespolonej przez liczbę całkowitą typu long bez rzutowania. Nie ma natomiast automatycznej konwersji pomiędzy napisami i liczbami.

Tutaj podamy jedynie podstawowe informacje na temat typów danych. Po nieco obszerniejszą lekturę odsyłamy np. do części  Wbudowane typy danych podręcznika `Zanurkuj w Pythonie <http://pl.wikibooks.org/wiki/Zanurkuj_w_Pythonie>`_.

``bool`` typ logiczny True, False

``int`` liczba całkowita 1, 13

``float`` liczba zmiennoprzecinkowa 3.1415

``complex`` liczba zespolona 1 \+ 3j

``str`` napis (niezmienny) ”To jest napis”

``unicode`` napis w Unikodzie (niezmienny) ”To jest napis”

``bytes`` napis w ASCII b”To jest napis ASCII”

``list`` lista (zmienna zawartość i długość) [2, "Ala", -12.32]

``tuple`` krotka (niezmienna) (2, "Ala", -12.32)

``set`` zbiór (zmienny) set([2, "Ala", -12.32])

``frozenset`` zbiór (niezmienny) frozenset([2, "Ala", -12.32])

``dict`` słownik (tablica asocjacyjna) (zmienny) {1: "jeden", "dwa": 2}

``type(None)`` odpowiednik null None


Większość, jeżeli nie wszystkie powyższe typy poznacie w ramach tego kursu. Sage domyślnie posiada jednak swoje własne typy danych, które w większości odpowiadają typom Pythona, ale zbudowane są od nowa. Jako, że Sage pomyślany został jako program przede wszystkim do obliczeń symbolicznych czy ich wizualizacji, typy wbudowane w Sage skonstruowane są podobnie jak w matematyce. Typy liczbowe budowane są w oparciu odpowiednie pierścienie (liczb całkowitych, wymiernych, itp.). Więcej na temat pierścieni znajdziesz w  `Samouczku <https://sage.phys.us.edu.pl/doc/live/tutorial/index.html>`_  lub w podręczniku  `Konstrukcje Sage <https://sage.phys.us.edu.pl/doc/live/constructions/index.html>`_ .

Aby dowiedzieć się, jakiego typu jest dana zmienna należy użyć funkcji  type(). Np:


.. code-block:: python

    sage: z = 1
    sage: type(z)


.. end of output


Zadania
~~~~~~~

**Zadanie 1: Określ jaki typ mają poniższe zmienne**

| czas: 5 min.
| i=1
| k=(1,2,3)
| zmienna_z_zadania=("Ala", 21, 4.5)
| ocena=3.5
| imie="Feliks"


**Zadanie 2: Konwersja ze stopni Celsiusa do Fahrenheita**

czas: 5 min.

Napisz program konwertujący temperaturę mierzoną w stopniach Celsiusa do stopni Fahrenheita według równania

.. math::

   F = {9\over 5}C + 32


Użyj identycznych nazw zmiennych. Następnie napisz program konwertujący temperaturę w drugą stronę.


**Zadanie 3: Oblicz z wykorzystaniem tych samych zmiennych**

czas: 10 min.

.. math::

   \text{Area} = \pi r^2, \quad \text{gdzie} \quad r = \pi ^{1\over 3} - 1

   \_0 ={\cosh }^{2}(x) +{\sinh }^{2}(x), \quad \text{gdzie} \quad x = 32 \pi

   f = {{(x + y^{0.4})^{0.25x}}\over {0.8}}  +\log \Big( {x\over y} \Big) + 10^{x+ y^2}, \quad \text{gdzie} \quad x =\sinh (1), y =\tanh (20)



**Zadanie 4: Rzut ukośny**

czas: 20 min.

Jeżeli w polu grawitacyjnym wyrzucimy piłkę z wysokości  :math:`h_0` i z prędkością  początkową :math:`{v}_{0}`  zorientowaną pod kątem :math:`\alpha`  w stosunku do poziomu otrzymujemy zagadnienie rzutu ukośnego.  Rozwiązywać je będziecie analitycznie na zajęciach z mechaniki. Równanie  toru takiego ruchu we współrzędnych kartezjańskich (x,y) dane jest wzorem:

.. math::

   y = h_0 + x\mathop {tg} (\alpha) - {g\over {2v_0 ^2 \mathop{ cos}^{2}(\alpha)}} x^2


Napisz program znajdujący ”wysokość” piłki :math:`y`  dla zadanych wartości przyspieszenia grawitacyjnego  :math:`g`, kąta :math:`\alpha`, prędkości początkowej :math:`{v}_{0}` i odległości :math:`x`.  Postaraj się napisać jak najbardziej czytelny kod.



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

Polecenie  print  łamie końcową linię przechodząc do nowego wiersza, chyba, że na końcu polecenia umieścimy przecinek


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

Po kolei. Polecenie  print  drukuje na ekran ciąg znaków \- wszystko, co zawarte jest pomiędzy cudzysłowami (lub apostrofami). Pomiędzy nimi występują specjalne znaki zaczynające się od znaku  %. W ich miejsce podstawiane są odpowiednio interpretowane wartości zmiennych (bądź literały) występujące za identycznym znakiem znajdującym się za ciągiem zawartym w cudzysłowach. Pierwsza wartość z nawiasu podstawiana jest do w miejsce pierwszego wystąpienia  %f. Analogicznie druga wartość podstawiana jest w miejsce drugiego wystąpienia  %f. Znak  f  występujący po procencie wymusza interpretację argumentu jako liczby zmiennoprzecinkowej (float). Inne możliwe formatowania print

``%s`` ciąg znaków

``%d`` liczba całkowita

``%0Nd`` liczba całkowita poprzedzona zerami w taki sposób, że otrzymujemy N cyfr na wyjściu (pod warunkiem, że N ¡ liczby cyfr danej liczby)

``%f`` liczba zmiennoprzecinkowa

``%e`` notacja naukowa (e przy eksponencie)

``%E`` notacja naukowa (E przy eksponencie)

``%g,%G`` notacja dziesiątkowa

``%Xz`` formatowanie liczby z do prawej dla pola o szerokości X
print "%31f" % 0.0123412

``%-Xz`` formatowanie liczby z do lewej dla pola o szerokości X
print "%\-31f" % 0.0123412

``%.Yz`` formatowanie liczby :math:`z` z Y miejscami po przecinku

``%X.Yz`` formatowanie liczby :math:`z` z Y miejscami po przecinku w polu o szerokości X

``%%`` znak procenta



Zadania
"""""""

**Zadanie 5: Rzut ukośny**

czas: 10 min.

Przepisz kod tak, aby zwracał m/w taką informację

   ===========================================================  ===
   Na odległości 2.963 m ciało rzucone z wysokości 12.5 m z
   prędkością początkową 3 m/s pod kątem 0.12 rad
   znajduje się na wysokości 8.0 m w polu grawitacyjnym Ziemi.
   ===========================================================  ===

**Zadanie 6: Słownik przyspieszeń**

czas: 10 min.

Zbuduj słownik zawierający jako klucz nazwę ciała niebieskiego  a jako wartość wartość przyspieszenia na nim podają w  :math:`m/s^2`. Słowinik powinien zawierać wpisy dla conajmniej 7 ciał niebieskich.


**Zadanie 7: Przyrost pieniędzy w banku**

czas: 15 min.

Niech :math:`p` oznacza stopę procentową banku wyrażoną w procentach na rok. Początkowa  wartość odłożonej gotówki w tym banku urośnie zgodnie ze wzorem

:math:`W = A\Big( 1 + {p \over   100}\Big )^n`

po :math:`n` latach. Oblicz do jakiej kwoty wzrośnie

1. 1000 Euro po 3 latach dla stopy 5 procentowej
2. 23513 zł po 5 latach dla stopy 3,54%
3. 112,12 miliona Rubli po 1 roku dla stopy 7.14%

Powyższe wielkości sformatuj odpowiednio dla wszystkich trzech przypadków  tak, by inwestor otrzymał pełną, czytelną informację.

