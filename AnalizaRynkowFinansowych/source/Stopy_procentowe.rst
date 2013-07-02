Rynkowe stopy procentowe - cena czasu i ryzyka
==============================================


Arytmetyka finansowa
--------------------

Z wyjątkiem okresów hiperinflacji, w życiu codziennym rzadko musimy uwzględniać zmienność wartości pieniądza w czasie. Jednak planując poważniejsze inwestycje (np kupno domu) musimy już tę zmienność uwzględniać. W matematyce finansowej analiza zjawiska zmiany wartości pieniądza jest jednym z najważniejszych  problemów, a przyjęte założenia i ich konsekwencje mają istotny wpływ na wnioski dotyczące szerokiej klasy zagadnień ekonomicznych. Problem ten komplikuje dodatkowo fakt, że większość instytucji finansowych operuje tzw. **czasem bankowym**, który często różni się od czasu rzeczywistego zwanego również **czasem kalendarzowym**. Nietrywialne jest też często uwzględnienie okresów, gdy pewne instytucje są nieczynne lub czynności niemożliwe (np w nocy). W tym paragrafie omówimy pojęcie czasu bankowego, które ma istotny wpływ na proces kapitalizacji odsetek. Zgodnie z obowiązującym w Polsce prawem bankowym, rok bankowy ma 360 dni i dzieli się na 12 miesięcy bankowych, o długości 30 dni każdy.


**Przykład** Obliczmy różnicę między czasem bankowym a rzeczywistym w okresie od 01.03.07 do 31.05.07. Według czasu bankowego upłynęły 3  miesiące, czyli 90 dni. W rzeczywistości upłynęło 31+30+31=92 dni. Bardziej zaskakujący wynik otrzymamy obliczając tę różnicę dla okresu 29.05.07 do 5.06.07. Czas bankowy to (30-29)+5=6 podczas, gdy w rzeczywistości upłynęło 7 dni. Różnica wynosi aż 1/7, czyli około 14,28%!

Różnice obliczone w powyższym przykładzie  pokazują, że może ona mieć istotny wpływ na koszty kredytu czy wysokość oprocentowania. Przypadek taki obrazuje poniższa tabela  dla kredytu w wysokości 100000 zł udzielonego na okres od 01.03.07 do 31.05.07 przy rocznej stopie oprocentowania w wysokości  12%. Odsetki **I** obliczamy według wzoru
:math:`I=100000 \cdot 0,12 \cdot n_x =12000 \cdot n_x,` gdzie :math:`n_x, x=r` lub :math:`x=b` oznacza współczynnik zamiany dni na lata, :math:`n_r=\frac{\text{czas w dniach}}{365}`, a  :math:`n_b=\frac{\text{czas w dniach}}{360}`


**Koszty kredytu w zależności od metody naliczania czasu**

   ==================  =============  =============
    wysokość odsetek    :math:`n_r`    :math:`n_b`
   ==================  =============  =============
    czas rzeczywisty    3024,66 zł     3066,67 zł
    czas bankowy        2958,90 zł     3000,00 zł
   ==================  =============  =============


Banki, których podstawową działalnością jest udzielanie kredytów zainteresowane są naliczaniem odsetek według tak zwanej reguły bankowej, naliczaniem dni według czasu rzeczywistego i zamieniania dni na lata według czasu bankowego (prawa, górna kratka w powyższej tabeli).

Drugim ważnym zagadnieniem związanym z czasem jest tak zwany **czas wzorcowy**. Otóż wiele transakcji i umów zawartych na rynkach lub związanych z nimi zawiera w swojej treści lub istocie odniesienie do czasu. Na przykład, dla każdej transakcji giełdowej określony jest czas zrealizowania tej transakcji. W związku z tym w dokumentach (elektronicznych lub papierowych) wymagany jest tak zwany **stempel czasowy** określający ten czas. Instytucja pośrednicząca lub dokumentująca takie transakcje jest zobowiązana do pobierania **wzorca czasu** (tzw. *Uniwersalny Czas Koordynowany*) z legalnego źródła. W Polsce regulowane to jest Ustawą  z dnia 10 grudnia 2003 roku o czasie urzędowym  na obszarze Rzeczypospolitej Polskiej [1]_. W obecnie obowiązującej wersji ma ona niestety szereg wad, np. nie określa dokładności wzorca czasu, co szczególnie irytuje np. fizyka. Na stronie internetowej http://vega.cbk.poznan.pl/article/czas\_w\_polsce.html można znaleźć przykładowe źródła czasu w Polsce i ich charakterystyki.

Ogólnie rzecz biorąc, przez inwestycję będziemy rozumieli ciąg wydatków i wpływów w rozpatrywanym okresie czasu, które nazywamy przepływami pieniężnymi. Wydatki i wpływy najwygodniej opisuje się w jednostkach pieniężnych to jest w jednostkach wyróżnionego dobra - **pieniądza** - funkcjonującego na rynku, które jest swobodnie wymieniane na inne dobra [2]_.

.. admonition:: Definicja (Przepływ pieniężny, strumień przepływów)

   Pojedynczy wpływ netto nazywamy *przepływem pieniężnym* (cash flow). Może on być dodatni lub ujemny. Ciąg przepływów pieniężnych w określonych momentach nazywamy *strumieniem przepływów pieniężnych* (cash flow stream).


