Bayerisches Abitur in Mathematik 2014
-------------------------------------

Aufgabe 1
^^^^^^^^^

.. admonition:: Aufgabe 1

  Gegeben ist die Funktion :math:`f` mit

  .. math::

    f(x)=\frac{20x}{x^2-25}

  und maximalem Definitionsbereich :math:`D_f`. Die Abbildung zeigt einen Teil des
  Graphen :math:`G_f` von :math:`f`.

  .. image:: ../figs/gebrochenrational.png
     :width: 35%
     :align: center

  a) Zeigen Sie, dass :math:`D_f=\mathbb{R}\backslash\{-5;5\}` gilt und dass :math:`G_f` symmetrisch
     bezüglich des Koordinatenursprungs ist. Geben Sie die Nullstelle von :math:`f` sowie die Gleichungen der
     drei Asymptoten von :math:`G_f` an.

  b) Weisen Sie nach, dass die Steigung von :math:`G_f` in jedem Punkt des Graphen negativ ist. Berechnen
     Sie die Größe des Winkels, unter dem :math:`G_f` die :math:`x`-Achse schneidet.

  c) Skizzieren Sie in der Abbildung den darin fehlenden Teil von :math:`G_f` unter Berücksichtigung der
     bisherigen Ergebnisse.

  d) Die Funktion :math:`f^*:x\mapsto f(x)` mit Definitionsbereich :math:`]5;+\infty[` unterscheidet sich
     von der Funktion :math:`f` nur hinsichtlich des Definitionsbereichs. Begründen Sie, dass die Funktion
     :math:`f` nicht umkehrbar ist, die Funktion :math:`f^*` dagegen schon. Zeichnen Sie den Graphen der
     Umkehrfunktion von :math:`f^*` in die Abbildung ein.

  e) Der Graph von :math:`f`, die :math:`x`-Achse, sowie die Geraden mit den Gleichungen :math:`x=10` und
     :math:`x=s` mit :math:`s>10` schließen ein Flächenstück mit dem Inhalt :math:`A(s)` ein. Bestimmen
     Sie :math:`A(s)`.

  f) Ermitteln Sie :math:`s` so, dass das Flächenstück aus Aufgabe 1e den Inhalt 100 besitzt.

  g) Bestimmen Sie das Verhalten von :math:`A(s)` für :math:`s\rightarrow \infty`.


**Lösung zu Teil 1a**

Zunächst wollen wir den Ausschnitt des Graphen mit Sage vervollständigen:

.. sagecellserver::

  sage: f(x)=20*x/(x^2-25)
  sage: plot(f(x), x, (-10,10), exclude=(-5, 5), ymax=12, ymin=-12, figsize=4, aspect_ratio=1)

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

    f(-x)=\frac{20(-x)}{(-x)^2-25}=-\frac{20x}{x^2-25}=-f(x)

und auch aus der obigen Darstellung deutlich wird.

Die beiden Asymptoten der Polstellen sind entsprechend durch die
Gleichungen :math:`x=-5` und :math:`x=5` gegeben. Da der Grad des
Polynoms im Nenner größer ist als der des Polynoms im Zähler,
verschwindet die Funktion für Werte :math:`x\rightarrow-\infty` und
:math:`x\rightarrow\infty`.  Die dritte Asymptote ist daher die
:math:`x`-Achse, welche durch :math:`y=0` gegeben ist.

Wir zeichnen die Asymptoten in den Graphen von :math:`f` ein.

.. sagecellserver::

  sage: g(x) = 0
  sage: p1 = plot(f(x), x, (-20, 20), exclude=(-5, 5), ymax=12, ymin=-12)
  sage: p2 = line([[-5, -13], [-5, 13]], color = 'red')
  sage: p3 = line([[5, -13], [5, 13]], color = 'red')
  sage: p4 = plot(g(x), x, (-20, 20), aspect_ratio=1, color = 'red')
  sage: show(p1+p2+p3+p4, aspect_ratio=1, figsize=4)

.. end of output

**Lösung zu Teil 1b**

Zunächst berechnen wir die Ableitung von :math:`f` mit der Quotientenregel:

.. math::

  f'(x)=\frac{(x^2-25)\cdot 20 - 20x\cdot2x}{(x^2-25)^2}=\frac{-20x^2-500}{(x^2-25)^2}

