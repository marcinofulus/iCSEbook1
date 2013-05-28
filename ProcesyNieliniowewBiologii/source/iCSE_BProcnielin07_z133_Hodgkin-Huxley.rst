.. -*- coding: utf-8 -*-


Transmisja impulsów nerwowych: Model Hodgkinga\-Huxleya
=======================================================


Wstęp: Podstawowe informacje
----------------------------

Aktywnością organizmu i koordynacją jego czynności  steruje układ nerwowy, który funkcjonuje na zasadzie przekazywania sygnałów z jednej komórki nerwowej do innych komórek nerwowych  lub do komórek mięśniowych albo  gruczołów.   Układ nerwowy ma wśród innych narządów i układów ustroju pozycję centralną i jest ich administratorem i koordynatorem. Każda bowiem czynność czy zadanie wykonywane przez określony narząd lub układ narządów, pozostaje pod jego ścisłym nadzorem. Za pośrednictwem zmysłów, z którymi jest bezpośrednio \- anatomicznie i fizjologicznie \- związany, układ nerwowy zapewnia ustrojowi możliwość komunikowania się ze światem zewnętrznym. Potrafi odbierać z zewnątrz najrozmaitsze bodźce (sygnały, informacje), przewodzić je do własnych ośrodków odczytujących ich treść, selekcjonować i wreszcie \- przetwarzać w zrozumiałe dla siebie pojęcia i wyobrażenia oraz wydawać polecenia zwrotne. Układ nerwowy człowieka w ciągu jednej sekundy odbiera z otoczenia aż 109 bitów informacji. Warto przy tym pamiętać, że do świadomości dociera jednak minimalna ich część, bo jedynie 102 bitów/s. To oznacza, że przytłaczająca większość informacji dociera do mózgu i jest tam przetwarzana w sposób całkowicie nieświadomy.  
 
Układ nerwowy jest  zbudowany z 2 rodzajów komórek:  
 
1. nerwowych 
2. glejowych.  
 
Komórki glejowe pełnia rolę pomocniczą, tzn. fizjologiczą. Komórki glejowe współtworzą barierę krew\-mózg, pełnią istotną rolę w odżywianiu komórek nerwowych składnikami odżywczymi transportowanymi układem krążenia, syntetyzują wiele istotnych enzymów używanych m.in. do wytwarzania neuroprzekaźników, tworzą osłonki mielinowe aksonów, a nawet pełnią funkcje ochronne.


Komórki nerwowe pełnią rolę zasadniczą. Reagują  one na bodźce zewnętrzne i wewnętrzne,  a następnie przesyłają je do jednostek wykonawczych organizmu. Powstanie bodźca w organizmie jest odpowiedzią na działanie czynników zewnętrznych takich jak światło, dźwięk, temperatura, ciśnienie, związki chemiczne smakowe i zapachowe. Za odbiór tych czynników odpowiedzialne są komórki receptorowe: chemoreceptory (węchowe, smakowe), fotoreceptory (pręciki, czopki) i mechanoreceptory (komórki rzęsate).


Komórką  układu nerwowego jest komórka nerwowa \-  neuron.
**Neuron jest podstawową jednostką  przetwarzania informacji w mózgu.**
To właśnie ta komórka charakteryzuje się zdolnością do wytwarzania, przekazywania, odbierania i przetwarzania specyficznych sygnałów elektrochemicznych, którym przypisuje się istotne znaczenie w przetwarzaniu informacji o otoczeniu i podejmowaniu decyzji dotyczących reakcji.




.. image:: http://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Neuron-figure_PL.svg/300px-Neuron-figure_PL.svg.png
    :align: center


Powyższy obraz neuronu ukazuje jego uproszczoną budowę. Brakuje tu zaznaczonego jednego ważnego elementu: synapsy,  która jest  miejscem komunikacji błony kończącej akson z błoną komórkową  następnej  komórki nerwowej. Ale tam gdzie jest oznaczenie "Zakończenie aksonów" znajduje sie własnie synapsa (co  z greckiego oznacza połączenie). W  synapsach neurony prawie się stykają . W synapsach elektrycznych przerwa wynosi tylko 2 nanometry. W synapsach chemicznych jest to odlegołość 20 nanometrów.


