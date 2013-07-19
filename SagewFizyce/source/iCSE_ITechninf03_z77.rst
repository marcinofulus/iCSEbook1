.. -*- coding: utf-8 -*-


Instrukcje sterujące
--------------------



Pomoc
~~~~~~~~

Sage posiada olbrzymią wbudowaną dokumentację. Dostępna jest ona po wpisaniu żądanej nazwy (funkcji, stałej...) i pytajnika


.. code-block:: python

    sage: sin
    <html>...</html>


.. end of output

Oprócz instrukcji użycia znajdziemy tam za każdym razem szereg przykładów i zastosowań danego obiektu Sage. Powpisaniu na końcu interesującej nas nazwy dwóch pytajników, np:  sin??
  dostaniemy deﬁnicję odpowiedniejklasy. W ten sposób mamy dostęp do większości zmiannych, stałych, funkcji czy klas właściwych dlaSage.



Instrukcje sterujące
~~~~~~~~~~~~~~~~~~~~

Na poprzedniej lekcji poznaliśmy dwie instrukcje sterujące: pętle  for  oraz  while. Pierwsza z nich bazuje na iterowaniukolejnych elementów jakiegoś zbioru danych (najcześciej listy). Druga bazuje spełnieniu warunku logicznego. Jest zatem w pewnym sensie zarówno pętlą jak i instrukcją warunkową. Instrukcje tego typu bazują naporównaniach.



