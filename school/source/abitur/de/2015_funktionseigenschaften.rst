Bayerisches Abitur in Mathematik 2015
-------------------------------------

.. admonition:: Aufgabe

  Geben Sie jeweils den Term einer Funktion an, die die angegebene(n)
  Eigenschaft(en) besitzt.

  a) Die Funktion :math:`g` hat die maximale Definitionsmenge :math:`]-\infty; 5]`.

  b) Die Funktion :math:`k` hat in :math:`x=2` eine Nullstelle und in
     :math:`x=-3` eine Polstelle ohne Vorzeichenwechsel. Der Graph von :math:`k`
     hat die Gerade mit der Gleichung :math:`y=1` als Asymptote.

**Lösung zu Teil a**

Eine Funktion mit Definitionsmenge :math:`[0; \infty[` ist
:math:`x\mapsto\sqrt{x}`. Daraus erhalten wir mit :math:`g(x)=\sqrt{5-x}`
eine mögliche Funktion mit der gewünschten Definitionsmenge.

**Lösung zu Teil b**

Die Funktion :math:`k(x)` lässt sich als gebrochen-rationale Funktion wählen.
Wegen der Nullstelle bei :math:`x=2` muss der Zähler mindestens einen Faktor
:math:`x-2` enthalten. Eine Polstelle bei :math:`x=-3` ohne Vorzeichenwechsel
erhält man mit einem Faktor :math:`(x+3)^2` im Nenner. Um das gesuchte
asymptotische Verhalten für :math:`\vert x\vert\to\infty` zu erhalten, muss
dann auch der Faktor im Zähler quadriert werden. Damit erhalten wir die
Funktion

.. math::

   k(x)=\frac{(x-2)^2}{(x+3)^2}.

Mit Hilfe von Sage zeigen wir nun, dass diese Funktion in der Tat das
gewünschte Verhalten aufweist.

Nullstelle bei :math:`x=2`:

.. sagecellserver::

    sage: k(x) = ((x-2)/(x+3))^2
    sage: plot(k, xmin=0, xmax=4, ymin=-0.1, ymax=0.5, figsize=(4, 2.5))

.. end of output

Polstelle bei :math:`x=-3` ohne Vorzeichenwechsel:

.. sagecellserver::

    sage: k(x) = ((x-2)/(x+3))^2
    sage: plot(k, xmin=-6, xmax=0, ymin=0, ymax=1000, figsize=(4, 2.5))

.. end of output

Annäherung an die Gerade :math:`y=1` für :math:`\vert x\vert\to 1`:

.. sagecellserver::

    sage: k(x) = ((x-2)/(x+3))^2
    sage: xmax = 1000
    sage: xmin = -xmax
    sage: p = plot(k, xmin=xmin, xmax=xmax, ymin=0.5, ymax=1.5)
    sage: p = p+line([(xmin, 1), (xmax, 1)], linestyle='dashed')
    sage: p.show(figsize=(4, 2.5))

.. end of output
