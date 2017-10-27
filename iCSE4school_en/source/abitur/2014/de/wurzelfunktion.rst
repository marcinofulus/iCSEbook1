Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe 1

  Gegeben ist die Funktion :math:`f:x\mapsto 2-\sqrt{12-2x}` mit maximaler
  Definitionsmenge :math:`\mathbb{D}_f=]-\infty;6]`. Der Graph von :math:`f`
  wird mit :math:`G_f` bezeichnet.

  a) Berechnen Sie die Koordinaten der Schnittpunkte von :math:`G_f` mit den
     Koordinatenachsen. Bestimmen Sie das Verhalten von :math:`f` für
     :math:`x\rightarrow-\infty` und geben Sie :math:`f(6)` an.

  b) Bestimmen Sie den Term der Ableitungsfunktion :math:`f'` von :math:`f`
     und geben Sie die maximale Definitionsmenge von :math:`f'` an. 
     Bestimmen Sie :math:`\lim\limits_{x\rightarrow6}f'(x)` und beschreiben Sie,
     welche Eigenschaft aus diesem Ergebnis folgt.

  c) Geben Sie das Monotonieverhalten von :math:`G_f` und die Wertemenge von
     :math:`f` an.

  d) Geben Sie :math:`f(-2)` an und zeichnen Sie :math:`G_f` unter Berücksichtigung
     der bisherigen Ergebnisse in ein Koordinatensystem ein (Platzbedarf im Hinblick
     auf die folgenden Aufgaben: :math:`-3\leq y\leq7`).

  e) Die Funktion :math:`f` ist in :math:`\mathbb{D}_f` umkehrbar. Geben Sie die
     Definitionsmenge der Umkehrfunktion :math:`f^{-1}` von :math:`f` an und zeigen
     Sie, dass :math:`f^{-1}(x)=-\frac{1}{2}x^2+2x+4` gilt.
      

**Lösung zu Teil 1a**

Wir verschaffen uns mit Sage zunächst einen Überblick über die gegebene Funktion.

.. sagecellserver::

  sage: f(x) = 2 - sqrt(12 - 2*x)
  sage: p1 = plot(f(x), x, (-7,6), figsize=(4, 2.8))
  sage: show(p1, gridlines=True)

.. end of output

Den Schnittpunkt mit der :math:`y`-Achse ist durch :math:`(0|f(0))`
gegeben, wobei

.. math::

  f(0)=2-2\sqrt{3}.

oder mit Hilfe von Sage

.. sagecellserver::

  sage: print "Der y-Achsenabschnitt ist ", f(0), u"\u2248", f(0).n(digits=4)

.. end of output

Den Schnittpunkt mit der :math:`x`-Achse ergibt sich aus der Nullstelle
der Funktion :math:`f`:

.. math::

  &f(x) = 2-\sqrt{12-2x} \overset{!}{=} 0 \Leftrightarrow

Auflösen nach :math:`x` liefert

.. math::

  x=4

oder mit Hilfe von Sage:

.. sagecellserver::

   sage: solve(f(x) == 0, x)

.. end of output

Der Schnittpunkt mit der :math:`x`-Achse befindet sich also bei :math:`(4|0)`.
Die beiden gefundenen Schnittpunkte mit den Koordinatenachsen sind mit
dem von Sage gelieferten Funktionsgraphen konsistent.

Für das Verhalten für :math:`x\rightarrow -\infty` ergibt sich

.. math::

  \lim\limits_{x\rightarrow -\infty} 2-\sqrt{12-2x} &=
  \lim\limits_{x\rightarrow \infty} 2-\sqrt{12+2x}\\
  &= -\lim\limits_{x\rightarrow \infty} \sqrt{2x}\\
  &= -\infty.

Dies können wir mit Sage überprüfen:

.. sagecellserver::

  sage: limitval = limit(f(x), x=-infinity)
  sage: html("$\lim_{x=-\infty} f(x) = %s$" % latex(limitval))

.. end of output

Für :math:`f(6)` erhalten wir

.. math::

  f(6) = 2-\sqrt{12-2\cdot6}=2,

bzw. 

.. sagecellserver::

  print "f(6) =", f(6)

.. end of output

Auch dieser Wert kann dem Funktionsgraphen entnommen werden.

**Lösung zu Teil 1b**

Die Ableitung von :math:`f` erhalten mit Hilfe der Kettenregel