Zauważmy, że przepływy pieniężne mogą być dokładnie określone (np. odsetki od lokat) lub niepewne (najczęściej losowe). Dlatego wyróżniamy przepływy deterministyczne i uogólnione (niedeterministyczne). Za pomocą strumieni pieniężnych  możemy w miarę jednolity sposób analizować różne klasy problemów dotyczących opisu, oceny i zarządzania inwestycjami. Strumień przepływów pieniężnych najłatwiej opisuje się, gdy poszczególne wpływy są znane. Wtedy, gdy przyjmiemy pewien okres bazowy (np rok), strumień przepływów będziemy zapisywać następująco :math:`(a_0, a_1,\ldots ,a_{n-1}, a_n)`, gdzie :math:`a_0` jest przepływem w chwili początkowej, a :math:`a_i` przepływem po upływie :math:`i`-tego okresu bazowego. Gdy przepływy nie następują po jednakowych okresach czasu, wygodnie jest przyjąć za okres bazowy taki okres, by wszystkie przepływy następowały po upływie całkowitych wielokrotności okresu bazowego - wtedy możemy zapis uzupełnić zerami w chwilach, gdy nie ma przepływów.

.. admonition:: Przykład

   Kupno trzyletniej obligacji Skarbu Państwa  o nominale 100
   złotych opisuje następujący strumień:
   :math:`(-100,a_1,\ldots ,a_{11},100+a_{12})`, gdzie :math:`a_i`
   to odsetki wypłacane po :math:`i`-tym kwartale. Pierwszy przepływ jest
   ujemny, bo wydaliśmy 100 zł na kupno obligacji; po upływie
   ostatniego okresu bazowego następuje zwrot wartości nominalnej i
   wypłata odsetek za ostatni kwartał.


Teoria procentu
~~~~~~~~~~~~~~~

W niniejszym opracowaniu terminu **kapitał** używamy w stosunkowo ograniczonym sensie:

.. admonition:: Definicja (Kapitał)

   *Kapitał* to dobro rynkowe, które może być wyrażone w dowolnej chwili w jednostkach innych dóbr, które są na tyle  płynne  by przelicznik między tymi jednostkami nie budził kontrowersji. Jednostkami mogą być np. uncja złota, baryłka ropy  naftowej, pieniądz.


*Jak mierzyć zwrot z inwestycji?* -- to chyba najbardziej fundamentalne
pytanie dla teorii inwestycji.   Najprostszą  stosowaną miara zwrotu jest podawanie względnego przyrostu wartości kapitału.
Zwykle podaje się ją w procentach. Procent oznacza jedną setną i w matematyce finansowej pojęcie  to jest powszechnie używane do opisu korzyści płynących  z użytkowania kapitału. W związku z tym, wprowadza się pojęcie kapitalizacji odsetek, które oznacza powiększenie tegoż kapitału o wygenerowane odsetki.

Stopy procentowe
~~~~~~~~~~~~~~~~

W paragrafie tym omówimy dwie najważniejsze metody obliczania i kapitalizacji odsetek. Zaczniemy od podania
definicji:

.. admonition:: Definicja (Okresowa stopa procentowa, okres bazowy)

   Stosunek wypracowanych w danym okresie - zwanym czasem oprocentowania - odsetek do kapitału, który je wygenerował nazywamy *okresową stopą procentową*. Okres ten nazywamy *okresem bazowym*. Wyjściową wartość kapitału nazywamy kapitałem początkowym, zaś kapitał początkowy powiększony o odsetki nazywamy kapitałem końcowym.


W większości umów między wierzycielem a dłużnikiem to właśnie stopy procentowe są używane do określenia procentu, przy czym stosuje się  dwie reguły postępowania: **oprocentowanie proste** oraz **oprocentowanie składane**, które omówimy poniżej. Zauważmy jeszcze, że równolegle funkcjonuje jeszcze termin warunki spłaty kredytu, który został wprowadzony przez banki by zamieszać w głowach potencjalnych kredytobiorców. Ukrywa on mianowicie wszelkiego rodzaju dodatkowe opłaty mające na celu obejście
obowiązującego prawa lub stworzenie pozorów niższej stopy procentowej. Nie wiadomo dlaczego prawodawca pozwala na chwyty - nic nie stoi na przeszkodzie by koszty kredytu opisywać jedynie jednym parametrem: **rzeczywistą stopą procentową**.

.. admonition:: Definicja (Oprocentowanie proste)

   *Oprocentowanie proste* jest najprostszą [3]_ zasadą naliczania odsetek. Można ją charakteryzować w następujący sposób: 
W oprocentowaniu prostym odsetki naliczamy proporcjonalnie do długości okresu oprocentowania. Ogólnie możemy zapisać: 
:math:`V= (1+nr)K,` gdzie :math:`V`, :math:`K`,  :math:`r` i :math:`n`  oznaczają, odpowiednio,  **kapitał końcowy**,  **kapitał  początkowy**, **stopę procentową** i liczbę okresów bazowych dla stopy **r**. W sytuacji, kiedy czas  trwania  inwestycji jest krótszy od okresu bazowego, odsetki też 
naliczamy  proporcjonalnie,  tzn. po upływie  :math:`f`-tej  części okresu bazowego naliczymy odsetki w wysokości :math:`fr`.


.. admonition:: Przykład

   Powyższą definicję łatwo można uogólnić na przypadek, gdy stopa procentowa jest zmienna w czasie. Przyjmijmy, że czas oprocentowania kapitału :math:`K` jest równy :math:`n` okresom bazowy i tworzy go :math:`m` następujących po sobie okresów o długościach :math:`n_i`, :math:`i=1, ..., m`, w których obowiązują stopy procentowe :math:`r_i`. Obliczając odsetki proste dla poszczególnych okresów i dodając je otrzymujemy:
