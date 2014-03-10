.. -*- coding: utf-8 -*-

Paradoks Monty Halla -- problem z mylącą intuicją
-------------------------------------------------

Czasem lepiej zmienić podjętą wcześniej decyzję -- symulacja Monte Carlo
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. sidebar:: Geneza paradoksu Monty Halla

   
   .. image:: http://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Monty-MiddleCar.svg/150px-Monty-MiddleCar.svg.png
      :alt: Wybór bramki
      :width: 150
      :height: 109
      :align: right
      
   Przedstawiony problem pochodzi z popularnego i emitowanego w amerykańskiej telewizji teleturnieju ,,Let's make a deal". Teleturniej ten był emitowany w latach 1963--1976 
   a jego gospodarzem był Monty Hall, od którego nazwiska wzięła się nazwa przedmiotowego paradoksu. W teleturnieju tym nagrodą główną był nowy samochód, który umieszczano za 
   losowo wybraną bramką. Za pozostałymi bramkami znajdowały się dwie kozy. Tak jak to jest opisane we Wstępie, gospodarz programu -- Monty Hall zna numer bramki kryjącej samochód 
   i po wskazaniu bramki przez gracza, losowo odkrywa jedną z pozostałych bramek, przy czym nigdy nie odkrywa samochodu. Zaraz potem Monty Hall pyta gracza, czy chce zmienić swoją 
   pierwotną decyzję. Można postawić pytanie: czy graczowi opłaca się zmieniać decyzję? Prawidlowa odpowiedź na to pytanie brzmi: tak, opłaca się, gdyż w ten sposób gracz dwukrotnie 
   zwiększa szanse wygranej. Rozwiązanie to dla większości osób stykających sie z tym problemem po raz pierwszy jest błędne i sprzeczne z intuicją. Z powodu tej sprzeczności
   przedstawiony problem nazywany jest **paradoksem Monty Halla**.  
   
   
   Paradoks Monty Halla zyskał bardzo dużą sławę w roku 1990 za sprawą pani **Marilyn vos Savant**, która w tym 
   czasie prowadziła specjalną, bardzo poczytną kolumnę w amerykańskim dodatku niedzielnym, który był dołączany do 640 różnych gazet i czasopism na terenie całych Stanów 
   Zjednoczonych. Marilyn vos Savant była i nadal jest bardzo znaną osobą w USA a zasłynęła jako osoba z najwyższym znanym IQ równym 228 -- wynikiem testu na inteligencję. Przez 3 lata 
   od 1986 do 1989 była notowana w księdze rekordów Guinessa, lecz w 1990 r. z księgi usunięto kategorię ,,najwyższy poziom IQ" z uwagi na krytykę wskaźnika jakim jest poziom 
   IQ a wszczególności ze względu na brak rzetelności tej skali pomiarowej, która nie pozwala poprawnie identyfikować osoby z najwyższym poziomem inteligencji. Mimo krytyki 
   testów IQ, Marilyn vos Savant zyskała dzięki swojemu wynikowi sławę i wielu czytelników, którzy zgłaszali się z pytaniami do kolumny ,,Ask Marilyn", chcąc poznać opinię tak inteligentnej 
   osoby na różne nurtujące pytania. Wprawdzie zarówno sam paradoks, sformułowanie zagadnienia, jak i jego poprawne rozwiązanie były znane już wcześniej, ale dopiero opublikowanie 
   pytania w kolumnie ,,Ask Marylin" wraz z poprawną odpowiedzią pani Marilyn vos Savant uczyniło paradoks przedmiotem publicznej i rozległej dyskusji w całych Stanach Zjednoczonych.
   Publikacja spowodowała bardzo wiele kontrowersji. Oszacowano, że w tej sprawie do redakcji przyszło około 10 000 listów, których autorzy przekonywali, że Marylin jest w błędzie
   i że redakcja powinna zamieścić sprostowanie. Jako ciekawostkę, można podać, że wśród tych listów do redakcji było wiele listów od pracowników naukowych z różnych uniwersytetów
   (niektóre z tych listów miały dosyć obraźliwy charakter). Z wybranymi listami można się zapoznać `tutaj <http://marilynvossavant.com/game-show-problem/>`_.
           
Wstęp
=====

