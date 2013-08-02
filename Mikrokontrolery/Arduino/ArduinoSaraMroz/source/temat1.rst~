
**************************************************
Obsługa wejść i wyjść – wejścia i wyjścia cyfrowe
**************************************************

Wstęp teoretyczny
=================

Podstawowe elementy zestawu Arduino 
-----------------------------------

	Zestaw ma gniazdo USB, za pomocą którego odbywa się komunikacja komputera PC z mikrokontrolerem zestawu. Zestaw może być zasilany z interfejsu USB lub z wykorzystaniem zewnętrznego zasilania. 

	Dostępne są linie DIGITAL (cyfrowe) mikrokontrolera oznaczone od 0 do 13, przy czym linie 0 i  1 są liniami interfejsu RS232. Cyfrowe linie portów mikrokontrolerów mogą być skonfigurowane jako wejścia lub wyjścia.

	Dostępna jest również linia AREF, do której można dołączyć zewnętrzne napięcie odniesienia dla przetwornika A/C mikrokontrolera. 

	Do gniazda ANALOG IN (analogowe) dołączone zostały linie analogowe mikrokontrolera, oznaczone od A0 do A5, które również mogą pracować jako linie cyfrowe. Analogowe linie portów mikrokontrolerów mogą być skonfigurowane jako wejścia lub wyjściaa. 

	Częśc z wejść/wyjść może pełnić funkcje dostarczane przez oprogramowanie Arduino: komunikacja szeregowa (RS), protokół I2C, zewnętrzne przerwania. 

	Do gniazda Power doprowadzono linie masy, napięcia zasilające 5  V i  3,3  V oraz linię zerującą RESET.  Dostępne jest również gniazdo ICSP, do którego można dołączyć zewnętrzny programator. Umożliwia on załadowania do pamięci mikrokontrolera programu Bootloadera lub zaprogramowania go dowolnym innym programem. Ponadto zestaw wyposażono w diodę sygnalizującą zasilanie, diody sygnalizujące transmisję z  wykorzystaniem interfejsu RS232 oraz diodę „L” sygnalizującą stan linii 13 mikrokontrolera. 

Obsługa cyfrowych linii 
-----------------------

	Obsługa linii cyfrowych mikrokontrolera w głównej mierze polega na konfiguracji ich czy mają pracować jako wyjścia lub wejścia z rezystorem podciągającym. W  zestawie Arduino z  mikrokontrolerem ATmega domyślnie linie portów są skonfigurowane jako wejścia z  wyłączonym  rezystorem podciągającym. Czyli domyślnie są to wejścia, prawie nie pobierające prądu  i  bardzo często są wykorzystywane do odczytu sygnałów z czujników. 

	W mikrokontrolerach ATmega jest możliwość programowego włączenia rezystora podciągającego, który domyślnie na linii wejściowej będzie ustalał stanu wysoki. Rozwiązanie z  rezystorem podciągającym jest bardzo często wykorzystywane podczas odczytu stanu z  przycisków. Jego naciśnięcie, na linii wejściowej ustawi stan niski, a domyślnie po jego puszczeniu będzie panował stan wysoki wymuszany przez rezystor podciągający. 

	Cyfrowe linie mogą również być wyjściami, na których stan może się zmieniać na niski lub wysoki co odpowiada napięciu 0 V i 5 V.Wydajność prądowa wyjść mikrokontrolerów Atmega umożliwia zasilanie dołączonych do nich diod LED. W przypadku większych obciążeń wymagane są dodatkowe wzmacniacze, chociażby w postaci tranzystorów. 

	Do obsługi cyfrowych linii w Arduino dostępne są trzy funkcje pinMode(), digitalWrite() i digitalRead(). 

	- Za pomocą funkcji pinMode(pin, mode) jest możliwość skonfigurowania typu linii cyfrowej – czy ma być wejściem czy wyjściem. Pierwszy parametr określa numer pinu mikrokontrolera zgodnie z opisem linii na płytce zestawu Arduino UNO. Drugi parametr mode może posiadać stałe parametry INPUT lub OUTPUT, co wskazuje, czy linia ma być wejściem, czy wyjściem. 

	- Funkcja digitalWrite(pin, value) służy do ustawiania stanu linii mikrokontrolera. Pierwszy parametr pin określa numer pinu, natomiast drugi parametr określa, jaki ma być jej stan (niski czy wysoki – stałe parametry LOW lub HIGH). Instrukcja digitalWrite() umożliwia również załączenie rezystora podciągającego na linii będącej wejściem. Aby do linii wejściowej dołączyć wewnętrzny rezystor podciągający należy z wykorzystaniem funkcji digitalWrite() wpisać do linii wejściowej wartość HIGH.

	- Instrukcja digitalRead(pin) służy do odczytu stanu linii będącej wejściem. Parametr pin określa numer pinu mikrokontrolera który jest odczytywany. Funkcja zwraca stan odczytywanego stanu pinu zgodnie z przykładem: val = digitalRead(12); Do zmiennej val zostanie zapisany stan 12 linii portu mikrokontrolera. 

	Liczba dostępnych portów będzie zależeć od zastosowanego mikrokontrolera, choć jest również możliwość ich zwiększenia poprzez dołączenie do niego odpowiednich ekspanderów. Na płytce Arduino UNO dostępne są cyfrowe linie portów oznaczone numerami od 0 do 13. Dlatego tez dla ułatwienia właśnie tymi aliasami można się posługiwać podczas konfigurowania portów I/O.