Es lässt sich erkennen, dass der Zähler für jeden Wert von :math:`x` negativ ist. Der Nenner hingegen
ist immer größer oder gleich 0. Die Ableitung :math:`f'(x)` ist daher -- abgesehen von den Nullstellen
des Nenners, welche erneut die Definitionslücken der Funktion darstellen -- immer negativ.

Dieses Ergebnis wird von dem Graphen von :math:`f'(x)` bestätigt.

.. sagecellserver::

  sage: df = derivative(f, x)
  sage: p5 = plot(df(x), x, (-20, 20), ymax=12, ymin=-12)
  sage: show(p5, aspect_ratio=1, figsize=4)

.. end of output

Um den Winkel zu berechnen, unter dem :math:`G_f` die :math:`x`-Achse schneidet, berechnen wir die Steigung
von :math:`f` an der Stelle :math:`x=0`:

.. math ::

  f'(0)=\frac{-500}{(-25)^2}=-\frac{4}{5}

Der Schnittwinkel berechnet sich dann zu:

.. math::

  \alpha = \arctan\left(-\frac{4}{5}\right)=-38,7°.

Wir überprüfen das Ergebnis mit Sage, und zeichnen die Tangente im Punkt :math:`x=0` ein.

.. sagecellserver::

  sage: m = df(0)
  sage: print u"\u03b1 =", RDF(180/pi*arctan(m))
  sage: w(x) = m*x
  sage: p6 = plot(f(x), x, (-4, 4), ymax=5, ymin=-5)
  sage: p7 = plot(w(x), x, (-4, 4), color='green')
  sage: show(p6+p7, aspect_ratio=1, figsize=4)

.. end of output

**Lösung zu Teil 1c**

Der Graph wurde bereits in Aufgabe 1a vervollständigt.

**Lösung zu Teil 1d**

Die Funktion :math:`f` ist nicht umkehrbar, da mehrere :math:`x`-Werte
den gleichen :math:`y`-Werten zugeordnet werden können. :math:`f` ist
also nicht auf dem gesamten Definitionsbereich injektiv, und somit nicht
invertierbar.

:math:`f^*` hingegen ist auf dem gesamten Definitionsbereich injektiv
und kann daher invertiert werden.  Wir bestimmen die Umkehrfunktion
:math:`f^{*-1}`, indem wir :math:`y=f^*(x)` nach  :math:`x` auflösen.
Zunächst ergibt sich eine quadratische Gleichung für :math:`x`

.. math::

  x^2y-20x-25y = 0

deren Lösungen durch

.. math::

  x_{1/2}= \frac{5\left(2\pm\sqrt{y^2+4}\right)}{y}

gegeben sind. Diese Lösungen erhalten wir auch mit Sage:

.. sagecellserver::

  sage: y = var('y')
  sage: solve(f(x)==y, x)

.. end of output

Da die Umkehrfunktion :math:`f^{*-1}` wegen des Definitionsbereichs von
:math:`f^*` lediglich  Werte :math:`\geq5` annehmen kann, müssen wir die
Lösung mit dem Pluszeichen wählen. Die gesuchte Umkehrfunktion lautet
also

.. math::

  f^{*-1}= \frac{5\left(2+\sqrt{x^2+4}\right)}{x}

In Sage wollen wir nun :math:`f^*` und :math:`f^{*-1}` zeichnen.

.. sagecellserver::

  sage: f_inv(x) = 5*(sqrt(x^2 + 4) + 2)/x
  sage: p8 = plot(f(x), x, (5, 20))
  sage: p9 = plot(f_inv(x), x, (0, 20))
  sage: show(p8+p9, aspect_ratio=1, ymax=20, figsize=4)

.. end of output

**Lösung zu Teil 1e**

Da die Funktion :math:`f` für :math:`x>10` stets positiv ist, kann die beschriebene Fläche durch das Integral von 10 
bis :math:`s` über die Funktion :math:`f` bestimmt werden:

.. math::

  A(s)=\int\limits_{10}^sf(x)\mathrm{d}x.

Da der Zähler von :math:`f` bis auf einen Faktor die Ableitung des Nenners ist, lässt sich der Logarithmus als
Stammfunktion finden:

.. math::

  A(s) = \int\limits_{10}^s\frac{20x}{x^2-25}\mathrm{d}x 
  = 10\int\limits_{10}^s\frac{2x}{x^2-25}\mathrm{d}x
  = 10 \left.\ln(x^2-25) \right\vert^s_{10}=10\ln\left(\frac{s^2-25}{75}\right)

Mit Sage können wir diese Lösung überprüfen:

.. sagecellserver::

  sage: from sage.symbolic.integration.integral import definite_integral
  sage: s = var('s')
  sage: assume(s > 10)
  sage: A(s) = definite_integral(f(x), x, 10, s)
  sage: print "Die Fläche ist A(s) =", A(s)

.. end of output

Wir können die beschriebene Fläche in dem Graph von :math:`f` gelb hervorheben, dabei den Wert :math:`s` variabel
halten und den Flächeninhalt in Abhängigkeit von :math:`s` ausgeben.

.. sagecellserver::

  sage: @interact
  sage: def _(s=slider(10.1, 19.9, 0.1)):
  ...       p10 = plot(f(x), x, (5, 10))
  ...       p11 = plot(f(x), x, (10, s), fill = 0, fillcolor='yellow')
  ...       p12 = plot(f(x), x, (s, 20))
  ...       show(p10+p11+p12, aspect_ratio=1, ymax=10, figsize=4)
  ...       print "Die gelbe Fläche hat den Inhalt:", float(A(s))

.. end of output

**Lösung zu Teil 1f**

Um das Flächenstück mit dem Inhalt 100 zu bestimmen, lassen wir die Gleichung

.. math::

  A(s) = 100

von Sage auflösen. Dabei ist es wichtig, dass wir Sage weiter oben
gesagt haben, dass :math:`s>10` sein soll. Der gesuchte Wert für
:math:`s` ergibt sich zu

.. sagecellserver::

  sage: print float(solve(A(s) == 100, s)[0].right())

.. end of output

**Lösung zu Teil 1g**

Das Argument des Logarithmus geht für große Argumente gegen unendlich.
Daher ist auch der Grenzwert von :math:`A(s)` für :math:`s\rightarrow+\infty` unendlich.

Dieses Ergebnis liefert auch Sage:

.. sagecellserver::

  sage: html("$\lim_{s=\infty} A(s) = %s$" % latex(A(infinity)))

.. end of output


Aufgabe 2
^^^^^^^^^

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
     :math:`10\,\frac{\mathrm{km}}{\mathrm{h}}` und für eine Fahrt mit einer Eigengeschwindigkeit von
     :math:`20\,\frac{\mathrm{km}}{\mathrm{h}}` jeweils die Gesamtfahrtzeit in Minuten.

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

Um die Fahrtdauer zu berechnen, müssen wir lediglich die Werte
:math:`x=10` bzw. :math:`x=20` in :math:`t(x)` einsetzen und das
Ergebnis mit 60 multiplizieren, um Stunden in Minuten umzurechnen.

Wir erhalten bei einer Geschwindigkeit von :math:`10\frac{\mathrm{km}}{\mathrm{h}}`

.. math::

  60t(10) = 60\left(\frac{10}{15}+\frac{10}{5}\right) = 160\,\mathrm{min}

und bei einer Geschwindigkeit von :math:`20\frac{\mathrm{km}}{\mathrm{h}}`

.. math::

  60t(20) = 60\left(\frac{10}{25}+\frac{10}{15}\right) = 64\,\mathrm{min}.

Diese Ergebnisse lassen sich auch leicht mit Sage erhalten. Zudem
stellen wir die Fahrtdauer in Abhängigkeit von der Geschwindigkeit
zwischen :math:`10\frac{\mathrm{km}}{\mathrm{h}}` und
:math:`20\frac{\mathrm{km}}{\mathrm{h}}` dar.

.. sagecellserver::

  sage: t(x) = 10/(x+5)+10/(x-5)
  sage: print "Fahrtdauer bei 10 km/h:", 60*t(10), "Minuten"
  sage: print "Fahrtdauer bei 20 km/h:", 60*t(20), "Minuten"
  sage: p1 = plot(60*t(x), x, (10, 20))
  sage: show(p1, figsize=(4, 2.8))

.. end of output

**Lösung zu Teil 2b**

