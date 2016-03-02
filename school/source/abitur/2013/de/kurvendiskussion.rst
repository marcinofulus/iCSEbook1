Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  #.  Gegeben ist die in :math:`\mathbb{R}` definierte Funktion 
      :math:`f:x\mapsto 2x\cdot e^{-0,5x^2}`. Abbildung 2 zeigt
      den Graphen :math:`G_f` von :math:`f`.

    
      .. image:: ../figs/kurvendiskussion.png
         :align: center

      a) Weisen Sie rechnerisch nach, dass :math:`G_f` punktsymmetrisch
         bezüglich des Koordinatenursprungs ist, und machen Sie anhand
         des Funktionsterms von :math:`f` plausibel, dass
         :math:`\lim\limits_{x\rightarrow +\infty} f(x)=0` gilt.
      b) Bestimmen Sie rechnerisch Lage und Art der Extrempunkte von
         :math:`G_f`.
      c) Berechnen Sie die mittlere Änderungsrate :math:`m_S` von :math:`f`
         im Intervall :math:`[-0,5;0,5]` sowie die lokale Änderungsrate
         :math:`m_T` von :math:`f` an der Stelle :math:`x=0`. Berechnen
         Sie, um wie viel Prozent :math:`m_S` von :math:`m_T` abweicht.
      d) Der Graph von :math:`f`, die :math:`x`-Achse und die Gerade
         :math:`x=u` mit :math:`u \in \mathbb{R}^+` schließen für
         :math:`0\leq x \leq u` ein Flächenstück mit dem Inhalt
         :math:`A(u)` ein.
         
         Zeigen Sie, dass :math:`A(u)=2-2e^{-0,5u^2}`
         gilt. Geben Sie :math:`\lim\limits_{u\rightarrow + \infty} A(u)` an
         und deuten Sie das Ergebnis geometrisch.
      e) Die Ursprungsgerade :math:`h` mit der Gleichung
         :math:`y=\frac{2}{e^2}\cdot x` schließt mit :math:`G_f` für
         :math:`x\geq 0` ein Flächenstück mit dem Inhalt :math:`B`
         vollständig ein.
         
         Berechnen Sie die :math:`x`-Koordinaten der
         drei Schnittpunkte der Geraden :math:`h` mit :math:`G_f` und
         zeichnen Sie die Gerade in Abbildung 2 ein. Berechnen Sie B.

  #. Im Folgenden wird die Schar der in :math:`\mathbb{R}` definierten
     Funktion :math:`g_c: x\mapsto f(x) + c` mit :math:`c\in \mathbb{R}`
     betrachtet.

    a) Geben Sie in Abhängigkeit von c ohne weitere Rechnung die Koordinaten
       des Hochpunkts des Graphen von :math:`g_c` sowie das Verhalten von
       :math:`g_c` für :math:`x\rightarrow + \infty` an.

    b) Die Anzahl der Nullstellen von :math:`g_c` hängt von :math:`c` ab.
       Geben Sie jeweils einen möglichen Wert von :math:`c` an, sodass gilt:

       :math:`\alpha`) :math:`g_c` hat keine Nullstelle.

       :math:`\beta`) :math:`g_c` hat genau eine Nullstelle.

       :math:`\gamma`) :math:`g_c` hat genau zwei Nullstellen.

    c) Begründen Sie für :math:`c>0` anhand einer geeigneten Skizze, dass
       :math:`\int\limits_0^3 g_c(x)\mathrm{d}x=\int\limits_0^3f(x)\mathrm{d}x+3c`
       gilt.

Aufgabe 1
^^^^^^^^^

**Lösung zu Teil a**

Zum Nachweis der Punktsmmetrie von :math:`G_f`, müssen wir zeigen,
dass :math:`f(x)=-f(-x)`, bzw. f(x) + f(-x) = 0 gilt.

.. math::
  
  f(x) + f(-x) & = 2x \cdot e^{-0,5x^2} + 2(-x) \cdot e^{-0,5(-x)^2}\\
  &= 2x \cdot e^{-0,5x^2} - 2 x \cdot e^{-0,5x^2}\\
  &= (2x - 2x) e^{-0,5x^2}\\
  &= 0

Dieses Ergebnis lässt sich leich mit Sage überprüfen

.. sagecellserver::

  sage: f(x) = 2*x*exp(-0.5* x**2)
  sage: print("f(x) + f(-x) = " + str(f(x) + f(-x)))

