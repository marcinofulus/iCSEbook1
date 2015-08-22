.. -*- coding: utf-8 -*-


Scenariusz warsztatów z informatyki
-----------------------------------

**prowadzonych dla uczniów szkół ponadgimnazjalnych**





n.t. *Badanie i poznawanie realnych zjawisk w otaczającym nas świecie*


*przez modelowanie matematyczne z wykorzystaniem nowoczesnych narzędzi informatycznych*


**"DEMOKRACJA \- CO DWIE GŁOWY, TO NIE JEDNA"**


Autor: **** **Artur Trzęsiok** **CubeProject.pl**





Warsztaty prowadzone w ramach projektu iCSE realizowanego przez Uniwersytet Śląski


**Część 2.**


Oszacowanie prawdopodobieństwa podjęcia trafnej decyzji przez głosowanie większościowe (jak w  **demokracji** ), przy założonym poziomie kompetencji osób głosujących.


Opis zagadnienia:


Załóżmy, że dany jest problem (decyzyjny), w którym zbiór możliwych decyzji jest dwuelementowy (np. decyzje "tak" albo "nie") oraz że wiadomo, że jedna z tych opcji jest decyzją trafną (właściwą). Ponadto mamy :math:`M` sędziów, o których wiadomo, że każdy z nich podejmuje trafną decyzję z prawdopodobieństwem równym :math:`p_i`. To prawdopodobieństwo :math:`p_i` określa kompetencję osoby głosującej do podejmowania decyzji tego rodzaju.


Jeżeli  **głosujący podejmują decyzje niezależnie i większością głosów** , to  **jakie jest prawdopodobieństwo podjęcia przez nich trafnej decyzji?**


Przyjmijmy, że dwa możliwe warianty decyzji oznaczymy liczbami 0 i 1. Można bez straty ogólności przyjąć, że zawsze przez 1 oznaczać będziemy decyzję trafną (prawidłową), przy czym oczywiście głosujący nie wiedzą, która decyzja jest trafna.


Spróbujmy napisać kod programu, który będzie symulował (wielokrotnie) głosowania poszczególnych posłów i będzie sprawdzał, jak często cała grupa w głosowaniu większościowym wybierze trafną decyzję, wiedząc , że każdy pojedynczy poseł podejmuje trafną decyzję z prawdopodobieństwem :math:`p_i`.


Na początek, dla uproszczenia, załóżmy dodatkowo, że głosujący są homogeniczni pod względem kompetencji (tj. że wszyscy z takim samym prawdopodobieństwem wybierają trafną decyzję).


.. code-block:: python

    sage: liczba_poslow = 301    # Rozważmy przypadki, kiedy liczba posłów jest nieparzysta (żeby uniknąć problemów 
    ...                          # z podejmowaniem decyzji, kiedy głosy rozkładają się równo po połowie)
    sage: kompetencje = 0.55     # Zakładamy, że poseł jest przynajmniej odrobinę "mądrzejszy niż moneta"
    sage: # l_glosowan = 1000    # Na razie jednorazowe głosowanie 'sejmu'
    sage: P = [1-kompetencje, kompetencje]
    sage: X = GeneralDiscreteDistribution(P)
    sage: # Teraz każdy poseł głosuje zgodnie ze swoimi kompetencjami:
    sage: glos = range(liczba_poslow)
    sage: for i in range(liczba_poslow):
    ...       glos[i] = X.get_random_element()
    sage: # Jeśli liczba głosów na '1' większa niż połowa z liczby posłów, to znaczy, że większością wybrano '1' czyli trafnie
    sage: # zagłosowano; [ponieważ drugi wariant głosowania to wartość '0', więc żeby policzyć ile było '1' wystarczy zsumować
    sage: # wszystkie wartości]
    sage: if sum(glos) > 0.5*liczba_poslow:
    ...       decyzja_wiekszosci = 1
    sage: else:
    ...       decyzja_wiekszosci = 0
    ...       
    sage: print("Decyzja większości:")
    sage: print(decyzja_wiekszosci)
    Decyzja większości:
    1

.. end of output

