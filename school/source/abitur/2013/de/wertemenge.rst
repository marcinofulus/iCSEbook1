Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  Gegebe Sie jeweils den Term einer in :math:`\mathbb{R}` definierte Funktion
  an, die die angegebene Wertemene W hat.
  
  a) W = :math:`[2;+\infty[`
  b) W = :math:`[-2;2]`

**Lösung zur Teilaufgabe a)**

Als mögliche Lösung ergibt sich hier die Funktion :math:`f(x)=x^2 + 2`.

**Lösung zur Teilaufgabe b)**

Ein Beispiel für eine nach oben und unten begrenzte Funktion ist
:math:`\sin(x)`. Der Sinus hat jedoch die Wertemenge
W = :math:`[-1;1]`. Um auf die gewünschte Wertemenge zu kommen,
muss die Funktion noch mit 2 multipliziert werden.
Als Lösung ergibt sich damit :math:`g(x)=2\sin(x)`

Beide Lösungen könne in einem Koordinatensystem durch  Sage
graphisch dargestellt werden.

.. sagecellserver::

    sage: x = var('x')
    sage: plot(x**2 + 2,(-3,3),color='blue') + plot(2*sin(x),(-4,4),color='red')

.. end of output

