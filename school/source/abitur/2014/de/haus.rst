Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Die Abbildung zeigt modellhaft ein Einfamilienhaus, das auf einer horizontalen
  Fläche steht. Auf einer der beiden rechteckigen Dachflächen soll eine
  Dachgaube errichtet werden. Die Punkte :math:`A`, :math:`B`, :math:`C`, 
  :math:`D`, :math:`O`, :math:`P`, :math:`Q` und :math:`R` sind die Eckpunkte
  eines Quaders. Das gerade dreiseitige Prisma :math:`LMNIJK` stellt die 
  Dachgaube dar, die Strecke :math:`[GH]` den First des Dachs, d. h. die obere
  waagrechte Dachkante. Eine Längeneinheit im Koordinatensystem entspricht 1 m,
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
  Abstand 2 m und vom First des Dachs den Abstand 1m hat. Zur Ermittlung der
  Koordinaten des Punkts :math:`M` wird die durch den Punkt :math:`T(4|8|8)` verlaufende
  Gerade

  .. math::

    t:\vec{X} = \begin{pmatrix} 4\\ 8\\ 8\end{pmatrix} + 
    \lambda\cdot\begin{pmatrix} 4\\ 0\\ -3\end{pmatrix},\quad
    \lambda\in\mathbb{R},

  betrachtet.

  c) Begründen Sie, dass :math:`t` in der Ebene :math:`E` verläuft und von der
     Geraden :math:`HC` den Abstand 2 besitzt.

  d) Auf der Geraden :math:`t` wird nun der Punkt :math:`M` so festgelegt, dass der Abstand
     der Dachgaube vom First 1 m beträgt. Bestimmen Sie die Koordinaten
     von :math:`M`.

     *(Ergebnis:* :math:`M(4{,}8|8|7{,}4)` *)*

  Die Punkte :math:`M` und :math:`N` liegen auf der Geraden

  .. math::

    m:\vec{X} = \begin{pmatrix} 4{,}8\\ 8\\ 7{,}4\end{pmatrix} +
    \mu\cdot \begin{pmatrix} 6\\ 0\\ -1\end{pmatrix},\quad
    \mu\in\mathbb{R}, 

  die im Modell die Neigung der Dachfläche der Gaube festlegt. Die zur
  :math:`x_3`-Achse parallele Strecke :math:`[NL]` stellt im Modell den sogenannten
  Gaubenstiel dar; dessen Länge soll 1,4 m betragen. Um die Koordinaten von
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
:math:`G(4|0|8)`. Mit :math:`C(8|10|5)` erhalten wir

.. math::

  A = \left|\begin{pmatrix} 0\\ 10\\ 0\end{pmatrix}\right|\,
      \left|\begin{pmatrix} -4\\ 0\\ 3\end{pmatrix}\right| = 50

Die gesuchte Fläche beträgt also 50 m².

Mit Sage legen wir zunächst alle Punkte fest und überprüfen anschließend
das Ergebnis.

.. sagecellserver::

  sage: o = vector([0,0,0])
  sage: p = vector([8,0,0])
  sage: c = vector([8, 10, 5])
  sage: breite, laenge, hoehe = c
  sage: h = vector([4, 10, 8])
  sage: t = vector([4, 8, 8])
  sage: a = o+vector([0, 0, hoehe])
  sage: b = p+vector([0, 0, hoehe])
  sage: g = h-vector([0, laenge, 0])
  sage: print "Fläche: %sm²" % float(norm(b-g)*norm(c-b))

.. end of output


**Lösung zu Teil b**

Den Winkel zwischen zwei Vektoren :math:`\vec{a}` und :math:`\vec{b}`
berechnet sich durch den Kosinussatz:

.. math::

  \cos{\alpha} = \frac{\vec{a}\cdot\vec{b}}{|\vec{a}||\vec{b}|}

Sage liefert uns mit Hilfe der Formel einen Wert von etwa :math:`37^°`.
Das Haus erfüllt also die Satzung.

.. sagecellserver::

  sage: ba = (a-b).normalized()
  sage: bg = (g-b).normalized()
  sage: print "Dachneigung: %4.1f°" % float(arccos(ba.dot_product(bg))*180/pi)

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

Dies wird von Sage bestätigt:

.. sagecellserver::

  sage: norm(h-t)

.. end of output

**Lösung zu Teil d**

Der Abstand eines durch :math:`\lambda` gegebenen Punktes vom Punkt :math:`T` ist durch

.. math::

  \left\vert\lambda\begin{pmatrix}4\\0\\-3\end{pmatrix}\right\vert = 25\lambda^2

gegeben. Für :math:`\lambda=\pm\frac{1}{5}` beträgt der Abstand 1.
Dies ergibt sich auch mit Hilfe von Sage.

.. sagecellserver::

  sage: lamb = solve(abs(x*(c-h)) == 1, x)
  sage: print "Die Lösungen für λ lauten:", lamb

.. end of output

Allerdings ist nur die Lösung mit positivem :math:`\lambda` sinnvoll, 
da der andere Punkt oberhalb des Firstes liegt. Somit ergibt sich der Punkt
:math:`M(4{,}8|8|7{,}4)`.

.. sagecellserver::

  sage: m = t + lamb[1].right() * (c-h)
  sage: print "Punkt M:", m

.. end of output

**Lösung zu Teil e**

Durch eine Verschiebung von :math:`E` um 1,4 in positive :math:`x_3`-Richtung
lässt sich die Ebenengleichung folgendermaßen umschreiben:

.. math::

  F: 3x_1+4(x_3-1{,}4) -44 = 0 \Leftrightarrow\\
  F: 3x_1 + 4x_3 - 49{,}6 = 0

**Lösung zu Teil f**

Einsetzen der Geradengleichung für :math:`m` in die Ebenengleichung von :math:`F` ergibt

.. math::

  \begin{gather}
  3(4{,}8+6\mu)+4(7{,}4-\mu)-49{,}6 = 14\mu-5{,}6 = 0\\
  \Rightarrow\, \mu = 0{,}4
  \end{gather}

Damit ergibt sich durch Einsetzen in die Geradengleichung von :math:`m` der Punkt
:math:`N(7{,}2|8|7)` und durch Verschieben um :math:`-1{,}4` in :math:`x_3`-Richtung
der Punkt :math:`L(7{,}2|8|5{,}6)`. Diese Ergebnisse erhält man mit Sage folgendermaßen:

.. sagecellserver::

  sage: mu = solve(3*(4.8+6*x) + 4*(7.4-x) - 49.6 == 0, x)[0].right()
  sage: n = m + mu*vector([6, 0, -1])
  sage: l = n + vector([0, 0, -7/5])
  sage: print "Koordinaten von N: ", n, ", L:", l

.. end of output
