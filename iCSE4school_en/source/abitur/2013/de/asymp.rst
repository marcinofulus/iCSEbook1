Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Einleitung

  Gegeben ist die Funktion :math:`f:x\mapsto \frac{1}{2}x -\frac{1}{2}
  + \frac{8}{x+1}` mit Definitionsbereich :math:`\mathbb{R} \backslash \{-1\}`.
  Abbildung 2 zeigt den Graphen :math:`G_f` von :math:`f`.

  .. image:: ../figs/asymp.png
     :align: center

Aufgabe 1
^^^^^^^^^

.. admonition:: Aufgabe 1

  a) Geben Sie die Gleichungen der Asymptoten von :math:`G_f` an und zeigen Sie
     rechnerisch, dass :math:`G_f` seine schräge Asymptote nicht schneidet.
     Zeichnen Sie die Asymptoten in Abbildung 2 ein.
  b) Bestimmen Sie rechnerisch Lage und Art der Extrempunkte von
     :math:`G_f`.

**Lösung zum Teil a**

Am Punkt :math:`x=-1` hat :math:`f(x)` eine Polstelle. Damit ergibt sich
die Gleichung der ersten Asymptoten zu: :math:`x=-1`. Die zweite
Asymptote ergibt sich aus der Betrachtung von :math:`f(x)` für
betragsmäßig sehr große Werte von :math:`x`. Der Summand
:math:`\frac{8}{x+1}` geht in diesem Grenzfall gegen Null. Die Funktion
nähert sich somit der Geraden :math:`g(x) = \frac{1}{2}x -\frac{1}{2}`
an.

Der folgende Code verlangt von Sage, Polstellen der Funktion zu
identifizieren. Diese werden dann durch graue gestrichelte Linien
dargestellt. Dadurch wird bereits die vertikale Asymptote bei
:math:`x=-1` erfasst.  Zusätzlich muss noch die Asymptote für große
Werte von :math:`\vert x\vert` eingezeichnet werden.

.. sagecellserver::

  sage: ranges = {'xmin': -10, 'xmax': 10, 'ymin': -10, 'ymax': 10}
  sage: f(x) = x/2- 1/2 + 8/(x+1)
  sage: pf = plot(f, detect_poles="show", **ranges)
  sage: asymptote = x/2 - 1/2
  sage: pasymp = plot(asymptote, color='green', **ranges) 
  sage: show(pf + pasymp, aspect_ratio=1, figsize=4)

.. end of output

Ein Schnittpunkt der Funktion mit ihrer Asymptote kann nur vorliegen,
wenn

.. math::

  f(x) - g(x) = \frac{8}{x+1} = 0

eine Lösung besitzt. Dies ist jedoch offensichtlich nicht der Fall.
Entsprechend findet auch Sage keinen Schnittpunkt.

.. sagecellserver::

  sage: solve(asymptote == f, x)

.. end of output

**Lösung zum Teil b**

Um die Lage der Extrempunkte zu bestimmen, muss die Ableitung von
:math:`f` gleich Null gesetzt werden. Die Art der Extrema ergibt sich
dann aus dem Vorzeichen der zweiten Ableitungen an diesen Punkten.

Durch Ableiten ergibt sich:

.. math::

  \frac{\mathrm{d}f}{\mathrm{d}x} &= \frac{1}{2}-\frac{8}{(x+1)^2}\\
  \frac{\mathrm{d}^2f}{\mathrm{d}x^2} &= \frac{16}{(x+1)^3}

Die erste Ableitung verschwindet wenn :math:`x+1 = \pm 4`, also an den
Stellen :math:`x_1=-5` und :math:`x_2=3`. Im ersten Fall ist die
zweite Ableitung negativ, so dass ein Maximum vorliegt. Im zweiten Fall
ist die zweite Ableitung dagegen positiv und es liegt ein Minimum vor.

Diese Ergebnisse lassen sich mit Sage bestätigen.

.. sagecellserver::

  sage: df = derivative(f)
  sage: ddf = derivative(df)
  sage: print("f'(x)  = ", df)
  sage: print("f''(x) = ", ddf)
  sage: for extremum in solve(df == 0, x):
  sage:     x = extremum.right()
  sage:     print("Zweite Ableitung des Extremums bei x=%s: %s" % (x, ddf(x)))

.. end of output


