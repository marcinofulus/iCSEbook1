Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  Geben Sie jeweils den Term einer in :math:`\mathbb{R}` definierte Funktion
  an, die die angegebene Wertemenge :math:`W` hat.
  
  a) :math:`W=[2;+\infty[`
  b) :math:`W=[-2;2]`

**Lösung zu Teil a**

Als mögliche Lösung ergibt sich hier die Funktion

.. math::

   f(x)=x^2 + 2.

**Lösung zu Teil b**

Ein Beispiel für eine nach oben und unten begrenzte Funktion ist
die Sinusfunktion, die jedoch die Wertemenge :math:`W=[-1;1]`
besitzt. Um auf die gewünschte Wertemenge zu kommen,
muss die Funktion noch mit 2 multipliziert werden.
Als mögliche Lösung ergibt sich damit

.. math::

   g(x)=2\sin(x).

Beide Lösungen können mit Sage graphisch dargestellt und ihre
Wertemengen überprüft werden.

.. sagecellserver::

    sage: f(x) = x**2+2
    sage: g(x) = 2*sin(x)
    sage: pf = plot(f, (-3, 3), color='blue')
    sage: pg = plot(g, (-4, 4), color='red')
    sage: show(pf+pg, figsize=(4, 2.8))

.. end of output

