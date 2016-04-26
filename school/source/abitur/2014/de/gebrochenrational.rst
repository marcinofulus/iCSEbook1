Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe 1

  Gegeben ist die Funktion :math:`f` mit

  .. math::

    f(x)=\frac{20x}{x^2-25}

  und maximalem Definitionsbereich :math:`D_f`. Die Abbildung zeigt den Teil des
  Graphen :math:`G_f` von :math:`f`.

  .. image:: ../figs/gebrochenrational.png
     :align: center

  a) Zeigen Sie, dass :math:`D_f=\mathbb{R}\backslash\{-5;5\}` gilt und dass :math:`G_f` symmetrisch
     bezüglich des Koordinatenursprungs ist. Geben Sie die Nullstelle von f sowie die Gleichungen der
     drei Asymptoten von :math:`G_f` an.

  b) Weisen Sie nach, dass die Steigung von :math:`G_f` in jedem Punkt des Graphen negativ ist. Berechnen
     Sie die Größe des Winkels, unter dem :math:`G_f` die :math:`x-`Achse schneidet.

  c) Skizzieren Sie in der Abbildung den darin fehlenden Teil von :math:`G_f` unter Berücksichtigung der
     bisherigen Ergebnisse.

  d) Die Funktion :math:`f^*:x\mapsto f(x)` mit Definitionsbereich :math:`]5;+\infty[` unterscheidet sich
     von der Funktion :math:`f` nur hinsichtlich des Definitionsbereichs. Begründen Sie, dass die Funktion
     :math:`f` nicht umkehrbar ist, die Funktion :math:`f^*` dagegen schon. Zeichnen Sie den Graphen der
     Umkehrfunktion von :math:`f^*` in die Abbildung ein.

  e) Der Graph von :math:`f`, die :math:`x`-Achse, sowie die Geraden mit den Gleichungen :math:`x=10` und
     :math:`x=s` mit :math:`s>10` schließen ein Flächenstück mit dem Inhalt :math:`A(s)` ein. Bestimmen
     Sie :math:`A(s)`.

  f) Ermitteln Sie :math:`s` so, dass das Flächenstück aus Aufgabe 1e) den Inhalt 100 besitzt.

  g) Bestimmen Sie das Verhalten von :math:`A(s)` für :math:`s\rightarrow \infty`.


**Lösung zu Teil 1a**

Zunächst wollen wir den Ausschnitt des Graphen mit Sage vervollständigen:

.. sagecellserver::

  sage: f(x)=20*x/(x^2-25)
  sage: plot(f(x), x, (-10,10), ymax=12, ymin=-12, figsize=(4, 2.8), aspect_ratio=1)

.. end of output

Der Graph untermauert bereits die Definitionslücken bei :math:`x_1=-5` und :math:`x_2=5`. Hier hat der
Graph offensichtlich Polstellen. Wir können dies auch bestätigen, indem wir aus der 
faktorisierten Form der Funktion

.. math::

  f(x)=\frac{20x}{(x-5)(x+5)}

die Nullstellen im Nenner ablesen. Die Nullstelle der Funktion befindet sich bei der Nullstelle des Zählers 
(:math:`x_0=0`). Die Punksymmetrie erhalten wir aus der Bedingung :math:`f(-x)=-f(x)`, welche offensichtlich
erfüllt ist:

.. math::

    f(x)=\frac{20(-x)}{(-x)^2-25}=-\frac{20x}{x^2-25}=-f(x)

Die beiden Asymptoten der Polstellen sind entsprechend durch die Gleichungen :math:`x=-5`
und :math:`x=5` gegeben. Da der Grad des Polynoms im Nenner größer ist als der des Polynoms im Zähler, verschwindet
die Funktion für Werte :math:`x\rightarrow-\infty` und :math:`x\rightarrow\infty`. Die dritte Asymptote ist daher
die x-Achse, welche durch :math:`y=0` gegeben ist.