Funkcje specjalne pinów
-----------------------

Informacje wstępne
^^^^^^^^^^^^^^^^^^

	Wyprowadzenia Arduino oprócz standardowej roli wejść/wyjść cyfrowych posiadają także pewne funkcje specjalne. Są to między innymi: wyprowadzenia sprzętowych interfejsów komunikacyjnych, wyjścia analogowe czy wyjścia timerów (liczników). Dla każdego z nich Arduino posiada bibliotekę, która sprawia, że korzystanie z nich staje się niezwykle proste.

	- Serial: 0 (RX) i 1 (TX).  Używane do odbioru (RX) i nadawania (TX) TTL [Transistor-transistor logic – klasa cyfrowych układów scalonych] danych seryjnych. Te piny są podłączone do odpowiednich styków na  ATmega8U2 USB-to-TTL Serial chip.

	- External Interrupts: 2 i 3. Te piny mogą być skonfigurowane do wyzwalania przerwania o niskiej wartości, wzrastania i opadania wykresu sygnału cyfrowego, lub zmiany wartości (szczegóły: funkcja attachInterrupt()).

	- PWM: 3, 5, 6, 9, 10 i 11. Zapewniają 8-bitowe wyjście PWM z funkcją analogWrite ().

	- SPI: 10 (S), 11 (MOSI), 12 (MISO), 13 (SCK). Te piny obsługują komunikację SPI przy użyciu biblioteki SPI.

	- LED: 13. Gdy pin ma wysoką wartość, dioda LED jest włączona, gdy pin jest niski, to jest wyłączona.

Interfejs szeregowy  (UART)
^^^^^^^^^^^^^^^^^^^^^^^^^^^

	Do transmisji używane są dwie linie: RX (pin 0) – odbiornik (pin 1) oraz TX - nadajnik. Interfejs jest bardzo prosty w konfiguracji, pozwala na wymianę danych z komputerem, bądź obsługę urządzeń cyfrowych np. modułu Bluetooth lub sterownikia serw. Czasem oznaczany jest jako USART. Literka S oznacza jest dane wysyłane są w sposób synchroniczny, czyli do transmisji oprócz TX RX,﻿ potrzebna jest  jeszcze jedna linia - linia zegarowa (CLK).