Neurony połączone są ze sobą wzajemnie tworząc sieci, dzięki którym realizowane są funkcje inteligencji, emocji, pamięci i zdolności twórczych. Pojedynczy neuron przyjmuje pobudzenie od ogromnej liczby innych neuronów dochodzącej do tysiąca. Szacuje się, że w mózgu człowieka jest około 10 :sup:`11` neuronów, które oddziałują na siebie poprzez około 10 :sup:`15`  połączeń.





.. image:: http://cspeech.ucd.ie/%7Efred/teaching/oldcourses/ann98/figs/neurons.jpg
    :align: center





Oto jak w uproszczeniu wygląda schematu propagacji impulsów :


----->  dendryty  ------>  ciało komórki  ------>  akson  ------>  synapsa  ----->  dendryty  ------>


Dendryty są łącznikiem z  innymi komórkami (dokładniej z aksonami innych neuronów). Otrzymują impulsy od wielu (od kilku do  wielu tysięcy)  komórek. To jest znak, że jest jakiś bodziec. Ten bodziec w postaci impulsu elektrycznego propaguje się  wzdłuż komórki nerwowej od dentrydów  poprzez  ciało komórkowe i akson do synapsy. Ale impuls musi mieć minimalną wielkość (amplitudę)  aby mógł przekazać informacje do następnej komórki. Model  propagacji takiego impuslu będzie opisany poniżej.



Model propagacji impulsu
------------------------

Gdy dendryt odbierze jeden z bodźców z  drugiej strony   synapsy oddzielającej akson od dendrytu, przez błonę dendrytu zaczynają przepływać miniaturowe prądy elektryczne. Zazwyczaj są to prądy wpływające do wnętrza dendrytu, określane jako pobudzające. Prądy mogą także wypływać na zewnątrz komórki i wtedy nosza nazwę prądów hamujących. Zarówno dodatnie jak i ujemne wahania prądu, powstające w błonach   dendrytów, przepływają do ciała komórkowego. Jeżeli ich suma jest niewielka, prądy takie zanikają i nie uruchamiają dalszych procesów. Jednak jeśli w wyniku ich dodawania zostanie przekroczona określona wartość progowa, to  generowany jest tzw.  **potencjał czynnościowy** propagujący się wzdłuż aksonu i komórka nerwowa  wyśle wiadomość do innych neuronów.  To działa prawie tak  jak komputer: jest impuls lub nie ma impulsu. Jeżeli jest impuls to jest na plus (czyli \+1), jeżeli nie ma impulsu to jest na minus (czyli \-1). Logika 2\-wartościowa (\+1, \-1) potrafi zrobić wszystko:  potrafi zakodować wszelkie informacje, potrafi wykonywać skomplikowane operacje, ba potrafi się nawet uczyć (są takie algorytmy) . Na tym polega cud działania komórek nerwowych. I nie jest to cud boski, ale zupełnie (przy)ziemski, prozaiczny, prawie banalny (co nie oznacza, że rozumiemy jak działa mózg). Model stworzony przez angielskich uczonych  Hodgkina i Huxleya w 1952 roku opisuje  to w sposób jakościowy.


Neuron i jego otocznie wypelnione jest płynem zawierajacym jony: potasu (K\+ ), sodu (Na\+ ), wapnia (Ca\+2 ) i chloru (Cl− ). Pompy jonowe  wypompowują  z komórki jony sodu, a wpompowują jony potasu.  Na zewnątrz komórki istnieje wysoka  koncentracja  Na\+ , Cl− i Ca\+2 . Wewnątrz istnieje wysokie stężenie K\+ oraz ujemnie naładowanych molekuł. Membrana komórkowa, oprócz pomp jonowych, zawiera kanały jonowe. W stanie równowagi, zewnętrzna część  błony komórkowej naładowana jest dodatnio, a wewnętrzna ujemnie. Różnicę potencjałów nazywamy potencjałem spoczynkowym. Typowo waha się on pomiędzy −90 mV  a −65 mV. Jeżeli  sygnał  pobudzający  neuron przekroczy wartość  progową ̧, w neuronie nastąpi generacja tzw. potencjału czynnościowego o wartości około \+40 mV i sygnał  rozchodzi się  w aksonie w postaci fali depolaryzacji  i następującej po niej repolaryzacji o stałej czasowej 1 ms.


