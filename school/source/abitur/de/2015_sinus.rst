Bayerisches Abitur in Mathematik 2015
-------------------------------------

.. admonition:: Aufgabe

  Gegeben ist die in :math:`\mathbb{R}` definierte Funktion
  :math:`f: x\mapsto \sin(2x)`. Geben Sie Amplitude, Periode und Wertemenge der
  Funktion :math:`f` an.

**Lösung**

Die Sinusfunktion hat die Amplitude 1, Periode :math:`2\pi` und den
Wertebereich :math:`[-1, 1]`. Die gegebene Funktion :math:`f` hat die gleiche
Amplitude und den gleichen Wertebereich. Aufgrund des Faktors 2 im Argument
ist die Periode allerdings nur :math:`\pi`.

Wir können diese Aussagen mit Sage überprüfen:

.. sagecellserver::

     sage: plot(sin(2*x), (0, 2*pi), figsize=(4, 2.5))

.. end of output