Porównania
""""""""""

Najprostszymi porównaniami jakie znamy jest porównywanie dwóch liczb. Sage stosując podstawowe operatoryporównania  ==,
 !=,
 &lt;=,
 &gt;=,
 &gt;,
 &lt;
  zawsze będzie się starał automatycznie skonwertować typy liczb do takich samych(jeżeli jest to wykonalne to rzutowanie typu odbędzie się na typ nadrzędny). W wyniku zastosowaniaporównania dwóch liczb otrzymamy jedną z dwóch możliwych logicznych odpowiedzi  True  lub  False.


.. code-block:: python

    sage: 3 != 2
    True

.. end of output

.. code-block:: python

    sage: 10 >= 2
    True

.. end of output

.. code-block:: python

    sage: 2/3 > 3/2
    False

.. end of output

Porównywać możemy praktycznie wszystkie obiekty, czasami dostaniemy jednak odpowiedźlosową (kiedy pytanie będzie źle postawione). Porównywać można również wielkości symboliczne,


.. code-block:: python

    sage: x < x + 1
    x < x + 1

.. end of output

należy  do  tego  użyć  funkcji   bool()


.. code-block:: python

    sage: bool(x < x + 1)
    True

.. end of output

Jeżeli chcemy porównać dwa obiekty włączając w to porównanie ich typów należy użyć operatora  is.


.. code-block:: python

    sage: 1 == 2/2
    True

.. end of output


**Uwaga:** Proszę zwrócić uwagę na podwójny znak równości przy porównaniach.


.. code-block:: python

    sage: type(1); type(2-1)
    <type 'sage.rings.integer.Integer'>
    <type 'sage.rings.integer.Integer'>

.. end of output

.. code-block:: python

    sage: 1 is 2-1
    False

.. end of output

.. code-block:: python

    sage: 1 is 2/2
    False

.. end of output

.. code-block:: python

    sage: 1 is 1
    True

.. end of output

Oczywiście dostępny jest operator przeciwny ``is  not`` również testujący identyczność obiektów.





<dl class="description"><dt class="description"> <span class="plbx-10">Zadanie 1: Sprawdź.</span> </dt><dd class="description"><span class="underline">czas: 15 min.</span><br class="newline" /> <ol class="enumerate1">
<li id="x1-3002x1" class="enumerate">Która wartość jest większa</li>
<li id="x1-3002x1" class="enumerate">:math:`x =\sin(\pi / 2 - 0.1)`<br class="newline" />:math:`y =\sin(\pi / 2 + 0.1)` </li>
<li id="x1-3004x2" class="enumerate">Niech :math:`({u}_{1},{u}_{2})`          będą pierwiastkami równania kwadratowego<br class="newline" />:math:`2{u}^{2} - 10 = 0`.          Który pierwiastek jest większy :math:`{u}_{1}`          czy :math:`{u}_{2}`? </li>
<li id="x1-3006x3" class="enumerate">Proszę zbudować dwie listy, których elementy będą wartościami wielomianów Legendre’a pierwszego          (lista o nazwie <span class="obeylines-h"><span class="verb"><span class="pltt-10">L1</span></span></span>) i drugiego (lista <span class="obeylines-h"><span class="verb"><span class="pltt-10">L2</span></span></span>) rzędu w punkcie :math:`x = 0.1`.          Indeksy list mają zgadzać się z kolejnymi stopniami wielomianów od stopnia :math:`n = 0`          aż do stopnia :math:`n = 33`.          Proszę następnie porównać parami kolejno odpowiadające sobie elementy obu list (element pierwszy          z pierwszym, drugi z drugim itd...).<br class="newline" /><span class="underline"><span class="plbx-10">Uwaga:</span></span> Wielomiany Legendr’a rzędu pierwszego dostajemy wywołując funkcję<br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">legendre_P(n,x)</span></span></span><br class="newline" />natomiast wielomiany Legendr’a rzędu drugiego dostaniemy wywołując funkcję<br class="newline" /><span class="obeylines-h"><span class="verb"><span class="pltt-10">legendre_Q(n,x)</span></span></span><br class="newline" />gdzie :math:`n`          to stopień wielomianu, a :math:`x`          to argument danego wielomianu.</li>
</ol> </dd></dl>




Nieco logiki
""""""""""""

Na zajęciach z analizy matematycznej większość z was dowiedziała się co to takiego jest zdanie, warunek zdaniowy, funktory zdaniotwórcze (negacja, alternatywa, koniunkcja, implikacja, równoważność). Poznaliście też podstawowe prawa logiki (tautologie).


Sage bardzo naturalnie korzysta z owych funktorów zdaniotwórczych



 - and
 : logiczne  i
  

 - or
 : logiczne  lub
  

 - not
 : logiczne zaprzeczenie


Możemy  je  łączyć  ze  sobą


.. code-block:: python

    sage: t = True
    sage: f = False
    sage: print "t and f:", t and f
    sage: print "not t and f:", not t and f
    sage: print "(not t) and f:", not t and f
    sage: print "not (t and f):", not (t and f)
    t and f: False
    not t and f: False
    (not t) and f: False
    not (t and f): True

.. end of output

jak  i  z  innymi  operatorami  porównania


.. code-block:: python

    sage: wiek = 19
    sage: uni = "Uniwersytet w Katowicach"
    sage: wiek > 18 and uni == "Uniwersytet w Katowicach"
    True

.. end of output

<dt><span><strong>Zadanie 2: Tabele prawdy.</strong></span></dt>
<dd><span>czas: 10 min.</span><br />Korzystając z pętli <span><span><span>for</span></span></span> zbuduj tabele prawdy (matryce logiczne) dla   
<ul>
<li>dla alternatywy (<span><span><span>or</span></span></span>)</li>
<li>dla koniunkcji (<span><span><span>and</span></span></span>)</li>
</ul>
</dd>

.. code-block:: python

    sage: for p in [0, 1]:
    ...       for q in [0, 1]:
    ...           print "%d lub %d => %d" % (p, q, p or q)
    ...           
    sage: for p in [0, 1]:
    ...       for q in [0, 1]:
    ...           print "%d|\t%d|\t%d" % (p, q, p and q)
    0 lub 0 => 0
    0 lub 1 => 1
    1 lub 0 => 1
    1 lub 1 => 1
    0|	0|	0
    0|	1|	0
    1|	0|	0
    1|	1|	1

.. end of output

**Zadanie 3: Rachunek zdań.**


<dl class="description"><dd class="description"><span class="underline">czas: 30 min.</span><br class="newline" />Korzystając z tabel prawdy udowodnij:            
<ul class="itemize1">
<li class="itemize">prawo podwójnego przeczenia </li>
<li class="itemize">prawo przemienności koniunkcji </li>
<li class="itemize">prawo łączności koniunkcji </li>
<li class="itemize">prawo łączności alternatywy </li>
<li class="itemize">prawo idempotentności koniunkcji </li>
<li class="itemize">prawo idempotentności alternatywy </li>
<li class="itemize">prawo rozdzielności koniunkcji względem alternatywy </li>
<li class="itemize">prawo rozdzielności alternatywy względem koniunkcji </li>
<li class="itemize">prawa pochłaniania </li>
<li class="itemize">prawa De Morgana (pierwsze i drugie)</li>
</ul>

<p class="noindent"><span class="underline"><span class="plbx-10">Uwaga:</span></span> Skorzystaj z pętli for lub while.</p>
</dd></dl>



Instrukcje warunkowe
""""""""""""""""""""

Instrukcje tego typu pozwalają na wykonanie zadeklarowanych przez programistę instrukcji w zależności od tego, czy dane wyrażenie logiczne jest prawdziwe czy fałszywe. Najogólniejszą postacią instrukcji warunkowej  if\-elif\-else  jest


if warunek_1:  


  blok instrukcji #1  


elif warunek_2:  


  blok instrukcji #2  


...:  


  ...  


elif warunek_k:  


  blok instrukcji #k  


else:  


  blok instrukcji domyślnych

Jeżeli spełniony jest  warunek_1
  program wykona instrukcje zawarte w bloku 1. Jeżeli warunek pierwszy nie będzie spełniony, Sage sprawdzi warunek drugi, trzeci itd... aż do napotkania prawdziwego logicznie warunku. Wtedy wykonane zostaną instrukcje z odpowiadającego bloku. Jeżeli nie będzie spełniony żaden warunek (opisany przy instrukcji  if
  lub  elif) wtedy wykona się domyślny blok instrukcji zlokalizowany przy słowie  else. 

**Uwaga:**  Nie trzeba za każdym razem budować instrukcji warunkowej używając wszystkich charakterystycznych instrukcji  if, elif  czy  else. Obowiązkowo musi występować tylko słowo  if. Inne są nieobowiązkowe.


.. code-block:: python

    sage: if 2 > 3:
    ...     print "niemozliwe staje sie mozliwe"


.. end of output

Bądź  też  coś  nieco  bardziej  skomplikowanego.


.. code-block:: python

    sage: print "Rownanie kwadratowe postaci"
    sage: show("$ax^2 + bx + c = 0$")
    sage: a = 2; print "a:", a
    sage: b = 3; print "b:", b
    sage: c = 1; print "c:", c
    sage: delta = b^2 - 4 * a * c
    sage: if delta > 0:
    ...     print "Rownanie ma 2 rozne pierwiastki rzeczywiste"
    sage: elif delta == 0:
    ...     print "Rownanie ma jeden podwojny pierwiastek rzeczywisty"
    sage: else:
    ...     print "Rownanie nie ma rozwiazan w ciele liczb rzeczywistych"
    Rownanie kwadratowe postaci
    a: 2
    b: 3
    c: 1
    Rownanie ma 2 rozne pierwiastki rzeczywiste

.. MATH::

    \hbox{$ax^2 + bx + c = 0$}


.. end of output



Jeszcze jedno przydatne porównanie
""""""""""""""""""""""""""""""""""