.. math::

  f'(x) = -\frac{1}{2} (12-2x)^{-\frac{1}{2}}\cdot(-2) = \frac{1}{\sqrt{12-2x}}

Selbiges Ergebnis erhalten wir mit Sage:

.. sagecellserver::

  sage: df = derivative(f,  x)
  sage: print "Die Ableitung von f ist:", df
  sage: p2 = plot(df(x), x, (-7,6), figsize=(4, 2.8))
  sage: show(p2)

.. end of output

Der Definitionsbereich der Ableitung wird gegenüber dem Definitionsbereich von
:math:`f(x)` noch durch die Nullstelle des Nenners der Ableitung bei :math:`x_0=6` 
eingeschränkt, so dass :math:`\mathbb{D}_{f'}=]-\infty;6[`.

Für den Grenzwert :math:`\lim\limits_{x\rightarrow 6}f'(x)` erhalten wir

.. math::

  \lim\limits_{x\rightarrow 6}f'(x) = \lim\limits_{x\rightarrow 0}\frac{1}{\sqrt{x}}=\infty.

Dies lässt sich auch vom Graphen der Funktion :math:`f'(x)` ablesen oder
mit Sage berechnen lassen:

.. sagecellserver::

  sage: limitval = limit(df(x), x=6)
  sage: html("$\lim_{x=6} f'(x) = %s$" % latex(limitval))

.. end of output

**Lösung zu Teil 1c**

Das Monotonieverhalten von :math:`f` lässt sich aus der Ableitung :math:`f'` bestimmen.
Aus dem Plot von Teilaufgabe b können wir ablesen, dass :math:`f'` überall positiv ist
und damit :math:`f` auf dem ganzen Definitionsbereich streng monoton steigend ist.

Dies lässt sich bestätigen, indem man die Ableitung :math:`f'` genauer untersucht:
Da die Wurzel im Nenner auf ihrem Definitionsbereich stetig ist und nur positive Werte annehmen
kann und auch der Zähler mit dem Wert 1 immer positiv ist, ist auch :math:`f'` stets positiv.

Der Wertebereich von :math:`f` beginnt nach Teilaufgabe a bei :math:`-\infty` und nimmt
für :math:`x=6` (dem Rand des Definitionsbereichs) den Wert 2 an. Da die Funktion auf ihrem
Definitionsbereich stetig und streng monoton steigend ist, werden auch (und ausschließlich)
alle Werte dazwischen angenommen. Der Wertebereich von :math:`f` ist also

.. math::

  \mathbb{W}_f=]-\infty; 2]

**Lösung zu Teil 1d**

Wir erhalten

.. math::

  f(-2) = -2.

.. sagecellserver::

  sage: print f(-2)

.. end of output

Die grafische Darstellung von :math:`f` ist Teilaufgabe a zu entnehmen.

**Lösung zu Teil 1e**

Wird die Umkehrfunktion :math:`f^{-1}` zu einer Funktion :math:`f` bestimmt, so nimmt die
Definionsmenge von :math:`f^{-1}` den Wertebereich der Wertemenge von :math:`f` an
und die Wertemenge von :math:`f^{-1}` nimmt den Wertebereich der Definitionsmenge 
von :math:`f` an:

.. math::

  \mathbb{D}_{f^{-1}} = \mathbb{W}_f\\
  \mathbb{W}_{f^{-1}} = \mathbb{D}_f.

In unserem Fall ergibt sich also:

.. math::

  \mathbb{D}_{f^{-1}} = ]-\infty; 2]

Um die Umkehrfunktion von :math:`f` zu bilden, müssen wir die Gleichung

.. math::

  f(y)=x

nach :math:`y` auflösen. Wir erhalten:

.. math::

  &2-\sqrt{12-2y}=x\Leftrightarrow\\
  &12-2y=(x-2)^2\Leftrightarrow\\
  &y = f^{-1}(x) = -\frac{1}{2}x^2+2x+4

Dieses Ergebnis lässt sich auch mit Sage herleiten.

.. sagecellserver::

  sage: var('y')
  sage: assume(y<2)
  sage: solve(f(x) == y, x)

.. end of output