:math:`V=(1+\sum_{l=1}^{l=m}n_lr_l)K`


W  przypadku zmiennej stopy procentowej możemy zdefiniować **przeciętną stopę procentową** :math:`\bar{r}`:

.. admonition:: Definicja (przeciętna stopa procentowa)

   *Przeciętną  stopą procentową* :math:`\bar{r}` nazywa się roczną stopę, przy której kapitał :math:`K` generuje w czasie  :math:`n`  odsetki  o takiej samej  wartości, jak przy danej stopie zmiennej obowiązującej w tym czasie.


Z definicyjnej równości :math:`n\bar{r}K=K\sum_{j=1}^{m}r_jn_j`, 
przyjmując oznaczenia jak wyżej, natychmiast otrzymujemy formułę pozwalającą obliczyć stopę przeciętna: :math:`\bar{r}=\frac{1}{n}\sum_{j=1}^{m}r_jn_j`. Zauważmy, że nie zależy ona od wartości kapitału początkowego. Najczęściej jednak kapitalizuje się odsetki metodą procentu składanego, który zdefiniowany jest następująco:

.. admonition:: Definicja (Oprocentowanie składane, okres kapitalizacji)

   W *oprocentowaniu składanym* odsetki są naliczane po upływie z góry ustalonego okresu zwanego *okresem kapitalizacji*.  Wynika stąd, że gdy czas oprocentowania jest dłuższy od okresu kapitalizacji, to odsetki są kapitalizowane wielokrotnie. 
   Ogólnie możemy to zapisać przy pomocy wzoru: :math:`V=(1+r)^nK`, gdzie :math:`V`,  :math:`K`, :math:`r` i **n** oznaczają, odpowiednio, kapitał końcowy, kapitał początkowy,  stopę procentową i liczbę okresów bazowych dla stopy :math:`r`. W sytuacji, kiedy okres kapitalizacji jest  krótszy od okresu bazowego, odsetki naliczamy proporcjonalnie, tzn. po upływie :math:`f`-tej części okresu  bazowego naliczymy odsetki w wysokości :math:`fr`.


.. admonition:: Uwaga

   Zauważmy, że różne okresy kapitalizacji mogą utrudnić szybką ocenę warunków oprocentowania podawanych dla różnych okresów bazowych. Z tego powodu często wprowadza się pojęcie równoważności  stóp procentowych, które ułatwia takie oceny i porównywanie ofert: 


.. admonition:: Definicja  (Równoważność stóp procentowych)

   Mówimy, że w oprocentowaniu składanym dwie stopy :math:`i_1`  oraz  :math:`i_2` są równoważne jeśli przy każdej z nich odsetki składane po czasie :math:`t` są identyczne.


Prosty rachunek przekonuje nas,  że pojęcie to jest niezależne od wartości kapitału początkowego ani od czasu oprocentowania. Oznaczając przez :math:`n_1` i :math:`n_2` ilości okresów bazowych składających się na czas oprocentowania :math:`t` otrzymujemy:

:math:`V_1=(1+i_1)^{n_1}K=V_2=(1+i_2)^{n_2}K \Rightarrow (1+i_1)^{n_1}=(1+i_2)^{n_2}`.

Przy okazji uzyskaliśmy również formułę opisującą równoważność stóp. Często podaje się tzw. **nominalną stopę procentową** :math:`r_{nom}`, którą definiuje się jako iloczyn stopy procentowej dla danego okresu bazowego przez liczbę okresów bazowych składających się na 1 rok, :math:`r_{nom}(i_{k})=ki_{k}`, gdzie :math:`k` jest liczbą okresów bazowych składających się na 1 rok. Nie uwzględnia ona okresów kapitalizacji różnych od jednego roku i dlatego może być myląca.

Granicznym przypadkiem oprocentowania składanego jest **kapitalizacja ciągła** (continuous compunding), która często uważana jest jako odrębna metoda kapitalizacji:

.. admonition:: Definicja (Kapitalizacja ciągła)

   Przez kapitalizację ciągłą rozumiemy granicę procesu kapitalizacji składanej, w której długość okresu kapitalizacji dąży do zera:  :math:`\lim _{m\rightarrow\infty}(1+\frac{r}{m})^{m}=e^{r},` gdzie :math:`e` oznacza stałą Eulera równą w przybliżeniu :math:`2,7818\ldots`.


Warunek równoważności stóp procentowych można rozszerzyć, tak by porównywać kapitalizację ciągła i składaną dyskretną:
:math:`(1+i)^{n_i}=e^{t r_c}`, gdzie :math:`n_i` jest liczbą okresów bazowych składających się na :math:`t`. Bezsensowne jest analogiczne porównywanie dla kapitalizacji prostej, gdyż, jak łatwo można się przekonać, zależałoby ono od długości okresu oprocentowania.

Przeanalizowaliśmy już krótko ogólne zasady zmiany wartości kapitału w czasie spowodowane  dopisywaniem odsetek. Obecnie zajmiemy się procesem odwrotnym, tzn. obliczymy jaką wartość posiada w chwili obecnej wypłata, którą otrzymamy  (spodziewamy się otrzymać) w przyszłości. Wielkość tą nazywa się **wartością obecną** (present value - PV) a **proces dyskontowaniem** (discounting).  Proces  ten może być obliczany dla każdego rodzaju kapitalizacji. W zależności od kontekstu termin ten może przyjmować różne znaczenia dlatego podamy dwie definicje.

