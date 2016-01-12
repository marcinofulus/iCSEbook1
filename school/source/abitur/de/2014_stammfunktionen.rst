Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Gegeben ist die in :math:`\mathbb{R}` definierte Funktion :math:`f` mit :math:`f(x)=e^x\cdot\left(2x+x^2\right)`.

  a) Bestimmen Sie die Nullstellen der Funktion :math:`f`.

  b) Zeigen Sie, dass die in :math:`\mathbb{R}` definierte Funktion :math:`F` mit :math:`F(x)=x^2\cdot e^x` eine
     Stammfunktion von :math:`f` ist. Geben Sie eine Gleichung einer weiteren Stammfunktion :math:`G` von :math:`f` an, für die
     :math:`G(1)=2e` gilt.

**Lösung zu Teil a**

Da die Exponentialfunktion stets positive Werte liefert, sind die Nullstellen der
Funktion :math:`f` durch die Nullstellen von :math:`2x+x^2=x(2+x)` gegeben. Durch die
Faktorisierung lassen sich die beiden Nullstellen :math:`x_1=0` und :math:`x_2=-2`
einfach ablesen.

Dieses Ergebnis erhalten wir auch mit Hilfe von Sage: 

.. sagecellserver::

     sage: f(x) = exp(x)*(2*x+x^2)
     sage: solve(f(x)==0,x)

.. end of output

**Lösung zu Teil b**

Um zu zeigen, dass :math:`F` eine Stammfunktion von :math:`f` ist, müssen wir nachweisen, 
dass :math:`f` die Ableitung von :math:`F` ist. Mit Hilfe der Produktregel ergibt sich

.. math::

   \frac{\mathrm{d}F}{\mathrm{d}x} = 2x\cdot\mathrm{e}^x+x^2\cdot\mathrm{e}^x
    =\mathrm{e}^x\cdot(2x+x^2) = f(x) .

Man kann dies folgendermaßen mit Sage zeigen:

.. sagecellserver::

   sage: F(x) = x^2*exp(x)
   sage: (F(x).derivative()-f(x)).simplify_rational()

.. end of output

Die zweite Stammfunktion :math:`G` kann sich nur um eine Konstante von der Stammfunktion :math:`F` unterscheiden. Sie ist also von der Form

.. math::

   G(x)=x^2\cdot \mathrm{e}^x+c.

.. sagecellserver::

     sage: G(x, c) = F(x)+c
     sage: (G(x, c).derivative(x)-f(x)).simplify_rational()

.. end of output
   
Um die Konstante :math:`c` zu bestimmen, können wir die Forderung :math:`G(1)=2e` benutzen, womit :math:`c=\mathrm{e}` folgt:

.. sagecellserver::

     sage: solve(G(1, c)==2*e, c)

.. end of output
