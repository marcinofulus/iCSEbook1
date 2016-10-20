Bayerisches Abitur in Mathematik 2016
-------------------------------------

.. admonition:: Aufgabe

  Gegeben ist die Funktion :math:`f:x\mapsto\frac{\ln x}{x^2}` mit maximalem
  Definitionsbereich :math:`\mathbb{D}`.

  a) Geben Sie :math:`\mathbb{D}` sowie die Nullstelle von :math:`f` an
     und bestimmen Sie :math:`\lim\limits_{x\rightarrow0}f(x)`.

  b) Ermitteln Sie die :math:`x`-Koordinate des Punkts, in dem der Graph von
     :math:`f` eine waagrechte Tangente hat.

**Lösung zu Teil a**

Der Logarithmus ist nur für Argumente :math:`x>0` definiert. Der Nenner
:math:`x^2` liefert eine Definitionslücke bei :math:`x=0`. Der
maximale Definitionsbereich ist daher durch

.. math::

  \mathbb{D}=]0;\infty[

gegeben. Die Nullstelle erhalten wir aus der Nullstelle des Zählers:

.. math::

  \ln(x) = 0\Rightarrow x=1\,.

Wir zeichnen die Funktion mit Sage.

.. sagecellserver::

  sage: f(x) = ln(x)/x**2
  sage: plot(f(x), (0, 4), ymin=-2, figsize=(4, 2.8))
     
.. end of output

Auch die Nullstelle können wir mit Sage überprüfen.

.. sagecellserver::

  sage: solve(f(x)==0, x)
     
.. end of output

Wie der Graph von Sage bereits andeutet, geht die Funktion für
:math:`x\rightarrow0` gegen :math:`-\infty`. Dies kann dadurch begründet
werden, dass einerseits der Zähler gegen :math:`-\infty` geht und andererseits
der Nenner der Funktion gegen :math:`0^+`.

**Lösung zu Teil b**

Eine waagrechte Tangente entspricht einem Extrempunkt der Funktion. Um einen
solchen zu bestimmen, müssen wir zunächst die Ableitung bestimmen und diese
anschließend gleich 0 setzen:

.. math::

  f'(x) = \frac{1-2\ln(x)}{x^3} \overset{!}{=} 0 \Rightarrow
  \ln x= \frac{1}{2}\\

Damit ergibt sich eine waagrechte Tangente bei

.. math::

  x = e^{\frac{1}{2}} = \sqrt{e}

die wir in die Skizze der Funktion einzeichnen:

.. sagecellserver::

  sage: df = derivative(f, x)
  sage: x0 = solve(df(x) == 0, x)[0].right()
  sage: print "Waagrechte Tangente an der Stelle", x0, "=", float(x0)
  sage: p1 = plot(f(x), (0, 4), x, ymin=0,  exclude=[0])
  sage: p2 = plot(f(x0), (0, 4), x, color='red')
  sage: show(p1+p2, figsize=(4, 2.8))
     
.. end of output

