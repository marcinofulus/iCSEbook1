Bayerisches Abitur in Mathematik 2016
-------------------------------------

.. admonition:: Aufgabe

  Gegeben ist eine in :math:`\mathbb{R}` definierte ganzrationale Funktion 
  :math:`f` dritten Grades, deren Graph :math:`G_f` an der Stelle :math:`x=1`
  einen Hochpunkt und an der Stelle :math:`x=4` einen Tiefpunkt besitzt.

  a) Begründen Sie, dass der Graph der Ableitungsfunktion :math:`f'` von
     :math:`f` eine Parabel ist, welche die :math:`x`-Achse in den Punkten
     (1|0) und (4|0) schneidet und nach oben geöffnet ist.

  b) Begründen Sie, dass 2,5 die :math:`x`-Koordinate des Wendepunkts von
     :math:`G_f` ist.

**Lösung zu Teil a**

Im Allgemeinen ist die Ableitung einer kubischen Funktion eine Parabel, wobei Extrema
der kubischen Funktion Nullstellen der Parabel entsprechen. Da bei :math:`x=1` ein
Hochpunkt liegen soll, muss die zweite Ableitung der Funktion dort negativ sein,
während die zweite Ableitung am Tiefpunkt bei :math:`x=4` positiv sein muss. Damit
ist der Graph von :math:`f'` eine nach oben geöffnete Parabel.

Um mit Sage ein konkretes Beispiel für die Funktion :math:`f` betrachten zu
können, wählen wir die Ableitung

.. math::

  f'(x) = (x-1)(x-4)\,,

die offenbar die richtigen Nullstellen besitzt. Wir lassen nun mit Sage die
Funktion :math:`f` sowie ihre erste und zweite Ableitung darstellen und können
damit die gerade diskutierten Eigenschaften der Funktion :math:`f` überprüfen.

.. sagecellserver::

  sage: df(x) = (x-1)*(x-4)
  sage: ddf(x) = derivative(df, x)
  sage: f(x) = integral(df, x)
  sage: p1 = plot(f(x), (-3, 6), color='red', legend_label="$f(x)$")
  sage: p2 = plot(df(x), (-3, 6), color='green', legend_label="$f'(x)$")
  sage: p3 = plot(ddf(x), (-3, 6), color='blue', legend_label="$f''(x)$")
  sage: plot(p1+p2+p3, figsize=(4, 2.8), ymin=-10, ymax=10)
     
.. end of output

**Lösung zu Teil b**

Für den Wendepunkt :math:`x_0` eines Graphen zur Funktion :math:`f` muss
gelten: 

.. math::

  f''(x_0)=0

Die Ableitung von :math:`f` muss also ein Extremum besitzen.
Bei einer Parabel ist dies ausschließlich am Scheitelpunkt der Fall. Dieser
befindet sich aus Symmetriegründen immer in der Mitte zwischen zwei Punkten
mit gleichem Funktionswert. Der Wendepunkt von :math:`f` muss also in der
Mitte der beiden Nullstellen liegen:

.. math::

  x_0 = \frac{1 + 4}{2} = 2{,}5

Der Wendepunkt von :math:`f` lässt sich bereits in der Zeichnung aus
Teilaufgabe a) erkennen. Wir können ihn aber auch rechnerisch
mit Hilfe von Sage erhalten: 

.. sagecellserver::

  sage: print("Wendepunkt bei", solve(ddf(x) == 0, x)[0])
     
.. end of output



