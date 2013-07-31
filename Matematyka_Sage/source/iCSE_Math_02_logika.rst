.. -*- coding: utf-8 -*-


LOGIKA
=======

Celem tego krótkiego wykładu z logiki jest przypomnienie, bądź podanie,  podstaw rachunku zdań i działań na zbiorach. Wprowadzimy także funkcję zdaniową, kwatyfikatory i relacje. A zakończymy zdefiniowaniem funkcji, która jest podstawowym pojęciem używanym w matematyce.



- **Rachunek zdań** 




Każda nauka jest zbiorem zdań, które zwykle są ze sobą powiązane. Pomiędzy zdaniami zachodzą związki. Większość z tych zdań to zdania twierdzące, czyli takie którym można przyporządkować jedną z dwóch wartości logicznych:



- 1 \- prawda, 


- 0 \- fałasz, 



Logika zajmuje się badaniem zdań twierdzących i takimi zdaniami będziemy się teraz zjamować. Logika nie zajmuje sie zdaniami np. pytającymi, którym nie można przyporządkować wartości logiczne (np.  *Jutro będzie padał deszcz* ). Dla skrócenia zapisu jako  *zdanie*  będziemy rozumieli zdanie twierdzące, któremu można przypisać jedną z dwóch wartości logicznych.


Zdania mogą być proste albo złożone. Zdanie jest proste wtedy gdy można mu \emph {od razu} przyporządkować wartość logiczną. Zadnie złożone jest zbudowane z dwóch lub więcej zdań prostych połączonych jednym z pięciu spójników (funktorów).



.. math::    

   {\text \begin{center} \begin{tabular}{|c|c|c|} \hline Spójnik/funktor & Nazwa & Symbol \\ \hline ...lub... & alternatywa, suma & $\lor$ \\ ...i...   & koniunkcja, iloczyn  & $\land$ \\ jeżeli...to... & implikacja, wynikanie & $\Rightarrow$ \\ wtedy i tylko wtedy & równoważność & $\Leftrightarrow$ \\ nieprawda, że & negacja, zaprzeczenie & $\sim$ \\ \hline \end{tabular} \end{center}}


.. end of output

Zauważmy, że argumentem  *negacji*  jest jedno zdanie proste, natomiast w pozostałe cztery spójniki łączą dwa zdania proste. Prowadzowość zdania złożonego zależy od:



- wartości logicznej zdań prostych tworzących zdanie złożone, 


- wartości logicznej zdań prostych tworzących zdanie złożone. 



W przypadku zdania złożonego utworzonego z dwóch zdań prostych :math:`p` i :math:`q` mamy cztery możliwości (po dwie 0 lub 1) wartości logicznych. Są one podane w poniższej tabeli, dla pięciu funktorów.


.. code-block:: python

    sage: %hide
    sage: %auto
    sage: %latex
    sage: \begin{tabular}{|c|c|c|c|c|c|c|} \hline
    sage: p & q & p $\lor$ q & p $\land$ q & p $\Rightarrow$ q & p $\Leftrightarrow$ q & $\sim$p \\   
    sage: \hline
    sage: 1 & 1 & 1 & 1 & 1 & 1 & 0 \\
    sage: 1 & 0 & 1 & 0 & 0 & 0 & 0 \\
    sage: 0 & 1 & 1 & 0 & 1 & 0 & 1 \\
    sage: 0 & 0 & 0 & 0 & 1 & 1 & 1 \\
    sage: \hline
    sage: \end{tabular}


.. end of output

Wnioski z powyższej tabeli są następujące:



- alternatywa dwóch zdań prostych jest prawdziwa, jeżeli chociaż jedno z nich jest prawdziwe, 


- koniunkcja dwóch zdań prostych jest prawdziwa jednie wtedy, gdy oba zdania są prawdziwe, 


- implikacja jest fałszywa jedynie wtedy, gdy poprzednik (zdanie  *p* ) jest prawdziwy, a następnik (zdanie  *q* ) jest fałszywy, 


- równoważność jest prawdziwa gdy wartość logczna obu zdań prostych jest taka sama. 