Wir zeichnen die Asymptoten in den Graphen von :math:`f` ein.

.. sagecellserver::

  sage: g(x) = 0
  sage: p1 = plot(f(x), x, (-20,20), ymax=12, ymin=-12)
  sage: p2 = line([[-5, -13], [-5,13]], color = 'red')
  sage: p3 = line([[5, -13], [5,13]], color = 'red')
  sage: p4 = plot(g(x), x, (-20,20), aspect_ratio=1, color = 'red')
  sage: show(p1 + p2 + p3 + p4, aspect_ratio=1, figsize=(4, 2.8))

.. end of output

**Lösung zu Teil 1b**

Zunächst berechnen die Ableitung von f mit der Quotientenregel:

.. math::

  f'(x)=\frac{(x^2-25)\cdot 20 - 20x\cdot2x}{(x^2-25)^2}=\frac{-20x^2-500}{(x^2-25)^2}

Es lässt sich erkennen, dass der Zähler für jeden Wert von :math:`x` negativ ist. Der Nenner hingegen
ist immer größer oder gleich 0. Die Ableitung :math:`f'(x)` ist daher -- abgesehen von den Nullstellen
des Nenners, welche erneut die Definitionslücken der Funktion darstellen -- immer negativ.

Dieses Ergebnis wird von dem Graphen von :math:`f'(x)` bestätigt.

.. sagecellserver::

  sage: df = derivative(f(x), x)
  sage: p5 = plot(df(x), x, (-20,20), ymax=12, ymin=-12)
  sage: show(p5, aspect_ratio=1, figsize=(4, 2.8))

.. end of output

Um den Winkel zu berechnen, unter dem :math:`G_f` die :math:`x`-Achse schneidet, berechnen wir die Steigung
von :math:`f` an der Stelle :math:`x=0`

.. math ::

  f'(0)=\frac{-500}{(-25)^2}=-\frac{4}{5}

Der Schnittwinkel berechnet sich dann zu:

.. math::

  \alpha = \arctan\left(-\frac{4}{5}\right)=-38,7°

Wir überprüfen das Ergebnis mit Sage, indem wir die Tangente im Punkt :math:`x=0` einzeichnen.

.. sagecellserver::

  sage: m = df(0)
  sage: w(x) = m * x
  sage: p1 = plot(f(x), x, (-4,4), ymax=5, ymin=-5)
  sage: p6 = plot(w(x), x, (-4,4), aspect_ratio=1, color='green')
  sage: show(p1+p6, aspect_ratio=1, figsize=(4, 2.8))

.. end of output

**Lösung zu Teil 1c**

Der Graph wurde bereits in Aufgabe 1a) vervollständigt.

**Lösung zu Teil 1d**

Die Funktion :math:`f` ist nicht umkehrbar, da mehrere :math:`x`-Werte den gleichen :math:`y`-Werten zugeordnet
werden können. :math:`f` ist also nicht auf dem gesamten Definitionsbereich injektiv, und somit nicht invertierbar

:math:`f^*` hingegen ist auf dem gesamten Definitionsbereich injektiv und kann daher invertiert werden.
Wir bestimmen die Umkehrfunktion :math:`f^{*-1}`, indem wir :math:`y=f^*(x)` nach  :math:`x` auflösen.

.. math::

  &y=\frac{20x}{x^2-25}&\quad\Leftrightarrow\\
  &x^2y-20x-25y = 0&

Die Mitternachtsforel liefert schließlich:

.. math::

  x_{1/2}= \frac{5\left(2\pm\sqrt{y^2+4}\right)}{y}

Diese Lösungen erhalten wir auch mit Sage:

.. sagecellserver::

  sage: y = var('y')
  sage: solve(f(x)==y, x)

.. end of output