Aufgabe 2
^^^^^^^^^
.. admonition:: Aufgabe 2

  Abbildung 2 legt die Vermutung nahe, dass :math:`G_f` bezüglich des
  Schnittpunkts :math:`P(-1\vert -1)` seiner Asymptoten symmetrisch ist. Zum
  Nachweis dieser Symmetrie von :math:`G_f` kann die Funktion :math:`g`
  betrachtet werden, deren Graph aus :math:`G_f` durch Verschiebung um
  :math:`1` in positive :math:`x`-Richtung und um :math:`1` in positive
  :math:`y`-Richtung hervorgeht.
  
  a) Bestimmen Sie einen Funktionsterm von :math:`g`. Weisen Sie anschließend
     die Punktsymmetrie von :math:`G_f` nach, indem Sie zeigen, dass der Graph
     von :math:`g` punktsymmetrisch bezüglich des Koordinatenursprungs ist.

     *(Teilergebnis:* :math:`g(x)=\frac{1}{2}x+\frac{8}{x}`\ *)*

  b) Zeigen Sie, dass :math:`\int\limits_0^4 f(x)\mathrm{d}x=2+8\cdot\ln 5`
     gilt. Bestimmen Sie nun ohne weitere Integration den Wert des Integrals
     :math:`\int\limits_{-6}^{-2} f(x) \mathrm{d}x`; veranschaulichen Sie Ihr
     Vorgehen durch geeignete Eintragungen in Abbildung 2.

**Lösung zum Teil a**

Eine positive Verschiebung um :math:`1` in :math:`x`-Richtung erhält man, 
indem  :math:`x` durch :math:`x-1` ersetzt wird. Durch Addition von :math:`1`
erhält man die Verschiebung in :math:`y`-Richtung. Es ergibt sich für
:math:`g` in Übereinstimmung mit dem angegebenen Teilergebnis:

.. sagecellserver::

  sage: g(x) = f(x-1) + 1
  sage: print(g)

.. end of output

Die Punktsymmetrie von :math:`g` bezüglich des Ursprungs ergibt sich daraus,
dass nur lineare oder invers lineare Terme vorliegen, und lässt sich
wie folgt mit Sage zeigen:

.. sagecellserver::

  sage: print("g(x) = ", g(x))
  sage: print("-g(-x) = ", -g(-x))
  sage: if g(x) == -g(-x):
  sage:     print("g(x) ist punktsymmetrisch.")
  sage: else:
  sage:     print("g(x) ist nicht punktsymmetrisch.")

.. end of output

**Lösung zum Teil b**

Die Stammfunktion der Funktion :math:`f` lautet

.. math::

  F(x) = \frac{x^2}{4}-\frac{x}{2}+8\ln(\vert x+1\vert).

Durch Einsetzen der Integrationsgrenzen findet man das angegebene
Ergebnis

.. math::

  \int_0^4f(x)\mathrm{d}x = F(4)-F(0) = 2+8\ln(5)\,.

Mit Hilfe von Sage erhält man entsprechend

.. sagecellserver::

  sage: F = f.integrate(x)
  sage: print("Stammfunktion F = ", F)
  sage: pretty_print(html("$\int_0^4 f(x)\mathrm{d}x = $" + str(F(4)-F(0))))

.. end of output

Aus der Punktsymmetrie :math:`g(-x)=-g(x)` und der Beziehung :math:`g(x)=f(x-1)+1`
folgt

.. math::

  f(x) = -f(-x-2)-2

Das zweite zu berechnende Integral lässt sich somit folgendermaßen bestimmen:

.. math::

  \int_{-6}^{-2}f(x)\mathrm{d}x &= -\int_{-6}^{-2}[f(-x-2)+2]\mathrm{d}x\\
                                &= -\int_2^6[f(x-2)+2]\mathrm{d}x\\
                                &= -\int_0^4[f(x)+2]\mathrm{d}x\\
                                &= -\int_0^4f(x)\mathrm{d}x-8\\
                                &= -8\ln(5)-10\,.

Hierbei wurde zunächst das Integrationsintervall gespiegelt und anschließend verschoben.

Dieser Wert lässt sich durch Sage bestätigen:

.. sagecellserver::

  sage: f.integrate(x, -6, -2)

.. end of output

In Sage kann dies graphisch dargestellt werden. Die rot eingezeichnete Fläche
mit dem Inhalt :math:`2\cdot4=8` ist die Korrektur zum Integral, die aus der 
Punktsymmetrie zu einem Punkt mit :math:`y=-1` folgt.

