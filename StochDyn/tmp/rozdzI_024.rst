ATRAKTORY
=========

Atraktor :math:`A` to taki zbiór w przestrzeni fazowej układu dynamicznego, że wiele trajektorii startujących nawet bardzo daleko od tego zbioru  dąży w miarę upływu czasu do tego zbioru :math:`A`.  Najprościej jest to zrozumieć na przykładzie oscylatora tłumionego. Realizacją takiego oscylatora może być wahadło matematyczne czyli kulka  na nieważkim pręcie zawieszona w jakimś środowisku (byleby nie w próżni). Na kulkę działa siła przyciągania ziemskiego i siła tarcia. Kulkę wychylamy o dowolny kąt od pozycji pionowej  i obserwujemy trajektorię  kulki. Kulka wykonuje coraz to mniejsze wahania i po dostatecznie długim czasie zatrzymuje się w pozycji pionowej. Kulkę możemy wychylać o dowolny kąt, nadawać jej dowolną prędkość, a i tak po pewnym czasie kulka zatrzyma  się w pozycji pionowej, która odpowiada zerowemu wychyleniu kulki. Ten zerowy kąt wychylenia jest atraktorem. W tym przypadku atraktorem jest  punkt w przestrzeni fazowej. Ponieważ przestrzeń fazowa oscylatora harmonicznego  tłumionego jest 2-wymiarowa położenie-prędkość, atraktorem jest punkt :math:`A = (położenie = 0, prędkość = 0)`. 

Podamy teraz bardziej formalną definicję.

Atraktor
  Atraktorem nazywamy ograniczony zbiór w przestrzeni fazowej, do którego dążą asymptotycznie w czasie (tzn. gdy :math:`t \to \infty`) obszary warunków początkowych o niezerowej objętości  w przestrzeni fazowej. Atraktor to inaczej zbiór przyciągający: przyciąga on trajektorie o różnych warunkach początkowych.  Ale nie musi on przyciągać wszystkich trajektorii. Dla danego układu dynamicznego może istnieć wiele atraktorów, nawet nieskończenie wiele. Atroktory mogą mieć  nieskomplikowaną strukturę: to może być  punkt, kilka piunktów, krzywa taka jak okrąg czy zdeformowana elipsa, część płaszczyzny, torus (podobny do dętki),  część przestrzeni. Atraktory mogą też  mieć skomplikowaną strukturę: może to być zbiór fraktalny, tzn. zbiór o niecałkowitym wymiarze, np. 0.63, 2.06. Taki atraktor nazywa się *dziwnym atraktorem*.

Z atraktorami związane są obszary przyciągania lub baseny przyciągania :math:`B(A)`. Basenem przyciągania atraktora :math:`A` nazywamy zbiór warunków początkowych :math:`x_0` , dla których trajektorie są przyciągane do :math:`A`, czyli 

.. MATH::
    :label: eqn1

    B(A) = \{ x_0: lim_{t \to \infty} x(t; x_0) \in A\}


gdzie :math:`x(t; x_0)` jest trajektorią startującą z warunku początkowego :math:`x_0`, np. rozwiązaniem układu równań różniczkowych  z odpowiednimi warunkami początkowymi :math:`\vec x_0`.

Przykład 1: oscylator harmoniczny tłumiony
------------------------------------------

Jest tylko jeden atraktor: to punkt (0, 0). Basenem przyciągania jest cała płaszczyzna fazowa.

.. sagecellserver::
    :is_verbatim: True


.. end of input

Przykład 2: oscylator nieliniowy (bistabilny)  tłumiony
-------------------------------------------------------

Są dwa  atraktory:  punkt :math:`(-x_s, 0)` oraz symetryczny punkt :math:`(x_s, 0)`, gdzie :math:`x_s` jest stanem stacjonarnym. Płaszczyzna fazowa dzieli się na 2 baseny przyciągania, które są "pasiastymi" naprzemiennymi zbiorami.Przejrzysta wizualizacja jest opracowana na naszej stronie internetowej:

http://visual.icse.us.edu.pl/wizualizacje/mechanika-teoretyczna/zobacz/BasenyPrzyciagania/



.. sagecellserver::
    :is_verbatim: True


.. end of input

Przykład 3: Cykl graniczny
--------------------------

Atraktorem jest krzywa zamknięta (okrąg, elipsa, inne dowolne krzywe zamknięte).  Poniżej przedstawiamy dwa przykłady zaczerpnięte z modeli biologicznych.

.. sagecellserver::
    :is_verbatim: True


.. end of input

.. sagecellserver::
    :is_verbatim: True


.. end of input

.. sagecellserver::
    :is_verbatim: True


.. end of input

Przykład 4: Atraktor Lorenza
----------------------------

Jest to przykład tak zwanego dziwnego atraktora. Najprostsza jego definicja to taka, że posiada on strukturę fraktala. O układzie Lorenza generującym ten fraktal można poczytać w poprzednim rozdziale tego skryptu, traktującym o stanach stacjonarnych.