.. end of output

**Lösung zu Teil b**

Um die Extrempunkte von :math:`G_f` zu ermitteln, muss man die
Nullstellen der Ableitung von :math:`f` finden.

.. math::

  f'(x) &= \frac{\mathrm{d}}{\mathrm{d}x}f(x) 
  = \frac{\mathrm{d}}{\mathrm{d}x}\left(2x\cdot e^{-0,5x^2}\right)\\
  &= 2 \cdot e^{-0,5x^2} + 2x\cdot e^{-0,5x^2}\cdot (-x) 
  = 2\cdot e^{-0,5x^2}\left(1-x^2\right)

Mit Sage lässt sich die Ableitung wie folgt berechnen:

.. sagecellserver::

  sage: df(x) = derivative(f(x),x)
  sage: print("Ableitung von f(x): " + str(df(x).simplify()))

.. end of output

Um die Extrempunkte zu bekommen muss die Gleichung

.. math::

  2\cdot e^{-0,5x^2}(1-x^2)=0

gelöst werden. Da die Exponentialfunktion keine Nullstellen hat,
ergeben sich alle Nullstellen aus :math:`1-x^2=0`. Man erhält die
Lösungen :math:`x_1=-1` und :math:`x_2=1`.

Mit Sage lassen sich diese Lösungen bestätigen.

.. sagecellserver::

  sage: nstn = solve(df(x)==0, x)
  sage: print("Nullstellen der Ableitung von f: " +repr(nstn))

.. end of output

Für die Art der Extrempunkte muss man die zweite Ableitung von :math:`f`
an den berechneten :math:`x`-Werten betrachten. Ist der Wert positiv,
so handelt es sich um ein Minimum, ist er negativ, handelt es sich um ein Maximum.

.. math::

  f''(x) = \frac{d^2}{dx^2}f(x) = \frac{d^2}{dx^2}\left(2\cdot 
  e^{-0,5x^2}\left(1-x^2\right)\right)
  = - 2x\cdot e^{-0,5x^2}\left(3-x^2\right)

Einsetzen von :math:`x_1` und :math:`x_2` liefert:

.. math::
  f''(x_1) &= f''(-1) &= -2 \cdot (-1)\cdot e^{-0,5\cdot(-1)^2}\left(3-(-1)^2\right)
  &= 2 \cdot e^{-0,5} &> 0\\
  f''(x_2) &= f''(1) &= -2 \cdot 1\cdot e^{-0,5 \cdot 1^2}\left(3-1^2\right)
  &= -2 \cdot e^{-0,5} &< 0

Damit ist :math:`x_1` ein Minimum und :math:`x_2` ein Maximum. Dies
wird in Abbildung 2 bestätigt.

Mit Sage erhält man die zweite Ableitung, sowie die Werte an den Punkten
:math:`x_1` und :math:`x_2` über:

.. sagecellserver::

  sage: ddf(x) = derivative(df(x),x)
  sage: print("Zweite Ableitung von f(x): " + str(ddf(x).simplify()))
  sage: print("ddf(-1) = " + str(ddf(-1)))
  sage: print("ddf(1) = " + str(ddf(1)))

.. end of output

**Lösung zu Teil c**

Die lokale Änderungsrate :math:`m_T` an :math:`x=0` ist die Steigung
an diesem Punkt. In der vorherigen Teilaufgabe wurde die Ableitung
bereits berechnet. Daraus erhalten wir:

.. math::

  f'(0) = 2 \cdot e^{-0,5\cdot0}(1-0) = 2

.. sagecellserver::

  sage: print("df(0) = " + str(df(0)))

.. end of output

Die mittlere Änderungsrate :math:`m_s` im Intervall :math:`[-0,5;0,5]`
ergibt sich aus der Differenz der Funktionswerte an den Intervallgrenzen
geteilt durch die Intervalllänge.

.. math::
  m_s=\frac{f(0,5)-f(-0,5)}{0,5 - (-0,5)} = 2\cdot(0,5)\cdot e^{-0,5\cdot(0,5)^2}
  - 2\cdot(-0,5)\cdot e^{-0,5\cdot(-0,5)^2} = 2\cdot e^{-0,125} \approx 1.76

Die prozentuale Abweichung beträgt damit :math:`e^{-0.125}\approx 0.882 = 88,2\%`

