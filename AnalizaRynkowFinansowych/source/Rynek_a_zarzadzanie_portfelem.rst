Rynek a zarządzanie portfelem instrumentów finansowych
======================================================


Jeśli naszym celem jest inwestowanie na runkach finansowych i osiągniecie zysku z tej działalności to niewątpliwie musimy sobie stworzyć pewien model działania rynku i ewolucji cen notowanych na nim instrumentów. Zagadnieniami tego rodzaju zajmuje się matematyka (inżynieria) finansowa. Poniżej  krótko omówimy najważniejsze założenia i hipotezy używane przy modelowaniu zachowania rynków finansowych. Więcej szczegółów Czytelnik znajdzie w częściach poświęconych ryzyku i teorii portfela.


Hipoteza rynku efektywnego
--------------------------

Hipoteza rynku efektywnego (efficient market hypothesis) to teza rozważana w teorii rynku i finansach, zgodnie z którą w każdej chwili ceny papierów wartościowych w pełni odzwierciedlają wszystkie informacje dostępne na ich temat. Po raz pierwszy założenie o efektywności rynku efektywnego pojawiło się 1900 roku w rozprawie doktorskiej Louisa Bacheliera [1]_. Jego praca pozostała jednak w dużej mierze zignorowana przez współczesne mu środowiska naukowe. Popularnośc  hipotezy rynku efektywnego datuje się od lat 60. XX wieku. Zwykle formułuje się ją w kilku nierównoważnych wersjach. Najpopularniejsze są definicje zaproponowane przez Eugene E. Famę [2]_:

.. admonition:: Definicja (hipoteza rynku efektywnego)

   *Słaba hipoteza rynku* efektywnego zakłada, że obecne ceny papierów wartościowych uwzględniają wszystkie historyczne informacje i dane dotyczące rynku [3]_. 

   *Semi-mocna hipoteza rynku efektywnego* zakłada, że obecne ceny papierów wartościowych odzwierciedlają wszystkie publicznie dostępne informacje, bieżące i  historyczne raporty finansowe, prognozy ekonomiczne, itp. [4]_.

   *Mocna hipoteza rynku efektywnego* zakłada, że obecne ceny papierów wartościowych odzwierciedlają wszystkie dostępne informacje, zarówno publiczne, jak i niepubliczne [5]_.


Sanford Grossman i Joseph E. Stiglitz byli pierwszymi naukowcami, którzy kwestionowali efektywność rzeczywistych rynków [6]_. Argumentowali oni między innymi, że w sytuacji braku możliwości uzyskania ponadprzeciętnych zysków potencjalni inwestorzy nie mieliby motywacji do podjęcia analizy papierów wartościowych koniecznej do ich efektywnej wyceny [7]_. Inną przyczyną nieefektywności rynków rzeczywistych może być to, że ludzie popełniają systematyczne błędy przy prognozowaniu przyszłości [8]_.


Arbitraż
-----------

Jednym z ważniejszych pojęć używanych do opisu procesu równoważenia rynku jest arbitraż (arbitrage). Termin ten odnosi się do sytuacji, gdy możliwa jest łączona transakcja rynkowa kupna/sprzedaży towarów lub papierów wartościowych, umożliwiająca uzyskanie zysku bez ponoszenia ryzyka. Istotą arbitrażu jest zaistnienie różnicy cen tego samego instrumentu na różnych rynkach lub na tym samym rynku, ale pod równoważnymi postaciami. W przypadku, gdy  różnica cen jest większa od kosztów transakcyjnych, możliwe jest osiągnięcie zysku kupując instrument na rynku tańszym, a sprzedając na droższym [9]_. 

Wyróżnia się dwa rodzaje arbitrażu:

* **Arbitraż I rodzaju** - istnieje inwestycja gwarantująca brak strat, która jest  finansowana przez kredyt spłacany w momencie  zapadalności tej inwestycji. 
* **Arbitraż II rodzaju** - istnieje pozbawiona ryzyka szansa osiągnięcia zysku bez ponoszenia nakładów. 

W kontekście arbitrażu pojawia się pojęcie  *prawa jednej ceny*:

.. admonition:: Prawo jednej ceny

   Mówimy, że spełnione jest prawo jednej ceny, jeśli nie istnieją dwie inwestycje (dwa instrumenty finansowe) o  identycznych rozkładach prawdopodobieństwa przyszłych korzyści i różnych cenach bieżących.


Zwykle zakłada się, że  płynny rynek nie daje możliwości arbitrażu, dokładniej wszelkie możliwości arbitrażu są natychmiast wykorzystywane (i dlatego likwidowane), np. przez inwestorów wykorzystujących arbitraż jako strategie inwestycyjną. Brak możliwości arbitrażu jest podstawą wielu modeli rynku i wyceny różnych instrumentów finansowych.


