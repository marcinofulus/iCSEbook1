Analiza portfela i wycena aktywów
=================================


Analiza portfela
----------------

Zwykle, myśląc o inwestycji mamy do dyspozycji pewien kapitał własny lub pożyczony. W tej części ograniczymy się do inwestycji na rynkach kapitałowych. Przyjmiemy też upraszczające założenie, że pieniądze są inwestowane w chwili początkowej i interesuje nas wartość naszego portfela w pewnej chwili końcowej [1]_. Wartość ta na ogół nie jest zdeterminowana wartością początkową naszego kapitału. Musimy więc podjąć decyzję w warunkach niepewności. Decyzję, z naszego punktu widzenia  optymalną to znaczy, będąca kompromisem między poziomem ryzyka, które jesteśmy gotowi zaakceptować a naszą chciwością czyli oczekiwanym zyskiem. Przy konstrukcji portfela papierów  wartościowych istotna jest klasa instrumentów, w które chcemy inwestować. W tym miejscu ograniczymy się do przedstawienia klasycznych idei dotyczących portfela złożonego z akcji, bezpiecznych instrumentów (obligacji) oraz pieniędzy (gotówka lub kredyt).


Zarządzanie portfelem instrumentów finansowych
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Przypomnijmy, że pomijając podatki i koszty transakcji, zysk (zwrot) :math:`R_z` i stopę zwrotu :math:`r_z` z inwestycji możemy zdefiniować następująco:

.. math::

   R_z= \frac{K_k-K_0}{K_0}=1+r_z,


gdzie :math:`K_k` to wartość końcowa inwestycji, a :math:`K_0` jest wartością początkową, czyli kwotą zainwestowaną. Formułę tę łatwo można uogólnić by opisywała portfel inwestycji. Załóżmy, że w chwili początkowej mamy portfel o n składnikach :math:`K_{0i},\ i= 1,...n,` takich, że

.. math::

   \sum_{i}K_{0i}=K_0.


Tych samych oznaczeń używamy by opisać sytuację końcową - wskaźnik 0 zastępujemy wskaźnikiem k. Możemy zdefiniować tzw. wagi (udziały) poszczególnych składników jako:

.. math::

   K_{0i}=w_i K_0,\ i=1,...,n,\ \sum _i w_i=1


i jeśli dopuszczamy krótką sprzedaż, to niektóre z :math:`w_i` mogą być ujemne. Jeśli przez :math:`R_i\ (r_i)` oznaczymy zwrot (stopę zwrotu) obliczone dla i-tego składnika portfela to mamy

.. math::

   R_z=\frac{\sum_{i}w_iR_iK_{0}}{K_{0}}=\sum_{i}w_iR_i


oraz

.. math::

   r_z=\sum_{i}w_ir_i.


Załóżmy, że niepewność inwestycji w poszczególne składniki, ma podłoże losowe. W takim przypadku ceny i stopy zwrotu stają się zmiennymi losowymi. Możemy więc zaryzykować probabilistyczny (statystyczny) opis zachowania portfela inwestycji. Przypomnijmy,że oczekiwana stopa zwrotu z portfela :math:`\overline{r}=E(r)` i jej wariancja :math:`\sigma ^2` są dane wzorami:

.. math::

   \overline{r}=\sum _i w_iE(r_i)=\sum _i w_i\overline{r_i}

   \sigma ^2=E((r-\overline{r})^2)=E(\sum _{ij} w_iw_j(r_i-\overline{r_i})(r_j-\overline{r_j}))\equiv\sum _i w_iw_j\sigma_{ij}.


.. admonition:: Wniosek (dywersyfikacja)

   Załóżmy, że wszystkie składniki portfela mają taką samą oczekiwaną stopę zwrotu a i jej wariancję s. 
   
   Wtedy dla :math:`w_i=1/n,\ i=1,...n` mamy
   
   :math:`\overline{r}=\frac{1}{n}\sum_i E(r_i)=m`
   
   oraz
   
   :math:`var(r)=\frac{1}{n^2}\sum_i var(r_i)=\sum _i \frac{s^2}{n^2}=\frac{s^2}{n}`.
   
   Oznacza to, że rozkładając inwestycję na n równorzędnych składników możemy zmiejszyć oczekiwane ryzyko z inwestycji (mierzone wariancją portfela).

   Jeśli pójdziemy dalej tym tropem i będziemy używać wariancji jako "miary ryzyka", często nazywanej volatility w tym kontekście, to możemy "uprościć" nasz problem i analizować tylko zależność oczekiwanej stopy zwrotu z portfela od parametru ryzyka (czyli wariancji).


Model Markowitza
~~~~~~~~~~~~~~~~