Mit Sage kann leicht eine Funktion erstellt werden, welche für zwei Intervallgrenzen
die mittlere Steigung berechnet.

.. sagecellserver::

  sage: def ms(x1,x2):
  sage:    return (f(x2)-f(x1))/(x2-x1)
  sage: print("Mittlere Steigung  zwischen -0,5 und 0,5: " + str(ms(-0.5,0.5)))
  sage: print("Prozentuale Abweichung zur lokalen Steigung: " + str(ms(-0.5,0.5)/df(0)))

.. end of output

**Lösung zum Teil d**

Die Eingeschlossene Fläche :math:`A(u)` lässt sich als Integral von :math:`f(x)`
mit der unteren Grenze :math:`O` und der oberen Grenze :math:`u` berechnen.
Es muss gelten:

.. math::

  A(u) = \int\limits_0^u f(x) \mathrm{d}x

Für :math:`u=0` muss die Fläche Null sein.

.. math::

  A(0) = 2 - 2e^{-0,5\cdot 0^2} = 2 - 2 = 0

Leitet man :math:`A(u)` nach :math:`u` ab, erhält man:

.. math::

  \frac{\mathrm{d}}{\mathrm{d}u} A(u) 
  = \frac{\mathrm{d}}{\mathrm{d}u}\left(2-2e^{-0,5u^2}\right) 
  = 2u\cdot e^{-0,5 u^2} = f(u)

Diese beiden Eigenschaften zeigen, dass :math:`A(u)` das bestimmte
Integral von :math:`f(x)` mit Intervall :math:`[0,u]` ist.

Mit Sage lässt sich die Integration direkt ausführen.

.. sagecellserver::

  sage: from sage.symbolic.integration.integral import indefinite_integral
  sage: u = var('u')
  sage: assume(u>0)
  sage: f.integral(x,0,u)

.. end of output

Der Limes von :math:`A(u)` für :math:`u\rightarrow +\infty` ist:

.. math::

  \lim\limits_{u\rightarrow +\infty} A(u)
  = \lim\limits_{u\rightarrow +\infty}\left(2-2e^{-0.5u^2}\right)
  = 2 - 0 = 2

Mit Sage lässt sich dieser Wert durch einsetzen von :math:`+\infty` berechnen.

.. 
  In Sage scheint es einen Bug zu geben der ein Einsetzen von Infinity
  in f(x) = exp(-x^2) zu einem RuntimeError führt siehe
  https://groups.google.com/forum/#!topic/sage-devel/tqDSbZ499ME
  http://trac.sagemath.org/ticket/19918


.. sagecellserver::

  sage: print(u"A(\u221E) = " + str(2-2*e^(-0.5*Infinity^2)))

.. end of output

Dieses Ergebnis bedeutet, dass die eingeschlossene Fläche unter dem Graphen von
:math:`0` bis :math:`+\infty` endlich, nämlich genau gleich 2 ist.

**Lösung zum Teil e**

Der erste Schnittpunkt der Geraden :math:`y=\frac{2}{e^2}\cdot x` mit :math:`G_f`
ist :math:`x_1=0` da hier beide Graphen den Wert Null haben. Weitere
Schnittpunkte ergeben sich durch gleichsetzen beider Funktionen.

.. math::

  \frac{2}{e^2}\cdot x &= 2x \cdot e^{-0,5x^2} &\left| \cdot \frac{e^2}{2x}\right. \\
  1 &= e^{-0,5x^2 + 2} &\left| \ln()\right. \\
  0 &= -0,5x^2 + 2 \qquad&\left| -2\right.\\
  -2 &= -0,5x^2 &\left| \cdot (-2)\right. \\
  4 &= x^2 &\left| \sqrt{\ } \right. \\
  x_{2/ 3} &= \pm 2

Mit Sage lassen sich diese Schnittpunkt wie folgt ermitteln:

.. sagecellserver::

  sage: g(x) = x * 2 / e^2
  sage: solve(f(x) == g(x), x)

.. end of output

Die Schnittpunkte lassen sich graphisch erkennen, wenn man beide Funktionen
in ein Koordinatensystem zeichnet.

.. sagecellserver::

  sage: pf = plot(f, (0,2), color='blue', fill=g, fillcolor='yellow')
  sage: ppf = plot(f, (-4,0), color='blue')
  sage: pppf = plot(f, (2,4), color='blue')
  sage: pg = plot(g, (-4,4), color='red')
  sage: b = text("B",(1,0.7))
  sage: show(pf + pg + ppf + pppf + b, aspect_ratio=1)