Czasami traﬁmy na problem, w którym mając jakąś listę (krotkę, słownik, zbiór...) zastanawiamy się, czy dany obiektzawiera np: interesującą nas liczbę  12. Można oczywiście w pętli przeiterować wszystkie elementy listy (czy innego obiektu) isprawdzić :math:`if`-emczy dana liczba w niej siedzi. Szybciej można to osiągnąć korzystając z operatora  in (lub a  not in)

zmienna in lista 


zmienna_2 not in lista

Na  przykład


.. code-block:: python

    sage: szukana_liczba = 12
    sage: lista = [12, 3, "aa", "ala", 3.14, pi]
    sage: krotka = 12, 3, "aa", "ala", 3.14, pi
    sage: slownik = {0: 12, 1: 3, 2: "aa", 3: "ala", 4: 3.14, 5: pi}
    sage: zbior = set([2,3,4,12])
    sage: print "szukana_liczba in lista:", szukana_liczba in lista
    sage: print "szukana_liczba in krotka:", szukana_liczba in krotka
    sage: print "szukana_liczba in slownik:", szukana_liczba in slownik
    sage: print "szukana_liczba in zbior:", szukana_liczba in zbior
    szukana_liczba in lista: True
    szukana_liczba in krotka: True
    szukana_liczba in slownik: False
    szukana_liczba in zbior: True