.. sagecellserver::

  sage: pf = plot(f, exclude=[-1], xmin=-10, xmax=10, ymin=-10, ymax=10)
  sage: pf1 = plot(f, -6, -2, fill=-2)
  sage: pf2 = plot(f, 0, 4, fill='axis')
  sage: rect = polygon([[-6, 0], [-2, 0], [-2, -2], [-6, -2]], color='red')
  sage: show(pf + pf1 + pf2 + rect, aspect_ratio=1, figsize=4)

.. end of output

Aufgabe 3
^^^^^^^^^
.. admonition:: Aufgabe 3

  .. image:: ../figs/zylinder.png
     :align: right

  Eine vertikal stehende Getränkedose hat die Form eines geraden Zylinders. Die
  Lage des gemeinsamen Schwerpunkts :math:`S` von Dose und enthaltener Flüssigkeit hängt
  von der Füllhöhe der Flüssigkeit über dem Dosenboden ab. Ist die Dose
  vollständig gefüllt, so beträgt die Füllhöhe 15 cm.
  
  Die bisher betrachtete Funktion :math:`f` gibt für :math:`0\leq x \leq 15` die
  Höhe von :math:`S` über dem Dosenboden in Zentimetern an; dabei ist :math:`x`
  die Füllhöhe in Zentimetern (vgl. Abbildung 3).
  
  a) Berechnen Sie :math:`f(0)` und :math:`f(15)`. Interpretieren Sie die
     beiden Ergebnisse im Sachzusammenhang.
  b) Die zunächst leere Dose wird langsam mit Flüssigkeit gefüllt, bis die
     maximale Füllhöhe von 15 cm erreicht ist. Beschreiben Sie mithilfe von
     Abbildung 2 die Bewegung des Schwerpunkts :math:`S` während des
     Füllvorgangs. Welche Bedeutung im Sachzusammenhang hat die Tatsche, dass
     :math:`x`-Koordinate und :math:`y`-Koordinate des Tiefpunkts von
     :math:`G_f` übereinstimmen?
  c) Für welche Füllhöhen von :math:`x` liegt der Schwerpunkt :math:`S`
     höchstens 5 cm hoch? Beantworten Sie diese Frage zunächst näherungsweise
     mithilfe von Abbildung 2 und anschließend durch Rechnung.

**Lösung zu Teil a**

Einsetzen der gegebenen Argumente in die Funktion :math:`f` ergibt

.. math::
   
   f(0)=f(15)=\frac{15}{2}\,.


Ist die Dose vollständig leer (:math:`x=0`) so stimmt der Schwerpunkt :math:`S`
mit dem Schwerpunkt der Dose überein. Bei einer gleichmäßigen Gewichtsverteilung
liegt :math:`S` somit in der Mitte der Dose bei einer Höhe von
:math:`7{,}5\,\mathrm{cm}`.  Ist die Dose bis zum Rand gefüllt, so liegt der
Schwerpunkt der Flüssigkeit im Schwerpunkt der Dose. Der gemeinsame Schwerpunkt
ist also gleich dem Schwerpunkt der leeren Dose.

**Lösung zu Teil b**

Wird die Dose mit Flüssigkeit gefüllt, so sinkt der Schwerpunkt zunächst.  Bei
einer Füllhöhe von :math:`3\,\mathrm{cm}` erreicht die Oberfläche der Flüssigkeit den
Schwerpunkt. Ab dieser Füllhöhe steigt der Schwerpunkt wieder.

**Lösung zu Teil c**

Aus Abbildung 2 lässt sich der Bereich, in dem der Schwerpunkt unter 5 cm liegt,
zu :math:`0.5 < x < 9.5` abschätzen. Die genauen Grenzen für :math:`x` erhält
man, indem man die Gleichung

.. math::
  f(x)= \frac{1}{2}x - \frac{1}{2} + \frac{8}{x+1} = 5

nach :math:`x` auflöst.

Mit Sage lassen sich so die genauen Grenzen berechnen: 


.. sagecellserver::

  sage: result = solve(f(x) == 5, x)
  sage: print("Lösung der Gleichung " + str(f) + " = 5 :" + repr(result))
  sage: print("Dies entspricht etwa: x = %5.3f und x = %5.3f." % (result[0].right().n(), result[1].right().n()))

.. end of output

Das gleiche Ergebnis

.. math::

  x_{1,2} = 5\pm2\sqrt{5}

ergibt sich auch, indem man die sich aus der obigen Gleichung ergebende
quadratische Gleichung

.. math::

  x^2-10x+5=0

löst. 