.. end of output

Die eingeschlossene Fläche :math:`B` zwischen den beiden Funktionen
lässt sich per integration berechnen. Dafür muss die Gerade von der
Funktion :math:`f(x)` abgezogen werden und dann von :math:`0` bis
:math:`2` integriert werden. Dabei können wir für die Integration
die Ergebnisse aus Teilaufgabe **d** verwenden.

.. math::

  B =& \int\limits_0^2\left( f(x) - \frac{2}{e^2}\cdot x\right)
  = \int\limits_0^2 2x\cdot e ^{-0.5x^2} 
  - \int\limits_0^2\frac{2}{e^2}\cdot x\\
  =& 2 - 2e^{-0,5\cdot 2^2} - \left[ \frac{1}{e^2}\cdot x^2 \right]_{0}^{2}
  = 2 - 2e^{-2} - \frac{1}{e^2}\left(4-0\right)
  = 2 - 6 e^{-2} \approx 1.88

Mit Sage lässt sich dieses Integral leicht berechnen.

.. sagecellserver::

  sage: h(x) = f(x) - g(x)
  sage: ih = integral(h(x),x,0,2)
  sage: print("Die Fläche B ist: " + str(float(ih)))

.. end of output

Aufgabe 2
^^^^^^^^^

**Lösung zum Teil a**

Die Funktionenschar :math:`g_c` ist im Vergleich zu :math:`f(x)`
um eine Konstante :math:`c` verschoben. Der Hochpunkt des Graphen
bleibt dabei jedoch an derselben :math:`x`-Koordinate. Dieser wurde
für :math:`f(x)` in Aufgabe 1 b) berechnet :math:`(x=1` und 
:math:`f(1) = \frac{2}{\sqrt{e}})`.
Der :math:`y`-Wert des Hochpunktes von :math:`g_c` ergibt sich
entsprechend durch

.. math::

  g_c(1) = f(1) + c = \frac{2}{\sqrt{e}} + c.

Damit sind die Koordinaten des Hochpunktes :math:`\left(1,\frac{2}{\sqrt{e}} + c\right)`

In Sage lässt sich der Hochpunkt für ein festes :math:`c` numerisch berechnen.

.. sagecellserver::

  sage: c = var('c')
  sage: gc(c,x) = f(x) + c
  sage: hy, hx = find_local_maximum(gc(3), -30, 30)
  sage: print("Der Hochpunkt für c=3 befindet sich am Punkt: (" + str(hx) + "," + str(hy) + ")")

.. end of output

Der Limes von :math:`g_c` für :math:`x\rightarrow + \infty` ist:

.. math::

  \lim\limits_{x\rightarrow +\infty} g_c(x) 
  = \lim\limits_{x\rightarrow+\infty}\left( f(x) + c\right)
  = \lim\limits_{x\rightarrow+\infty}\left( f(x)\right)  
  + \lim\limits_{x\rightarrow+\infty}(c)
  \overset{\mathrm{1. a}}{=} 0 + c = c

.. Hier wäre in Sage eine Betrachtung von gc(Infinity) interesant.
   Dies ist aber wegen des oben genannten Bugs noch nicht möglich

**Lösung von Teil b**

Damit :math:`g_c` keine Nullstellen hat, muss ein positives/negatives :math:`c` betragsmäßig 
größer als der Tiefpunkt/Hochpunkt des Graphen gewählt werden, z.B. :math:`c=2`.
Für eine Nullstelle kann :math:`c` gleich dem negativen Wert des Hochpunktes oder
gleich dem positiven Wert des Tiefpunkts von :math:`f(x)` gewählt werden. 
Aus Aufgabe 1 b) folgt dann, dass :math:`c=\pm\frac{2}{\sqrt{e}}` eine Lösung hierfür
ist. Eine weitere Lösung ist es, :math:`c=0` zu wählen. Damit erhalten wir :math:`f(x)`, 
welches nur im Ursprung eine Nullstelle hat.
Für alle anderen Fälle von :math:`c` (betragsmäßig kleiner als Hoch- und Tiefpunkt und
ungleich Null) hat :math:`g_c` zwei Nullstellen.

