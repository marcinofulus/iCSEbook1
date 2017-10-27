Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Die Abbildung zeigt den Graphen einer Funktion :math:`f`.

  .. image:: ../figs/qualitative_integrale.png
     :align: center
  
  a) Beschreiben Sie für :math:`a\leq x\leq b` den Verlauf des Graphen einer
     Stammfunktion von :math:`f`.

  b) Skizzieren Sie in der Abbildung den Graphen einer Stammfunktion von
     :math:`f` im gesamten dargestellten Bereich. 

**Lösung zu Teil a**

In dieser Aufgabe wollen wir zunächst die Stammfunktion skizzieren, die von der Form 

.. math::

  F(x)=\int\limits_a^x f(x')\mathrm{d}x'

ist. Für :math:`x=a` ist die Stammfunktion also gleich Null. Für :math:`x>a` beginnt die Stammfunktion zunächst erst stärker, dann immer schwächer
zu steigen, bis die Nullstelle :math:`x=x_0` von :math:`f` erreicht wird. Anschließend fällt die Stammfunktion erst schwächer und dann immer
stärker bis :math:`x=b` erreicht wird.

Um diese Aufgabe mit Hilfe von Sage zu behandeln, müssen wir zunächst eine Funktion finden, die der abgebildeten Funktion ähnelt. Dies ist im
Wesentlichen bei dem so genannten Lennard-Jones-Potential der Fall. Hierbei handelt es sich um eine Funktion, mit der in der Physik die
Bindungsenergie zwischen manchen Atomen beschrieben werden kann. Eine mögliche Form der Funktion ist 

.. math::

  f(x)=\frac{a}{x^{12}}-\frac{b}{x^6},

wobei :math:`a` und :math:`b` Konstanten sind. Um eine möglichst ähnliche Form zur gestellten Aufgabe zu bekommen, verschieben und stauchen
wir die Funktion noch entsprechend. Für die Auswertung mit Sage verwenden wir daher die Funktion 

.. math::

  f(x)=\frac{1}{(x/3+1.5)^{12}}-\frac{1}{(x/3+1.5)^6}-\frac{1}{5}. 

.. sagecellserver::

     sage: f(x) = 1/(x/3+1.5)^12-1/(x/3+1.5)^6-0.2
     sage: plot(f(x), x, (-2, 2), ymax=1, figsize=(4, 2.8))

.. end of output


Um den Verlauf der Stammfunktion im Bereich der Nullstelle der Funktion zu ermitteln,
ermitteln wir das bestimmte Integral der Funktion von :math:`a` bis :math:`x`, wobei
:math:`x` die Werte von :math:`a = -1{,}8` bis :math:`b = -1{,}4` durchläuft.


.. sagecellserver::

     sage: a = -1.8
     sage: b = -1.4
     sage: F(x) = integral(f(x), x)
     sage: sf(x) = F(x) - F(a)
     sage: plot(sf(x), (a, b), figsize=(4, 2.8))

.. end of output

**Lösung zu Teil b**

In dieser Teilaufgabe betrachten wir eine Stammfunktion, die an der Stelle, an der die Darstellung der Funktion :math:`f` beginnt, verschwindet. Wir betrachten also die Funktion 

.. math::

  F(x)=\int\limits_c^x f(x')\mathrm{d}x', 

wobei :math:`x=c` die erste Stelle ist, an der :math:`f` dargestellt wird. Unsere Stammfunktion beginnt daher ähnlich zur ersten Teilaufgabe
zunächst stark zu wachsen. Das Wachstum nimmt dann immer weiter ab, und wechselt nach der Nullstelle von :math:`f` zu einem negativen
Vorzeichen. Ab hier nimmt die Stammfunktion streng monoton ab und nimmt ab einem bestimmten Zeitpunkt nur noch negative Werte an. Das maximale
negative Wachstum der Stammfunktion befindet sich an dem Minimum der Funktion :math:`f`. Anschließend fällt die Stammfunktion weniger schnell ab und
nähert sich am Ende des dargestellten Bereichs einer Gerade mit negativer Steigung.

Mit Sage gehen wir genauso vor, wie in der vorherigen Teilaufgabe. Wir passen lediglich die Stammfunktion und den Darstellungsbereich an.

.. sagecellserver::
    
     sage: c = -2
     sage: d = 2
     sage: sf(x) = F(x) - F(c)
     sage: plot(sf(x), (c, d), figsize=(4, 2.8))

.. end of output