W tej części zostanie rozważony problem oszacowania prawdopodobieństwa wygranej dla gry w wybór jednej z trzech bramek, gdzie tylko jedna bramka kryje nagrodę, 
przy czym prowadzący grę wie, gdzie znajduje się nagroda. Na początku gry **gracz** jest proszony o wskazanie jednej z bramek. Następnie **prowadzący** odkrywa losowo jedną 
z pozostałych, przy czym nigdy nie odkrywa bramki skrywającej nagrodę, i pyta gracza, czy chce zmienić swoją pierwotną decyzję. Okazuje się, że większość ludzi pozostaje 
przy swoim wyborze uważając, że w danym momencie pozostają dwie zakryte bramki i prawdopodobieństwo rozkłada się równomiernie, czyli po 50%, gdy tymczasem tak nie jest. 
Prawdopodobieństwo wygranej dla wariantu kiedy zmieniamy decyzję jest równe :math:`\frac{2}{3}` i jest dwa razy większe, niż kiedy pozostajemy przy swoim pierwszym wyborze  
:math:`\frac{1}{3}`. Intuicja w tym przypadku podpowiada nam błędne rozwiązanie. To zjawisko nieracjonalnego zachowania ludzi w zaprezentowanej grze nazywane jest 
paradoksem Monty Halla.

   
Kod programu rozgrywki dla gracza A, który nie zmienia raz powziętej decyzji 
===========================================================================

Poniższy kod realizuje symulację przebiegu rozgrywki dla gracza, który nie zmienia raz powziętej decyzji. Kod ten ma za zadanie zilustroawnie następujących elementów 
rozgrywki:

- losowy wybór bramki, za którą kryje się nagroda główna -- nowy samochód,
 
- losowe (pierwsze) wskazanie gracza,
 
- losowe (o ile gospodarz programu ma wybór!) otwarcie jednej z bramek przegrywających
 
- wynik końcowy rozgrywki przy założeniu, że gracz w dugim etapie pozostaje przy swoim pierwszym wyborze. 

Żeby móc śledzić każdy z etapów rozgrywki użyto funkcji ``print`` do wypisania rezultatów poszczegolnych faz. 

.. sagecellserver:: 

	
	P = [1/3, 1/3, 1/3]
	X = GeneralDiscreteDistribution(P)
	P2 = [1/2, 1/2]
	Y = GeneralDiscreteDistribution(P2)
	       
	bramki = range(3)
	bramka_wygrywajaca = X.get_random_element() # bramka nieznana graczowi, ale znana prowadzacemu
	       
	pierwsze_wskazanie_gracza = X.get_random_element()
	        
	print("Na początku gracz wybrał bramkę nr:")
	print(pierwsze_wskazanie_gracza+1)
	        
	if pierwsze_wskazanie_gracza == bramka_wygrywajaca:
	    nr_losowy = Y.get_random_element()+1
	    prowadzacy_pokazuje = bramki[pierwsze_wskazanie_gracza-nr_losowy]
	else:    
	    prowadzacy_pokazuje = [value for value in bramki if value != pierwsze_wskazanie_gracza and value != bramka_wygrywajaca][0]
	        
	print("Prowadzący otworzył bramkę nr:")
	print(prowadzacy_pokazuje+1)  
	print("Prowadzący poinformował gracza A, że ma prawo zmienić decyzję i zapytał gracza A, czy chce ją zmienić.")
	print("Gracz odpowiedział 'NIE'.")
	drugie_wskazanie_graczaA = pierwsze_wskazanie_gracza
	print("Wtedy prowadzący odkrywa pozostałe bramki. Bramką wygrywającą jest:")	        
	print(bramka_wygrywajaca+1)
	        
	if drugie_wskazanie_graczaA == bramka_wygrywajaca:
	    print("WIELKA RADOŚĆ!!! Serdecznie gratulujemy wygranej!!!")
	else:
	    print("Niestety wybrana bramka nie kryła wygranej.")

Klikając np. piętnastokrotnie przycisk ``Wykonaj`` pod powyższym kodem można symulacyjnie przekonać się jak często wygrywa osoba nie zmieniająca w drugim etapie gry 
pierwotnej decyzji (w sposób zautomatyzowany taką symulację przeprowadzimy w ostatniej części tego opracowania).

Kod programu rozgrywki dla gracza B, który w drugim etapie zawsze zmienia swój pierwotny wybór
==============================================================================================

Niewiele zmieniając w powyższym kodzie, stworzymy modyfikację symulacji rozgrywki dla gracza, który zawsze w drugim etapie korzysta z opcji zmiany pierwotnej decyzji 
(wystarczy zmienić linijkę, gdzie definiujemy wartość zmiennej ``drugie_wskazanie_graczaB``):