Da die Umkehrfunktion :math:`f^{*-1}` wegen des Definitionsbereichs von :math:`f^*` lediglich  Werte :math:`\geq5`
annehmen kann, können wir lediglich auf der Suche nach der Lösung von :math:`x_{1/2}` sein, bei der ein plus vor der
Wurzel steht, also:

.. math::

  f^{*-1}= \frac{5\left(2\pm\sqrt{x^2+4}\right)}{x}

In Sage wollen wir nun :math:`f^*` und :math:`f^{*-1}` zeichnen.

.. sagecellserver::

  sage: f_inv(x) = 5*(sqrt(x^2 + 4) + 2)/x
  sage: p1 = plot(f(x), x, (5,20), ymax=20, ymin = 0)
  sage: p7 = plot(f_inv(x), x, (0,20), ymax=20)
  sage: show(p1+p7, aspect_ratio=1, figsize=(4, 2.8))

.. end of output

**Lösung zu Teil 1e**

Da die Funktion :math:`f` für :math:`x>10 stets positiv ist,`kann die beschriebene Fläche durch das Integral von 10 
bis :math:`s` über die Funktion :math:`f` bestimmt werden:

.. math::

  A(s)=\int\limits_{10}^sf(x)\mathrm{d}x

Da der Zähler von :math:`f` bis auf einen Faktor die Ableitung des Nenners ist, lässt sich der Logarithmus als
Stammfunktion finden:

.. math::

  A(s) = \int\limits_{10}^s\frac{20x}{x^2-25}\mathrm{d}x = 10\int\limits_{10}^s\frac{2x}{x^2-25}\mathrm{d}x
       = 10 \left[\ln(x^2-25) \right]^s_{10}=10\ln\left(\frac{s^2-25}{75}\right)

Mit Sage können wir diese Lösung überprüfen:

.. sagecellserver::

  sage: from sage.symbolic.integration.integral import definite_integral
  sage: assume(x>10)
  sage: A(x) = definite_integral(f(y), y, 10, x)
  sage: print "Die Fläche ist A(x) =", A(x)

.. end of output

Wir können die beschriebene Fläche in dem Graph von :math:`f` gelb hervorheben, dabei den Wert :math:`s` variabel
halten und den Flächeninhalt in Abhängigkeit von :math:`s` ausgeben.

.. sagecellserver::

  sage: @interact
  sage: def _(s=slider(10.1, 19.9, 0.1)):
  ...       p1 = plot(f(x), x, (5,10), ymax=10, ymin = 0)
  ...       p2 = plot(f(x), x, (10,s), ymax=10, ymin = 0,fill = 0, fillcolor='yellow')
  ...       p3 = plot(f(x), x, (s,20), ymax=10, ymin = 0)
  ...       show(p1 + p2 + p3, aspect_ratio=1, figsize=(4, 2.8))
  ...       print "Die gelbe Fläche hat den Inhalt:", float(A(s))

.. end of output

**Lösung zu Teil 1f**

Um das Flächenstück mit dem Inhalt 100 zu bestimmen lösen wir die Gleichung

.. math::

  A(s) = 100

nach :math:`s` auf. Sage liefert uns den Wert :math:`1285{,}3`.

.. sagecellserver::

  sage: print float(solve(A(x) == 100, x)[0].right())

.. end of output

**Lösung zu Teil 1g**

Das Argument des Logarithmus ist eine Parabel, die für :math:`\mathrm{ļim} x\rightarrow\infty` gegen unendlich geht. 
Entsprechend ist auch der Grenzwert von :math:`A(s)` für :math:`\mathrm{ļim} x\rightarrow\infty` unendlich.

Dieses Ergebnis liefert auch Sage:

.. sagecellserver::

  sage: print "Der Grenzwert von A(s) für s --> unendlich:", A(infinity)

.. end of output

