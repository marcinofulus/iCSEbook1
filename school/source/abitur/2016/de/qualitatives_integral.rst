Bayerisches Abitur in Mathematik 2016
-------------------------------------

.. admonition:: Aufgabe

  Die Abbildung zeigt den Graphen der in :math:`\mathbb{R}` definierten
  Funktion :math:`f`.

  .. image:: ../figs/qualitatives_integral.png
     :align: center

  a) Bestimmen Sie mithilfe der Abbildung einen Näherungswert für

     .. math::

       \int\limits_3^5 f(x)\mathrm{d}x.

  Die Funktion :math:`F` ist die in :math:`\mathbb{R}` definierte Stammfunktion
  von :math:`f` mit :math:`F(3)=0`

  b) Geben Sie mithilfe der Abbildung einen Näherungswert für die Ableitung von
     :math:`F` an der Stelle :math:`x=2` an.

  c) Zeigen Sie, dass

     .. math::

       F(b) = \int\limits_3^b f(x)\mathrm{d}x

     mit :math:`b\in\mathbb{R}` gilt.

**Lösung zu Teil a**

Das Integral entspricht der Fläche unter der Kurve zwischen den
:math:`x`-Werten 3 und 5. Dank der eingezeichneten Karo-Kästchen lässt sich
diese Fläche durch Zählen der Kästchen abschätzen. Die Fläche kann zu etwa
11 Kästchen abgeschätzt werden. Ein Kästchen hat eine Höhe und Breite von
jeweils 0,5. Der Flächeninhalt eines Kästchens entspricht daher 0,25, der
Wert des Integrals etwa 2,75.

Da wir keinen Funktionsterm zu dem Graphen haben, ist es nicht einfach, dieses
Ergebnis mit Sage zu überprüfen. Allerdings können wir versuchen, den Graphen
mit Hilfe einer Interpolation in etwa zu reproduzieren. 

Hierfür wählen wir ein Polynom 4. Grades, welches von der Form

.. math::

  ax^4+bx^3+cx^2+dx+e

ist.

Um die Paramater :math:`a` bis :math:`e` festzulegen, müssen wir fünf Punkte
wählen, die den Graphen in etwa charakterisieren. Hierfür wählen wir die Punkte
:math:`(0|3)`, :math:`(1|1)`, :math:`(2|0.5)`, :math:`(0|3)`,
:math:`(4|1{,}3)` und :math:`(6|2)`.

Mit Hilfe von Sage lösen wir das entsprechende Gleichungssystem:

.. sagecellserver::

  sage: var('a', 'b', 'c', 'd', 'e')
  sage: gleichungen = [e==3, a*2**4 + b*2**3 + c*2**2+d*2+e==0.5, a+b+c+d+e==1, a*6**4+b*6**3+c*6**2+d*6+e==2, a*4**4+b*4**3+c*4**2+d*4+e==1.3]
  sage: loesung = solve(gleichungen, a, b, c, d, e, solution_dict=True)[0]
  sage: print loesung
     
.. end of output

Der Plot der Funktion ähnelt stark der Abbildung:

.. sagecellserver::

  sage: f(x) = loesung[a]*x**4 + loesung[b]*x**3 + loesung[c]*x**2 + loesung[d]*x + loesung[e]
  sage: p1 = plot(f(x), (0,6), x, figsize=(4, 2.8))
  sage: p1
     
.. end of output

Und auch der Wert des Integrals lässt sich in etwa reproduzieren:

.. sagecellserver::

  sage: print "Wert des Integrals:", float(integrate(f(x), x, 3, 5))
     
.. end of output

**Lösung zu Teil b**

Die Ableitung der Funktion :math:`F` entspricht der Funktion :math:`f`. Wir
müssen also lediglich den Wert von :math:`f` an der Stelle :math:`x=2` ablesen,
was wir bereits in Teilaufgabe a) gemacht haben:

.. math::

  F'(2) = 0,5

**Lösung zu Teil c**

Da :math:`F` eine Stammfunktion von :math:`f` ist, handelt es sich hierbei auch
um ein Integral von :math:`f`. Lediglich die untere Grenze des Integrals, das
die Stammfunktion :math:`F` repräsentiert muss noch gefunden werden. Hierfür
nutzen wir die Bedingung :math:`F(3) = 0`, welche mit der Integralform

.. math::

  \int\limits_3^3f(x)\mathrm{d}x = 0

konsistent ist.

Wir zeichnen F(x) in den Plot von :math:`f` mit ein:	

.. sagecellserver::

  sage: F(x) = integral(f(x), x)
  sage: F_3(x) = F(x) - F(3)
  sage: p2 = plot(F_3(x), (0,6), x, figsize=(4, 2.8), color = 'red')
  sage: p1 + p2
     
.. end of output