.. sagecellserver:: 

	
	P = [1/3, 1/3, 1/3]
	X = GeneralDiscreteDistribution(P)
	P2 = [1/2, 1/2]
	Y = GeneralDiscreteDistribution(P2)
	       
	bramki = range(3)
	bramka_wygrywajaca = X.get_random_element() # bramka nieznana graczowi, ale znana prowadzacemu
	       
	pierwsze_wskazanie_gracza = X.get_random_element()
	        
	print("Na początku gracz wybrał bramkę nr:")
	print(pierwsze_wskazanie_gracza+1)
	        
	if pierwsze_wskazanie_gracza == bramka_wygrywajaca:
	    nr_losowy = Y.get_random_element()+1
	    prowadzacy_pokazuje = bramki[pierwsze_wskazanie_gracza-nr_losowy]
	else:    
	    prowadzacy_pokazuje = [value for value in bramki if value != pierwsze_wskazanie_gracza and value != bramka_wygrywajaca][0]
	        
	print("Prowadzący otworzył bramkę nr:")
	print(prowadzacy_pokazuje+1)	        
	print("Prowadzący poinformował gracza B, że ma prawo zmienić decyzję i zapytał gracza B, czy chce ją zmienić.")
	print("Gracz odpowiedział 'TAK'.")
	drugie_wskazanie_graczaB = [value for value in bramki if value != pierwsze_wskazanie_gracza and value != prowadzacy_pokazuje][0]
	print("Wtedy prowadzący odkrywa pozostałe bramki. Bramką wygrywającą jest:")	        
	print(bramka_wygrywajaca+1)
	        
	if drugie_wskazanie_graczaB == bramka_wygrywajaca:
	    print("WIELKA RADOŚĆ!!! Serdecznie gratulujemy wygranej!!!")
	else:
	    print("Niestety wybrana bramka nie kryła wygranej.")
    
    
    
Symulacja dla dużej liczby rozgrywek uwzględniająca oba typy graczy
===================================================================

W tej części rezygnujemy z wypisywania rezultatów poszczególnych faz pojedynczej rozgrywki na rzecz symulacji uwzględniającej wiele rozgrywek (np. 10 000). Będziemy przede 
wszystkim zliczać ile razy gracz odjeżdża nowym autem, jeśli w drugim etapie gry pozostaje przy pierwszej decyzji, a ile razy odjeżdża nowym autem jeśli w drugim etapie 
zmienia swój pierwotny wybór.   

.. sagecellserver:: 
	
	l_rozgrywek = 10000       
	l_wygranychA = 0
	l_wygranychB = 0
	
	for i in range(l_rozgrywek):
	    P = [1/3, 1/3, 1/3]
	    X = GeneralDiscreteDistribution(P)
	    P2 = [1/2, 1/2]
	    Y = GeneralDiscreteDistribution(P2)
	    
	    bramki = range(3)
	    bramka_wygrywajaca = X.get_random_element() # bramka nieznana graczowi, ale znana prowadzacemu
	    
	    pierwsze_wskazanie_gracza = X.get_random_element()
	    
	    if pierwsze_wskazanie_gracza == bramka_wygrywajaca:
	        nr_losowy = Y.get_random_element()+1
	        prowadzacy_pokazuje=bramki[pierwsze_wskazanie_gracza-nr_losowy]
	    else:    
	        prowadzacy_pokazuje=[value for value in bramki if value != pierwsze_wskazanie_gracza and value != bramka_wygrywajaca][0]

	    drugie_wskazanie_graczaA = pierwsze_wskazanie_gracza
	    drugie_wskazanie_graczaB = [value for value in bramki if value != pierwsze_wskazanie_gracza and value != prowadzacy_pokazuje][0]
	    
	    if drugie_wskazanie_graczaA == bramka_wygrywajaca:
	        l_wygranychA += 1
	    if drugie_wskazanie_graczaB == bramka_wygrywajaca:
	        l_wygranychB += 1
	
	print("Częstość wygranych dla gracza, który nigdy nie zmienia decyzji (nie zmienia pierwszego wskazania) [wyrażone w %]:")    
	czestosc_wygranychA = l_wygranychA/l_rozgrywek*100
	print(n(czestosc_wygranychA, digits=3))
	
	print("Częstość wygranych dla gracza, który zawsze zmienia swój pierwszy wybór w drugim etapie [wyrażone w %]:")  
	czestosc_wygranychB = l_wygranychB/l_rozgrywek*100
	print(n(czestosc_wygranychB, digits=3))

Jedno z możliwych wyjaśnień paradoksu Monty Halla
+++++++++++++++++++++++++++++++++++++++++++++++++

