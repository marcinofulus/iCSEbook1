Bayerisches Abitur in Mathematik 2015
-------------------------------------

.. admonition:: Aufgabe

  Gegeben ist die Schar der in :math:`\mathbb{R}` definierten Funktionen
  :math:`f_a : x\mapsto x\mathrm{e}^{ax}` mit
  :math:`a\in\mathbb{R}\backslash\{0\}`. Ermitteln Sie, für welchen Wert von
  :math:`a` die erste Ableitung von :math:`f_a` an der Stelle :math:`x=2` den
  Wert 0 besitzt.

**Lösung**

Für die Ableitung der gegebenen Funktion erhält man

.. math::

   \frac{\mathrm{d}f_a}{\mathrm{d}x} = (1+ax)\mathrm{e}^{ax}

und damit

.. math::

   \left.\frac{\mathrm{d}f_a}{\mathrm{d}x}\right\vert_{x=2} =
    (1+2a)\mathrm{e}^{2a}.

Die Ableitung verschwindet somit, wenn :math:`1+2a=0`, also für :math:`a=-1/2`.

Diese Rechnung lässt sich mit Sage überprüfen:

.. sagecellserver::

    sage: f(x, a) = x*exp(a*x)
    sage: df = f.derivative(x)
    sage: print 'Ableitung von f:', df
    sage: solve(df(2, a) == 0, a)

.. end of output