\H. Markowitz zaproponował następujące podejście do teorii portfela [2]_. Załóżmy, że na podstawie danych historycznych można estymować wartości oczekiwane stóp zwrotu poszczególnych składników portfela a variancja jest dobrą miarą ryzyka związanego z inwestycją w dany portfel. Wtedy "racjonalny inwestor" mający nadzieję uzyskać określoną stopę stopę zwrotu powinien z wszystkich portfeli o tej samej preferowanej oczekiwanej stopie zwrotu wybrać najmniej ryzykowny czyli minimalizujący wariancję. Oznacza to, że musimy rozwiązać następujący problem: 

minimalizuj

.. math::

   \sum_{ij}w_iw_j\sigma_{ij}


pod warunkiem, że

.. math::

   \sum_{i}w_i\overline{r_i}=\overline{r}


i

.. math::

   \sum_{i}w_i=1


Jak pamiętamy z kursu analizy matematycznej, problem taki można na ogół rozwiązać korzystając z metody czynników Lagrange'a. W tym celu definiujemy lagrangian:

.. math::

   L(\overline{r_1},...,\overline{r_n},\lambda ,\mu)=\sum_{ij}w_iw_j\sigma_{ij}-\lambda (\sum_{i}w_i\overline{r_i}-\overline{r})- \mu (\sum_{i}w_i-1).


Szukamy minimum [3]_ funkcji :math:`L(\overline{r_1},...,\overline{r_n},\lambda ,\mu)`. Warunkiem koniecznym jest znikanie pochodnych cząstkowych:

.. math::

   \frac{\partial L}{\partial \overline{r_i}}=0, \ i=1,...,n

   \frac{\partial L}{\partial \lambda}=0

   \frac{\partial L}{\partial \mu}=0.


Prowadzi to do układu n+2 równań liniowych z n+2 niewiadomymi, który na ogół ma rozwiązanie:

.. math::

   2\sum_{j}w_i\sigma_{ij}-\lambda\overline{r_i}-\mu =0

   \sum_{i}w_i\overline{r_i}=\overline{r}

   \sum_{i}w_i=1,


.. admonition:: Przykład (lemat o dwóch funduszach)

   Model Markowitza ma wiele interesujących właściwości. Omówimy tu jedną z nich, która wynika z formy  opisujących go równań. Załóżmy, że znamy rozwiązania dla dwóch różnych wartości :math:`\overline{r}`, powiedzmy :math:`\overline{r^1}` i :math:`\overline{r^2}`. Łatwo zauważyć [4]_, że kombinacja liniowa tych rozwiązań ze współczynnikami :math:`\alpha` i :math:`(1-\alpha)`, gdzie :math:`\alpha` jest dowolną liczbą rzeczywistą jest również rozwiązaniem, ale   dla oczekiwanej stopy zwrotu :math:`\alpha\overline{r^1} +(1-\alpha)\overline{r^2}`. Oznacza to, że można skonstruować dwa portfele przy pomocy, których można replikować dowolny portfel o zadanej oczekiwanej stopie zwrotu i wariancji. W praktyce, oznacza to, że jeśli nasze kryterium wyboru portfela uwzględnia tylko oczekiwaną stopę zwrotu i jej wariancję, to na danym rynku można wykorzystać do tego celu dwa fundusze inwestycyjne.


W modelu Markowitza definiuje się portfel efektywny jako taki portfel dla którego

* nie istnieje  portfel, który ma niższe ryzyko przy danej oczekiwanej stopie zwrotu
* nie istnieje  portfel, który ma wyższą oczekiwaną stopę zwrotu przy danym poziomie ryzyka.

Racjonalny inwestor powinien więc ograniczyć się do portfeli efektywnych. Portfele efektywne można przedstawić na wykresie jako krzywą opisującą zależność stopy zwrotu od odchylenia standardowego (ryzyka). Wtedy łatwo można zauważyć, że wyróżniony jest jeden portfel efektywny  leżący na półprostej stycznej z zbioru portfeli efektywnych, gdyż ma on najwyższy stosunek oczekiwanej stopy zwrotu do ryzyka (współczynnik kierunkowy tej stycznej). Nazywa się go portfelem rynkowym.


Uogólnienia klasycznej teorii portfela
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Uważny, Czytelnik zapewne zauważył, że inwestor może użyć odmiennych kryteriów przy konstrukcji portfela. Do najważniejszych należą modele oparte o

* inne miary ryzyka
* inne postaci funkcji użyteczności
* bardziej rozbudowane kryteria optymalizacji
* modele stochastycznej dominacji
* portfele specjalistyczne
* optymalizacja całkowitoliczbowa