.. admonition:: Aufgabe 2

  Der Graph der in :math:`\mathbb{R}` definierten Funktion 
  :math:`h:x\mapsto-\frac{1}{2}x^2+2x+4` ist die Parabel :math:`G_h`. Der Graph
  der in Aufgabe 1e betrachteten Umkehrfunktion :math:`f^{-1}` ist ein Teil
  dieser Parabel.

  a) Berechnen Sie die Koordinaten der Schnittpunkte von :math:`G_h` mit der durch
     die Gleichung :math:`y=x` gegebenen Winkelhalbierenden :math:`w` des I. und
     III. Quadranten.

  b) Zeichnen Sie die Parabel :math:`G_h` -- unter Berücksichtigung des Scheitels --
     im Bereich :math:`-2\leq x\leq4` in Ihre Zeichnung aus Aufgabe 1d ein. 
     Spiegelt man diesen Teil von :math:`G_h` an der Winkelhalbierenden :math:`w`,
     so entsteht eine herzförmige Figur; ergänzen Sie Ihre Zeichnung dementsprechend.

**Lösung zu Teil 2a**

Die Schnittpunkte der Graphen erhalten wir durch Gleichsetzen der beiden Funktionen:

.. math::

  & -\frac{1}{2}x^2+2x+4 = x\\
  & -\frac{1}{2}x^2+x+4 = 0\\
  & x_{1/2}=\frac{-1\pm\sqrt{1^2-4\cdot\left(-\frac{1}{2}\right)\cdot4}}
                 {2\cdot\left(-\frac{1}{2}\right)}\\
  & x_1 = -2, \quad x_2=4

Die :math:`y`-Werte der Schnittpunkte sind wegen der Geradengleichung :math:`y=x` gleich den 
:math:`x`-Werten, also

.. math::

  y_1=-2, \quad y_2=4.

Mit Sage können wir dieses Problem sowohl analytisch

.. sagecellserver::

  sage: h(x)=-1/2*x^2+2*x+4
  sage: w(x) = x
  sage: for loesung in solve(h(x) == w(x), x, solution_dict=True):
  sage:     print "(", loesung[x], "|", loesung[x], ")"

.. end of output

als auch graphisch lösen. Für Letzteres lassen wir :math:`G_h` und :math:`w` von Sage zeichnen:

.. sagecellserver::

  sage: p3 = plot(h(x), x, (-3, 6), fill=w, fillcolor = 'red')
  sage: p4 = plot(w(x), x, (-3, 6), color='green')
  sage: show(p3+p4, aspect_ratio=1, figsize=4) 

.. end of output

**Lösung zu Teil 2b**

Betrachtet man den Graphen von Teilaufgabe 2a, lässt sich bereits die
Hälfte der Herzform durch die Parabel erkennen. Um die volle Herzform zu
erhalten, muss :math:`G_h` noch an der Winkelhalbierenden :math:`w`
gespiegelt werden. Eine Spiegelung an der Winkelhalbierenden :math:`y =
x` entspricht der Umkehrung der Funktion. Die Umkehrungfunktion von
:math:`h` ist die Funktion :math:`f`, wie uns bereits aus Aufgabe 1e
bekannt ist. Allerdings gilt diese Umkehrung für :math:`h` nur im
Definitionsbereich :math:`]-\infty;2]`, vgl. Aufgabe 1e. Für Werte
:math:`x>2` kann jedoch als Umkehrfunktion für :math:`h` die Funktion

.. math::

  f_2 = 2+\sqrt{12-2x}

gefunden werden, die sich von :math:`f` nur durch das Vorzeichen der Wurzel unterscheidet. Um die
Herzform durch Spiegelung von :math:`G_h` zu zeichnen, gehen wir nun wie folgt vor:

  - Wir zeichnen :math:`G_h` zwischen den Schnittpunkten :math:`x_1=-2` und :math:`x_2=4`.

  - Anschließend zeichnen wir die Umkehrfunktion :math:`f` von :math:`h` vom Schnittpunkt mit der Gerade 
    :math:`w` (-2|-2) bis zum Maximum ihres Definitionsbereichs :math:`x_{\mathrm{max}}=6`, was der 
    Spiegelung von :math:`h` an :math:`w` vom Schnittpunkt (-2|-2) bis zu ihrem Scheitel (2|6) entspricht.

  - Zum Schluss zeichnen wir die Umkehrfunktion :math:`f_2` von :math:`h` vom Schnittpunkt mit der Gerade
    :math:`w` (4|4) bis zum Maximum ihres Definitionsbereichs :math:`x_{\mathrm{max}}=6`, was der 
    Spiegelung von :math:`h` an :math:`w` von ihrem Scheitel (2|6) bis zum Schnittpunkt (4|4) entspricht.