.. end of output

Hmmm... W słowniku istnieje wpis  12 odpowiadający problemowi... Dostaliśmy jednak odpowiedź ”fałsz”. Problem polega na tym, że niewłaściwie szukamy. Należy przeszukać listę wartości słownika  slownik:


.. code-block:: python

    sage: szukana_liczba in slownik.values()
    True

.. end of output

i jest w porządku.

**Uwaga:** W ten sam sposób możemy przeszukiwać ciągi znaków, szukając jakiegoś podciąguznaków. Ciągi znaków traktowane są niejako jak listy (choć nie do końca to prawda...).


.. code-block:: python

    sage: txt = "Ala ma kota"
    sage: print """"ala" in txt:""", "ala" in txt
    sage: print """"Ala" in txt:""", "Ala" in txt
    sage: print "txt[4]:", txt[4] # powinno byc m
    "ala" in txt: False
    "Ala" in txt: True
    txt[4]: m

.. end of output



Zadania
~~~~~~~

Korzystając z wiedzy zdobytej na lekcjach 1\-4 podaj rozwiązania zadań.


<dl class="description"><dt class="description"> <span class="plbx-10">Zadanie 4: Pętla while i liczby nieparzyste.</span> </dt><dd class="description"><span class="underline">czas: 10 min.</span><br class="newline" />Z użyciem pętli <span class="obeylines-h"><span class="verb"><span class="pltt-10">while</span></span></span> napisz program generujący wszystkie liczby nieparzyste od 1 do :math:`n`.      Ustaw zmienną <span class="obeylines-h"><span class="verb"><span class="pltt-10">n</span></span></span> na początku komórki, w której napiszesz program. Upewnij się, że jeżeli podane :math:`n`      będzie parzyste, to największą liczbą jaką zwróci program będzie :math:`n  -1`. </dd><dt class="description"> <span class="plbx-10">Zadanie 5: Lista liczb nieparzystych.</span> </dt><dd class="description"><span class="underline">czas: 10 min.</span><br class="newline" />Zmodyﬁkuj program z poprzedniego zadania, tak aby składował generowane liczby nieparzyste w liście o      nazwie <span class="obeylines-h"><span class="verb"><span class="pltt-10">liczby_nieparzyste</span></span></span>. Zacznij od zadeklarowania pustej listy a następnie za pomocą pętli <span class="obeylines-h"><span class="verb"><span class="pltt-10">while</span></span></span> dodaj sukcesywnie wszystkie żądane liczby do listy. Na koniec wydrukuj całą listę. </dd><dt class="description"> <span class="plbx-10">Zadanie 6: Oblicz sumę</span> </dt><dd class="description"><span class="underline">czas: 10 min.</span><br class="newline" />Poniższy kod powinien obliczać sumę :math:`s =\sum_{k=1}^{M}{1\over  k}`.
<div id="verbatim-3" class="verbatim">s = 0; k = 1; M = 100       <br />while k &lt; M:       <br />  s \+= 1/k       <br />print s</div>

