Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  Geben sie für die Funktion :math:`f` mit :math:`f(x)=\ln(2013-x)` den
  maximalen Definitionsbereich :math:`\mathbb{D}`, das Verhalten von :math:`f`
  an den Grenzen von :math:`\mathbb{D}` sowie die Schnittpunkte des Graphen von
  :math:`f` mit den Koordinatenachsen an.

**Lösung**

Der Definitionsberreich für den natürlichen Logarithmus :math:`\ln(x)` ist
:math:`]0,\infty]`. Für :math:`\ln(-x)` ergibt sich damit ein Defintionsbereich
von :math:`[-\infty,0[`. Addiert man nun innerhalb des Logarithmus eine Zahl,
muss dies auch bei dem Defintionsberreich geschehen. Es ergibt sich für
:math:`f(x)=\ln(2013-x)` der Defintionsberreich
:math:`\mathrm{D}=[-\infty, 2013[`.

Mit Sage können wir uns einen Überblick über die Funktion verschaffen

.. sagecellserver::

  sage: f(x) = log(2013-x)
  sage: plot(f(x), x, (-2014,2014), figsize=(4, 2.8))

.. end of output

Für die Grenzen von :math:`\mathrm{D}` erhält man folgendes Verhalten:

.. math::

  \lim\limits_{x\rightarrow -\infty}\left(\ln(2013-x)\right) 
  = \lim\limits_{x\rightarrow -\infty}\left(\ln(-x)\right)
  = \lim\limits_{\tilde{x}\rightarrow +\infty}\left(\ln(\tilde{x})\right)
  = +\infty

In Sage lässt sich dieses Ergebniss bestätigen, indem man :math:`-\infty` für
:math:`x` einsetzen.

.. sagecellserver::

  sage: print(u"f(-\u221e) = " + str(f(-infinity)))

.. end of output

Geht :math:`x` gegen :math:`2013`, so geht das Argument des Logarithmus gegen
:math:`0`. In diesem Fall geht der Logarithmus gegen :math:`-\infty`.

.. math::

  \lim\limits_{x\rightarrow 2013}\left(\ln(2013-x)\right) 
  = \lim\limits_{\tilde{x}\rightarrow 0^{+}}\left(\ln(\tilde{x})\right)
  = -\infty

.. sagecellserver::

  sage: print(u"f(2013) = " + str(f(2013)))

.. end of output

Den Schnittpunkt mit der :math:`y`-Achse erhält man durch einsetzen von
:math:`x=0`:

.. math::

  f(0)=\ln(2013-0) = \ln(2013) \approx 7,61

.. sagecellserver::

  sage: print("f(0) = " + str(f(0)) + " = " + str(f(0).numerical_approx()))

.. end of output

Die Logarithmusfunktion schneidet die :math:`x`-Achse wenn das Argument gleich
:math:`1` ist:

.. math::

  2013-x \overset{!}{=}1 \rightarrow x = 2012

Dieses Ergebnis lässt sich mit Sage bestätigen:

.. sagecellserver::

  sage: solve(f(x) == 0, x)

.. end of output