.. admonition:: Definicja (Dyskonto matematyczne)

   Obliczanie wartości początkowej PV (bieżącej) kapitału na podstawie jego przyszłej (końcowej) wartości F nazywamy dyskontowaniem. Kwotę D, o którą należy pomniejszyć wartość przyszłą (końcową) aby  otrzymać wartość początkową nazywamy dyskontem.


Mamy więc :math:`D=F-PV`. Przy oprocentowaniu prostym  dla n okresów bazowych o stopie r otrzymujemy zależność:

.. math::

   D=F-(1+nr)^{-1}F=nrF(1+nr)^{-1}.


Często pożyczki są udzielane z wykorzystaniem tzw. dyskonta handlowego. Przy udzielaniu pożyczek na takich zasadach postępuje się nieco inaczej.

.. admonition:: Definicja (Dyskonto handlowe)

   W dyskoncie handlowym kwota dyskonta :math:`\overline{D}` jest obliczana, od kwoty którą dłużnik ma zwrócić w momencie spłaty. Jest ona odejmowana od kwoty pożyczki w momencie jej udzielenia.


Taka metoda powoduje różnice w rzeczywistym oprocentowaniu pożyczki: 

.. math::

   \overline{D}=n\overline{r}F


co prowadzi do

.. math::

   PV=F-\overline{D}=(1-n\overline{r})F.


Stopę :math:`\overline{r}` nazywa się w tym przypadku stopą dyskonta. Czytelnik łatwo sprawdzi, że

.. math::

   \overline{r}=\frac{r}{1+nr}.


Zauważmy, że w powyższym wzorze występuje liczba okresów bazowych n. Analogiczne wzory można podać również dla oprocentowania składanego i ciągłego.


Omówimy teraz wpływ inflacji na użycie  stóp procentowych. Ogólnie, inflację zwykle definiuje się  jako wzrost ogólnego poziomu cen w danym okresie [4]_. Jakościowo mierzy się ją poprzez obliczanie tzw. stopy inflacji (inflation rate) :math:`f`. Zwykle nie jest możliwe uwzględnienie cen wszystkich towarów i usług, dlatego wyróżnia się pewien ich podzbiór tzw. **koszyk dóbr**, dla których obliczamy zmiany cen. Ceny jakie będą obowiązywały po upłynięciu okresu bazowego będą oczywiście równe iloczynowi cen aktualnych i **czynnika inflacji** :math:`(1+f)`. Zazwyczaj stopy inflacji podaje się wstecz -- wtedy są one wielkościami dokładnymi (ale zależnymi od składu koszyka!). Do działalności gospodarczej niezbędna często jest prognozowana wartość inflacji. Dlatego różne instytucje ogłaszają swoje prognozowane stopy inflacji dla najbliższych okresów bazowych. Jeśli stopa inflacji wynosi :math:`f` to wartość nabywcza jednostki pieniężnej po upływie okresu bazowego zmienia się o czynnik :math:`\frac{1}{1+f}` [5]_ (to znaczy spada razy :math:`(1+f)`). Stopę inflacji najczęściej podaje się w procentach. Inflacja się kumuluje - dla jej obliczenia dla kilku okresów bazowych stosujemy zasadę procentu składanego. W analizach wygodne jest operowanie pieniądzem o tej samej sile nabywczej. Umożliwia to zaniedbanie w analizach poziomu inflacji. W takich przypadkach wszystkie przepływy kapitałowe podajemy w tzw. **cenach stałych** w stosunku do poziomu cen  z wybranego okresu bazowego. Wprowadza się więc hipotetyczne jednostki pieniężne, np. constant (real) dollar. Odwrotnym procesem jest wyrażanie przepływów kapitałowych  w cenach nominalnych zwanych również rzeczywistymi.  Wprowadza się również tzw **rzeczywistą stopę procentową** (real interest rate) zdefiniowana jako stopę, zgodnie z którą wzrasta  realna wartość lokaty oprocentowanej według stopy nominalnej -- czyli jest to tempo wzrostu siły nabywczej kapitału zdeponowanego na tej lokacie. Dla realnej stopy procentowej :math:`r_0` otrzymujemy więc związek [6]_: 
:math:`1+r_0=\frac{1+r}{1+f}` 
lub, co równoważne, 
:math:`r_0= \frac{r-f}{1+f}`, 
gdzie :math:`r` jest stopą nominalną, a :math:`f` stopa inflacji.

