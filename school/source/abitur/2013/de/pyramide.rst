
Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  Die Abbildung zeigt modellhaft einen Ausstellungspavillon, der die Form
  einer geraden vierseitigen Pyramide mit quadratischer Grundfläche hat und auf
  einer horizontalen Fläche steht. Das Dreieck :math:`BCS` beschreibt im Modell die
  südliche Außenwand des Pavillons. Im Koordinatensystem entspricht eine
  Längeneinheit 1 m, d. h. die Grundfläche des Pavillons hat eine Seitenlänge
  von 12 m.
  
  .. image:: ../figs/pyramide.png
         :align: center
  
  a) Geben Sie die Koordinaten des Punktes :math:`B` an und bestimmen Sie das Volumen
     des Pavillons.
  
  b) Die südliche Außenwand des Pavillons liegt im Modell in einer Ebene :math:`E`.
     Bestimmen Sie eine Gleichung von :math:`E` in Normalform.

     *(mögliches Ergebnis:* :math:`E : 4x_2+3x_3-48=0`\ *)*
  
  c) Der Innenausbau des Pavillons erfordert eine möglichst kurze, dünne
     Strebe zwischen dem Mittelpunkt der Grundfläche und der südlichen
     Außenwand. Ermitteln Sie, in welcher Höhe über der Grundfläche die Strebe
     an der Außenwand befestigt ist.
  
  An einem Teil der südlichen Außenwand sind Solarmodule flächenbündig
  montiert. Die Solarmodule bedecken im Modell eine dreieckige Fläche, deren
  Eckpunkte die Spitze :math:`S` sowie die Mittelpunkte der Kante :math:`[SB]`
  und :math:`[SC]` sind.
  
  d) Ermitteln Sie den Inhalt der von den Solarmodulen bedeckten Fläche.
  
  e) Die von Solarmodulen abgegebene elektrische Leistung hängt unter anderem
     von der Größe ihres Neigungswinkels gegen die Horizontale ab. Die Tabelle
     gibt den Anteil der abgegebenen Leistung an der maximal möglichen
     Leistung in Abhängigkeit von der Größe des Neigungswinkels an. Schätzen
     Sie diesen Anteil für die Solarmodule des Pavillons ‒ nach Berechnung
     des Neigungswinkels ‒ unter Verwendung der Tabelle ab.
  
  ================================ === === === ==== ==== === === === === ===
  Neigungswinkel                   0°  10° 20° 30°  40°  50° 60° 70° 80° 90°
  ================================ === === === ==== ==== === === === === ===
  Anteil an der maximalen Leistung 87% 93% 97% 100% 100% 98% 94% 88% 80% 69%
  ================================ === === === ==== ==== === === === === ===
  
**Lösung zu Teil a**

Die Koordinaten des Punktes :math:`B` erhält man, indem man die Vektoren von
:math:`D` nach :math:`A` bzw. :math:`C` addiert. Es ergibt sich :math:`B
(12|12|0)`.

Das Volumen :math:`V` der Pyramide lässt sich über die Formel

.. math::

  V = \frac{1}{3}Ah=\frac{1}{3}144\cdot 8=384

mit der Grundfläche :math:`A` und der Höhe `h` berechnen. Allgemeiner gilt
die Beziehung

.. math::

  V = \frac{1}{3} (\vec{A} \times \vec{C}) \cdot \vec{S}\,,

die sich auch mit Sage leicht auswerten lässt.

.. sagecellserver::

    sage: a = vector([12, 0, 0])
    sage: d = vector([0, 0, 0])
    sage: c = vector([0, 12, 0])
    sage: s = vector([6, 6, 8])

    sage: b = a + c
    sage: print("B = {}".format(b))

    sage: v = 1/3 * a.cross_product(b) * s
    sage: print("Das Volumen der Pyramide beträgt {}m³.".format(v))

.. end of output

**Lösung zu Teil b**

Es soll die Ebene :math:`E`, die sich aus den Punkten :math:`B`, :math:`C` und
:math:`S` ergibt, berechnet werden. Die Gleichung für die Ebene soll in
Normalenform angegeben werden. Den Normalenvektor erhält man, indem man aus den
Ortsvektoren der Punkte zwei Spannvektoren bildet und diese mit Hilfe des
Kreuzproduktes multipliziert.

.. math::

  \vec{n} = (\vec{C}-\vec{B}) \times (\vec{S} - \vec{B})
          = \begin{pmatrix}-12\\0\\0\end{pmatrix}\times\begin{pmatrix}-6\\-6\\8\end{pmatrix}
          = \begin{pmatrix}0\\96\\72\end{pmatrix}\,.