Die Zeit, die benötigt wird, um eine Strecke der Länge :math:`s` mit
einer konstanten Geschwindigkeit :math:`x` zurückzulegen, lässt sich mit
:math:`\frac{s}{x}` berechnen. Ein Boot bewegt sich mit seiner
Eigengeschwindigkeit allerdings nur relativ zu dem Wasser, in dem es
sich befindet. Betrachtet man dagegen die Geschwindigkeit des Boots
relativ zum unbewegten Rand des Flusses, muss die Fließgeschwindigkeit
des Wassers je nach Fahrtrichtung zur Eigengeschwindigkeit des Boots
hinzuaddiert oder von dieser abgezogen werden. Dadurch ergeben sich für
:math:`s=10` und eine Fließgeschwindigkeit von
:math:`5\frac{\mathrm{km}}{\mathrm{h}}` die beiden Terme von
:math:`t(x)` als die benötigte Zeit für den Hin- und Rückweg.

**Lösung zu Teil 2c**

Für :math:`0<x<5` kann zwar der erste Term von :math:`t(x)` verwendet
werden, um die Zeit zu berechnen, die das Boot für den Hinweg benötigt,
für den Rückweg ergibt sich allerdings das folgende Problem: Die
Eigengeschwindigkeit des Boots ist niedriger als die
Fließgeschwindigkeit des Wassers. Das Boot entfernt sich dadurch immer
weiter vom Ausgangspunkt und kann diesen dementsprechend nie wieder
erreichen. :math:`t(x)` müsste in diesem Bereich also einen unendlich
großen Wert ergeben. 

Die Darstellung der Funktion mit Hilfe von Sage zeigt, dass sich für
:math:`x<5` negative Werte ergeben, die offenbar keiner korrekten
Fahrtdauer entsprechen können.

.. sagecellserver::

  sage: p13 = plot(60*t(x), x, (0, 50), ymax=800, ymin=-800)
  sage: show(p13, figsize=(4, 2.8))

.. end of output

**Lösung zu Teil 2d**

Wir erweitern die beiden Brüche in :math:`t(x)`, um sie anschließend zusammenzufassen:

.. math::

  t(x) &= \frac{10}{x+5}+\frac{10}{x-5}\\
  &= \frac{10(x-5)+10(x+5))}{(x+5)(x-5)}\\
  &=\frac{20x}{x^2-25}\\
  &=f(x)

In Sage kann man dieses Ergebnis durch Betrachtung der Differenz der
beiden Funktionen verifizieren. Dabei muss man allerdings die Methode
``rational_simplify()`` verwenden, da Sage sonst die erforderlichen
Umformungen nicht vornimmt.

.. sagecellserver::

  sage: print t(x)-f(x)
  sage: print (t(x)-f(x)).rational_simplify()

.. end of output

**Lösung zu Teil 2e**

Die Eigengeschwindigkeit lässt sich aus der Abbildung ablesen, indem man
den Punkt auf dem Graphen sucht, dessen :math:`y`-Wert der
Gesamtfahrzeit entspricht. Der zugehörige :math:`x`-Wert gibt die
Eigengeschwindigkeit an. Für ein Gesamtfahrzeit von 4 Stunden liest man
so aus der Abbildung eine Geschwindigkeit von etwa
:math:`8\frac{\mathrm{km}}{\mathrm{h}}` ab. Der genaue Wert lässt sich
mit Hilfe der in Teilaufgabe 1d bestimmten Umkehrfunktion
:math:`f^{*-1}` ermitteln. Man findet

.. math::

  f^{*-1}(4) = 5\frac{1+\sqrt{5}}{2}.

Mit Sage ergibt sich der Wert zu

.. sagecellserver::

  sage: gesamtzeit = 4
  sage: print "Eigengeschwindigkeit für Gesamtfahrtzeit von {}h: {}km/h".format(
  ...         gesamtzeit, f_inv(gesamtzeit).n(10))

.. end of output

Die graphische Konstruktion ergibt sich mit Hilfe von Sage
folgendermaßen:

.. sagecellserver::

  sage: p14 = plot(f(x), x, (5.1, 14))
  sage: x4, y4 = f_inv(gesamtzeit), gesamtzeit
  sage: l1 = line([(x4, y4), (0, y4)], color='red')
  sage: l2 = line([(x4, y4), (x4, 0)], color='red')
  sage: show(p14+l1+l2, aspect_ratio=1, xmin=0, ymin=0, ymax=14, figsize=4)

.. end of output