Przerwania zewnętrzne 
^^^^^^^^^^^^^^^^^^^^^

	Mikrokontroler umożliwia wykonywanie procedur obsługi prze­rwań czyli podprogramów, których wykonanie musi odbyć się na­tychmiast po zaistnieniu określonego zdarzenia. Wtedy wykonywanie programu głównego jest przerywane na czas realizacji podprogramu obsługi przerwania. 

	Przerwania zewnętrzne umożliwiają natychmiastową obsługę zdarzeń zewnętrznych, sygnalizowanych sygnałem logicznym. Zdarzenia mogą być wyzwalane za pomocą zbocza opadającego, narastającego lub jakiejkolwiek zmiany logicznej. Gdy zdarzenie wystąpi procesor natychmiast przerwie wszystkie dotychczasowe operacje i zacznie wykonywać fragment kodu związany z obsługą przerwania.﻿

	Do obsługi przerwania zewnętrz­nego wykorzystywane są funkcje włączające przerwania attachInter­rupt(interrupt, function, mode) oraz wyłączające przerwanie detachIn­terrupt(interrupt). Parametr interrupt jest numerem portu, od którego jest zgłaszane przerwanie. 

	Parametr function to nazwa funkcji, która będzie wykonywana po zaistnieniu przerwania, a mode określa mo­ment zgłoszenia przerwania. Parametr mode ma następujące wartości: 

	- LOW – wywoływane gdy pin posiada stan niski, 

	- CHANGE – wywoływane gdy pin zmieni stan, 

	- RISING – wywoływane przy narastającym zboczu sygnału, 

	- FALLING – wywoływane przy opadającym zboczu sygnału. 



Obsługa generatora PWM 
^^^^^^^^^^^^^^^^^^^^^^

	6 z 14 pinów Arduino Uno (3, 5, 6, 9, 10 i 11), służących jako wyjście lub wejścia, może działać w trybie PWM output, czyli można sterować mocą przekazywaną (doskonale nadaje się do sterowania jasnością świecenia diody). 

	Sygnał PWM (Pulse-width modulation, czyli modulacja szerokości impulsu)  jest to sygnał prostokątny o  modyfikowanym wypełnieniu. Z  wykorzystaniem sygnału PWM i  jego późniejszym uśrednieniu z  wykorzystaniem prostego filtra, składającego się z  rezystora i kondensatora można uzyskać prosty przetwornik cyfrowo-analogowy, na wyjściu którego wartość analogowa (napięcie) będzie zależne od wypełnienia generowanego sygnału PWM. Częstotliwość sygnału PWM w Arduino to około 500 Hz. 

	Do generowania sygnału PWM dostępna jest funkcja analogWrite(<pin>, <value>) gdzie pierwszym parametrem jest numer linii cyfrowej PWM, a value wartością wypełnienia generowanego sygnału PWM w zakresie od 0 do 255. 

	- Wartość 255 daje stałe napięcie 5 V.

	- Wartość 127 daje wypełnienie 50%, czyli napięcie wyjściowe po uśrednieniu 2,5 V.

	- Natomiast wartość 0 daje wypełnienie 0% i napięcie 0 V. 

	Z wykorzystaniem sygnału PWM można modyfikować np. jasność dołączonej diody LED czy prędkości silnika. Sygnał PWM dla mikrokontrolera ATmega168, który zamontowany jest w  Arduino UNO może być generowany na pinach 3, 5, 6, 9, 10 i 11. Na przykład funkcja: 

	analogWrite(5, 127); //Sygnał PWM o wypełnieniu 127 generuje sygnał PWM na pinie 5 o  wypełnieniu 50 %. 

	Nie trzeba również ustawiać linii PWM jako wyjścia przez wywołaniem funkcji analogWrite(), ale dla czytelności programu zalecane jest ustawienie linii PWM jako wyjście z wykorzystaniem funkcji pinMode(). 


Interfejs SPI
^^^^^^^^^^^^^

	Magistrala szeregowa działająca w sposób synchroniczny﻿. Do komunikacji używane są trzy wyprowadzenia: MOSI(11),, MISO (12), SCK(13). Charakteryzuje się wysoką prędkością transmisji, dlatego też jest używana do obsługi szybkich urządzeń (np. pamięci EEPROM, przetworników A/C, C/A). Wykorzystywana jest także do komunikacji z niektórymi wyświetlaczami i czujnikami. 

Pin 13
^^^^^^

	Pin 13 jako jedyny posiada rezystor wbudowany w płytkę Arduino, czego konsekwencją jest zmniejszenie napięcia do 1,7 V. Dlatego można do niego podłączyć diodę bezpośrednio i nie ulegnie ona przepaleniu.

Programy
========

Blink
-----