.. admonition:: Aufgabe 2

  Ein Motorboot fährt mit konstanter Motorleistung auf einem Fluss eine Strecke der Länge 10 km zuerst
  flussabwärts und unmittelbar anschließend flussaufwärts zum Ausgangspunkt zurück. Mit der 
  Eigengeschwindigkeit des Motorboots wird der Betrag der Geschwindigkeit bezeichnet, mit der sich
  das Boot bei dieser Motorleistung auf einem stehenden Gewässer bewegen würde.

  Im Folgenden soll modellhaft davon ausgegangen werden, dass die Eigengeschwindigkeit des Boots während
  der Fahrt konstant ist und das Wasser im Fluss mit der konstanten Geschwindigkeit 
  :math:`5\frac{\mathrm{km}}{\mathrm{h}}` fließt. Die für das Wendemanöver erforderliche Zeit wird vernachlässigt.

  Die Gesamtfahrtzeit in Stunden, die das Boot für Hinfahrt und Rückfahrt insgesamt benötigt, wird im Modell 
  für :math:`x>5` durch den Term

  .. math::

    t(x) = \frac{10}{x+5}+\frac{10}{x-5}

  angegeben. Dabei ist :math:`x` die Eigengeschwindigkeit des Boots in :math:`\frac{\mathrm{km}}{\mathrm{h}}`.

  a) Bestimmen Sie auf der Grundlage des Modells für eine Fahrt mit einer Eigengeschwindigkeit von 
     :math:`10\frac{\mathrm{km}}{\mathrm{h}}` und für eine Fahrt mit einer Eigengeschwindigkeit von
     :math:`20\frac{\mathrm{km}}{\mathrm{h}}` jeweils die Gesamtfahrtzeit in Minuten.

  b) Begründen Sie, dass der erste Summand des Terms :math:`t(x)` die für die Hinfahrt, der zweite Summand die
     für die Rückfahrt erforderliche Zeit in Stunden angibt.

  c) Begründen Sie im Sachzusammenhang, dass :math:`t(x)` für :math:`0<x<5` nicht als Gesamtfahrtzeit interpretiert 
     werden kann.

  d) Zeigen Sie, dass die Terme :math:`f(x)` und :math:`t(x)` äquivalent sind.

  e) Beschreiben Sie, wie man mithilfe der Abbildung für eine Fahrt mit einer Gesamtfahrtzeit zwischen zwei und
     vierzehn Stunden die zugehörige Eigengeschwindigkeit des Boots näherungsweise ermitteln kann. Berechnen 
     Sie auf der Grundlage des Modells die Eigengeschwindigkeit des Boots für eine Fahrt mit einer Gesamtfahrtzeit 
     von vier Stunden.

**Lösung zu Teil 2a**

Um die Fahrtdauer zu berechnen müssen wir lediglich die Werte :math:`x=10` bzw. :math:`x=20` in :math:`t(x)` einsetzen.

Wir erhalten:

.. math::

  t(10) = \frac{8}{3}\approx2,67 \qquad t(20) = \frac{16}{15}\approx1,07

Mit Sage können wir die Fahrtdauer allgemein in Abhängigkeit von der Eigengeschwindigkeit des Boots darstellen.
Wir erkennen bereits, dass das Modell für :math:`0 < x<5` negative Fahrtzeiten vorhersagt und damit für diesen Bereich 
keine vernünftige Beschreibung des Problems sein kann.

.. sagecellserver::

  sage: p1 = plot(f(x), x, (0,50), ymax=12, ymin=-12)
  sage: show(p1, aspect_ratio=1, figsize=(4, 2.8))

.. end of output

**Lösung zu Teil 2b**

Die Zeit, die benötigt wird, um eine Strecke der Länge :math:`s` mit einer konstanten Geschwindigkeit :math:`x` 
zurückzulegen lässt sich mit :math:`\frac{s}{x}` berechnen. Ein Boot bewegt sich mit seiner Eigengeschwindigkeit 
allerdings nur relativ zu dem Wasser, in dem es sich befindet. Betrachtet man dagegen die Geschwindigkeit
des Boots relativ zum unbewegten Rand des Flusses, muss die Flussgeschwindigkeit des Wassers zur Eigengeschwindigkeit
des Boots hinzuaddiert, bzw. von dieser abgezogen werden. Dadurch rechtfertigen sich die beiden Terme von :math:`t(x)`
als die benötigte Zeit für den Hin- bzw. Rückweg.