.. code-block:: python

    sage: def symuluj_glosowanie(liczba_poslow):
    ...       # Teraz każdy poseł głosuje zgodnie ze swoimi kompetencjami:
    ...       glos = range(liczba_poslow)
    ...       for i in range(liczba_poslow):
    ...           glos[i] = X.get_random_element() 
    ...       # Jeśli liczba głosów na '1' większa niż połowa z liczby posłów, to znaczy, że większością wybrano '1', czyli
    ...       # trafnie zagłosowano; [ponieważ drugi wariant głosowania to wartość '0', więc żeby policzyć ile było '1' 
    ...       # wystarczy zsumować wszystkie wartości].
    ...       if sum(glos) > 0.5*liczba_poslow:
    ...           return 1
    ...       else:
    ...           return 0
    sage: l_glosowan = 1000
    sage: P = [1-kompetencje, kompetencje]
    sage: X = GeneralDiscreteDistribution(P)
    sage: ilosc_trafnych = 0
    sage: for i in range(l_glosowan):
    ...       ilosc_trafnych += symuluj_glosowanie(liczba_poslow)
    sage: czestosc_trafnych = ilosc_trafnych/l_glosowan
    sage: print("Częstość trafnych głosowań:")
    sage: print(czestosc_trafnych)
    Częstość trafnych głosowań:
    483/500

.. end of output

.. code-block:: python

    sage: # Symulacja dla różnej liczby posłów:
    sage: czestosc_trafnych = range(liczba_poslow)
    sage: for m in range(liczba_poslow):
    ...       czestosc_trafnych[m] = 0
    sage: for m in range(liczba_poslow):
    ...       for i in range(l_glosowan):
    ...           if m%2 == 1:           # W celu ominięcia problemu remisów, rozważamy tylko nieparzyste liczby posłów
    ...               czestosc_trafnych[m] += symuluj_glosowanie(m)/l_glosowan    
    sage: # nieparzyste = [1..range(liczba_poslow), step=2]
    sage: # show(points((range(liczba_poslow), czestosc_trafnych))) # plot_points=20, , marker='.' # nie działa poprawnie!!! do 
    sage: # zmiany
    sage: # bar_chart(czestosc_trafnych, width=0.7, figsize = 10)
    sage: scatter_plot(zip(range(liczba_poslow)[1:liczba_poslow:2], czestosc_trafnych[1:liczba_poslow:2]), marker='.', facecolor='blue')
    Traceback (most recent call last):
    ...
    TypeError: symuluj_glosowanie() takes exactly 2 arguments (1 given)

.. end of output

W tym miejscu warto wspomnieć, że technika sprawdzania zachowania pewnego zjawiska na drodze sylulacji (poprzez losowy dobór stanu początkowego) jest nazywama  **METODĄ MONTE CARLO** .


Jest to bardzo ważna metoda poznawania i badania otaczającego nas świata. Wspomnieć o niej należy tym bardziej, że jej twórcą jest nasz rodak, wybitny matematyk,  **Stanisław Ulam**  [1909\-1984], zaangażowany w ściśle tajny projekt  *Manhattan*  w Los Alamos [1942–1946].


.. image:: iCSE_2_media/http://www.atomicarchive.com/History/hbomb/images/ulam_stanislaw_s.jpg
    :align: center

















____________________________________________________________


Wyniki otrzymane powyżej możemy sprawdzić innymi sposobami \- nie na drodze symulacji, tylko korzystając z wyników prac mądrych ludzi \- z udowodnionego twierdzenia:


**Twierdzenie Condorceta**  (1785) [Condorcet Jury Theorem \- twierdzenie o prawdopodobieństwie podjęcia trafnej decyzji przez grupę sędziów]


Załóżmy, że dany jest problem (decyzyjny), w którym zbiór możliwych decyzji jest dwuelementowy (np. decyzje "tak" albo "nie") oraz że wiadomo, że jedna z tych opcji jest decyzją trafną (właściwą). Ponadto mamy :math:`M` sędziów, o których wiadomo, że każdy z nich podejmuje trafną decyzję z prawdopodobieństwem równym :math:`p_i`. To prawdopodobieństwo :math:`p_i` określa kompetencję osoby glosującej do podejmowania decyzji tego rodzaju. Jeżeli głosujący są podobni do siebie pod względem poziomu kompetencji, tj.  

.. MATH::

    p_1=\ldots=p_M=p,

  lecz decyzje podejmują niezależnie i większością głosów, to prawdopodobieństwo podjęcia przez nich trafnej decyzji (:math:`D^\ast`) jest równe:



.. MATH::

      p(D^\ast)=\sum_{k>\frac{M}{2}}^M {M \choose k}p^k(1-p)^{M-k}.\qquad (\star)


Ponadto, jeżeli :math:`p>0,5`, to  

.. MATH::

    \lim_{M \to \infty}p(D^\ast)=1,


co oznacza, że im większa liczba głosujących, tym większe prawdopodobieństwo podjęcia trafnej decyzji.


Jeżeli zaś :math:`p<0,5`, to  

.. MATH::

    \lim_{M \to \infty}p(D^\ast)=0.


Trzeci przypadek dotyczy sytuacji, w której z faktu, że :math:`p=0,5` wynika  

.. MATH::

    p(D^\ast)=0,5,

  dla dowolnej liczby głosujących :math:`M`.


____________________________________________________________


Udowodniono również (Shapley i Grofman, 1984), że twierdzenie Condorceta jest prawdziwe także wtedy, gdy zostanie uchylone mało realistyczne założenie o homogeniczności kompetencji głosujących sędziów. Można wykazać, że jeśli prawdopodobieństwo :math:`p_i` ma rozkład normalny (lub inny symetryczny względem wartości oczekiwanej), to zamiast :math:`p` do wzoru z twierdzenia Condorceta należy wstawić wartość przeciętną :math:`\bar{p}`.)


Źródło: Gatnar E.,  *Podejście wielomodelowe w zagadnieniach dyskryminacji i regresji* , Wydawnictwo Naukowe PWN, Warszawa, 2008.


____________________________________________________________


Napiszmy funkcję liczącą wartości dane wzorem :math:`(\star)`:


.. code-block:: python

    sage: def wzorek_gwiazdka(M, p):
    ...       p_D_gwiazdka = 0
    ...       for k in range((int)(M/2)+1, M):
    ...           p_D_gwiazdka += binomial(M,k)*p^k*(1-p)^(M-k)
    ...           
    ...       return p_D_gwiazdka
    ...       
    sage: # Symulacja dla różnej liczby posłów:
    ...     
    sage: czestosc_trafnych_Condorcet = [0] * liczba_poslow
    sage: for m in range(liczba_poslow):
    ...       if m%2 == 1:
    ...           czestosc_trafnych_Condorcet[m] = wzorek_gwiazdka(m, kompetencje)
    sage: # print("Prawdopodobieństwo trafnego głosowania:")
    sage: # bar_chart(czestosc_trafnych_Condorcet, rgbcolor=(0,1,0), width=0.7, figsize = 10)
    sage: scatter_plot(zip(range(liczba_poslow)[1:liczba_poslow:2], czestosc_trafnych_Condorcet[1:liczba_poslow:2]), marker='.', facecolor='green')

.. image:: iCSE_2_media/cell_10_sage0.png
    :align: center


.. end of output

Powróćmy do naszych symulacji! Spróbujmy rozważyć jeszcze raz to zagadnienie, lecz tym razem o
 drzucając nierealistyczne założenie, że posłowie są  *homogeniczni*  pod względem kompetencji, czyli że wszyscy z jednakowym prawdopodobieństwem podejmują trafną decyzję. Zakładać będziemy jedynie, że ich kompetencje rozkładają się symetrycznie względem pewnej jednej wartości (a konkretnie, że te kompetencje mają rozkład normalny).


Sytuacja ta jest już zdecydowanie bardziej złożonym przypadkiem tego zagadnienia, ale też przez nasze modelowanie staje się najbardziej realistyczne!