Płynność rynku
--------------

Płynność (liquidity) rynku to termin ekonomiczny określający możliwość  wykonywania transakcji pewnym dobrem. Jeśli te transakcje można wykonywać bez ograniczeń, mówimy o tym, że rynek jest płynny. Brak płynności rynku jest tożsamy ze stanem braku możliwości wykonywania transakcji spowodowanym faktem, że co najmniej jedna ze stron transakcji  nie jest zainteresowana  lub nie ma możliwości dokonywania transakcji. Ograniczona płynność rynku może powodować drastyczne zmiany cen lub brak możliwości kupna/sprzedaży pożądanej ilości danego dobra. Zauważmy, że płynność jest niezwykle istotna w praktyce: cóż z tego, że osiągniemy ponadprzeciętne zyski z inwestycji w mało płynny instrument skoro przy zamykaniu pozycji możemy stracić lwią część papierowego zysku (zaś próba zamknięcia nietrafionej inwestycji może zakończyć się prawdziwą katastrofą).


Podzielność dóbr
----------------

W wycenie instrumentów finansowych oraz modelowaniu rynków często zakłada się również tzw nieskończoną podzielność dóbr [10]_. Założenie to umożliwia korzystanie z osiągnięć analizy matematycznej i teorii miary (prawdopodobieństwa). W większości sytuacji nie jest ono zbyt ograniczające.


Krótka sprzedaż
---------------

Jednym z częstszych założeń czynionych przy modelowaniu zachowania ceny instrumentów pochodnych oraz portfela inwestycyjnego jest możliwość krótkiej sprzedaży (short selling). Przez krótką sprzedaż rozumie się sprzedaż dobra, którego nie posiadamy. Może ona być realizowana na dwa sposoby:
* sprzedaż pożyczonego w odrębnej umowie dobra, najczęściej dotyczy akcji
* w przypadku instrumentów pochodnych możliwa jest abstrakcyjna sprzedaż - na rachunku pojawia się wtedy ujemna liczba posiadanych instrumentów.
Możliwość krótkiej sprzedaży umożliwia również stosowanie bardziej wyrafinowanych strategii inwestycyjnych.


Racjonalność inwestorów
-----------------------

Jednym z powszechnych założeń dotyczących zachowania inwestora na rynku jest hjego racjonalność, czyli kierujący się zasadą zawsze najlepiej dla siebie [11]_. Rynki to praktycznie nieograniczone źródło danych. Bardzo trudnym jest wyłowienie informacji istotnej z tła nic nie znaczącego szumu (szum jest sam w sobie istotną informacją!). Problem w tym, że ludzki umysł zwykle przyswaja (zauważa)tylko informacje, które są wygodne dla naszych teorii. Nie dotyczy to oczywiście tylko rynku - by przeżyć w otaczającym nas środowisku nasz mózg musi wyselekcjonować istotne informacje. Robi  to bardzo dobrze w życiu codziennym. Niestety metody te nie muszą być równie skuteczne przy poruszaniu się po rynkach, gdyż one rządzą się swoistym obiektywizmem i nie ma tu wyróżnionych czy ulubionych  z punktu widzenia inwestora informacji. Większość analityków i inwestorów przez lata dopracowuje swój zestaw czynników i na ich podstawie podejmuje decyzje. Tak zwani "guru rynkowi" nie mają naszym zdaniem specjalnych predyspozycji do "czytania informacji rynkowych" lecz odnoszą czysto statystyczny sukces [12]_. Wiele analiz rynkowych tłumaczących to samo zachowanie rynku tak bardzo się od siebie różni. Pod presją czasu ich twórcy wychwytują jedynie informacje ze swojego zestawu ulubionych wskaźników (najczęściej z tzw. analizy technicznej). Najlepiej, kiedy nowo wyszukane informacje nie kłócą się z którąś z dawnych prognoz. Często prowadzi to do zupełnie sprzecznych wniosków i to samo wydarzenie jednym sugeruje dalsze spadki, np. kursu dolara, a drugim  potwierdzenie pojawienia się wzrostów. Błąd  polega na poszukiwaniu informacji spójnych z naszymi subiektywnymi sądami przy ignorowaniu faktów, które bez problemu obalają nasze teorie. Biorąc pod uwagę dużą liczbę komentarzy, prawdopodobieństwo, że któraś z prognoz jest trafna jest dosyć duże - nie oznacza to jednak, że powinniśmy bezwarunkowo ufać komentatorom.   
Zagadnieniami tymi zajmuje się psychologia finansów i psychologia behawioralna (Kahneman i Tversky).