<p class="nopar">Nie działa jednak poprawnie. Dlaczego? Postaraj się go poprawić. (Dla podanych wartości zmiennych wartość sumy powinna      wynieść :math:`5.1773775176396208408391430566553026437759399414062`.)</p>

<p class="noindent"><span class="underline"><span class="plbx-10">Uwaga:</span></span> Pamiętaj, że zawsze możesz zatrzymać obliczenia poprzez wybranie ”Interrupt”w liście rozwijalnej      <span class="obeylines-h"><span class="verb"><span class="pltt-10">Action</span></span></span> na samej górze notatnika.</p>

<p class="noindent"><span class="underline"><span class="plbx-10">Uwaga:</span></span> Metodyka znajdowania problemów w kodzie programu. Ogólnie istnieją dwie proste metody znajdywania      błędów w programach: (i) można przeczytać program powoli i dokładnie zastanowić się nad każdą linijką i      konsekwencją jej wywołania, oraz (ii) można drukować sobie kolejne kroki na ekran (postać zmiennych, ich wartości...)      i na podstawie ich zmian próbować znaleźć problem. Na początku zastosuj metodę (i) i znajdź tak wiele błędów      jak zdołasz. Popraw je. Jeżeli program dalej nie będzie działać poprawnie spróbuj metody (ii). Ustaw na wstępie      :math:`M = 3` i      porównaj obliczenia kolejnych kroków programu ze swoimi własnymi, sprawdzając co przechowują zmienne <span class="obeylines-h"><span class="verb"><span class="pltt-10">s</span></span></span> i      <span class="obeylines-h"><span class="verb"><span class="pltt-10">k</span></span></span>.</p>
</dd><dt class="description"> <span class="plbx-10">Zadanie 7: Prędkość i przyspieszenie.\*</span> </dt><dd class="description"><span class="underline">czas: 10 min.</span><br class="newline" />Niech :math:`x(t)`      oznacza położenie ciała. Jeżeli położenie to zmienia się w sposób dyskretny to prędkość ciała      :math:`v(t)` i      przyspieszenie :math:`a(t)`      możemy obliczyć z przybliżonych wzorów 
<table class="equation" border="0">
<tbody>
<tr>
<td>
<div class="math">v(t) ≃ {x(t \+ \Delta t) \- x(t \- \Delta t)\over               2 \Delta t}          ,\qquad a(t) ≃ {x(t \+ \Delta t) \- 2x(t) \+ x(t \- \Delta t)\over                    {\Delta t}^{2}}</div>
<a id="x1-7001r1"></a></td>
<td class="eq-no">(1)</td>
</tr>
</tbody>
</table>

<p class="nopar">gdzie owo :math:`\Delta t`      to stały (mały) odstęp czasowy. Oba wzory przechodzą w znany wzór różniczkowy na prędkość i przyspieszenie w granicy      :math:`\Delta t \to 0`.      <br class="newline" />Napisz program obliczający prędkość i przyspieszenie dla położeń zawartych w liście</p>
<div id="verbatim-4" class="verbatim">x = [0.5, 0.5, 0.5, 0.71, 0.712, 0.331, 0.331, 0.331, 0.24, 0.245, 0.246, 0.247, 0.248]       <br />t = [ti\*0.1 for ti in range(len(x))]</div>

<p class="nopar">Wartości prędkości i przyspieszenia dla poszczególnych przedziałów proszę zapisać w tablicach odpowiednio <span class="obeylines-h"><span class="verb"><span class="pltt-10">v</span></span></span> i      <span class="obeylines-h"><span class="verb"><span class="pltt-10">a</span></span></span>.</p>
</dd></dl>