Nie wszystkie  powyższe klasy są rozłączne. Do najpopularniejszych "niestandardowych" miar ryzyka należą tzw niesymetryczne miary, związane uwypukleniem negatywnych skutków ryzyka: większą wagę przykłada się do ujemnych odchyleń od oczekiwanej stopy zwrotu. Zwykle używa się  semiwariancji (semiodchylenia standardowego) oraz semiodchylenia przeciętnego, które uwzględniają tylko ujemne odchylenia od wartości oczekiwanej. Używane są również różnego rodzaju poziomy bezpieczeństwa zwykle określane (szacowane) jako prawdopodobieństwo, że stopa zwrotu będzie niższa od ustalonej (poziom bezpieczeństwa). Podobnie definiowane poziomy aspiracji jako prawdopodobieństwo, że stopa zwrotu będzie niższa od zakładanej (poziom aspiracji). W tych przypadkach zagadnienia optymalizacyjne stawia się analogicznie, chociaż w przypadku skomplikowanych miar rozwiązania mogą być trudne do uzyskania i analizy.
Z kolei postać funkcji użyteczności [5]_ ma liczbowo reprezentować  nastawienie inwestora do ryzyka, oczekiwanej stopy zwrotu, użyteczności pieniądza itp. Zauważmy, że jeśli skupimy się na bogactwie, z pewnością możemy założyć że inwestor woli mieć więcej niż mniej, co wyrażone w postaci funkcji użyteczności oznacza, że powinna ona być rosnąca. Jednak  w przypadku dużego bogactwa jego wzrost o 1% ma już niewielkie znaczenie na poziom życia inwestora i dominować mogą inne czynniki (np bezpieczeństwo inwestycji) i tak zwana krańcowa użyteczność  może już nawet maleć. W takich podejściach definiuje (przyjmuje) się pewną funkcję użyteczności a tworzenie portfela sprowadza się do optymalizacji oczekiwanej użyteczności.
W modelach stochastycznej dominacji porównuje się dystrybuanty stóp zwrotu. Minimalizujemy, przy pewnych dodatkowych warunkach w zależności od preferencji inwestora, prawdopodobieństwo uzyskania stóp zwrotu co najmniej równych niż dana było największe. 

W portfele specjalistyczne są na ogół konstruowane o inne zasady. Najbardziej znane są portfele arbitrażowe, które zwykle wykorzystują oprogramowanie do automatycznego poszukiwania zysku arbitrażowego. Niektóre instytucje finansowe oferują strategii budowane w oparciu o sztuczną inteligencję wykorzystujące proces automatycznego uczenia się (np. sieci neuronowe). Ostatnio powstaje mnóstwo różnego rodzaju specjalistycznych funduszy inwestycyjnych ograniczających swoją działalność do konkretnego rynku czy jego sektora. Konstruowane w taki sposób mogą portfele mieć krańcowo odmienne relacje między ryzykiem a użytecznością. Wymienimy tu tylko fundusze typu BRIC inwestujące na rynkach **B** razyli, **R** osji **I** ndii i **C** hin.
Więcej szczegółów Czytelnik znajdzie w częściach poświęconych ryzyku.

Osobnym, niezwykle trudnym zagadnieniem jest konstrukcja portfela optymalnego, w którym wagi są liczbami całkowitymi, co oczywiście jest bardziej realistyczne, niż założenie o doskonałej podzielności dóbr. Stosunkowo łatwo można znaleźć przykłady, że metoda "brutalnej siły" czyli takie zaokrąglanie wag by odpowiadały całkowitej liczbie akcji w portfelu nie jest dobrym rozwiązaniem. Współczesne komputery pozwalają na implementację algorytmów, które realizują ten cel. Prowadzone są intensywne badania na tym polu [6]_.


Modele rynku finansowego
------------------------

Teoretyczne modele rynku są dosyć ściśle związane z teorią portfela, co zapewne nie powinno dziwić. Powstały one w czasach, gdy nie istniały jeszcze efektywne narzędzia optymalizacji (szybkie komputery i oprogramowanie) i tworzenie optymalnego portfela rodziło nietrywialne problemy natury obliczeniowej. Zaczęto więc tworzyć uproszczone modele uwzględniające tylko kilka wskaźników rynkowych mających wpływ na stopy zwrotu. Najprostszy jest model Sharpe'a (model jednowskaźnikowy) zakładający, że stopa zwrotu z danej akcji zależy liniowo od wartości jednego tylko indeksu (np indeksu giełdowego) oraz pewnego składnika losowego. Niżej omówimy dwa klasyczne modele tego typu [7]_.


Model wyceny aktywów kapitałowych (CAPM)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

W modelu tym, nazywanym również modelem równowagi, zakłada się, że