Opis
^^^^

	Do układu podłącz diodę led – dłuższa noga do pinu, krótsza przez opornik (może być jakakolwiek wartość od 100 Ohm do 100 kOhm –zwróć uwagę jaki ma to wpływ na jasność diody)

	Po zaprogramowaniu mikrokontrolera dioda powinna migać z częstotliowością określaną przez wartości opóźnienia zawarte w funkcji delay()

	W kodzie funkcja delay() wywołana jest dwa razy – za pierwszym razem określa jak długo dioda ma świecić, za drugim razem określa jak długo ma być zgaszona

	Po co jest ten opornik? – Jesli masz zapas diod spróbuj podłączyć jedną bez opornika, chwile poświeci i się przepali, przy odrobinie szczęścia puści również trochę dymu – diody nie lubią dużego natężenia prądu.


	Dlaczego w przykładzie Blink nie ma opornika? – Pin 13 jako jedyny posiada opornik wbudowany w płytkę Arduino dlatego można do niego podłączyć diodę bezpośrednio i nie ulegnie ona przepaleniu.


.. image:: Blink_bb.jpg
   :align: center

.. image:: Blink_schem.jpg
   :align: center

Kod
^^^


	// inicjalizacja zmiennych globalnych:

	int led = 13; 		// Pin 13 ma podłączony LED na płycie.


	// procedura setup() wykonuje się po resecie:

	void setup() 

	{    
              
	pinMode(led, OUTPUT);    // zainicjalizuj pin cyfrowy jako wyjście    

	}

	// procedura loop() - nieskończona pętla:

	void loop()

	{  

	digitalWrite(led, HIGH);   // zapal LED  

	delay(1000);               // czekaj sekundę  

	digitalWrite(led, LOW);    // zgaś LED  

	delay(1000);               // czekaj sekundę

	}

Fade
----

Opis
^^^^

	Program ilustruje zastosowanie funkcji analogWrite() do wytworzenia efektu blaknięcia światła diody LED. AnalogWrite wykorzystuje modulację szerokości impulsu (PWM).


	Obwód:

	Anodę diody LED podłącza się do cyfrowego wyjścia na pinie 9 na Arduino poprzez 220 ohmowy rezystor, natomiast katodę bezpośrednio do uziemienia.


.. image:: fade_bb.jpg
   :width: 600px
   :height: 500px
   :align: center

.. image:: fade_schem.jpg
   :width: 600px
   :height: 500px
   :align: center
Kod
^^^

	int led = 9;           // pin, do którego podłączona jest dioda

	int brightness = 0;    // jak jasna jest dioda

	int fadeAmount = 5;    // jak szybko bleknie dioda

	void setup()  

	{ 

	pinMode(led, OUTPUT);	// zadeklarowanie pinu 9 jako wyjście

	} 

	void loop()  

	{ 
 
	analogWrite(led, brightness); 		// ustawienie jasności pinu 9

	brightness = brightness + fadeAmount;	// zmiana jasności diody dla kolejnych iteracji pętli  
  	
	// odwrócenie kierunku blaknięcia na końcach przedziału:
  
	if (brightness == 0 || brightness == 255) 

	{
    
		fadeAmount = -fadeAmount; 
  
	}

	delay(30);      // odczekanie 30 ms                      

	}

Pushbutton
----------

Opis
^^^^

	Ten przykład ilustruje włączenie lub wyłączeniu diody LED przy naciśnięciu przycisku.

	Podłączamy trzy przewody do płyty Arduino – dwa, zapewniające dostęp do 5 V i uziemienia, oraz jeden, łączący cyfrowy pin z jednym z ramion przycisku. Te samo ramię uziemia się poprzez 10 kOhm-owy rezystor pull-down. Drugie ramię przycisku podłącza się do zasilania 5 V. 

	Gdy przycisk nie jest wciśnięty, nie ma połączenia między dwoma ramionami, więc pin jest podłączony do masy (przez rezystor pull-down) i odczytujemy wartość LOW.

	Gdy przycisk jest wciśnięty, ramiona są połączone, łącząc pin z zasilaniem 5 V, tak że odczytujemy wartość HIGH.

	Ten sam schemat może również działać w przeciwną stronę: z rezystorem pull-up, utrzymującym na wejściu wartość HIGH I zwracającym wartość LOW, gdy przycisk jest wciśnięty. Zachowanie programu zostaje odwrócone: dioda LED świeci się, gdy przycisk nie jest wciśnięty i wyłącza po jego naciśnięciu.

	Po odłączeniu cyfrowego I / O pinu od wszystkiego, LED może migać nieregularnie. To dlatego, że wejście będzie losowo zwracać wartość HIGH lub LOW. Dlatego potrzebny jest w obwodzie rezystor pull-up lub pull-down.