Zadania domowe
""""""""""""""

Stwórz notatnik ’Zadania domowe L04, Imię Nazwisko’. W tym notatniku rozwiąż poniższe zadania. Postaraj się jasno opisać jakie zadanie rozwiązujesz oraz metodykę rozwiązania tego zadania. Notatnik uwspólnij (tylko) z prowadzącym ćwiczenia.


<dl class="description"><dt class="description"> <span class="plbx-10">Zadanie ZD1.1: Trójkąt.</span> </dt><dd class="description"><span class="underline">czas: – min.</span><br class="newline" />Napisz program sprawdzający czy z trzech odcinków o podanych długościach <span class="obeylines-h"><span class="verb"><span class="pltt-10">a,</span><span class="pltt-10"> b,</span><span class="pltt-10"> c</span></span></span> można skonstruować      trójkąt. W przypadku, kiedy jest to wykonalne oblicz jego obwód i pole. Cały program powinien być      zawarty w jednej komórce, łącznie z deklaracją długości boków trójkąta. </dd><dt class="description"> <span class="plbx-10">Zadanie ZD1.2: Wielkość największa i najmniejsza</span> </dt><dd class="description"><span class="underline">czas: – min.</span><br class="newline" />Napisz program znajdujący najmniejszą i największą wartość z listy (zakładamy, że lista będzie miała      wartości liczbowe). Sprawdź swoje obliczenia używając funkcji <span class="obeylines-h"><span class="verb"><span class="pltt-10">max()</span></span></span> oraz <span class="obeylines-h"><span class="verb"><span class="pltt-10">min()</span></span></span> działających na listach. </dd><dt class="description"> <span class="plbx-10">Zadanie ZD1.3: Jak ugotować doskonałe jajko?</span> </dt><dd class="description"><span class="underline">czas: – min.</span><br class="newline" />Kiedy gotujemy jajko, białka zawarte w jajku najpierw ulegają denaturacji a dopiero później      się ścinają. Po osiągnięciu temperatury krytycznej rozpoczyna się właściwa reakcja, która      przyspiesza wraz z wzrostem temperatury. W białku jajka białka ścinają się już w temperaturze      :math:`6{3}^{o}`C, natomiast w      żółtku dopiero przy :math:`7{0}^{o}`C.      Aby ugotować jajko na miękko należy grzać białko jajka w temperaturze co najmniej      :math:`63^{o}`C      wystarczająco długo, ale żółtko nie powinno zostać rozgrzane powyżej      :math:`7{0}^{o}`C.      Aby ugotować jajko na twardo, środek jajka powinien zostać ogrzany do temperatury      :math:`7{0}^{o}`C. Poniższy wzór      szacuje ile czasu :math:`t`      (w sekundach) potrzebuje żółtko do osiągnięcia temperatury      :math:`{T}_{y}` (w      stopniach Celsiusa)<br class="newline" />
<table class="equation" border="0">
<tbody>
<tr>
<td>
<div class="math">t =    {{M}^{2∕3}c \rho ^{1∕3}\over   K \pi^{2}{(4\pi∕3)}^{2/3}}\ln [0.76{{T}_{0} \- {T}_{w}\over { T}_{y} \- {T}_{w}}].</div>
<a id="x1-8001r2"></a></td>
<td class="eq-no">(2)</td>
</tr>
</tbody>
</table>