Dla niektórych kombinacji spójników łączących zdania proste otrzymujemy formuły których wartość logiczna jest prawdziwa  *zawsze* , tzn.  niezależnie od wartości logicznych zdań składowych. Takie wyrażenia nazywamy prawami rachunku zdań lub tautologiami.


Poniżej przedstawiono przykłady tautologii ( *p* ,  *q*  i  *r*  oznaczają zdania proste):



- prawo podwójnego przeczenia: :math:`\sim`(:math:`\sim`):math:`\it p` :math:`\Leftrightarrow` :math:`\it p` 


.. code-block:: python

    sage: %hide
    sage: %auto
    sage: import sage.logic.propcalc as propcalc
    sage: f = propcalc.formula("~(~p)")
    sage: f.truthtable()
    p      value
    False  False  
    True   True   

.. end of output

- prawo przemienności alterantywy: (:math:`\it p` :math:`\lor` :math:`\it q`) :math:`\Leftrightarrow` (:math:`\it q` :math:`\lor` :math:`\it p`) 


.. code-block:: python

    sage: %hide
    sage: %auto
    sage: import sage.logic.propcalc as propcalc
    sage: f = propcalc.formula("p|q")
    sage: f.truthtable()
    p      q      value
    False  False  False  
    False  True   True   
    True   False  True   
    True   True   True   

.. end of output

- prawo przemienności koniunkcji: (:math:`\it p` :math:`\land` :math:`\it q`) :math:`\Leftrightarrow` (:math:`\it q` :math:`\land` :math:`\it p`) 


.. code-block:: python

    sage: %hide
    sage: %auto
    sage: import sage.logic.propcalc as propcalc
    sage: f = propcalc.formula("p&q")
    sage: f.truthtable()
    p      q      value
    False  False  False  
    False  True   False  
    True   False  False  
    True   True   True   

.. end of output

- prawo łączności alterantywy: [:math:`\it p` :math:`\lor` (:math:`\it q` :math:`\lor` :math:`\it r`)] :math:`\Leftrightarrow` [(:math:`\it p` :math:`\lor` :math:`\it q`) :math:`\lor` :math:`\it r`] 


.. code-block:: python

    sage: %hide
    sage: %auto
    sage: import sage.logic.propcalc as propcalc
    sage: f = propcalc.formula("p|(q|r)")
    sage: f.truthtable()
    p      q      r      value
    False  False  False  False  
    False  False  True   True   
    False  True   False  True   
    False  True   True   True   
    True   False  False  True   
    True   False  True   True   
    True   True   False  True   
    True   True   True   True   

.. end of output

- prawo łączności koniunkcji: [:math:`\it p` :math:`\land` (:math:`\it q` :math:`\land` :math:`\it r`)] :math:`\Leftrightarrow` [(:math:`\it p` :math:`\land` :math:`\it q`) :math:`\land` :math:`\it r`] 


.. code-block:: python

    sage: %hide
    sage: %auto
    sage: import sage.logic.propcalc as propcalc
    sage: f = propcalc.formula("p&(q&r)")
    sage: f.truthtable()
    p      q      r      value
    False  False  False  False  
    False  False  True   False  
    False  True   False  False  
    False  True   True   False  
    True   False  False  False  
    True   False  True   False  
    True   True   False  False  
    True   True   True   True   

.. end of output

- prawo rozdzielności alterantywy względem koniunkcji: [:math:`\it p` :math:`\lor` (:math:`\it q` :math:`\land` :math:`\it r`)] :math:`\Leftrightarrow` [(:math:`\it p` :math:`\lor` :math:`\it q`) :math:`\land` (:math:`\it p` :math:`\lor` :math:`\it r`)] 


.. code-block:: python

    sage: %hide
    sage: %auto
    sage: import sage.logic.propcalc as propcalc
    sage: f = propcalc.formula("(p|q)&(p|r)")
    sage: f.truthtable()
    p      q      r      value
    False  False  False  False  
    False  False  True   False  
    False  True   False  False  
    False  True   True   True   
    True   False  False  True   
    True   False  True   True   
    True   True   False  True   
    True   True   True   True   

.. end of output

