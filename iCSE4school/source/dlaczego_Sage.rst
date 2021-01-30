Wybór  narzędzia
================




Innowacyjność metodologii
-------------------------


Innowacyjność projektu wpisuje się w ogólnoświatowe trendy
dydaktyczne. W ostatnich latach zostało przeprowadzonych wiele
projektów komputeryzujących nauczanie przedmiotów ścisłych. Warto
nadmienić np. Compadre, Open Source Physics, finansowane przez NSF w
USA.

Komunikat dyrektora Centralnej Komisji Egzaminacyjnej z 9 września
2016 r. w sprawie listy systemów operacyjnych, programów użytkowych
oraz języków programowania w przypadku egzaminu maturalnego z
informatyki w 2017 roku zawiera zapis: „Od roku szkolnego 2017/2018 na
maturze z informatyki nie będzie już możliwości wyboru języka
programowania Pascal, natomiast od roku 2018/2019 będzie można wybrać
język programowania Python”. Poszerzenie zakresu wiedzy i umiejętności
uczniów w trakcie realizacji projektu iCSE4school o naukę programowania w
języku Python wyprzedziło ustalenia dyrektora Centralnej Komisji
Egzaminacyjnej. Wyprzedziło także zmiany w nauczaniu informatyki na
poziomie rozszerzonym w szkołach kończących się maturą w
Polsce. Więcej czasu poświęconego na naukę programowania oraz
dodatkowe działania uczniów podczas rozwiązywania problemów
matematycznych, fizycznych i informatycznych z użyciem języka Python
spowodowały pełniejszą interioryzację wiedzy, pogłębiły umiejętności
związane z posługiwaniem się językiem Python i przygotowały uczniów do
efektywnego zmierzenia się z wymaganiami egzaminu maturalnego z
informatyki na poziomie rozszerzonym od 2018/2019 roku. Miały one
również wpływ na wcześniejsze podjęcie kroków przez nauczycieli
zaangażowanych w projekt, mających na celu własne doskonalenie
zawodowe w zakresie znajomości języka Python.

Realizacji projektu towarzyszyło zastosowanie jednej ze współcześnie
uznawanych teorii uczenia się, poznawania i zdobywania wiedzy jaką
jest konstruktywizm pedagogiczny. Filozofia konstruktywizmu osadzona w
poznawczej koncepcji człowieka zakłada, że uczeń jest samodzielnym i
aktywnym podmiotem, który korzystając z różnych źródeł informacji
konstruuje swój własny system wiedzy i swoją osobowość. Konstruktywizm
uważa, że zdobywanie wiedzy to proces, który odbywa się w interakcji
ze środowiskiem edukacyjnym, że nauczyciel nie może przekazać uczniom
pojęć poprzez samo ich objaśnianie, że nauczanie nie polega na tym, iż
nauczyciel podaje gotową wiedzę, a uczeń ma się tego nauczyć,
zapamiętać i potem odtwarzać, tylko w możliwie dużym stopniu wiedza
powinna być odkrywana przez ucznia. Następuje odrzucenie werbalnego
przekazywania wiedzy przez nauczyciela (między innymi wykładu) jako
metody nieskutecznej i niezgodnej z naturą przyswajania wiedzy. Według
konstruktywistów wiedza to nie tylko fakty i informacje, to także
umiejętność wykorzystania ich w praktyce. Uczący się sami tworzą
wiedzę, która w nich rezyduje i dlatego wiedza osobista ma charakter
tak indywidualny, jak różne są osobowości uczących się. Wśród głównych
założeń konstruktywizmu istotna jest zmiana relacji
nauczyciel-uczeń. Nauczyciel przestaje być źródłem wiedzy i
"mentorem", bliżej mu do trenera, tutora czy "coacha". Nauczyciel
przygotowuje dla ucznia sytuację dydaktyczną, zadanie, problem, które
musi wymagać twórczego i samodzielnego myślenia. Ingerowanie
nauczyciela w proces rozwiązywania zadania sprowadza się do wskazówek
i jest ograniczone do minimum. Podejście konstruktywistyczne należy do
nurtu pedagogiki, który kładzie nacisk na aktywność osoby uczącej się,
co miało zastosowanie podczas realizacji zadań w projekcie iCSE4school.




Systemy komputerowe dla nauczania przedmiotów ścisłych
------------------------------------------------------

