Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Die Abbildung zeigt modellhaft ein Einfamilienhaus, das auf einer horizontalen
  Fläche steht. Auf einer der beiden rechteckigen Dachflächen soll eine
  Dachgaube errichtet werden. Die Punkte :math:`A`, :math:`B`, :math:`C`, 
  :math:`D`, :math:`O`, :math:`P`, :math:`Q` und :math:`R` sind die Eckpunkte
  eines Quaders. Das gerade dreiseitige Prisma :math:`LMNIJK` stellt die 
  Dachgaube dar, die Strecke :math:`[GH]` den First des Dachs, d. h. die obere
  waagrechte Dachkante. Eine Längeneinheit im Koordinatensystem entspricht 1m,
  d. h. das Haus ist 10 m lang.

  .. image:: ../figs/haus.png
     :align: center

  a) Berechnen Sie den Inhalt derjenigen Dachfläche, die im Modell durch das
     Rechteck :math:`BCHG` dargestellt wird.

  b) In der Stadt, in der das Einfamilienhaus steht, gilt für die Errichtung
     von Dachgauben eine Satzung, die jeder Bauherr einhalten muss. Diese 
     Satzung lässt die Errichtung einer Dachgaube zu, wenn die Größe des 
     Neigungswinkels der Dachfläche des jeweiligen Hausdachs gegen die 
     Horizontale mindestens 35° beträgt. Zeigen Sie rechnerisch, dass für das 
     betrachtete Einfamilienhaus die Errichtung einer Dachgaube zulässig ist.

  Die Dachfläche, auf der die Dachgaube errichtet wird, liegt im Modell in der
  Ebene

  .. math::

    E:3x_1+4x_3-44=0.

  Die Dachgaube soll so errichtet werden, dass sie von dem seitlichen Rand der
  Dachfläche, der im Modell durch die Strecke :math:`HC` dargestellt wird, den 
  Abstand 2m und vom First des Dachs den Abstand 1m hat. Zur Ermittlung der
  Koordinaten des Punkts :math:`M` wird die durch den Punkt :math:`T(4|8|8)` verlaufende
  Gerade

  .. math::

    t:\vec{X} = \begin{pmatrix} 4\\ 8\\ 8\end{pmatrix} + 
    \lambda\cdot\begin{pmatrix} 4\\ 0\\ -3\end{pmatrix},\quad
    \lambda\in\mathbb{R},

  betrachtet.

  c) Begründen Sie, dass :math:`t` in der Ebene :math:`E` verläuft und von der
     Geraden :math:`HC` den Abstand 2 besitzt.

  d) Auf der Geraden t wird nun der Punkt :math:`M` so festgelegt, dass der Abstand
     der Dachgaube vom First 1m beträgt. Bestimmen Sie die Koordinaten
     von :math:`M`.

     *(Ergebnis:* :math:`M(4{,}8|8|7{,}4)` *)*

  Die Punkte :math:`M` und :math:`N` liegen auf der Geraden

  .. math::

    m:\vec{X} = \begin{pmatrix} 4{,}8\\ 8\\ 7{,}4\end{pmatrix} +
    \mu\cdot \begin{pmatrix} 6\\ 0\\ -1\end{pmatrix},\quad
    \mu\in\mathbb{R}, 

  die im Modell die Neigung der Dachfläche der Gaube festlegt. Die zur
  :math:`x_3`-Achse parallele Strecke :math:`[NL]` stellt im Modell den sogenannten
  Gaubenstiel dar; dessen Länge soll 1,4m betragen. Um die Koordinaten von
  :math:`N` und :math:`L` zu bestimmen, wird die Ebene :math:`F` betrachtet, die
  durch Verschiebung von :math:`E` um 1,4 in positive :math:`x_3`-Richtung entsteht.

  e) Begründen Sie, dass :math:`3x_1+4x_3-49{,}6=0` eine Gleichung von
     :math:`F` ist.

  f) Bestimmen Sie die Koordinaten von :math:`N` und :math:`L`.

     *(Teilergebnis:* :math:`N(7{,}2|8|7)` *)*



**Lösung zu Teil a**

Die Fläche eines Rechtecks berechnet sich durch Multiplikation aus Länge und
Breite:

.. math::

  A = |BC|\,|BG|