- prawo rozdzielności koniunkcji względem alternatywy: [:math:`\it p` :math:`\land` (:math:`\it q` :math:`\lor` :math:`\it r`)] :math:`\Leftrightarrow` [(:math:`\it p` :math:`\land` :math:`\it q`) :math:`\lor` (:math:`\it p` :math:`\land` :math:`\it r`)] 


.. code-block:: python

    sage: %hide
    sage: %auto
    sage: import sage.logic.propcalc as propcalc
    sage: f = propcalc.formula("(p&q)|(p&r)")
    sage: f.truthtable()
    p      q      r      value
    False  False  False  False  
    False  False  True   False  
    False  True   False  False  
    False  True   True   False  
    True   False  False  False  
    True   False  True   True   
    True   True   False  True   
    True   True   True   True   

.. end of output

- I-sze prawo de Morgana: :math:`\sim`($\it p   


.. MATH::

    \land:math:` `\it q:math:`) `\Leftrightarrow:math:` `\sim

 \it p:math:` `\lor:math:` `\sim:math:` `\it q$, czyli zaprzeczenie koniukcji jest równoważne alterantywie zaprzeczeń,

.. code-block:: python

    sage: %hide
    sage: %auto
    sage: import sage.logic.propcalc as propcalc
    sage: f = propcalc.formula("~(p&q)")
    sage: f.truthtable()
    p      q      value
    False  False  True   
    False  True   True   
    True   False  True   
    True   True   False  

.. end of output

- II-gie prawo de Morgana: :math:`\sim`($\it p   


.. MATH::

    \lor:math:` `\it q:math:`) `\Leftrightarrow:math:` `\sim

 \it p:math:` `\land:math:` `\sim:math:` `\it q$, czyli zaprzeczenie alternatywy jest równoważne koniunkcji zaprzeczeń.

.. code-block:: python

    sage: %hide
    sage: %auto
    sage: import sage.logic.propcalc as propcalc
    sage: f = propcalc.formula("~(p|q)")
    sage: f.truthtable()
    p      q      value
    False  False  True   
    False  True   False  
    True   False  False  
    True   True   False  

.. end of output

Prawdziwość praw rachunku zdań można sprawdzić m.in. metodą zero\-jedynkową. W metodzie tej sprawdza się tautologię dla wszystkich kombinacji wartości logicznych zdań prostych \- 4 kombinacje dla dwóch zdań prostych tworzących tautologię, 8 kombinacji dla trzech zdań prostych, itd. W poniższych dwóch przykładach sprawdzimy:


I\-sze prawo de Morgana


.. code-block:: python

    sage: %hide
    sage: %auto
    sage: %latex
    sage: \begin{tabular}{|c|c|c|c|c|c|c|} \hline p & q & $\sim$ p & $\sim$ q & p $\land$ q & $\sim$ (p $\land$ q) & $\sim$ p $\lor$ $\sim$ q \\    \hline 1 & 1 & 0 & 0 & 1 & \bf{0} & \bf{0} \\ 1 & 0 & 0 & 1 & 0 & \bf{1} & \bf{1} \\ 0 & 1 & 1 & 0 & 0 & \bf{1} & \bf{1} \\ 0 & 0 & 1 & 1 & 0 & \bf{1} & \bf{1} \\ \hline \end{tabular}


.. end of output
i prawo rozdzielności koniunkcji względem alterantywy
.. code-block:: python

    sage: %hide
    sage: %auto
    sage: %latex
    sage: \begin{tabular}{|c|c|c|c|c|c|c|c|} \hline p & q & r & q $\lor$ r & p $\land$ (q $\lor$ r)& p $\land$ q & p $\land$ r & (p $\land$ q) $\lor$ (p $\land$ r) \\    \hline 1 & 1 & 1 & 1 & \bf{1} & 1 & 1 & \bf{1} \\ 1 & 1 & 0 & 1 & \bf{1} & 1 & 0 & \bf{1} \\ 1 & 0 & 1 & 1 & \bf{1} & 0 & 1 & \bf{1} \\ 1 & 0 & 0 & 0 & \bf{0} & 0 & 0 & \bf{0} \\ 0 & 1 & 1 & 1 & \bf{0} & 0 & 0 & \bf{0} \\ 0 & 1 & 0 & 1 & \bf{0} & 0 & 0 & \bf{0} \\ 0 & 0 & 1 & 1 & \bf{0} & 0 & 0 & \bf{0} \\ 0 & 0 & 0 & 0 & \bf{0} & 0 & 0 & \bf{0} \\ \hline \end{tabular}


.. end of output

Jak widzimy odpowiednie (wytłuszczone) kolumny w dwóch powyższych tabelach są identyczne co stanowi dowód tych tautologii, powieważ równoważność jest prawdziwa wtedy gdy wartości logiczne obu jej stron są takie same. Można zauważyć, że niektóre z tautologii odpowiadają znanym nam prawom działania na liczbach (alternatywa to dodawanie, a koniunkcja to mnożenie).



- **Funkcja zdaniowa** 




Funkcja zdaniowa zmiennej :math:`x \in X` to wyrażenie w którym występuje zmienna :math:`x`. Funkcja zdaniowa staje się zdaniem gdy w miejsce zmiennej :math:`x` wstawimy nazwę elementu ze zbioru :math:`X`. Wartość logiczna funkcji zdaniowej nie jest określona, a o prawdziwości (bądź nieprawdziwości) funkcji zdaniowej możemy wnioskować dopiero po wstawieniu w miejsce zmiennej :math:`x` elementu ze zbioru :math:`X`.


Przykłady funkcji zdaniowych:



- Dnia :math:`x` była ładna pogoda. Ta funkcja zdaniowa staje sie zdaniem (takim jakim zajmuje sie logika), gdy za :math:`x` wstawimy datę i wtedy można takiemu zdaniu nadać wartość logiczną. 


- :math:`x < 5, x \in R`. Ta funkcja zdaniowa jest prawdziwa np. dla :math:`x = 3`, a jest fałszywa np. dla :math:`x = 17.2`. I oczywiście po wstawieniu za :math:`x`  dowolnej liczby rzeczywistej od razu możemy określić wartość logiczna zdania powstałego z funkcji zdaniowej.  




- **Kwantyfikatory** 



W logice i matematyce stosuje się dwa rodzaje kwatyfikatorów:



- :math:`\bigvee` - kwantyfikator szczegółowy będący odpowiednikiem  *istnieje* . Poniżej przedstawiono dwa przykłady użycia kwantyfikatora szczególowego. 



:math:`\bigvee_{x \in X} P(x)` czytamy jako: istnieje :math:`x` należące do zbioru :math:`X`  takie, że spełniony jest warunek :math:`P(x)` (lub że zachodzi warunek :math:`P(x)`),


:math:`\bigvee_{W(x)} P(x)` czytamy jako: istnieje :math:`x` spełniające warunek :math:`W(x)`  takie, że zachodzi :math:`P(x)`.



- :math:`\bigwedge` - kwantyfikator ogólny odpowiadający \emph {dla każdego}. I znowu dwa przykłady użycia kwantyfikatora ogólnego. 



:math:`\bigwedge_{x \in X} P(x)` czytamy jako: dla każdego :math:`x` należącego do zbioru :math:`X` spełniony jest warunek :math:`P(x)` (lub zachodzi warunek :math:`P(x)`),


:math:`\bigwedge_{W(x)} P(x)` czytamy jako: dla każdego {x} spełniającego warunek :math:`W(x)` zachodzi :math:`P(x)`.


Kwantyfikatory przekształcają funkcje zdaniowe w zdania, przy czym zarówno kwantyfikator szczególowy, jak i kwantyfikator ogólny mogą przekształcić funkcje zdaniową zarówno w zdanie prawdziwe jak i fałszywe. Prawdziwość zdania zależy zarówno od rodzaju kwantyfikatora, jak i postaci funkcji zdaniowej. Ilustrują to poniższe 4 przykłady:



- :math:`\bigwedge_{x \in R}` x:math:`^ 2` + 1 > 0, kwantyfikator ogólny przekształcił funkcję zdaniową w zdanie prawdziwe, 


- :math:`\bigwedge_{x \in N}` x < 7, kwantyfikator ogólny przekształcił funkcję zdaniową w zdanie fałszywe, 


- :math:`\bigvee_{x \in R}` x:math:`^ 2` = 0, kwantyfikator szczególowy przekształcił funkcję zdaniową w zdanie prawdziwe, 


- :math:`\bigvee_{x \in R}` x:math:`^ 2` < -1, kwantyfikator szczególowy przekształcił funkcję zdaniową w zdanie fałszywe. 



W rachunku kwatyfikatorów mamy, podobnie jak w rachunku zdań, prawa czyli tautologie, ale nie będziemy ich tutaj omawiać.



- **Algebra zbiorów, czyli działania na zbiorach** 



Zbiór jest pojęciem pierwotnym, czyli pojęciem którego nie definiujemy. Podobnie pojęciem pierwotnym jest punkt. Element  *a*



- należy do zbioru A co zapisujemy jako :math:`\it{a}` :math:`\in` A, bądź 


- nie należy do zbioru A co zapisujemy jako :math:`\it{a}` :math:`\notin` A. 



Zbiór możemy okreslić w jeden z dwóch następujących sposobów:



- wymienienie jego elementów, oczywiscie jedynie wtedy gdy liczba elementów zbioru jest skończona. Np.   $ A = \{a_{1}, a_{2},...,a_{n}\},  *zbiór n\-elementowy* , $ 


- podanie warunku, który muszą spełniać elementy należące do zbioru. Warunkiem tym może być funkcja zdaniowa. Np.   :math:`A = \{x: f(x)\},` do zbioru A należą te elementy  *x* , które spełniają warunek  *f(x)* . Np.   :math:` B = \{n \in N: n\leq20\}, ` do zbioru B należą liczby naturalne mniejsze lub równe 20. Oczywiście zbiór B moglibyśmy okreslić także w inny sposób, po prostu wymieniając jego elementy :math:` A = \{x: 1,2,3,...,20\}.  ` 



Jak sie dalej okaże ważnym zbiorem jest zbiór pusty :math:`\oslash` do którego nie należy ani jeden element.


Podstawowe działania na zbiorach to:



- suma zbiorów  :math:` A \cup B = \{x: x \in A \lor x \in B\}.  `  czyli element x należy do sumy zbiorów A i B, jeżeli należy do jednego z nich, przy czym może również należeć do obu zbiorów. 


- iloczyn zbiorów  :math:` A \cap B = \{x: x \in A \land x \in B\}.  `  czyli element x nalezy do iloczynu zbiorów A i B tylko wtedy, gdy należy równocześnie do zbiorów A i B. 


- różnica zbiorów  :math:` A \setminus B = \{x: x \in A \land x \notin B\}.  `  czyli element x należy do różnicy zbiorów A i B tylko wtedy, gdy należy do zbioru A i nie należy do zbioru B. 


- zawieranie się zbiorów  :math:` A \subset B \Leftrightarrow \bigwedge_{x} (x \in A \Rightarrow x \in B),  `  tzn. jeżeli element  *x*  nalezy do zbioru A to jednocześnie należy do zbioru B. Operacja zawierania się zbiorów pozwala zdefiniować równość dwóch zbiorów, która zachodzi wtedy gdy zbiór A zawiera się w zbiorze B i jednocześnie zbiór B zawiera się w zbiorze A.   :math:` A = B \Leftrightarrow A \subset B \land B \subset A. ` 


- A' dopełnienie zbioru A  :math:` A' = X \setminus A \quad \mathrm{je\dot{z}eli} \quad A \subset X,  `  czyli zbiory A i A' są zbiorami rozłącznymi, tzn. nie posiadają elementów wspólnych, a ich suma jest zbiorem X. Zbiory rozłączne pojawią się na zajęciach ze statystyki gdy będzie omawiane prawdopodobieństwo zajścia zdarzenia i zadrzenia przeciwnego. 



Można podać szereg praw rachunku zbiorów. Praw, które są zarówno odpowiednikiem znanych praw działań na liczbach, jak i wcześniej omawianych praw rachunku zdań. Do najważniejszych praw rachunku zbiorów należą:



- prawa przemienności sumy i iloczynu zbiorów :math:` A \cup B = B \cup A,   A \cap B = B \cap A. ` 


- prawa łączności sumy i iloczynu zbiorów :math:` A \cup (B \cup C) = (A \cup B) \cup C,  A \cap (B \cap C) = (A \cap B) \cap C. ` 


- prawa rozdzielczości  :math:` A \cap (B \cup C) = (A \cap B) \cup (A \cap C),  A \cup (B \cap C) = (A \cup B) \cap (A \cup C). ` 


- prawa de Morgana  :math:` (A \cup B)' = A' \cap B'`, dopelnienie sumy jest  równe  iloczynowi  dopelnień,  :math:`(A \cap B)' = A' \cup B', ` dopelnienie  iloczynu  jest  równe  sumie  dopelnień 


-  prawa tautologii :math:` A \cup A = A,  A \cap A = A,  A \cup \oslash = A,  A \cap \oslash = \oslash. ` 




- **Iloczyn kartezjanski zbiorów** 



Jest to działanie na zbiorach, które ze wzgledu na jego ważność, omówimy oddzielnie. Ale zanim to uczynimy musimy wprowadzić pojęcie pary uporządkowanej :math:`(x,y)` dwóch elementów, przy czym :math:`x \in X` i :math:`y \in Y`. Pierwszy element pary uporządkowanej :math:`x` nazywamy poprzednikiem, a drugi :math:`y` następnikiem. Dwie pary uporządkowane są sobie równe wtedy i tylko wtedy gdy ich poprzedniki i ich następniki są sobie równe


:math:`(x_{1},y_{1}) = (x_{2},y_{2}) \Leftrightarrow (x_{1} = x_{2} \land y_{1} = y_{2}). `


Iloczyn kartezjański :math:`X \times Y` zbiorów :math:`X` i :math:`Y` tworzy zbiór wszystkich par uporządkowanych :math:`(x,y)`


:math:`X \times Y = \{(x,y): x \in X \land y \in Y\}. `


Na przykład iloczyn kartezjański zbiorów


:math:`X = \{1,2,3\}` i :math:`Y = \{4,7\}`


zawiera 6 par uporządkowanych


:math:`X \times Y = \{(1,4),(1,7),(2,4),(2,7),(3,4),(3,7)\}.`


Można tworzyć iloczyn kartezjański zbioru ze sobą, tzn. :math:`X \times X`. Dla zbioru :math:`X` z poprzedniego przykładu :math:`X \times X` zawiera 9 par uporządkowanych


:math:`X \times X = \{(1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3)\}, `


przy czym zgodnie z podaną wyżej definicją, pary uporządkowane (1,3) i (3,1) nie są sobie równe.



- **Relacje** 



Relacją :math:`\mathbf R` określoną na zbiorach :math:`X` i :math:`Y` nazywamy każdy podzbiór :math:`\mathbf R` iloczynu kartezjańskiego :math:`X \times Y` tych zbiorów. Czyli elementy :math:`x` i :math:`y` spełniają relację :math:`\mathbf R` wtedy i tylko wtedy, jeżeli para uporządkowana :math:`(x,y)` należy do pewnego podzbioru :math:`\mathbf R` iloczynu kartezjańskiego :math:`X \times Y`  :math:` {x} \mathbf R y \Leftrightarrow (x,y) \in \mathbf R `.  W powyższym zbiorze pierwsze :math:`\mathbf R` oznacza realcję zachodzącą pomiędzy elementami :math:`x` i :math:`y`, natomiast drugie :math:`\mathbf R` jest podzbiorem iloczynu kartezjańskiego zbiorów :math:`X` i :math:`Y`. Jeżeli :math:`Y=X` to wtedy relacja :math:`\mathbf R` jest określona w zbiorze :math:`X`.


Przykład: ze zbioru par uporządkowanych :math:`X \times X` (zbiór :math:`X` jest zbiorem z poprzedniego przykładu) wybrać tylko te dla których poprzednik jest mniejszy od następnika  *p*


