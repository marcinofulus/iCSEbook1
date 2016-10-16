Bayerisches Abitur in Mathematik 2016
-------------------------------------

.. admonition:: Aufgabe

  Abbildung 1 zeigt den Graphen der in :math:`\mathbb{R}` definierten
  Funktion :math:`f`.

  .. figure:: ../figs/qualitatives_integral.png
     :align: center

     Abb. 1

  a) Bestimmen Sie mithilfe von Abbildung 1 einen Näherungswert für
     :math:`\int\limits_3^5 f(x)\mathrm{d}x`.

  Die Funktion :math:`F` ist die in :math:`\mathbb{R}` definierte Stammfunktion
  von :math:`f` mit :math:`F(3)=0`

  b) Geben Sie mithilfe von Abbildung 1 einen Näherungswert für die Ableitung von
     :math:`F` an der Stelle :math:`x=2` an.

  c) Zeigen Sie, dass :math:`F(b) = \int\limits_3^b f(x)\mathrm{d}x`
     mit :math:`b\in\mathbb{R}` gilt.

**Lösung zu Teil a**

Das Integral entspricht der Fläche unter der Kurve zwischen den
:math:`x`-Werten 3 und 5. Dank der eingezeichneten Karo-Kästchen lässt sich
diese Fläche zu etwa 9 Kästchen abgeschätzen. Ein Kästchen hat eine Höhe und
Breite von jeweils 0,5. Der Flächeninhalt eines Kästchens entspricht daher
0,25, der Wert des Integrals beträgt somit etwa 2,25.

Da wir keinen Funktionsterm zu dem gegebenen Graphen haben, ist es nicht
einfach, dieses Ergebnis mit Sage zu überprüfen. Allerdings können wir
versuchen, den Graphen mit Hilfe einer Interpolation in etwa zu reproduzieren. 
Hierfür wählen wir ein Polynom 4. Grades, welches von der Form

.. math::

  ax^4+bx^3+cx^2+dx+e

ist.

Um die Paramater :math:`a` bis :math:`e` festzulegen, müssen wir fünf Punkte
wählen, die den Graphen in etwa charakterisieren. Hierfür wählen wir die Punkte
:math:`(0|3)`, :math:`(1|1)`, :math:`(2|0{,}5)`, :math:`(4|1{,}2)` und :math:`(6|2)`.

Mit Hilfe von Sage lösen wir das entsprechende Gleichungssystem:

.. sagecellserver::

  sage: var('a, b, c, d, e')
  sage: f(x) = a*x**4 + b*x**3 + c*x**2 + d*x + e
  sage: gleichungen = [f(0) == 3, f(1) == 1, f(2) == 0.5, f(4) == 1.2, f(6) == 2]
  sage: loesung = solve(gleichungen, a, b, c, d, e, solution_dict=True)[0]
  sage: f(x) = f(x).substitute(loesung)
  sage: print f(x)
     
.. end of output

Der Graph der Funktion entspricht im Intervall :math:`[0, 6]` recht gut
dem gegebenen Funktionsgraphen:

.. sagecellserver::

  sage: p1 = plot(f(x), (0, 6), ymin=0, figsize=(4, 2.8))
  sage: p1
     
.. end of output

Auch der Wert des Integrals lässt sich in etwa reproduzieren:

.. sagecellserver::

  sage: print "Wert des Integrals:", float(integrate(f(x), x, 3, 5))
     
.. end of output

**Lösung zu Teil b**

Die Ableitung der Funktion :math:`F` ist die ursprüngliche Funktion :math:`f`. Wir
müssen also lediglich den Wert von :math:`f` an der Stelle :math:`x=2` ablesen,
was wir bereits in Teilaufgabe a) gemacht haben:

.. math::

  F'(2) = f(2) = 0{,}5

Die entsprechende Tangente ist im folgenden Aufgabenteil als grüne Gerade dargestellt.

**Lösung zu Teil c**

Da :math:`F` eine Stammfunktion von :math:`f` ist, gilt

.. math::

  \int\limits_3^bf(x)\mathrm{d}x = F(b)-F(3)\,.

Aus der Voraussetzung :math:`F(3)=0` folgt dann die zu beweisende Aussage.

Wir zeichnen :math:`F(x)` in den Plot von :math:`f` mit ein:	

.. sagecellserver::

  sage: F(x) = integral(f(x), x)
  sage: F_3(x) = F(x) - F(3)
  sage: p2 = plot(F_3(x), (0, 6), ymin=-2, color = 'red')
  sage: p3 = plot(F_3(2)+0.5*(x-2), (0, 6), color='green')
  sage: show(p1+p2+p3, figsize=(4, 2.8))
     
.. end of output