Modelowanie stóp procentowych
"""""""""""""""""""""""""""""

W powyższych rozważaniach milcząco zakładaliśmy znajomość odpowiednich stóp procentowych. Rzeczywistość nie jest jednak taka prosta, gdyż możemy być pewni wartości oficjalnych stóp procentowych [7]_ tylko w stosunkowo krótkim okresie od ich ustalenia [8]_. Faktycznie znamy więc tylko wartości historyczne oraz aktualne wartości, które wkrótce mogą ulec zmianie (w okresach hiperinflacji nawet ten warunek nie jest spełniony). Jesteśmy więc zmuszeni do prób odgadnięcia przyszłego zachowania się stóp procentowych. Wydaje się, że zasadnym jest założenie o losowym charakterze zmian stóp procentowych. W najprostszych modelach zakłada się, że rozkład prawdopodobieństwa okresowych stóp procentowych jest rozkładem logarytmiczno-normalnym [9]_, a rozkład "stóp ciągłych" najlepiej odzwierciedla rozkład normalny. Takie podejście ma dwie ważne konsekwencje:

* wartość kapitału musimy traktować jak zmienną losową
* precyzyjniejsze formuły opisujące przepływy kapitałowe są znacznie bardziej skomplikowane, gdyż muszą uwzględniać losowość stóp procentowych.


Kapitał jako wielkość zmienna w czasie: renty i kredyty
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Podsumowując rozważania przeprowadzone w poprzednich paragrafach możemy przedstawić modele zmienności wartości kapitału :math:`K(t)` z upływem czasu :math:`t`.  Niech :math:`t_0` będzie dowolnym ustalonym momentem (chwilą początkową) a :math:`r` roczną stopą procentowa [10]_, a upływ czasu :math:`t` będzie mierzony w latach. Wtedy dla dowolnego :math:`t\in {\rm R}` [11]_ mamy [12]_:

Oprocentowanie składane - 
:math:`K(t)=K(t_0)(1+r)^{t-t_0}`

Oprocentowanie ciągłe - 
:math:`K(t)=K(t_0)\exp (r(t-t_0))`. 

Oczywiście, jeśli :math:`t<t_0` to formuły te opisują dyskontowanie. Często formułuje się poniższą 
**zasadę równoważności kapitałów**:

.. admonition:: Definicja (Zasada równoważności kapitałów)

   Mówimy, że dwa kapitały :math:`K_1` i :math:`K_2` są równoważne, jeśli ich wartości zaktualizowane w dowolnej chwili  :math:`t\in {\rm R}` są równe.


Zauważmy, że równoważność kapitałów zależy od wartości stóp procentowych  i sposobu  kapitalizacji. Przeanalizujmy zastosowanie powyższych formuł do jednego z klasycznych zagadnień matematyki finansowej - wypłaty renty.


Renty
"""""""""

.. admonition:: Definicja (Renta, rata, okres bazowy)

   *Renta* to ciąg płatności nazywanych ratami dokonywanych w równych odstępach czasu. Okres pomiędzy dwoma płatnościami nazywamy  okresem bazowym.


Z powyższej definicji wynika, że pełna specyfikacja renty musi uwzględniać **okres początkowy** (data pierwszej płatności), długość okresu bazowego, liczbę, sposób płatności i wysokość rat. Do wyceny renty niezbędna jest więc znajomość stóp procentowych i zasad naliczania odsetek. W związku z tym rozróżniamy następujące typy rent:

* **renta prosta** -- okres bazowy pokrywa się z okresem    kapitalizacji odsetek;
* **renta uogólniona**  -- okres    bazowy jest różny od okresu kapitalizacji odsetek;
* **renta czasowa** --  to renta o    skończonej liczbie rat;
* **renta wieczysta** -- to renta o   nieskończonej liczbie rat.

Ponadto, ze względu na termin wypłacania rozróżniamy **renty płatne z dołu** (zwykłe)  - wypłaty następują  na koniec okresu bazowego oraz **renty płatne z góry**, gdy wypłata następuję na początku okresu bazowego. Naszym głównym celem jest wycena renty oraz analiza związanych z rentą  płatności, przez co rozumiemy podanie wartości kapitału i przepływów kapitałowych równoważnych danej rencie. W tym celu zdefiniujemy:

.. admonition:: Definicja (Wartość początkowa renty, wartość końcowa renty)

   *Wartością początkową renty* nazywamy sumę  zaktualizowanych na chwilę początkową wartości rat. Analogicznie,  wartość końcowa  renty to suma wartości rat zaktualizowanych na moment końcowy.


Prosty rachunek  uwzględniający zmianę wartości kapitału w czasie prowadzi do następującego wyrażenia na wartość początkową  :math:`V`  renty prostej 

:math:`V=\sum_{j=1}^{j=n}R_j \prod _{k=1}^{k=j} (1+i_k)^{-1}`, 

gdzie :math:`V` to wartość początkowa renty, :math:`i_j` stopa procentowa w :math:`j`-tym okresie, a :math:`R_j` to rata wypłacona na koniec :math:`j`-tego okresu. W szczególnym przypadku, gdy :math:`R_j=R` i :math:`i_k=i` dla :math:`j,k=1,2\ldots ,n` otrzymujemy:

:math:`V=R\sum_{j=1}^{j=n}(1+i)^{-j}`.  

Wtedy wzory można jeszcze bardziej uprościć, gdyż korzystając ze wzoru na sumę wyrazów postępu geometrycznego 

:math:`\sum_{j=0}^{j=n} a_0q^j=a_0\frac{1-q^{n+1}}{1-q}`

mamy

:math:`\sum_{j=1}^{j=n}(1+i)^{-j}=(1+i)^{-1}\frac{1-(1+i)^{-n}}{1-(1+i)^{-1}}=\frac{1-(1+i)^{-n}}{i}`, 

co, z kolei, prowadzi do formuły:

:math:`V=\frac{R}{i}[1-\frac{1}{(1+i)^{n}}]`. 

W przypadku granicznym :math:`n\rightarrow\infty` otrzymujemy wartość renty wieczystej:

:math:`V_{\infty}=\lim _{n\rightarrow\infty} \frac{R}{i}[1-\frac{1}{(1+i)^{n}}]=\frac{R}{i}`.

Wartość rat wiąże się następująco z wartością początkową i liczbą rat :math:`n`:

:math:`R=\frac{i(1+i)^{n}V}{(1+i)^{n}-1}`,  zaś :math:`n=-\frac{\ln(1-iV/R)}{\ln(1+i)}`. 

Oczywiście wartość końcową renty :math:`F` obliczamy mnożąc wartość początkowa przez czynnik :math:`(1+i)^{n}`:

:math:`F=(1+i)^{n}V =R \frac{(1+i)^{n}-1}{i}`.

Analogicznie obliczamy wartości początkowe i końcowe rent płatnych z góry (rozpatrujemy
tu  tylko przypadki o stałej racie i stopie procentowej):

:math:`V^{+1}= R\sum_{j=0}^{j=n-1}(1+i)^{-j}=R\frac{1+i-(1+i)^{1-n}}{i}`

oraz

:math:`F^{+1}=(1+i)^{n}R \sum_{j=0}^{j=n-1}(1+i)^{-j}=R
\frac{(1+i)^{n+1}-1-i}{i}`.

Renty płatne z góry są szczególnym przypadkiem tzw. **rent odroczonych**. Terminem tym określa się rentę zwykłą, w której płatności są odroczone (opóźnione) o K okresów, gdzie :math:`K` jest liczbą całkowitą nazywaną **karencją**. Łatwo wyprowadzamy formuły na wartość obecną  i końcową renty odroczonej o :math:`K` okresów tzn. momentem końcowym jest :math:`t=K+n`:

:math:`PV^{-K}= R\sum_{j=1}^{j=n}(1+i)^{-K-j}=R(1+i)^{-K}\frac{1-(1+i)^{-n}}{i}`

:math:`F^{-K}=R\sum_{j=1}^{j=n}(1+i)^{n-j}=R\frac{(1+i)^{n}-1}{i}=F^{-0}`.

Formuły dla bardziej skomplikowanych sposobów płatności można łatwo wyprowadzić. W szczególności dla niektórych klas rent uogólnionych można podać proste zasady ich zamiany na renty proste. W przypadku, gdy okres bazowy składa się z :math:`m` okresów kapitalizacji odsetek możemy po prostu obliczyć stopę procentową :math:`\overline{i}` dla okresu bazowego (oczywiście metodą procentu  składanego):

:math:`\overline{i}= (1+i)^{m}-1`

Alternatywną metodą prowadzącą do tego celu jest zmiana liczby i wysokości rat.  Korzystając z formuł wyprowadzonych wyżej szybko otrzymujemy  :math:`\overline{R}= i\frac{R}{(1+i)^m-1}` oraz  :math:`\overline{n}=nm.` Podobnie możemy postąpić w przypadku, gdy okres kapitalizacji składa się z :math:`l` okresów bazowych. Wprowadzając stopę procentową :math:`\underline{i}` dla okresu bazowego  renty :math:`\underline{i}=(1+i)^{\frac{1}{l}}-1` definiujemy rentę prostą o tej samej liczbie i wysokości rat, która jest równoważna wyjściowej rencie uogólnionej. Może też rozważać rentę prostą wypłacaną tylko dla każdego okresu kapitalizacji. Wtedy :math:`\underline{R}= ((1+i)^l-1)\frac{R}{i}` oraz :math:`\underline{n}=\frac{n}{l}.` Uogólnienie powyższych formuł, tak  by uwzględniały zmienne stopy procentowe nie nastręcza żadnych trudności.  W praktyce można spotkać wiele innych sposobów  wypłacania rent, których nie jesteśmy tu w stanie wymienić w tym opracowaniu. Na ogół obliczenie potrzebnych w analizie wielkości nie jest trudne, chociaż wzory mogą być dosyć skomplikowane - zwykle korzysta się w tym  celu z programów komputerowych wykonujących błyskawicznie potrzebne obliczenia.