.. code-block:: python

    sage: def symuluj_glosowanie(liczba_poslow, kompetencje_poslow):
    ...       # Teraz każdy poseł głosuje zgodnie ze swoimi kompetencjami:
    ...       glos = range(liczba_poslow)
    ...       for m in range(liczba_poslow):
    ...           X = GeneralDiscreteDistribution(kompetencje_poslow[m])
    ...           glos[m] = X.get_random_element() 
    ...       # Jeśli liczba głosów na '1' większa niż połowa z liczby posłów, to znaczy, że większością wybrano '1', czyli
    ...       # trafnie zagłosowano; [ponieważ drugi wariant głosowania to wartość '0', więc żeby policzyć ile było '1' 
    ...       # wystarczy zsumować wszystkie wartości].
    ...       if sum(glos) > 0.5*liczba_poslow:
    ...           return 1
    ...       else:
    ...           return 0
    sage: liczba_poslow = 301    # Rozważmy przypadki, kiedy liczba posłów jest nieparzysta (żeby uniknąć problemów 
    ...                          # z podejmowaniem decyzji, kiedy głosy rozkładają się równo po połowie)
    sage: Gauss = RealDistribution('gaussian', 0.05)
    sage: kompetencje_bazowe = 0.55
    sage: P = []
    sage: for m in range(liczba_poslow):
    ...       K = kompetencje_bazowe + Gauss.get_random_element()
    ...       P.append([1-K, K])
    ...       
    sage: print("Kompetencje pierwszych dziesięciu posłów wylosowane z rozkładu normalnego:")
    sage: for i in range(10):
    ...       print(P[i])
    sage: l_glosowan = 1000
    sage: # Symulacja dla różnej liczby posłów:
    sage: czestosc_trafnych = range(liczba_poslow)
    sage: for m in range(liczba_poslow):
    ...       czestosc_trafnych[m] = 0
    sage: for m in range(liczba_poslow):
    ...       for i in range(l_glosowan):
    ...           if m%2 == 1:           # W celu ominięcia problemu remisów, rozważamy tylko nieparzyste liczby posłów
    ...               czestosc_trafnych[m] += symuluj_glosowanie(liczba_poslow=m, kompetencje_poslow=P)/l_glosowan    
    sage: # bar_chart(czestosc_trafnych, width=0.7, figsize = 10)
    sage: scatter_plot(zip(range(liczba_poslow)[1:liczba_poslow:2], czestosc_trafnych[1:liczba_poslow:2]), marker='.', facecolor='blue')
    Kompetencje pierwszych dziesięciu posłów wylosowane z rozkładu normalnego:
    [0.502863670783284, 0.497136329216716]
    [0.461699344336394, 0.538300655663606]
    [0.513898469407455, 0.486101530592545]
    [0.353127161351622, 0.646872838648378]
    [0.369611455867353, 0.630388544132647]
    [0.425406376548009, 0.574593623451991]
    [0.508154942248821, 0.491845057751179]
    [0.413254792585403, 0.586745207414597]
    [0.557295915039624, 0.442704084960376]
    [0.398250534980776, 0.601749465019224]
    ^CTraceback (most recent call last):
      File "", line 1, in 
      File "_sage_input_8.py", line 10, in 
        gogICAgZm9yIGkgaW4gcmFuZ2UobF9nbG9zb3dhbik6CiAgICAgICAgaWYgbSUyID09IDE6ICAgICAgICAgICAjIFcgY2VsdSBvbWluacSZY2lhIHByb2JsZW11IHJlbWlzw7N3LCByb3p3YcW8YW15IHR5bGtvIG5pZXBhcnp5c3RlIGxpY3pieSBwb3PFgsOzdwogICAgICAgICAgICBjemVzdG9zY190cmFmbnljaFttXSArPSBzeW11bHVqX2dsb3Nvd2FuaWUobGljemJhX3Bvc2xvdz1tLCBrb21wZXRlbmNqZV9wb3Nsb3c9UCkvbF9nbG9zb3dhbiAgICAKCiMgYmFyX2NoYXJ0KGN6ZXN0b3NjX3RyYWZueWNoLCB3aWR0aD0wLjcsIGZpZ3NpemUgPSAxMCkKc2NhdHRlcl9wbG90KHppcChyYW5nZShsaWN6YmFfcG9zbG93KVsxOmxpY3piYV9wb3Nsb3c6Ml0sIGN6ZXN0b3NjX3RyYWZueWNoWzE6bGljemJhX3Bvc2xvdzoyXSksIG1hcmtlcj0nLicsIGZhY2Vjb2xvcj0nYmx1ZScp"),globals())+"\\n"); execfile(os.path.abspath("___code___.py"))' + '\n', '', 'single')
      File "", line 1, in 
        
      File "/tmp/tmpzXNJ4Q/___code___.py", line 42, in 
        czestosc_trafnych[m] += symuluj_glosowanie(liczba_poslow=m, kompetencje_poslow=P)/l_glosowan    
      File "/tmp/tmpzXNJ4Q/___code___.py", line 7, in symuluj_glosowanie
        X = GeneralDiscreteDistribution(kompetencje_poslow[m])
    KeyboardInterrupt
    __SAGE__

.. end of output