Przez :math:`V` oznaczymy różnicę  potencjałów pomiędzy wewnętrzną a zewnętrzną  stroną ściany neuronu (to jest membrana!!). Gradient stężeń danego typu jonów "k"  powoduje powstanie różnicy potencjałów :math:`E_k` (nazywanego potencjałem Nernsta).    Wypadkowym potencjałem jest  :math:`V - E_k` (tzw. potecjał elektrochemiczny). Z praw Ohma otrzymujemy relację dla natężenia prądu danego typu jonów:


.. MATH::

    I_k = \frac{V - E_k}{R_k} =  G_k  ( V  - E_k)


gdzie :math:`G_k =  1/ R_k` jest przewodnością (konduktancją) dla danego rodzaju jonów. W teorii tej nie używa sie pojęcia oporu :math:`R_k` dla danego typu jonów, tylko wszyscy posługują się pojęciem przewodności (biofizycy wolą mnożyć przez G niż dzielić przez R).  Całkowity prąd  :math:`I = I(t)` płynący przez membranę jest sumą składników pochodzących od każdego rodzaju jonów oraz od czasowej  zmiany potencjału  :math:`V`:


.. MATH::

    I =  C \frac{dV}{dt} + G_{Na} ( V  - E_{Na}) + G_{K} ( V  - E_{Ka}) + G_{L} ( V  - E_{L})




gdzie :math:`C` jest pojemnością membrany (membrana jest jak dwie  okładki kondensatora rozdzielone dielektrykiem i wówczas :math:`C=Q/V`, stąd ładunek :math:`Q=C V`, a natężenie prądu to zmiana ładunku w czasie, czyli :math:`dQ/dt = C dV/dt`).  Dla neuronu typowa wartość pojemności :math:`C/cm^2 = 1 \mu F/cm^2`. Symbol "L" odnosi się do pozostałych jonów które dają wkład do całkowitego prąd.


Z powyższego równania otrzymujemy równanie różniczkowe na zmianę potencjału w poprzek błony komórkowej (czyli  membrany):


.. MATH::

     C \frac{dV}{dt}  = I  - G_{Na} ( V  - E_{Na})  - G_{K} ( V  - E_{K})  - G_{L} ( V  - E_{L})




Pamiętajmy, że różnica potencjału w poprzek błony komórkowej (membrany)  powstaje wskutek działania pompy potasowo - sodowej napędzanej przez procesy metaboliczne. Zmiany potencjału powodowane są zmianami przepuszczalności błony dla jonów potasu i sodu.  Aktywne pompy jonowe w membranie stale przepychają jony poza komórkę i do wnętrza.    Kanały jonowe mogą być zamknięte lub otwarte, zależnie od różnych czynników.   Powoduje to zależność przewodności :math:`G_i` od przepuszczalności kanałów jonowych i dlatego też zmiany  przewodności to skutek  łącznego efektu otwierania i zamykania wielu mikroskopowych kanałów jonowych w błonie. Każdy kanał ma kilka bramek. Jeżeli wszystkie bramki są otwarte, kanał  przepuszcza jony. Jeżeli chociaż jedna bramka jest zamknięta, to kanał  nie przepuszcza jonów.  Możemy rozważać dwa stany bramki: bramka otwarta i bramka zamknięta. Stany te zmieniają się w czasie.  Można to przedstawić schematycznie jako przejścia między stanami:


.. MATH::

     m  \overset{ \beta_m} {\underset{\alpha_m} \longleftrightarrow}  1-m


Schemat jest podobny do kinetyki reakcji chemicznych  scharakteryzowanymi szybkościami przejść :math:`\alpha_m`  i  :math:`\beta_m`. Stąd możemy wnioskować o dynamice przejść opisanych przez równanie  kinetyczne typu:


.. MATH::

    \frac{dm}{dt} = \alpha_m  (1- m)  - \beta_m  m


gdzie :math:`m` można interpretować jako prawdopodobieństwo otwarcia danej bramki. Z kolei :math:`1-m` to prawdopodobieństwo tego, że bramka jest zamknięta. Takie równania można napisać dla każdej bramki w kanałach. Aby uzgodnić teorię z danymi doświadczalnymi trzeba założyć że:


1. Kanał sodowy składa się z trzech bramek typu :math:`"m"` i jednej bramki typu :math:`"h"`, które są od siebie niezależne. Stąd przewodność jonów sodu jest proporcjonalna do iloczynu :math:`m  m  m  h`:


.. MATH::

    G_{Na} = g_{Na}   m^3  h