.. image:: Button_bb.jpg
   :width: 600px
   :height: 500px
   :align: center

.. image:: Button_schem.jpg
   :align: center


Kod
^^^
	//przycisk

	//inicjalizacja zmiennych globalnych:

	const int LED = 13; 

	const int BUTTON = 2;

	int val = 0;

	//procedura setup() wykonuje się po resecie:

	void setup()

	{
  
	pinMode(LED, OUTPUT);
  
	pinMode(BUTTON, INPUT);

	}

	//procedura loop() - nieskończona pętla:

	void loop()

	{
  
	val = digitalRead(BUTTON);
  
	digitalWrite(LED, val);

	}


|
|
|
|




	//przycisk odwrotnie

	//inicjalizacja zmiennych globalnych:

	const int LED = 13;

	const int BUTTON = 2;

	int val = 0;

	//procedura setup wykonuje się po resecie:

	void setup()

	{
  
	pinMode(LED, OUTPUT);
  
	pinMode(BUTTON, INPUT);

	}

	//procedura loop – nieskończona pętla:

	void loop()
	
	{
  
	val = 1 - digitalRead(BUTTON);
  
	digitalWrite(LED, val);

	}


Switch
------

Opis
^^^^
	Ten przykład ilustruje włączanie lub wyłączaniu diody LED po naciśnięciu przełącznika.

	Podłączamy trzy przewody do płyty Arduino – dwa, zapewniające dostęp do 5 V i uziemienia, oraz jeden, łączący cyfrowy pin z jednym z ramion przycisku. Te samo ramię uziemia się poprzez 10 kOhm-owy rezystor pull-down. Drugie ramię przycisku podłącza się do zasilania 5 V. 


.. image:: Button_bb.jpg
   :width: 600px
   :height: 500px
   :align: center

.. image:: Button_schem.jpg
   :align: center

Kod
^^^


	//inicjalizacja zmiennych globalnych:

	const int LED = 13;

	const int BUTTON = 7;

	int val = 0;

	int state = 0;

	int old = 0;

	//procedura setup wykonuje się po resecie:

	void setup()

	{
  
	pinMode(LED, OUTPUT);
  
	pinMode(BUTTON, INPUT);

	}

	//procedura loop – nieskończona pętla:

	void loop()

	{
 
	val = digitalRead(BUTTON);
  
  	if ((val == HIGH) && (old == LOW))
 
	{
    
		state = 1-state;
    
		delay(20);
  
	}
  
	old = val;
  
	digitalWrite(LED, state);

	}



Six Diodes
----------

Opis
^^^^

	Program ilustruje zachowanie sześciu diod, migających losowo.

.. image:: Loop_bb.jpg
   :width: 600px
   :height: 500px
   :align: center

.. image:: Loop_schem.jpg
   :width: 600px
   :height: 500px
   :align: center


Kod
^^^

	int time;

	int ledPins[] = {2, 3, 4, 5, 6, 7};

	int ledsNum = 6;

	int raLed;

	int raTime;

	void setup()

	{
 
	for(int led = 0; led < ledsNum; led++)
  
	{
    
		pinMode(ledPins[led], OUTPUT);

	}
	}

	void loop()

	{
  
	time = 110;
  
	raTime = rand() % ledsNum;
  
	if (raTime == 1)
  
	{
    
		time += 100;
  
	}
  
	if (raTime == 2)
  	
	{
    
		time -= 100;
  	
	}
  
	raLed = rand() % ledsNum;
  
	digitalWrite(ledPins[raLed], HIGH);
  
	delay(time);
  
	digitalWrite(ledPins[raLed], LOW);

	}