.. In Sage ist es nicht so leicht möglich für c\neq0 Nullstellen zu lösen da dies
   nur noch numerisch möglich ist. Wenn keine Nullstelle vorhanden ist, wird von
   find_root eine RuntimeError geworfen. Wenn zwei Nullstellen vorhanden sind, wird
   nur eine gefunden. Eine möglich Lösung wäre eine Schleife welche für kleine Intervalle
   nach Nullstellen sucht und am Ende alle Lösungen ausgibt (z.B. :math:`c=1`).

Ein Plot für :math:`c\in\{0,1,\frac{2}{\sqrt{e}},2\}` zeigt graphisch Funktionen mit unterschiedlich vielen
Nullstellen.

.. sagecellserver::

  sage: pg0 = plot(gc(0,x), (-4,4), color='blue')
  sage: pg1 = plot(gc(1,x), (-4,4), color='red')
  sage: pgtp = plot(gc(2/sqrt(e),x), (-4,4), color='purple')
  sage: pg2 = plot(gc(2,x), (-4,4), color='green')
  sage: show(pg0 + pg1 + pgtp + pg2, aspect_ratio=1)

.. end of output

Die Nullstellen für diese Funktionen lassen sich in Sage numerisch berechnen.

.. sagecellserver::

  sage: def my_find_root(f, a, b, n):
  sage:     # f: Funktion
  sage:     # a: Startpunkt des Intervalls
  sage:     # b: Endpunkt des Intervalls
  sage:     # n: Anzahl der Teilabschnitte, in den Teilabschnitten wird maximal eine Nullstelle gefunden

  sage:     roots = set()
  sage:     print("Suche nach Nullstellen zwischen " + str(a) + " und " + str(b) + " für die Funktion: " + str(f))
  sage:     for i in range(n):
  sage:         print("Suche Nullstelle im Intevall: [" + str(a + (b-a)/n * i) + ", " + str(a + (b-a)/n * (i+1)) + "]")
  sage:         try:
  sage:             r = find_root(f, a + (b-a)/n * i, a + (b-a)/n * (i+1))
  sage:             print("Nullstelle gefunden bei x = " + str(r))
  sage:             roots.add(r)
  sage:         except RuntimeError: # Es wurde keine Nullstelle in diesem Intervall gefunden
  sage:             pass
  sage:     print( str(f) + " hat Nullstellen bei x = {" + ", ".join(str(nst) for nst in roots) + "}")


  sage: my_find_root(gc(0), -5, 5, 10)
  sage: my_find_root(gc(1), -5, 5, 10)
  sage: my_find_root(gc(2/sqrt(e)), -5, 5, 10)
  sage: my_find_root(gc(2), -5, 5, 10)

.. end of output

**Lösung von Teil c**

Die Formel lässt sich leicht mit der Linearität von Integralen herleiten:

.. math::

  \int\limits_0^3 g_c(x)\mathrm{d}x=\int\limits_0^3(f(x)+c)\mathrm{d}x=
  \int\limits_0^3f(x)\mathrm{d}x+\int\limits_0^3c\mathrm{d}x=
  \int\limits_0^3f(x)\mathrm{d}x+3c

Eine Skizze, welche die Formel
:math:`\int\limits_0^3 g_c(x)\mathrm{d}x=\int\limits_0^3f(x)\mathrm{d}x+3c`
visualisiert, lässt sich in Sage leicht erstellen. Das grüne Rechteck hat die
Fläche :math:`3c`. Die gelbe Fläche ist gleich dem Integral über :math:`f(x)`.

.. sagecellserver::

  sage: c = 1
  sage: pg = plot(gc(c,x), (0, 3), color='red', fill=c, fillcolor='yellow')
  sage: pgl = plot(gc(c,x), (-1, 0), color='red')
  sage: pgr = plot(gc(c,x), (3, 4), color='red')
  sage: gtext = text(r"$g_1(x)$", (2, c + 0.8), fontsize=14)
  sage: pc = plot(c,(0,3), color='white', fill=True, fillcolor='lightgreen')
  sage: ftext = text(r"$\int_0^3 f(x) \mathrm{d}x$",(1, c + 0.5), fontsize=14)
  sage: ctext = text(r"$c=" + str(c) + r"$",(-0.5, c), fontsize=14)
  sage: c3text = text(r"$3\cdot c$",(1, c/2), fontsize=14)
  sage: show(pgl + pg + pgr + gtext+ pc + ftext + ctext + c3text, aspect_ratio=1, xmax=4)

.. end of output
