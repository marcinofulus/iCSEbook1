Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  Der Graph der in :math:`\mathbb{R}` definierten Funktion
  :math:`f:x\rightarrow x\cdot\sin x` verläuft durch den Koordinatenursprung.
  Berechnen Sie :math:`f''(0)` und geben sie das Krümmungsverhalten des Graphen
  von :math:`f` in unmittelbarer Nähe des Koordinatenursprungs an.

**Lösung**

Die erste Ableitung von :math:`f(x)` ist:

.. math::

  \frac{\mathrm{d}}{\mathrm{d}x} x \cdot \sin x = \sin x + x \cdot \cos x

Diese Funktion wird noch einmal abgeleitet:

.. math::

  f''(x) &= \frac{\mathrm{d}^2}{\mathrm{d}x^2} x \cdot \sin x 
  = \frac{\mathrm{d}}{\mathrm{d}x} \left( \sin x + x \cdot \cos x \right)\\
  &= \cos x + \cos x + x \cdot (-\sin x) = 2 \cdot \cos x - x \cdot \sin x

Für :math:`x=0` erhält man
:math:`f''(0) = 2 \cdot \cos 0 - 0 \cdot \sin 0 = 2`.

Durch Sage lässt sich das Ergebnis bestätigen:

.. sagecellserver::

  sage: f(x) = x*sin(x)
  sage: df(x) = derivative(f,x)
  sage: ddf(x) = derivative(df,x)
  sage: print("ddf(x) = " + str(ddf(x)))
  sage: print("ddf(0) = " + str(ddf(0)))

.. end of output

Eine positive zweite Ableitung von einer Funktion weist auf eine Linkskrümmung 
hin, wie es bei :math:`f` an der Stelle :math:`x=0` der Fall ist.

Dies kann man auch erkennen, wenn man sich den Funktionsgraphen zeichnen lässt.

.. sagecellserver::

  sage: pf = plot(f(x),(-6,6))
  sage: show(pf, aspect_ratio=1)

.. end of output