Traffic light for vehicles
---------------------------

Opis
^^^^

	Program ilustruje działanie sygnalizacji świetlnej dla pojazdów.


.. image:: car.jpg
   :width: 600px
   :height: 500px
   :align: center

.. image:: car_schem.jpg
   :width: 600px
   :height: 500px
   :align: center


Kod
^^^

	//inicjalizacja zmiennych globalnych:

	int time = 2000;

	int ledPins[] = {10, 11, 12};

	int green = ledPins[0];

	int yellow = ledPins[1];

	int red = ledPins[2];

	int num = 3;

	//procedura setup wykonuje się po resecie:

	void setup()

	{
  
	for(int pin = 0; pin < num; pin++)
  
	{
    
		pinMode(ledPins[pin], OUTPUT);
  
	}

	}

	//procedura loop – nieskończona pętla:

	void loop()

	{

  
	digitalWrite(green, HIGH);
  
	delay(4.5 * time);
 
	for(int blink = 0; blink < 2; blink++)
  
	{
    
		digitalWrite(green, LOW);
    
		delay(300);
    
		digitalWrite(green, HIGH);
    
		delay(300);
  	
	}
  
	digitalWrite(green, LOW);
  
	delay(300);
      
  	digitalWrite(yellow, HIGH);
  
	delay(time);
  
	digitalWrite(yellow, LOW);
  
  	digitalWrite(red, HIGH);
  
	delay(8.25 * time);
  
	digitalWrite(yellow, HIGH);
  
	delay(0.75 * time);
  
	digitalWrite(red, LOW);
  
	digitalWrite(yellow, LOW);

	}


Traffic light for vehicles and pedestrians
-------------------------------------------

Opis
^^^^

	Program ilustruje działanie sygnalizacji świetlnej dla pojazdów oraz pieszych.


.. image:: carandpedestrians.jpg
   :width: 600px
   :height: 500px
   :align: center

.. image:: carandpedestrians_schem.jpg
   :width: 600px
   :height: 500px
   :align: center

Kod
^^^

	// pins:

	int traffic_lights[] = {8, 9, 10, 11, 12};

	int num = 5;
  
	// pedestrians:

	int P_red = traffic_lights[0];

	int P_green = traffic_lights[1];

	// vehicles:

	int V_green = traffic_lights[2];

	int V_yellow = traffic_lights[3];

	int V_red = traffic_lights[4];


	void setup()

	{
  
	// pins output activation:
  
	for(int i = 0; i < num; i++)
  
	{
    
		pinMode(traffic_lights[i], OUTPUT);
  	}

	}

	void loop()
	
	{
  
	// vehicle green:
  
	digitalWrite(V_green, HIGH);
    
	// pedestrian red:
  
	digitalWrite(P_red, HIGH);
  
	delay(7900);
  
	// vehicle green blinking:
  
	for(int i = 0; i < 3; i++)
  
	{
    
		digitalWrite(V_green, LOW);
    
		delay(300);
    
		digitalWrite(V_green, HIGH);
    
		delay(300);
 
	}
  
	digitalWrite(V_green, LOW);
  
	delay(300);
  
	// vehicle yellow:
  
	digitalWrite(V_yellow, HIGH);
  
	delay(2000);
  
	digitalWrite(V_yellow, LOW);
  
	// vehicle red:
  
	digitalWrite(V_red, HIGH);
  
	delay(2000);
    
	// pedestrian red / green:
  
	digitalWrite(P_red, LOW);
  
	digitalWrite(P_green, HIGH);
  
	delay(7900);
    
	// pedestrian green blinking:
  
	for(int i = 0; i < 3; i++)
  
	{
    
		digitalWrite(P_green, LOW);
    
		delay(300);
    
		digitalWrite(P_green, HIGH);
    
		delay(300);
  
	}
  
	digitalWrite(P_green, LOW);
  
	delay(300);
    
	// pedestrian red:
  
	digitalWrite(P_red, HIGH);
  
	delay(2000);
  
	// vehicle red with yellow:
  
	digitalWrite(V_yellow, HIGH);
  
	delay(2000);
  
	digitalWrite(V_yellow, LOW);
  
	digitalWrite(V_red, LOW);
    
	// pedestrian red:
  
	digitalWrite(P_red, LOW);

	}

