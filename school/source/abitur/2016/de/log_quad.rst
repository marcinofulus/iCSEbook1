Bayerisches Abitur in Mathematik 2016
-------------------------------------

.. admonition:: Aufgabe

  Gegeben ist die Funktion :math:`f:x\mapsto\frac{\ln x}{x^2}` mit maximalem
  Definitionsbereich :math:`\mathbb{D}`.

  a) Geben Sie :math:`\mathbb{D}`, sowie die Nullstelle von :math:`f` an
     und bestimmen Sie :math:`\lim\limits_{x\rightarrow0}f(x)`.

  b) Ermitteln Sie die :math:`x`-Koordinate des Punkts, in dem der Graph von
     :math:`f` eine waagrechte Tangente hat.

**Lösung zu Teil a**

Der Logarithmus ist nur für Argumente :math:`x>0` definiert. Der Nenner
:math:`x^2` der liefert nur eine Definitionslücke bei :math:`x=0`. Die
maximale Definitionsmenge ist daher durch

.. math::

  \mathbb{D}=]0;\infty[

gegeben. Die Nullstelle erhalten wir aus der Nullstelle des Zählers:

.. math::

  ln(x) = 0\Rightarrow\\
  x=1

Wir zeichnen die Funktion mit Sage. Sage erkennt hierbei automatisch
den maximalen Definitionsbereich. 

.. sagecellserver::

  sage: f(x) = ln(x)/x**2
  sage: plot(f(x), (-5,5), x, ymin=-10, figsize=(4, 2.8))
     
.. end of output

Auch die Nullstelle können wir mit Sage überprüfen.

.. sagecellserver::

  sage: solve(f(x)==0, x)
     
.. end of output

Wie der Graph von Sage bereits andeutet, verläuft die Funktion für
:math:`x\rightarrow0` gegen :math:`-\infty`. Dies liegt kann dadurch begründet
werden, dass einerseits der Zähler gegen :math:`-\infty` geht und andererseits
der Nenner der Funktion gegen :math:`0^+`.

**Lösung zu Teil b**

Eine waagrechte Tangente entspricht einem Extrempunkt der Funktion. Um einen
solchen zu bestimmen, müssen wir zunächst die Ableitung bestimmen und diese
anschließend gleich 0 setzen:

.. math::

  f'(x) = \frac{x-2x \ln x}{x^4} = 0 \quad\Rightarrow\\
  \ln x= \frac{1}{2} \quad\Rightarrow\\
  x = e^{\frac{1}{2}} = \sqrt(e)

Zur Überprüfung zeichnen wir diese Tangente in die Skizze der Funktion ein:

.. sagecellserver::

  sage: df = derivative(f(x), x)
  sage: x_0 = solve(df(x) == 0, x)[0].right()
  sage: print "Waagrechte Tangente an der Stelle", x_0, "(", float(x_0), ")"
  sage: p1 = plot(f(x), (0,5), x, ymin=-1,  exclude=[0], figsize=(4, 2.8))
  sage: p2 = plot(f(x_0), (0,5), x, figsize=(4, 2.8), color='red')
  sage: p1 + p2
     
.. end of output