* nie ma kosztów transakcji oraz podatków od dochodów
* inwestorzy uwzględniają tylko ryzyko mierzone odchyleniem standardowym  i oczekiwaną stopę zwrotu przy podejmowaniu decyzji oraz tak samo oceniają instrumenty finansowe (jednorodność oczekiwań)
* rynek jest doskonale płynny, a  instrumenty doskonale podzielne
* istnieje krótka sprzedaż i nieograniczona możliwość zaciągania kredytu
* rynek jest w równowadze

Przy powyższych założeniach wszyscy inwestorzy rozwiązują ten sam problem optymalizacyjny i wyznaczone zbiory portfeli efektywnych tworzą tzw. linie rynku kapitałowego daną wzorem:

.. math::

   R=R_f+s\frac{(R_M-R_f)}{s_M},


gdzie :math:`R` to oczekiwana stopa zwrotu z portfela, :math:`s` odchylenie standardowe (ryzyko), :math:`R_M` oczekiwana stopa zwrotu portfela rynkowego, a :math:`R_f` bezpieczna stopą zwrotu. Przy podobnych założeniach można pokazać, że inwestorzy dążą do jak największej dywersyfikacji portfeli, co oznacza że powyższy wzór się upraszcza:

.. math::

   R=R_f+\beta(R_M-R_f),


a ryzyko można mierzyć jednym parametrem :math:`\beta`. W szczególności mamy:

* :math:`\beta =` odpowiada portfelowi rynkowemu
* :math:`\beta =0` odpowiada portfelowi instrumentów bezpiecznych
* :math:`\beta >1` określa tzw portfele agresywne (ryzykowne)
* :math:`0< \beta<1` określa tzw portfele defensywne (mało ryzykowne)
* portfele z :math:`\beta <0` możemy określić jako kiepskie :-).


Model arbitrażu cenowego (APT)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Model arbitrażu cenowego oparty jest o tzw. prawo jednej ceny (działania arbitrażystów) i podobne założenia jak w modelu CAPM, jednak uwzględnia się więcej (m) liniowych czynników :math:`F_{j}` oraz jeden czynnik losowy dla każdego instrumentu:

.. math::

   R_i=a_i +\sum_ j b_{ij}F_{j} + e_i ,


gdzie :math:`R_i` jest stopą zwrotu i-tej akcji, :math:`a_i` jest wolnym parametrem, :math:`F_j` j-tym czynnikiem, :math:`b_{ij}` czynnikiem określającym wrażliwość i-tej akcji na j-ty czynnik, a :math:`e_i` opisuje losowość w wycenie i-tej akcji. Zauważmy, że jeśli założymy, że jedynym czynnikiem ryzyka jest stopa zwrotu z portfela rynkowego to odtworzymy model CAPM. W modelu APT definiuje się tzw portfel arbitrażowy, przy tworzeniu którego nie ponosimy żadnych nakładów. Spełnia on warunki:

.. math::

   \sum_i^n x_i=0,

   \sum_i^n x_ib_{i1}=0,

   \vdots

   \sum_i^n x_ib_{im}=0,

   \sum_i^n x_ie_i=0,


gdzie :math:`n` jest liczbą instrumentów w portfelu, :math:`m` liczbą czynników, a :math:`x_i` kapitałem zainwestowanym w i-ty instrument. Ze względu na liczbę czynników w modelu APT uzyskujemy na ogół hiperpowierzchnie m-wymiarowe opisujące wycenę arbitrażową.

----------

.. [1] Zauważmy, że założenie to trudno uzasadnić w przypadku portfela akcji, ale okazuje się że stosunkowo łatwo można omawiane procedury uogólnić tak by uniknąć tego typu ograniczeń, co również zrobimy  w dalszej części.
.. [2] Idea ta została przedstawiona w słynnej pracy Markowitz, H. (1952), ‘Portfolio Selection’, Journal of Finance, 7(1), 77-91.
.. [3] Tak na prawdę to metoda ta znajduje   ekstremum lub tzw. punkt siodłowy; musimy jeszcze sprawdzić czy jest to rzeczywiście minimum.
.. [4] Wystarczy przejść do macierzowej reprezentacji układu równań liniowych.
.. [5] W zasadzie w każdej teorii portfela istniej jakaś funkcja użyteczności, nawet gdy nie jest explicite wymieniona.
.. [6] Ogólne uwagi i literaturę można znaleźć ostatnio opublikowanej pracy F. Castro i inni, *An algebraic approach to Integer Portfolio problems*,  (http://lanl.arxiv.org/abs/1004.0905).
.. [7] W zasadzie model CAPM może być uważany za szczególny przypadek modelu APT z jednym czynnikiem.