Hierfür bestimmen wir zunächst aus der Skizze die Punkte :math:`B(8|0|5)` und
:math:`G(4|0|8)`. Wir erhalten also

.. math::

  A = \left|\begin{pmatrix} 0\\ 10\\ 0\end{pmatrix}\right|\,
      \left|\begin{pmatrix} 4\\ 0\\ 3\end{pmatrix}\right| = 50

Mit Sage legen wir zunächst alle Punkte fest und überprüfen anschließend
das Ergebnis.

.. sagecellserver::

  sage: o = vector([0,0,0])
  sage: p = vector([8,0,0])
  sage: r = vector([0,10,0])
  sage: a = vector([0,0,5])
  sage: q = p+r
  sage: b = a+p
  sage: d = r+a
  sage: c = d+p
  sage: h = vector([4,10,8])
  sage: g = b+h-c
  sage: t = vector([4,8,8])
  sage: print "Fläche:", abs((b-g).cross_product(c-b)) 

.. end of output


**Lösung zu Teil b**

Den Winkel zwischen zwei Vektoren :math:`\vec{a}` und :math:`\vec{b}`
berechnet sich durch den Kosinussatz:

.. math::

  \cos{\alpha} = \frac{\vec{a}\cdot\vec{b}}{|\vec{a}||\vec{b}|}

Sage liefert uns mit Hilfe der Formel einen Wert von etwa :math:`37^°`.
Das Haus erfüllt also die Satzung.

.. sagecellserver::

  sage: ba = a-b
  sage: bg = g-b
  sage: print "Winkel der Dachgaube:", float(arccos(ba.dot_product(bg)/(abs(ba)*abs(bg)))*180/pi)

.. end of output

**Lösung zu Teil c**

Wir setzen die Gerade :math:`t` in die Ebenengleichung ein:

.. math::

  3(4+4\lambda) + 4(8-3\lambda) - 44 = 0.

:math:`t` verläuft also in der Ebene. Die Gerade

.. math::

  HC = H + \lambda\left(H - C\right) = \begin{pmatrix} 4\\ 10\\ 8\end{pmatrix} + 
       \lambda \begin{pmatrix} 4\\ 0\\ -3\end{pmatrix}

ist offensichtlich parallel zu :math:`t`. Der Abstand zwischen :math:`t`
und :math:`HC` ist gleich dem Abstand der Punkte :math:`T` und :math:`H`:

.. math::

  \left|\vec{H}-\vec{T}\right| = \left|\begin{pmatrix} 0\\ 2\\ 0\end{pmatrix}\right| = 2

**Lösung zu Teil d**

Wir bestimmen die Koordinaten von :math:`M` mit Hilfe von Sage. Wir erhalten
zunächst zwei mögliche Punkte auf der Geraden mit Abstand 1m vom First:

.. sagecellserver::

  sage: lamb = solve(abs(x*(c-h))==1, x)
  sage: print "Die Lösungen für lambda lauten:", lamb

.. end of output

Allerdings ist nur die Lösung mit positivem :math:`\lambda` sinnvoll, 
da der andere Punkt oberhalb des Firstes liegt: M(4,8|8|7,4).

.. sagecellserver::

  sage: m = t + lamb[1].right() * (c-h)
  sage: print "Punkt M:", m

.. end of output

**Lösung zu Teil e**

Durch eine Verschiebung von :math:`E` um 1,4m in positive :math:`x_3`-Richtung
lässt sich die Ebenengleichung folgendermaßen umschreiben:

.. math::

  F: 3x_1+4(x_3-1{,}4) -44 = 0 \Leftrightarrow\\
  F: 3x_1 + 4x_3 - 49{,}6 = 0

**Lösung zu Teil f**

Wir bestimmen zunächst den Punkt :math:`N`, der gleich dem Schnittpunkt der
Ebene :math:`F` und der Gerade :math:`m` ist. Den Punkt :math:`L` erhalten
wir durch verschieben des Punktes :math:`N` in :math:`x_3`-Richtung.

.. sagecellserver::

  sage: mu = solve(3*(4.8+6*x) + 4*(7.4-x) - 49.6 == 0,x)[0].right()
  sage: n = m + mu * vector([6,0,-1])
  sage: l = n + vector([0,0,-1.4])
  sage: print "Koordinaten von N:", n, ", L:", l

.. end of output