Mit :math:`\vec{B}` als Stützvektor lautet die Gleichung für die Ebene in
Normalenform dann

.. math::

  E : \vec{n} \cdot \left( \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} - \vec{B}\right) 
      = 96(x_2-12)+72x_3 = 0

oder

.. math::

  E : 96x_2+72x_3-1152=0\,.

Mit Sage erhält man dieses Ergebnis wie folgt:

.. sagecellserver::

    sage: var("x_1, x_2, x_3")
    sage: n = (c-b).cross_product(s-b)
    sage: print("Normalenvektor: {}".format(n))
    sage: E = n.dot_product(vector([x_1, x_2, x_3])-b) == 0
    sage: print("E : {}".format(E))

.. end of output

Das Ergebnis entspricht bis auf einen Faktor 48 der im Aufgabentext angegebenen
Lösung.

**Lösung zu Teil c**

Die Strebe vom Mittelpunkt der Grundfläche :math:`S' (6|6|0)` zur südlichen
Außenwand soll möglichst kurz sein. Es ist also das Lot zur Ebene :math:`E` durch den
Punkt :math:`S'` gesucht. Ist das Lot bestimmt, können wir den Schnittpunkt mit der
Ebene berechnen und daraus anhand der :math:`x_3`-Koordinate die Höhe 
ablesen.

Der Normalenvektor :math:`\vec{n}` der Ebene wurde bereits in Teil b berechnet.
Wir definieren nun die Hilfsgerade

.. math::

  \vec h(t) = \vec x_{S'}+t\vec n = \begin{pmatrix}6\\6\\0\end{pmatrix}
  +t\begin{pmatrix}0\\96\\72\end{pmatrix}

und suchen deren Schnittpunkt mit der Ebene :math:`E`. Einsetzen der
Koordinaten :math:`x_2(t)` und :math:`x_3(t)` in die Ebenengleichung und
Auflösen nach :math:`t` liefert :math:`t=\frac{1}{25}`, so dass die gesuchte
Höhe 2,88 m beträgt.

Dieses Ergebnis wird durch Sage bestätigt, indem wir den beschriebenen Rechenweg
mit der abstrakt formulierten Ebenengleichung aus Teil b nachvollziehen.

.. sagecellserver::

    sage: var("t")
    sage: h = vector([6, 6, 0]) + n * t
    sage: schnittpunktgleichung = n.dot_product(h-b) == 0
    sage: print(schnittpunktgleichung)

    sage: result = solve(schnittpunktgleichung, t)
    sage: t0 = result[0]
    sage: print(t0)

    sage: p = h.subs(t0)
    sage: print("Höhe der Aufhängung: {} m = {} m".format(p[2], float(p[2])))

.. end of output

**Lösung zu Teil d**

Die Fläche lässt sich mit Hilfe des Kreuzprodukts

.. math::

  F = \frac{1}{2}\left\vert\frac{1}{2}(\vec{S}-\vec{B})\times
         \frac{1}{2}(\vec{S}-\vec{C})\right\vert

berechnen. Wir überlassen die Rechenarbeit Sage und erhalten

.. sagecellserver::

    sage: sb2 = (s-b)/2
    sage: sc2 = (s-c)/2
    sage: F = abs(sb2.cross_product(sc2))/2
    sage: print("F = {}m²".format(F))
    
.. end of output

**Lösung zu Teil e**

Der Neigungswinkel der Ebene :math:`E` gegenüber der :math:`x_1`-:math:`x_2`-Ebene ist gleich dem Winkel
zwischen den beiden Ebenennormalen. Für die :math:`x_1`-:math:`x_2`-Ebene ist die
Normale der Einheitsvektor in :math:`x_3`-Richtung. Der Normalenvektor der Ebene
:math:`E` ist der in Teil b bestimmte Vektor :math:`\vec n`. Der gesuchte Winkel lässt
sich nun mit folgender Formel berechnen:

.. math::

  \phi = \cos^{-1}\left( \frac{\vec{n}\cdot \vec{e}_3}{\vert\vec{n}\vert\,\vert \vec{e}_3\vert}\right).
  
.. sagecellserver::

    sage: x_3 = vector([0,0,1])
    sage: print("Neigungswinkel: {}°".format((arccos(n*x_3/n.norm()) * 180/pi).n(digits=3)))
    
.. end of output

Mit Hilfe der angegebenen Tabelle lässt sich für einen Winkel von 53,1° die
abgegebene Leistung zu 96 bis 97% der maximalen Leistung abschätzen.