Losowość zjawisk rynkowych
--------------------------

Każdy inwestor próbuje przewidzieć zachowanie się rynku w mniej lun bardziej odległej przyszłości i ma nadzieję, że robi to lepiej niż większość innych inwestorów. Wysunięto szereg hipotez i zaproponowano mnóstwo modeli dotyczących ewolucji cen dóbr rynkowych. Niestety ich weryfikacja jest trudna, jeśli nie niemożliwa ze względu na złożoność procesów rynkowych. Nie powinno nas więc dziwić, że zachowania inwestorów w dużej mierze odzwierciedlają ich subiektywne odczucia dotyczące rynku. Z teoretycznego (matematycznego) punktu widzenia wydaje się, że najbardziej "rozsądna" analiza procesów rynkowych powinna opierać się o założenie nieprzewidywalności rynku i stosowania narzędzi statystycznych i probabilistycznych w modelowaniu. Zauważmy, że "randomizacja" togo typu jest  dosyć silnym założeniem. Ma jednak wiele zalet i jest podstawą matematyki finansowej. Należy jednak zawsze pamiętać, że mimo słuszności wielu z powstałych teorii i modeli są one tylko teoriami, a występowanie anomalii rynkowych jest tak powszechne, że nie można  ich traktować tylko jako nieistotne odstępstwa od normy. Nieprzewidywalne i niewyobrażalne zjawiska (tzw. czarne łabędzie) mogą nas w jednej chwili doprowadzić do bankructwa. Powszechnie wiadomo, że „prognozowanie jest bardzo trudne, szczególnie gdy dotyczy przyszłości”. Dlatego własnie na rynkach zalecana jest ostrożność we formułowaniu sądów, opinii a przede wszystkimw podejmowaniu działań.

----------

.. [1] Théorie de la Spéculation, promotorem był H. Poincare, znany francuski matematyk.
.. [2] Eugene F Fama. Efficient Capital Markets: A Review of Empirical Work. „Journal of Finance”. 25 (2)  (1970) 383.
.. [3] Oznacza to, że przyszłych zmian cen nie można w żaden sposób przewidzieć na podstawie przeszłych cen i innych wskaźników takich jak wysokość obrotów. Gdyby ta hipoteza była prawdziwa, wówczas zastosowanie analizy technicznej jako narzędzia do podejmowania decyzji inwestycyjnych nie mogłoby przynieść statystycznie istotnych ponadprzeciętnych zysków.
.. [4] Gdyby ta hipoteza była prawdziwa, to  zastosowanie zarówno analizy technicznej, jak i analizy fundamentalnej do podejmowania decyzji inwestycyjnych nie mogłoby przynieść statystycznie istotnych ponadprzeciętnych zysków.
.. [5] Gdyby ta hipoteza była prawdziwa, wówczas ani analiza techniczna, ani fundamentalna, ani nawet insider trading nie mógłby odnieść statystycznie istotnych zysków.
.. [6] Sanford J. Grossman, Joseph E. Stiglitz. On the Impossibility of Informationally Efficient Markets. „American Economic Review”. 70, (1980) 393.
.. [7] Koszt dostępu do informacji i analizy papierów wartościowych jest istotnym elementem ograniczającym efektywność rynków finansowych. Wynika stąd to, że rynki charakteryzujące się wysokimi kosztami analizy powinny mieć niższy poziom efektywności niż te o niskich kosztach analizy. Oczywiście, oznacza to też, że nie wszyscy inwestorzy mają jednakowy dostęp do istotnych informacji.
.. [8] A także, np. manipulacje i inne niezgodne z prawem działania.
.. [9] Tym samym terminem określa się również strategię inwestycyjną polegającą na szukaniu możliwości arbitrażowych. W matematyce finansowej arbitrażem nazywa  się strategię kupna/sprzedaży  instrumentów finansowych  pochodnych, w której istnieje dodatnie prawdopodobieństwo zysku bez ryzyka poniesienia strat.
.. [10] Obliczenia bez tego założenia są oczywiście również możliwe, ale są żmudne i znacznie trudniejszym zadanie jest uzyskanie  zwartych formuł analitycznych.
.. [11] Jest to oczywiście spore uproszczenie. Zauważmy, że dla nas racjonalność (mądrość) inwestora nie jest związana bezpośrednio z jego wykształceniem czy inteligencją - zakładamy, że świadomie nie działa on na swoją szkodę (może jednak wykonywać ruchy mniej lub bardziej ryzykowne, w zależności od swojego nastawienia do ryzyka).
.. [12] Każdy potencjalny inwestor powinien jako obowiązkową lekturę potraktować książki Nassima Taleba (http://www.fooledbyrandomness.com/).