Od wielu lat czynione są próby stosowania narzędzi informatycznych i
nawet programowania na lekcjach przedmiotów ścisłych. Najczęściej
zostaje wybierane przez fachowców w jednej dziedzinie specjalistyczne
oprogramowanie. Bywa, że wybór jest lobbowany przez producenta danego
systemu. W efekcie prowadzi to do nieskoordynowanych działań o
ograniczonych do poszczególnych przedmiotów. Uczeń poznaje na lekcjach
informatyki narzędzia i języki nie przydatne podczas innych
przedmiotów. Lekcje fizyki i matematyki są wzbogacane dedykowanym
oprogramowaniem, które nie jest stosowane na informatyce.  Taki sposób
działania nie jest zły sam w sobie - używamy właściwych narzędzi do
poszczególnych zadań. Co jeśli istnieje wspólne narzędzie i język w
których praktycznie bezkompromisowo można zastosować do całego
spektrum zagadnień w szkolnej (i nie tylko) edukacji?

Zastanówmy się, jakie cechy powinien mieć system komputerowy, by
przełamać powyższy stereotyp? Poszukajmy rozwiązania jednocześnie
spełniającego następujące cechy:

#. WIDE: System powinien być oparty na popularnym i otwartym języku
   programowania szerokiego przeznaczenia.

   Języki programowania szerokiego przeznaczenia mogą być wykorzystane
   go tworzenia gier komputerowych, jak i aplikacji naukowych czy
   edukacji. Z drugiej strony istnieje wiele tak zwanych `języków
   dziedzinowych
   <https://pl.wikipedia.org/wiki/J%C4%99zyk_dziedzinowy>`_
   stworzonych na potrzeby pojedyńczej aplikacji. Takie języki
   znakomicie spełniają swoją rolę, jednak z reguły nie nadają się do
   innych zadań. Przykładem może być język Matlab, który pomimo swojej
   popularności nie jest rozwiązaniem przyjętym w nauczaniu
   informatyki. Języki takie jak Python umożliwiają praktycznie
   wykonanie wszystkich `zadań
   <https://docs.scipy.org/doc/numpy-dev/user/numpy-for-matlab-users.html>`_
   które są właściwe dla Matlab, jednak ich specyfika pozwala na
   zostosowanie ich m.in. do nauczania informatyki.  Ważną cechą
   systemu jest uniknięcie `uzależnienia od dostawcy
   <https://pl.wikipedia.org/wiki/Uzale%C5%BCnienie_od_dostawcy>`_, to
   ma często miejsce w przypadku stosowania języków dziedzinowych.
   
#. INTERACT: Język programowania powinien umożliwiać pracę interaktywną.

   Takie żądanie praktycznie eliminuje języki kompilowane
   (C/C++). Chcąc wykorzystać system komputerowy interaktywnie,
   najstosowniejsze wydają się języki z dynamicznym typowaniem i
   mechanizmami typu introspekcja. Wymaganie to spełnia więszkość
   języków dziedzinowych dostarczanych przez producentów systemów
   klasy CAS, ale również języki ogólnego przeznaczenia takie jak Python.
#. FREE - System powinien być powszechnie dostępny.

   Nieskrępowana dostępność do systemu jest najlepiej zagrawantowana
   przez oprogramowanie otwarte. Dodatkowo oprogramowanie takie daję
   możliwość wglądu w każdy zastosowany algorytm co ma znaczenie
   zarówno w nauce, jak i posiada walory edukacyjne. Dostępność jest
   również związana z technicznymi aspektami związanymi z instalacja
   oprogramowania. Możliwość skorzystania z pracy w "chmurze" z
   pośrednictwem jedynie przeglądarki internetowej jest bardzo
   pożądaną cechą takiego systemu.
   
#. POWER - Możliwości systemu powinny bezkompromisowo zawierać
   wszystkie elementy niezbędne do zastosowania go na wszystkich
   przedmiotach ścisłych.

   Takie wymaganie eliminuje języki, które nie są na tyle
   rozpowszechnione, by były w nich zaimplementowane wszystkie
   najważniejsze metody obliczeniowe lub wizualizacyjne. Python jest
   szczególnie interesującym przykładem, ponieważ istnieje w nim
   powszechnie wykorzystywana łatwość do tworzenia interfaceów
   przeróżnych bibliotek napisanych w innych językach. Z tej cechy
   korzysta system SageMath, który zawiera w sobie setki bibliotek
   naukowych połączonych wspólnym sposobem użycia z pomocą właśnie
   Python-a.

   