Ratalna spłata kredytu
""""""""""""""""""""""

Innym klasycznym i mającym duże znaczenie praktyczne zagadnieniem jest ratalna spłata kredytu. Ograniczymy się do analizy problemu ratalnej spłaty długu. Mimo że, coraz więcej obywateli zadłuża się w ten czy inny sposób (kredyt, zakup ratalny) praktycznie nikt z nich nie dokonuje oceny takiej inwestycji [13]_. Udzielenie pożyczki, kredytu itp. jest szczególnym przypadkiem inwestycji: konieczne są wiec metody wyceny takiej inwestycji. W najprostszym przypadku dług zostaje zaciągnięty w chwili :math:`t_0` poprzez przekazanie przez inwestora, zwykle zwanego w tym przypadku **wierzycielem** kapitału w wysokości :math:`K_0` **dłużnikowi**. Kapitał ten ma być zwrócony wierzycielowi w :math:`n` ratach :math:`R_j, j=1,2\ldots,n-1,n` płaconych w jednakowych odstępach czasu zwanych o długości zwanej **okresem bazowym** (założenie o równości wszystkich odstępów pomiędzy spłatami nie jest specjalnie ograniczające - w praktyce zawsze możemy w obliczeniach  zmniejszyć okres bazowy i wprowadzić dodatkowe raty w wysokości 0). Możliwe jest również uzyskiwanie kredytu w transzach. Spłata długu jest oczywiście szczególnym przypadkiem strumienia przepływów kapitałowych i, oczywiście, strumień przepływów wywołany spłatą długu powinien być równoważny strumieniowi płatności związanych z udzieleniem kredytu. Jeśli przez :math:`W_i` oznaczymy płatność wierzyciela na rzecz dłużnika w momencie :math:`i`,  przez :math:`S_k` płatności dłużnika na rzecz wierzyciela związane ze spłata zadłużenia, a przez :math:`r_W` i :math:`r_S` odpowiednio,  stopę procentową w okresie bazowym dla płatności wierzyciela i dłużnika, to  możemy zapisać (procent składany z aktualizacją w chwili początkowej): 

.. math::

   \sum _{i}^{n}W_i(1+r_W)^{-i}=\sum _{i}^{m}S_k(1+r_S)^{-k},


gdzie :math:`n` i :math:`m` są liczbami okresów bazowych wierzyciela i dłużnika.

Jeśli założymy, że okres bazowy w obu przypadkach wynosi jeden rok, to powyższy wzór może być użyty do obliczenia tzw. *rocznej rzeczywistej stopy procentowej* :math:`r`, która jest rozwiązaniem równania:

.. math::

   \sum _{i}^{n}W_i(1+r)^{-i}=\sum _{i}^{m}S_k(1+r)^{-k},


gdzie :math:`n` i :math:`m` są liczbami okresów bazowych (lat) wierzyciela i dłużnika. Dla dłużnika rzeczywista stopa procentowa jest realną stopa kosztu spłaty długu uwzględniającą wszystkie płatności.
Poszczególne płatności :math:`W_i` i :math:`S_k` są określone poprzez schemat spłacania zadłużenia. W praktyce spotyka się kilka schematów:

* Rata annuitetowa - zadłużenie :math:`W_0` zaciągnięte w chwili zero spłacamy :math:`n` ratami o stałej wartości :math:`R`
* Rata o stałej części kapitałowej - zadłużenie :math:`W_0` zaciągnięte w chwili zero spłacamy n ratami  :math:`R_i=W +I_{i},` gdzie :math:`W` to stała spłata kapitału, :math:`W=W_0/n`, a  :math:`I_{i}` to bieżące odsetki, które dla stałej stopy r dla wszystkich okresów bazowych wynoszą :math:`I_i=(n-i+1)Wr`
* Bieżąca spłata odsetek i zwrot kapitału w ostatniej racie
* Spłata odsetek w jednej racie i stałe spłaty kapitałowe
* Spłata poprzez fundusz umorzeniowy - w takim przypadku dłużnik spłaca wierzycielowi  bieżące odsetki od zadłużenia :math:`W_0` zaciągniętego w chwili zero i jest zobowiązany w pewnych okresach (np bazowych) wpłacać na specjalne konto (lokatę, fundusz inwestycyjny itp) zwane funduszem umorzeniowym  części kapitału :math:`W_0` (np. :math:`W=W_0/n` i w momencie spłaty kapitału fundusz umorzeniowy jest udostępniany dłużnikowi lub użyty do spłaty kapitału

Formuły opisujące strumienie przepływów kapitałowych zwykle podaje się przy uproszczającym a założeniu, że stopa procentowa uwzględnia wszystkie koszty obsługi spłaty długu [14]_.


Zysk i stopy zwrotu z inwestycji
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Jednym z głównych celów tego opracowania jest zwięzły opis zysku z inwestycji kapitałowej. Może to być np potrzebne w celu porównania różnych inwestycji. Zauważmy, że bezwzględny przyrost wartości kapitału nie wiele mówi o jakości inwestycji, gdyż intuicja podpowiada nam, że zysk w wysokości 1000 zł może być zadowalający lub nie w zależności od początkowej wartości kapitału, a także czasu trwania inwestycji. Obiektywna miara zysku powinna więc nie zależeć od wyboru umownych jednostek kapitałowych [15]_. W języku matematycznym oznacza to, że powinniśmy podawać iloraz wartości końcowej i początkowej zamiast różnicy tych wartości. Z tego powodu  definiuje się **stopę zwrotu brutto** :math:`R` jako

.. math::

   R_{t,t+\tau}=\frac{K_{t+\tau}}{K_{t}},


gdzie :math:`K_{t}` i :math:`K_{t+\tau}` oznaczają wartość kapitału :math:`K`  w chwilach :math:`t` i :math:`t+\tau`. Najczęściej jednak podaje się **stopę zwrotu**  zdefiniowaną jako:

.. math::

   r_{t,t+\tau}=\frac{K_{t+\tau}-K_{t}}{K_{t}}.


Oczywiście obie te wielkości są związane prostą zależnością

.. math::

   R_{t,t+\tau}=1+r_{t,t+\tau}.


W sytuacjach, gdy okres inwestycji jest jasno określony, wygodne jest  opuszczanie wskaźników :math:`t` i :math:`{t,t+\tau}`. Stopy procentowe są szczególnym przypadkiem stóp zwrotu podawanych w procentach. Pożądana [16]_ byłaby własność by zwrot wypracowany w dwóch kolejnych okresach był sumą zwrotów wypracowanych w tych okresach: :math:`R_{t,t+\tau +\rho}= R_{t,t+\tau} + R_{t+\tau, t+\tau +\rho}.` Łatwo zauważyć, że powyższa definicja stopy zwrotu nie posiada tej wygodnej własności. Częściowo można temu zaradzić w następujący sposób.   Jeżeli dodatkowo zażądamy by miara zwrotu była funkcją rosnącą i ciągłą to łatwo można pokazać, że logarytm ze stopy zwrotu brutto posiada te własności:
:math:`\log_a (R_{t,t+\tau +\rho})= \log_a (R_{t,t+\tau}) + \log_a (R_{t +\tau , t +\tau +\rho}),` gdzie :math:`a` jest podstawą logarytmu. Jeśli skorzystamy z rozwinięcia funkcji logarytm w szereg Taylora

.. math::

   \log_a (1+\epsilon)= \frac{1}{\ln(a)}(\epsilon -\frac{\epsilon ^2}{2} +\frac{\epsilon ^3 }{3} +\ldots)


to dla podstawy :math:`a=e`, czyli dla :math:`\ln(a)=1` mamy :math:`\ln (R_{t,t+\tau})= 1 +r_{t,t+\tau}` dla :math:`r_{t,t+\tau} \rightarrow 0`. Dlatego często używa się **logarytmicznej stopy zwrotu** z inwestycji zdefiniowanej następująco.

.. admonition:: Definicja (Stopa logarytmiczna, chwilowa stopa zwrotu)

   Niech :math:`t, v_{t},v_{t+\tau}` oznaczają odpowiednio, chwilę początkową, wartość dobra :math:`v` w chwilach :math:`t`  i    :math:`t+\tau`. *Logarytmiczną stopą zwrotu z inwestycji* nazywamy wielkość :math:`r_{t,t+\tau}^{ln}=\ln (\frac{v_{t+\tau}}{v_{t}}).` W granicznym przypadku definiujemy *chwilową stopę zwrotu* jako :math:`r(t)=\frac{\partial \ln ( R_{t,t+\tau})}{\partial \tau}`.


Algebraiczne i analityczne własności funkcji logarytm i eksponent powodują, że w większości rozważań teoretycznych  zakłada się ciągłą kapitalizację i używa logarytmicznej stopy zwrotu. Wtedy wartość dobra :math:`v` zmienia się w przedziale :math:`[t,t+\tau]` zgodnie ze wzorem:  :math:`v(t+\tau)=v(t)\exp(\int _t^{t+\tau}r(t)dt).` Czasami używa  się również   **składanej  stopy zwrotu**, która jest średnią geometryczną stóp :math:`r_i` w :math:`n` kolejnych okresach bazowych:
:math:`r_c=[(1+r_1)(1+r_2)\cdots (1+r_n)]^{1/n}`.
Uważny czytelnik zapewne zacznie się w tym momencie zastanawiać nad problemem jak porównać inwestycje o np. różnym horyzoncie czasowym. Nie jest to zagadnienie łatwe, chociaż przy pewnych upraszczających założeniach można zaproponować kilka użytecznych metod.

----------

.. [1] Dziennik Ustaw nr 16 Poz. 144 i 145.
.. [2] Zauważmy, że nie zawsze musi to być możliwe.
.. [3] Zasada ta jest najprostsza i w wielu przypadkach nawet narzucona systemem prawnym,  który wyróżnia tzw. **kapitał odsetkowy**.
.. [4] W przypadku, gdy ten wzrost jest ujemny mówimy o deflacji.
.. [5] Tak naprawdę, to tylko  w odniesieniu do koszyka używanego do definicji  stopy inflacji. Zmiana ceny konkretnego dobra na ogól nijak się ma do poziomu inflacji - wyjątkiem są tu okresy **hiperinflacji**, kiedy to ogólna tendencja jest szczególnie widoczna.
.. [6] Wartość lokaty wzrasta nominalnie o czynnik :math:`(1+r)`, ale wartość nabywcza spada w tempie :math:`\frac{1}{1+f}` na okres bazowy.
.. [7] To jest ustalanych i podawanych przez powołane  do tego w danym regionie (państwo, Unia Europejska itp) instytucje; znacznie bardziej skomplikowane są zmiany stóp w ofercie konkretnego banku itd.
.. [8] W Polsce Rada Polityki Pieniężnej spotyka się raz na dwa miesiące i może w trakcie takiego dwudniowego posiedzenia zmienić wysokość stóp procentowych.
.. [9] Jest to rozkład prawdopodobieństwa zmiennej dodatniej, której logarytm ma rozkład normalny.
.. [10] Oczywiście  wzory nie ulegną zmianie jeśli zmienimy okres bazowy i jednostkę czasu.
.. [11] R oznacza zbiór liczb rzeczywistych.
.. [12] Próby podania takich zależności dla oprocentowania prostego, np. :math:`K(t)=K(t_0)[1+r(t-t_0)]^{\frac{t-t_0}{\mid t-t_0\mid}}` są niestety ułomne, mimo że dla dwóch ustalonych momentów :math:`t` i :math:`t_0` wzór ten poprawnie opisuje zmianę wartości kapitału; por. zadanie 2.
.. [13] Naszym zdaniem wycena kredytu i jego spłacanie powinno wchodzić do programu matematyki  w szkole (najpóźniej w gimnazjum).
.. [14] Nic nie stoi na przeszkodzie by tak było w praktyce. Banki jednak najczęściej walczą o klienta podając jak najniższe stopy oprocentowania kredytu i ukrywają koszty dodatkowe w nie zawsze uczciwy sposób, np. poprzez  wprowadzanie opłaty za rozpatrzenie wniosku kredytowego, "zalecanych" ubezpieczeń, wszelkiego rodzaju opłat manipulacyjnych i prowizji, często zmieniając nazwy i sposób  pobierania tych opłat, jeśli prawo zabrania takich czy innych czynności.
.. [15] Na przykład od wartości początkowej kapitału, itp.
.. [16] Na przykład  z powodu łatwiejszej interpretacji.