.. sagecellserver::

  sage: f2(x) =  2 + sqrt(12-2*x)
  sage: p5 = plot(h(x), x, (-2, 4))
  sage: p6 = plot(f(x), x, (-2, 6))
  sage: p7 = plot(f2(x), x, (4, 6))
  sage: show(p5+p6+p7, aspect_ratio=1, figsize=4)

.. end of output

.. admonition:: Aufgabe 3

  Durch die in Aufgabe 2 entstandene herzförmige Figur soll das abgebildete Blatt modellhaft 
  beschrieben werden. Eine Längeneinheit im Koordinatensystem aus Aufgabe 1d soll dabei 1 cm 
  in der Wirklichkeit entsprechen.

  .. image:: ../figs/blatt.png
     :align: center

  a) Berechnen Sie den Inhalt des von :math:`G_h` und der Winkelhalbierenden :math:`w` eingeschlossenen 
     Flächenstücks. Bestimmen Sie unter Verwendung dieses Werts den Flächeninhalt des Blatts auf 
     der Grundlage des Modells.

  b) Ermitteln Sie die Gleichung der Tangente an :math:`G_h` im Punkt
     :math:`\left(-2\left|h(-2)\right.\right)`.
     Berechnen Sie den Wert, den das Modell für die Größe des Winkels liefert, den die 
     Blattränder an der Blattspitze einschließen.

  c) Der Verlauf des oberen Blattrands wird in der Nähe der Blattspitze durch das bisher verwendete 
     Modell nicht genau genug dargestellt. Daher soll der obere Blattrand im Modell für 
     :math:`-2\leq x \leq 0` nicht mehr durch :math:`G_h`, sondern durch den Graphen :math:`G_k` einer in 
     :math:`\mathbb{R}` definierten ganzrationalen Funktion :math:`k` dritten Grades beschrieben werden. 
     Für die Funktion :math:`k` werden die folgenden Bedingungen gewählt (:math:`k'` und :math:`h'` sind die 
     Ableitungsfunktionen von :math:`k` bzw. :math:`h`):

     .. math::

       & \mathrm{I} & \qquad &k(0)=h(0)\\
       & \mathrm{II} & &k'(0)=h'(0)\\
       & \mathrm{III} & &k(-2)=h(-2)\\
       & \mathrm{IV} & &k'(-2)=h'(-2)\\

     Begründen Sie im Sachzusammenhang, dass die Wahl der Bedingungen I, II und III sinnvoll ist. 
     Machen Sie plausibel, dass die Bedingung IV dazu führt, dass die Form des Blatts in der Nähe der 
     Blattspitze im Vergleich zum ursprünglichen Modell genauer dargestellt wird.


**Lösung zu Teil 3a**

Zunächst wollen wir den Inhalt der roten Fläche aus Teilaufgabe 2a berechnen. Dies erreichen wir,
indem wir die Differenz der beiden Funktionen :math:`h(x)` und
:math:`w(x)` zwischen den Schnittpunkten bei :math:`x=-2` und :math:`4` integrieren:

.. math::

  \int\limits_{-2}^4 \left( h(x)-w(x) \right)\, \mathrm{d}x &= 
  \int\limits_{-2}^4 \left( -\frac{1}{2}x^2+2x+4 -x \right)\mathrm{d}x\\
  &= \int\limits_{-2}^4 \left( -\frac{1}{2}x^2+x+4 \right)\mathrm{d}x\\
  &= \left[-\frac{1}{6}x^3+\frac{1}{2}x^2+4x\right]_{-2}^4\\
  &=18

Dieses Ergebnis erhalten wir auch mit Hilfe von Sage:

.. sagecellserver::

  sage: print "Der Inhalt der roten Fläche beträgt:", integrate(h(x)-w(x), x, -2, 4)

.. end of output

Da wir die Herzform durch Spiegelung der roten Fläche an der Geraden :math:`w` erhalten haben,
ist die Fläche der Herzform doppelt so groß wie die rote Fläche. Mit der angegebenen Längenskala
erhalten wir:

.. math::

  A_{\mathrm{Blatt}}=36\mathrm{cm}^2