#. PROF - System powinien umożliwiać płynne przejście od pracy na
   lekcjach w szkole do profesjonalnych zastosowań w badaniach
   naukowych czy w przemyśle.

   Nie ma żadnego powodu, by w szkole uczyć na "małym" systemie, a na
   studiach czy w pracy poznawać dopiero ten "duży". Z powodzeniem
   można użyć nawet w szkole podstawowej tego samego języka i systemu,
   który jest używany przez naukowców oczywiście ograniczając się do
   wykorzystania jego niewielkiej części. Oszczędza to dużo czasu i
   wyrabia od razu dobre nawyki od najwcześniejszego okresu nauki.
   Należy podkreślić, że często koszty licencji oprogramowania dla
   systemów stosowanych profesjonalnie są znacznie wyższe od
   dedykowanych systemów edukacyjnych. Problem ten nie istnieje, gdy
   wybierze się oprogramowanie otwarte.
   

+--------------+--------+--------+------+----------+--------+
|System        |WIDE    |INTERACT|FREE  |POWER     |PROF    |
|              |        |        |      |          |        |
+--------------+--------+--------+------+----------+--------+
|SageMath      |  TAK   |  TAK   | TAK  |  TAK     |    TAK |
+--------------+--------+--------+------+----------+--------+
|Python/Scipy  |  TAK   |  TAK   |TAK   |  TAK     |    TAK |
+--------------+--------+--------+------+----------+--------+
|Mathematica   | TAK    |  TAK   |NIE   |   TAK    |    TAK |
+--------------+--------+--------+------+----------+--------+
|C/C++         |    TAK |  NIE   |TAK   | TAK/NIE  |    TAK |
+--------------+--------+--------+------+----------+--------+
|Geogebra      |    NIE |  TAK   |  TAK |   NIE    |    NIE |
+--------------+--------+--------+------+----------+--------+
|Java          |    TAK |  NIE   | TAK  | TAK/NIE  |    TAK |
+--------------+--------+--------+------+----------+--------+


Z powyższej analizy wynika, że rozwiązania oparte o język Python
spełniają wszystkie wymagania. Co więcej, Python jest językiem o
rosnącym znaczeniu w braży informatycznej. Zarówno stosowanie
standardowego interpretera Python, jak i systemu algebry komputerowej
SageMath może dać takie same efekty. Zdecydowanie na lekcji matematyki
czy fizyki system SageMath będzie - jako system algebry komputerowej -
oferował krótszą drogę do rozwiązania. Zanim jednak omówimy te systemy
odpowiedzmy sobie na pytanie co to jest system algebry komputerowej?

Czym jest system algebry komputerowej?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Pod pojęciem system algebry komputerowej (ang. Computer Algebra System
lub CAS) rozumie się program komputerowy wspomagający obliczenia
symboliczne. Rozważmy na przykład poniższy kod w języku Python:


.. sagecellserver::
   :linked: false

   a = 23.0
   b = 3.0
   print( (a/34+1/b)**2 )

Program ten wypisze na ekranie przybliżoną wartość wyrażenia po
podstawieniu zmiennych :math:`a=23,b=3` liczbę :math:`1.0197`.
Niewykonanie dwóch pierwszych podstawień zastutkuje błędem
interpretera Python.

Nieco inaczej sytuacja wygląda w przypadku systemu CAS. Tutaj jedynie
informujemy system, że zmienne :math:`a,b` będą symbolami i możemy
rozwinąć wyrażenie algebraiczne zawierające te symbole. Wykonująć:
   
.. sagecellserver::
   
   var('a,b')
   show( expand( (a/34+1/b)**2)  )



.. only:: latex

   Otrzymamy w wyniku:        
   :math:`\frac{1}{1156} \, a^{2} + \frac{a}{17 \, b} + \frac{1}{b^2}`


.. only:: html

   Otrzymamy w wyniku wzór algebraiczny.
   

Współczesne systemy algebry komputerowej nie ograniczają się do
manipulacji wzorami matematycznymi. Z reguły są wyposażone w system
obliczeń numerycznych i bogaty zestaw narzędzi wizualizacyjnych. Na
dzień dzisiejszy możliwości większości systemów CAS są zbliżone i
główne różnice polegają na języku programowania i licencji na k†órej
dostępne jest oprogramowanie.

W proponowanym podejściu opieramy się na systemie SageMath, który jest
wolnym i otwartym oprogramowaniem. Eliminuje to koszty
licencji. Ponadto SageMath korzysta z popularnego języka Python, który
uczniowie mogą uczyć się podczas lekcji informatyki. 
        

Od języka Python do systemu SageMath
------------------------------------

Python
^^^^^^

