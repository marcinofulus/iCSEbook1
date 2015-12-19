Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Gegeben ist die in :math:`\mathbb{R}` definierte Funktion :math:`f` mit :math:`f(x)=e^x\cdot\left(2x+x^2\right)`.

  a) Bestimmen Sie die Nullstellen der Funktion :math:`f`.

  b) Zeigen Sie, dass die in :math:`\mathbb{R}` definierte Funktion :math:`F` mit :math:`F(x)=x^2\cdot e^x` eine
     Stammfunktion von :math:`f` ist. Geben Sie eine Gleichung einer weiteren Stammfunktion :math:`G` von :math:`f` an, für die
     :math:`G(1)=2e` gilt.

**Lösung zu Teil a**

Zur Bestimmung der Nullstellen muss die Funktion :math:`f` gleich Null gesetzt werden. Da die Exponentialfunktion stets positive
Werte liefert, reicht es die Nullstellen von :math:`2x+x^2=x(2+x)` zu bestimmen. Durch die Faktorisierung lassen sich die beiden
Nullstellen :math:`x_1=0` und :math:`x_2=-2` einfach ablesen.

Dieses Ergebnis erhalten wir auch mit Hilfe von Sage: 

.. sagecellserver::

     sage: f(x)=(2*x+x^2)*e^x
     sage: solve(f(x)==0,x)

.. end of output

**Lösung zu Teil b**

Um zu zeigen, dass :math:`F` eine Stammfunktion von :math:`f` ist, müssen wir nachweisen, dass :math:`f` die Ableitung von :math:`F` ist.
Als Ableitung für :math:`F` erhalten wir aus der Produktregel :math:`2x\cdot e^x+x^2\cdot e^x=e^x\cdot(2x+x^2)`, also :math:`f`.
Die zweite Stammfunktion :math:`G` kann sich nur um eine Konstante von der Stammfunktion :math:`F` unterscheiden. Sie ist also von der Form
:math:`G(x)=x^2\cdot e^x+c`. Um die Konstante c zu bestimmen, können wir die Forderung :math:`G(1)=2e` benutzen. Dies liefert uns
die Gleichung :math:`e+c=2e`, woraus :math:`c=e` folgt. Die Stammfunktion :math:`G` hat also die Form :math:`G(x)=x^2\cdot e^x+e`.

Mit Sage wollen wir zunächst den Zusammenhang zwischen :math:`F` und :math:`f` überprüfen. Anschließend bestimmen wir die Konstante 
der Stammfunktion G:

.. sagecellserver::

     sage: F(x)=x^2*e^x
     sage: dF(x)=diff(F(x),x)
     sage: print 'Die Ableitung der Stammfunktion F ist: ', dF
     sage: var('c')
     sage: G(x)=F(x)+c
     sage: solve(G(1)==2*e,c)

.. end of output