Kluczem do wyjaśnienia dlaczego zmiana swojej pierwotnej decyzji zwiększa dwukrotnie prawdopodobieństwo wygranej z :math:`\frac{1}{3}` do :math:`\frac{2}{3}` jest informacja, 
że gospodarz programu wie, która bramka skrywa samochód. Każdy przyzna, że na początku gry wybieramy jedną z trzech bramek i z prawdopodobieństwem :math:`\frac{1}{3}` wskazujemy 
tę wygrywającą (samochód) a z prawdopodobieństwem :math:`\frac{2}{3}` wybieramy kozę. Rozważmy więc takie dwie sytuacje: 

#. Jeśli w pierwszym naszym wyborze wskażemy bramkę, za którą jest samochód (a dzieje się tak tylko raz na trzy), to Monty Hall otworzy losowo jedną z pozostałych dwóch skrywających kozę a zmiana decyzji w drugim etapie gry skutkuje przegraną. 

#. Zauważmy jednak co się dzieje w przypadku, kiedy w pierwszym wskazaniu wybierzemy którąkolwiek z bramek, za którą znajduje się koza (a dzieje się tak dwa razy na trzy przypadki). W tej sytuacji jedna z niewybranych bramek skrywa samochód, a druga -- kozę. Monty Hall nie może odkryć bramki z samochodem, więc nie ma wyboru i musi odkryć bramkę skrywającą kozę. Oznacza to, że nieotwarta i niewybrana w pierwszym etapie bramka kryje samochód i wtedy zmiana decyzji prowadzi nas do wygranej i odjeżdżamy nowym samochodem.

Tak jak to podkreślono, pierwsza z sytuacji zdarza się tylko raz na trzy a druga -- dwa razy na trzy, zatem strategia zmiany decyzji prowadzi do wygranej z prawdopodobieństwem 
:math:`\frac{2}{3}`.     

	
Uwagi końcowe
+++++++++++++	

Wiele osób, włączając piszącego te słowa, w pierwszym odruchu uważa, że nie warto zmieniać pierwotnej decyzji, bo przecież i tak w drugim etapie szanse na wygraną rozkładają 
się po równo (po 50%) na dwie nieotwarte bramki. Pocieszeniem dla tych osób może być to, że problem jest zecydowanie sprzeczny z intuicją i wprowadza w błąd zdecydowaną większość ludzi.
Eksperymenty psychologiczne symulujące rozgrywkę pokazały, że zaledwie 13% badanych osób decydowało się na zmianę decyzji w drugim etapie (a z tych 13% nie wszyscy czynili to ze 
świadomościa, że to zwiększa szanse wygranej). Dodatkowym pocieszeniem jest to, że nawet ,,tęgie umysły", laureaci nagrody Nobla z fizyki, podawali błędne rozwiązanie tego problemu 
a nawet publicznie ubliżali w pisemnej formie osobom broniącym poprawnego rozwiązania. 

Można podać również jako ciekawostkę, że wiele osób nawet po przedstawieniu któregokolwiek z wyjaśnień rozwiązania problemu Monty Halla, ,,nie wierzy" 
w jego poprawność i dopiero samodzielne przeprowadzenie symulacji (np. bawiąc się w domu trzema kubeczkami, z których tylko jeden skrywa jakiś cenny drobiazg) ich przekonuje. 
Wspomniana Marilyn vos Savant na łamach swojej kolumny zachęciła szkoły amerykańskie do przeprowadzenia tego typu symulacji na lekcjach w szkole, 
by zweryfikować empirycznie podane rozwiązanie. Przeprowadzono tysiące takich symulacji i niemalże w 100% wyniki potwierdziły, że opłaca się zmienić pierwotną decyzję 
(nietrudno się domyślić, że spośród kilku tysięcy, owych kilka ekperymentów, które nie potwierdziły rozwiązania, zostały po prostu przeprowadzone bez zachowania dyscypliny 
metodologicznej ekperymentu). Marilyn vos Savant otrzymała tysiące listów od nauczycieli dziękujących za inicjatywę wspaniałej i mądrej zabawy, która niezwykle zaangażowała 
i zintegrowała klasy i stanowiła świetny materiał do wyjaśnienia zasad ekperymentu naukowego. 

Wiele osob podjęło również próby zweryfikowania poprawności rozwiązania przez symulację komputerową a nasza symulacja wpisuje się dokładnie w to podejście.

Podsumowując, jeśli ktoś Wam cytuje ,,złotą radę", że ,,pierwsza myśl jest zawsze najlepsza", to 
przykład paradoksu Monty Halla pokazuje, że to nieprawda, bo intuicja może być bardzo myląca, więc trzeba z nią uważać!  	