Zmieniając odpowiednie parametry w powyższym kodzie spróbuj odpowiedzieć na pytanie:


1. Co się dzieje z decyzjami kolektywnymi (czyli z decyzjami podejmowanymi przez głosowanie), jeśli kompetencje głosujących są mniejsze od 0,5?


Ponadto zastanów się nad zagadnieniami:


2. W sejmie Rzeczypospolitej Polskiej zasiada 460 posłów. Skomentuj szanse podejmowania trafnych decyzji w kontekście przeprowadzonych symulacji. Co oznacza (jakie ma konsekwencje dla prawdopodobieństwa podejmowania trafnych decyzji) wprowadzanie dyscypliny klubowej (wiedząc, że posłowie są zrzeszeni w 6 klubach parlamentarnych)?


3. Zastanów się jakie znaczenie dla trafności podejmowanych decyzji ma zróżnicowanie poglądów posłów oraz pluralizm?





.. code-block:: python

    sage: def symuluj_glosowanie(liczba_poslow, kompetencje_poslow):
    ...       # Teraz każdy poseł głosuje zgodnie ze swoimi kompetencjami:
    ...       glos = range(liczba_poslow)
    ...       for m in range(liczba_poslow):
    ...           X = GeneralDiscreteDistribution(kompetencje_poslow[m])
    ...           glos[m] = X.get_random_element() 
    ...       # Jeśli liczba głosów na '1' większa niż połowa z liczby posłów, to znaczy, że większością wybrano '1', czyli
    ...       # trafnie zagłosowano; [ponieważ drugi wariant głosowania to wartość '0', więc żeby policzyć ile było '1' 
    ...       # wystarczy zsumować wszystkie wartości].
    ...       if sum(glos) > 0.5*liczba_poslow:
    ...           return 1
    ...       else:
    ...           return 0
    sage: liczba_poslow = 301    # Rozważmy przypadki, kiedy liczba posłów jest nieparzysta (żeby uniknąć problemów 
    ...                          # z podejmowaniem decyzji, kiedy głosy rozkładają się równo po połowie)
    sage: Gauss = RealDistribution('gaussian', 0.05)
    sage: kompetencje_bazowe = 0.45
    sage: P = []
    sage: for m in range(liczba_poslow):
    ...       K = kompetencje_bazowe + Gauss.get_random_element()
    ...       P.append([1-K, K])
    ...       
    sage: # print("Kompetencje pierwszych dziesięciu posłów wylosowane z rozkładu normalnego:")
    sage: # for i in range(10):
    sage: #    print(P[i])
    sage: l_glosowan = 1000
    sage: # Symulacja dla różnej liczby posłów:
    sage: czestosc_trafnych = range(liczba_poslow)
    sage: for m in range(liczba_poslow):
    ...       czestosc_trafnych[m] = 0
    sage: for m in range(liczba_poslow):
    ...       for i in range(l_glosowan):
    ...           if m%2 == 1:           # W celu ominięcia problemu remisów, rozważamy tylko nieparzyste liczby posłów
    ...               czestosc_trafnych[m] += symuluj_glosowanie(liczba_poslow=m, kompetencje_poslow=P)/l_glosowan    
    sage: # bar_chart(czestosc_trafnych, width=0.7, figsize = 10)
    sage: scatter_plot(zip(range(liczba_poslow)[1:liczba_poslow:2], czestosc_trafnych[1:liczba_poslow:2]), marker='.', facecolor='blue')
    ^CTraceback (most recent call last):        # Jeśli liczba głosów na '1' większa niż połowa z liczby posłów, to znaczy, że większością wybrano '1', czyli
      File "", line 1, in 
        
      File "/tmp/tmpnQsFrT/___code___.py", line 42, in 
        czestosc_trafnych[m] += symuluj_glosowanie(liczba_poslow=m, kompetencje_poslow=P)/l_glosowan    
      File "/tmp/tmpnQsFrT/___code___.py", line 7, in symuluj_glosowanie
        X = GeneralDiscreteDistribution(kompetencje_poslow[m])
      File "probability_distribution.pyx", line 982, in sage.gsl.probability_distribution.GeneralDiscreteDistribution.__init__ (sage/gsl/probability_distribution.c:7204)
      File "/usr/lib/sagemath/local/lib/python/random.py", line 237, in randint
        def randint(self, a, b):
    KeyboardInterrupt
    __SAGE__

.. end of output