\ 
  gdzie :math:`g_{Na}` jest maksymalną wartościa przewodności jonów sodowych.


2. Kanał potasowy  składa się z  czterech  bramek typu :math:`"n"`.  Stąd przewodność jonów potasu  jest proporcjonalna do iloczynu :math:`n  n  n  n`:


.. MATH::

    G_{K} = g_{K}   n^4


\ 
  gdzie :math:`g_{K}` jest maksymalną wartościa przewodności jonów potasowych.


Dla każdej z bramek otrzymujemy równania kinetyczne podobne to tego powyżej:


.. MATH::

    \frac{dh}{dt} = \alpha_h  (1- h)  - \beta_h  h


.. MATH::

    \frac{dn}{dt} = \alpha_n  (1- n)  - \beta_n   n


Niestety, to nie koniec modelowania. Okazuje się, że wszystkie szybkości przejść są funkcjami napięcia :math:`V`, czyli:


.. MATH::

     \alpha_m = \alpha_m(V) ,  \quad  \alpha_h = \alpha_m(V)  , \quad   \alpha_n = \alpha_m(V),  \quad   \beta_m = \beta_m(V)  , \quad \beta_h  = \beta_h(V)  , \quad \beta_n  = \beta_n(V)


W oryginalnej  pracy Hodgkina\-Huxleya (J. Physiol. 117 (1952) 500\-544) podano wyrażenia dla szybkości przejść. Współczesna wersja jest przeskalowana do postaci:


.. MATH::

    \alpha_m = \frac{0.1  (V+40)} { 1 -  \exp\left[ - (V+40)/ 10\right]}


.. MATH::

    \beta_m = 4 \exp\left[ - (V + 65)/18\right]


.. MATH::

    \alpha_h = 0.07  \exp\left[ - (V +65)/20\right]


.. MATH::

    \beta_h =   \frac{1}{1 +  \exp\left[ - (V+35)/10\right]}


.. MATH::

    \alpha_n = \frac{0.01  (V+ 55)}{1 -  \exp\left[ - (V+ 55)/10\right]}


.. MATH::

    \beta_n = 0.125  \exp\left[ - (V + 65)/80\right]


Uwaga: skalowanie w nowej wersji  polega na odjęciu w potencjałach liczby 65, a następnie zmiany znaku V na -V  (np. V + 25 :math:`\to`  - (V+40)).


Dla większego porządku przepiszemy powyższe równania w bardziej zwartej postaci:


.. MATH::

     C \frac{dV}{dt}  = I  - g_{Na}   m^3  h  ( V  - E_{Na})  - g_{K}   n^4  ( V  - E_{K})  - G_{L} ( V  - E_{L})


.. MATH::

    \frac{dm}{dt} = \alpha_m  (1- m)  - \beta_m  m


.. MATH::

    \frac{dh}{dt} = \alpha_h  (1- h)  - \beta_h  h


.. MATH::

    \frac{dn}{dt} = \alpha_n  (1- n)  - \beta_n   n


To zamyka teorię Hodgkina-Huxleya. Otrzymujemy układ 4 równań różniczkowych pierwszego rzędu. Wszystkie pomocnicze funkcje są określone. Pozostaje jeszcze zestaw parametrów i warunki początkowe. Jest  to zawarte w pracy Hodgkina-Huxleya. Poniżej podajemy wszystkie te wartości.  Potencjały są w jednostkach :math:`mV`, czas w :math:`msec`, pojemność w :math:`\mu F/cm^2`,  prądy w :math:`\mu A/cm^2`,   przewodności w :math:`mS/cm^2` (litera :math:`S` oznacza simens i jest odwrotnością oma).




Typowy zestaw parametrów 
-------------------------


.. MATH::

    C = 1, \quad \quad g_{Na} = 120, \quad  \quad E_{Na} = 50,   \quad \quad g_{K} = 36, \quad \quad E_{K} =  -77, \quad \quad G_{L} = 0.03, \quad \quad E_{L} = 54.4



.. MATH::

    t_0 = -7.0 \quad  \quad V(0) = -65.054389 \quad  \quad m(0) = 0.052564  \quad  \quad   h(0) = 0.591267 \quad  \quad  n(0) =  0.317337


Aby zaobserwować  potencjał czynnościowy należy przyłożyć krótko trwający  prąd  (e.g. :math:`I=8 \mu A/cm^2` przez okres czasu  2ms)  .


