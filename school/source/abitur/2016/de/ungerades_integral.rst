Bayerisches Abitur in Mathematik 2016
-------------------------------------

.. admonition:: Aufgabe

  Zeigen Sie, dass der Graph der in :math:`\mathbb{R}` definierten Funktion
  :math:`g:x\mapsto x^2\cdot \sin x` punktsymmetrisch bezüglich des
  Koordinatenursprungs ist, und geben Sie den Wert des Integrals 
  
  .. math::

    \int\limits_{-\pi}^\pi x^2\cdot\sin x\, \mathrm{d}x

  an.

**Lösung**


Zunächst zeigen wir, dass :math:`f(x) = -f(-x)` gilt:

.. math::

  f(-x) = (-x)^2\cdot\sin(-x)=x^2\cdot(-\sin(x)) = -f(x)

Dies lässt sich auch mit Sage überprüfen

.. sagecellserver::

  sage: f(x) = x^2*sin(x)
  sage: if f(-x) == -f(x):
  ...       print "Die Funktion ist ungerade."
  sage: else:
  ...       print "Die Funktion ist nicht ungerade."
   
.. end of output

und wird durch die Form des Funktionsgraphen bestätigt:

.. sagecellserver::

  sage: plot(f(x), (-pi, pi), figsize=(4, 2.8))

.. end of output

Sind die Grenzen eines Integrals über eine ungerade Funktion so wie hier symmetrisch
bezüglich der Null, so verschwindet das Integral.

Sage kann das bestätigen:

.. sagecellserver::

  sage: print "Wert des Integrals:", integral(f, x, -pi, pi)

.. end of output