<p class="nopar">gdzie :math:`M` to masa      jajka, :math:`\rho` jego gęstość,      :math:`c` to specyﬁczna pojemność      cieplna a :math:`K` to przewodność cieplna      jajka. Rzeczywiste wartości to :math:`M = 47g`      dla małego i :math:`M = 67g` dla      dużego jajka, :math:`\rho = 1.038`g      cm:math:`{}^{1}`,      :math:`c = 3.7` J      g:math:`{}^{-1}`      K:math:`{}^{-1}` a      :math:`K = 5.4 *10^{-3}` W      cm:math:`{}^{-1}`K:math:`{}^{-1}`.      Ponadto :math:`{T}_{w}` to temperatura gotującej      się wody (w st. Celsiusa), :math:`{T}_{0}`      to początkowa temperatura jajka (w st. Celsiusa) przed włożeniem go do wody. Sprawdź ile będzie gotować      się</p>
<ol class="enumerate1">
<li id="x1-8003x1" class="enumerate">wyjęte z lodówki małe jajko na miękko </li>
<li id="x1-8005x2" class="enumerate">duże jajko leżące w temperaturze pokojowej, na twardo </li>
<li id="x1-8007x3" class="enumerate">przyniesione z bazaru w Słubicach (woj. lubuskie) w dniu 30 lipca 1994, duże jajko na twardo</li>
</ol> </dd><dt class="description"> <span class="plbx-10">Zadanie ZD1.4: Funkcja Heaviside’a.</span> </dt><dd class="description"><span class="underline">czas: – min.</span><br class="newline" />Funkcja 
<table class="equation" border="0">
<tbody>
<tr>
<td>
<div class="math">H(x) = \left \{\array{  0,&amp;x &lt; 0 \cr  1,&amp;x  0}                                                                                                                                        \right .</div>
<a id="x1-8008r3"></a></td>
<td class="eq-no">(3)</td>
</tr>
</tbody>
</table>

<p class="nopar">nazywana jest funkcją schodkową lub funkcja Heaviside’a. Zaimplementuj tą funkcję w Sage z użyciem instrukcji warunkowej <span class="obeylines-h"><span class="verb"><span class="pltt-10">if</span></span></span>.      Przetestuj ją dla :math:`x = 1∕2,0,3`.</p>
</dd><dt class="description"> <span class="plbx-10">Zadanie ZD1.5: Przybliżanie funkcji </span>:math:`\mathop{cos}\nolimits (x)` </dt><dd class="description"> <span class="underline">czas: 10 min.</span><br class="newline" />Funkcja :math:`\mathop{cos}\nolimits (x)`      może być przybliżona poprzez sumę 
<table class="equation" border="0">
<tbody>
<tr>
<td>
<div class="math">C = \sum_{j=0}^{n}{c}_{ j}</div>
<a id="x1-8009r4"></a></td>
<td class="eq-no">(4)</td>
</tr>
</tbody>
</table>

<p class="nopar">gdzie </p>
<table class="equation" border="0">
<tbody>
<tr>
<td>
<div class="math">{c}_{j} = \-{c}_{j\-1}       {{x}^{2}\over   2j(2j \-1)},\qquad j = 1,2,...,n,</div>
<a id="x1-8010r5"></a></td>
<td class="eq-no">(5)</td>
</tr>
</tbody>
</table>

<p class="nopar">a :math:`{c}_{0} = 1`.      Używając pętli <span class="obeylines-h"><span class="verb"><span class="pltt-10">for</span></span></span> napisz program obliczający wartość funkcji      :math:`\mathop{cos}\nolimits ({x}_{k})` w punkcie      :math:`{x}_{k}` dla      danego :math:`n`      deklarowanych w odpowiednich zmiennych na początku komórki. Korzystając z      wbudowanej w Sage funkcji <span class="obeylines-h"><span class="verb"><span class="pltt-10">cos</span></span></span> policz jaki błąd generuje powyższy algorytm dla      :math:`n = 5,25,50,100,200,1000` w punktach      :math:`{x}_{k} = 0,2,4,6,8,10`.</p>

<p class="noindent"><span class="underline"><span class="plbx-10">Uwaga:</span></span> Dla :math:`n = 1000` należy użyć      wartości numerycznych dla :math:`{x}_{k}`.</p>
</dd></dl>