**Lösung zu Teil 2c**

Für :math:`0<x<5` kann zwar der erste Term von :math:`t(x)` verwendet werden, um die Zeit zu berechnen, die das Boot
für den Hinweg benötigt, für den Rückweg ergibt sich allerdings das folgende Problem: Die Eigengeschwindigkeit
des Boots ist niedriger als die Flussgeschwindigkeit des Wassers. Das Boot entfernt sich dadurch immer weiter von seinem 
Startpunkt und kann diesen dementsprechend nie wieder erreichen. :math:`t(x)` müsste in diesem Bereich also 
einen unendlich großen Wert zurückliefern. Wie wir in Teilaufgabe a) aber bereits festgestellt haben, gibt :math:`t(x)` für
:math:`0<x<5` allerdings einen negativen Wert zurück.

**Lösung zu Teil 2d**

Wir erweitern die beiden Brüche in :math:`t(x)`, um sie anschließenden zusammenzufassen:

.. math::

  t(x) = \frac{10}{x+5}\frac{10}{x-5} = \frac{10(x-5+10(x+5))}{(x+5)(x-5)}=\frac{20x}{x^2-25}=f(x)

**Lösung zu Teil 2e**

Für Geschwindigkeiten, die nicht viel größer als :math:`5\frac{\mathrm{km}}{\mathrm{h}}` sind, dauert der Rückweg
deutlich länger als der Hinweg und man kann den Hinweg vernachlässigen. In diesem Fall lässt sich leicht 
nach der Geschwindigkeit auflösen:

.. math::

  y = \frac{10}{x-5} \quad\Leftrightarrow\quad x = \frac{10}{y}+5,

wobei :math:`y` die benötigte Zeit und :math:`x` die Geschwindigkeit bezeichnet. Diese Näherung wird immer besser,
je höher die Fahrtzeit ist. Für 14 Stunden beispielsweise liefert sie einen guten Näherungswert, für 2 Stunden jedoch
einen äußerst schlechten. Für eine Fahrtzeit von 4 Stunden erhalten wir eine genäherte Geschwindigkei von 
:math:`7{,}5\frac{\mathrm{km}}{\mathrm{h}}`.

In Teilaufgabe 1d) haben wir bereits die Umkehrfunktion von :math:`f(x)` für :math:`x>5` berechnet. Da :math:`f(x)=h(x)` 
gilt, liefert uns :math:`f^{-1}(x)` die exakte Geschwindigkeit, mit der man die Fahrtzeit :math:`x` benötigt. Um die
Genauigkeit unserer Näherungslösung für unterschiedliche Fahrtzeiten zu analysieren, können wir Sage verwenden. Die
blaue Kurve bezeichnet die exakte Lösung, die grüne unsere Näherung und die rote den Fehler in der Geschwindigkeit,
der durch die Näherung entstanden ist.


.. sagecellserver::

  sage: t_inv_approx(x) = 10/x + 5
  sage: err(x) = f_inv(x) - t_inv_approx(x)
  sage: p9 = plot(f_inv(x), x, (0,20), ymax=12)
  sage: p10 = plot(t_inv_approx(x), x, (0,20), ymax=12, color='green')
  sage: p11 = plot(err(x), x, (0,20), ymax=12, color='red')
  sage: show(p9 + p10 + p11, aspect_ratio=1, figsize=(4, 2.8))

.. end of output
 
Es lässt sich dem Graphen entnehmen, dass die Näherung erst ab etwa 10 Stunden einen guten Wert liefert.