Python rozwijał się już od lat dziewięćdziesiątych ubiegłego
stulecia. Jednak jego niesłychana popularność przypada na czasy
obecne. W Stanach Zjednoczonych większość projektów programistycznych
dotyczy właśnie tego języka programowania. Python posiada rozbudowany
pakiet bibliotek standardowych, cechuje go czytelność i klarowność
kodu przez co jego składnia jest przejrzysta i zwięzła. Poza tym
Python wspiera różne sposoby programowania: proceduralny, obiektowy
oraz funkcyjny. Dzięki tym zaletom Norwegia jako pierwszy kraj
europejski systemowo wprowadziła wspomniany język programowania do
szkół. Uczniowie zdobywają kolejne certyfikaty powierdzające
umiejętność programowania na danym poziomie.


Ekosystem Scipy
^^^^^^^^^^^^^^^

Python jest językiem intensywnie używanym do pracy naukowej i
edukacji. Zestaw najbardziej powszechnych narzędzi zwany jest
`ekosystemem scipy <https://www.scipy.org/>`_. W zakres wchodzą m.in.:

  - NumPy, podstawowy pakiet do obliczeń numerycznych wzorowany w
    swojej koncepcji na oprogramowaniu Matlab
  - The SciPy biblioteka metod numerycznych 
  - Matplotlib, pakiet rysujący wykresy
  - SymPy, biblioteka do obliczeń symbolicznych (CAS)

    
SageMath
^^^^^^^^

SageMath jest systemem algebry komputerowej. Pierwsza wersja SageMath
została wydany w dniu 24 lutego 2005 roku jako wolne i otwarte
oprogramowanie zgodnie z warunkami GNU General Public License. Można
powiedzieć, że Sage jest "nakładką" na Pythona, która integruje wiele
specjalistycznych matematycznych pakietów oraz setki tysięcy
unikalnych linii kodu dodawania nowych funkcji. Możliwości i
elastyczność SageMath są przeogromne, dlatego warto wdrożyć powyższy
język programowania także w szkole. Nie bez znaczenia jest fakt, że
jest to oprogramowaniem otwarte i jak dotychczas darmowe. Nauczyciel i
uczniowie mogą mieć dostęp do platformy w każdym miejscu i czasie,
jeśli tylko mają dostęp do internetu. Poniżej w kilku punktach
pokazane są najważniejsze zalety i możliwości zastosowania Sage'a w
szkole na lekcjach przedmiotów ścisłych.


Ekosystem Scipy vs SageMath
^^^^^^^^^^^^^^^^^^^^^^^^^^^

System algebry komputerowej SageMath jest olbrzymim zbiorem narzędzi i
zawiera w sobie między innymi narzędzią z ekosystemu Scipy. Zasadniczą
różnicą jest jednak wspólny interface do wszystkich narzędzi. Sposób
użycia SageMath jest zoptymalizowany na pracę interaktywną i wygodę
widzianą w punktu widzenia matematyka (czy fizyka). Uchuchamiając
system SageMath mamy do dyspozycji interpreter Pythona 2.7 z dwoma
kluczowymi różnicami:

#. Każde polecenie jest przerabiane przez tzw. preparser zanim
   zostanie wysłane do interpretera Pythona. Preparser zmienia m.in.:

    - zapis potęgi :code:`2^3` na zgodny ze składnią Pythona :code:`2**3`
    - napis :code:`1` na :code:`Integer(1)`
    - napis :code:`1.0` na :code:`RealNumber(1.0)`

#. Automatycznie wczytywane jest ok. 2000 pożytecznych funkcji takich
   jak :code:`plot`, :code:`simplify`, itp. oraz definiowana jest zmienna
   symboliczna :code:`x`.

Dlatego by np. rozwiązać równanie kwadratowe w SageMath, wystarczy
napisać :code:`solve(x^2+2*x+1==0,x)` i otrzymamy
odpowiedź. Korzytając z podejścia prezentowanego przez ekosystem scipy
należałoby wybrać i załadować odpowiedni moduł, zdefiniować zmienną i
dopiero wtedy przystąpić do właściwego rozwiązywania.

Powyższe zalety SageMath skłoniły nas do zastosowania właśnie tego
systemu na lekcjach fizyki, matematyki i chemii. Należy jednak
podkreślić, że posługiwanie się SageMath jest **faktycznie
programowaniem w języku Python** i jeśli uczniowie posiądą tą
umiejętność na lekcjach informatyki to jedyną dodatkową niezbędną
wiedzą są dwa powyższe punkty. W efekcie rozwiązanie oparte na
systemie SageMath dostarczą o wiele bardziej efektywnego narzędzia a z
drugiej strony nie nakłada praktycznie żadnych dodatkowych wymagań na
ucznia, który uczył się Pythona na informatyce.