Traffic light - day and night version with pushbutton
------------------------------------------------------

Opis
^^^^

	Program jest symulacją prostej sygnalizacji świetlnej dla pojazdów oraz pieszych, zmieniającej się na tryb nocny przy wykorzystaniu przycisku.



.. image:: TrafficLight_bb.jpg
   :width: 600px
   :height: 500px
   :align: center

.. image:: TrafficLight_schem.jpg
   :width: 600px
   :height: 500px
   :align: center

Kod
^^^

	/* Program simulates one side of a simple crossroad
   
	with traffic lights for vehicles and pedestrians. */

	// pins:

	const int traffic_lights[] = {9, 8, 10, 11, 12};

	int num = 5;

	// pedestrians:

	int P_green = traffic_lights[0];

	int P_red = traffic_lights[1];

	// vehicles:

	int V_green = traffic_lights[2];

	int V_yellow = traffic_lights[3];

	int V_red = traffic_lights[4];

	//button

	const int button = 2;

	int current_value = HIGH;

	int previous_value = HIGH;

	int state = 0;

	void setup()

	{
  
	// pins output activation:
  
	for(int i = 0; i < num; i++)
  
	{
    
		pinMode(traffic_lights[i], OUTPUT);
  
	}
  
	// button
  
	pinMode(button, INPUT);
  
	digitalWrite(button, HIGH);
  
	Serial.begin(9600);

	}

	void loop()

	{
  
	// button
  
  	current_value = digitalRead(button);
  
	if(current_value == LOW && previous_value == HIGH)
  
	{
    
		state = 1 - state;
    
		delay(20);
  
	}
  
  	previous_value = current_value;
  
  	// day mode
  
	if(state == 1)
  
	{
    
		// vehicle green:
    
		digitalWrite(V_green, HIGH);
      
		// pedestrian red:
    
		digitalWrite(P_red, HIGH);
    
		delay(7900);
    
		// vehicle green blinking:	
    
		for(int i = 0; i < 3; i++)
   
 		{
      
			digitalWrite(V_green, LOW);
      
			delay(300);
      
			digitalWrite(V_green, HIGH);
      
			delay(300);
    
		}
    
		digitalWrite(V_green, LOW);
    
		delay(300);
    
		// vehicle yellow:
    
		digitalWrite(V_yellow, HIGH);
    
		delay(2000);
    
		digitalWrite(V_yellow, LOW);
    
		// vehicle red:
    
		digitalWrite(V_red, HIGH);
    
		delay(2000);
      
		// pedestrian red / green:
    
		digitalWrite(P_red, LOW);
    
		digitalWrite(P_green, HIGH);
    
		delay(7900);
      
		// pedestrian green blinking:
    
		for(int i = 0; i < 3; i++)
    
		{
      
			digitalWrite(P_green, LOW);
      
			delay(300);
      
			digitalWrite(P_green, HIGH);
      
			delay(300);
    
		}
    
		digitalWrite(P_green, LOW);
    
		delay(300);
      
		// pedestrian red:
    	
		digitalWrite(P_red, HIGH);
    
		delay(2000);
    
		// vehicle red with yellow:
    
		digitalWrite(V_yellow, HIGH);
    
		delay(2000);
    
		digitalWrite(V_yellow, LOW);
    
		digitalWrite(V_red, LOW);
      
		// pedestrian red:
    
		digitalWrite(P_red, LOW);
  
	}
  
  	// night mode
  
	if(state == 0)
  
	{
    
		digitalWrite(V_yellow, HIGH);
    
		delay(500);
    
		digitalWrite(V_yellow, LOW);
    
		delay(500);
  	}
	}



Bibliografia
============
 
	1. Banzi Massimo, “Getting started with Arduino”

	2. Durfee W., “Arduino Microcontroller Guide”

	3. Evans Brian, “Arduino programming notebook”

	4. Wiązania Marcin, “Elektronika praktyczna”

	5. http://arduino.cc/

	6. http://botland.com.pl/

	7. http://nettigo.pl/

	8. http://www.o.bzzz.net/