**Lösung zu Teil 3b**

Zur Berechnung der Tangentengleichung im Punkt :math:`\left(-2\left|h(-2)\right)\right.=(-2|-2)`
müssen wir zunächst die Steigung von :math:`h` am Punkt -2 bestimmen.
Mit

.. math::

  h'(x) = -x+2

ergibt sich

.. math::

  m = h'(-2) = 4.

Die Gleichung der Tangente :math:`y=m\cdot x+t` ergibt sich dann durch Einsetzen des Punktes
:math:`x=-2, y=-2` zu

.. math::

   y = 4x+6.

Diese Gleichung können wir in Sage direkt aus den Forderungen bestimmen,
dass die Tangente durch den vorgegebenen Punkt gehen muss und die
Steigung der Tangente in diesem Punkt gleich der Steigung der Funktion
:math:`h(x)` sein muss.

.. sagecellserver::

  sage: m, t = var('m t')
  sage: y(x) = m*x+t
  sage: dh = derivative(h, x)
  sage: dy = derivative(y, x)
  sage: loesung = solve([y(-2)==h(-2),
  ...                    dy(-2)==dh(-2)], m, t, solution_dict=True)[0]
  sage: y(x) = y.subs(loesung)
  sage: print 'Tangentengleichung: y = %sx+%s' % (loesung[m], loesung[t])

.. end of output

Zudem wollen wir Sage nutzen, um die Tangente in unsere Zeichnung einzutragen.

.. sagecellserver::

  sage: p8 = plot(h(x), x, (-3, 0))
  sage: p9 = plot(y(x), x, (-3, 0), color='green')
  sage: show(p8+p9, figsize=(4, 2.8))

.. end of output

Es wird bereits aus der Zeichnung ersichtlich, dass der gesuchte Winkel deutlich größer ist als das 
Bild des Blatts in der Aufgabenstellung vermuten lässt. Den Winkel
zwischen der Winkelhalbierenden und der Tangente erhält man aus deren
Steigungen :math:`m_w=1` und :math:`m_t=4` gemäß

.. math::

  \alpha = \arctan\left(\frac{m_t-m_w}{1+m_w m_t}\right)
  =\arctan\left(\frac{4-1}{1+4}\right) \approx 30,9°

Der ingesamt eingeschlossene Winkel ist doppelt so groß und beträgt
somit etwa :math:`62°`.

**Lösung zu Teil 3c**

Die Bedingungen I und III sorgen dafür, dass sich :math:`G_k` stetig in
die restliche Blattkontur einfügt. Bedingung II stellt ferner sicher,
dass der Übergang am oberen Ende glatt erfolgt. Bedingung IV führt dazu,
dass die Steigung der Tangente an den oberen Blattrand im Punkt (-2|-2)
deutlich kleiner ist als der bisherige Wert 4. Daher läuft das Blatt
nun wesentlich spitzer zu.

Da in der Aufgabe die explizite Bestimmung der Funktion :math:`k(x)`
nicht verlang war, überlassen wir diese Aufgabe Sage.

.. sagecellserver::

  sage: a, b, c, d = var('a b c d')
  sage: k(x) = a*x^3+b*x^2+c*x+d
  sage: dk = derivative(k, x)
  sage: gleichungen = [k(0)==h(0),
  ...                  dk(0)==dh(0),
  ...                  k(-2)==h(-2),
  ...                  dk(-2)==1.5]
  sage: loesung = solve(gleichungen, a, b, c, d, solution_dict=True)[0]
  sage: k = k.subs(loesung)
  sage: print k

.. end of output

Mit den berechneten Parametern können wir das Blattmodell mit der neuen Funktion für
:math:`-2\leq x\leq0` darstellen, wobei die neue Funktion :math:`k` hier
in rot gezeigt wird.

.. sagecellserver::

  sage: p10 = plot(h(x), x, (0, 4))
  sage: p11 = plot(k(x), x, (-2, 0), color='red')
  sage: p12 = plot(f(x), x, (-2, 6))
  sage: p13 = plot(f2(x), x, (4, 6))
  sage: p14 = plot(h(x), x, (-2, 0), linestyle=':')
  sage: show(p10+p11+p12+p13+p14, aspect_ratio=1, figsize=4)

.. end of output

Wir sehen, dass die Blattform  besser getroffen ist als zuvor.
