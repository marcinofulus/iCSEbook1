Bayerisches Abitur in Mathematik 2015
-------------------------------------

.. admonition:: Aufgabe

  Das Baumdiagramm gehört zu einem Zufallsexperiment mit den Ereignissen
  C und D.

  .. image:: ../figs/baumdiagramm.png
     :align: center
     
  a) Berechnen Sie :math:`P(\bar{D})`.

  b) Weisen Sie nach, dass die Ereignisse :math:`C` und :math:`D` abhängig sind.

  c) Von den im Baumdiagramm angegebenen Zahlenwerten soll nur der Wert 
     :math:`\frac{1}{10}` so geändert werden, dass die Ereignisse :math:`C` und 
     :math:`D` unabhängig sind. Bestimmen Sie den geänderten Wert.

**Lösung zu Teil a**     

Die Wahrscheinlichkeiten entlang eines Astes im Baumdiagramm müssen multipliziert werden,
um die Wahrscheinlichkeit eines bestimmten Knotens zu erhalten. Die Summe der
Wahrscheinlichkeiten aller Knoten, die einen gemeinsamen Vaterknoten haben, muss gleich der
Wahrscheinlichkeit ihres Vaterknotens sein. Mit diesen beiden Regeln lassen sich die
nachfolgenden Teilaufgaben einfach lösen.

Zunächst berechnen wir die Wahrscheinlichkeiten

.. math::

  P(C\bar{D})=P(C)-P(CD)=\frac{P(CD)}{P(C\rightarrow D)}-P(CD)=\frac{4}{15}

und 

.. math::

  P(\bar{C}\bar{D})=P(\bar{C})-P(\bar{C}D)=1-P(C)-P(\bar{C}D) = \frac{3}{10}.

Die Gesamtwahrscheinlichkeit von :math:`\bar{D}` ergibt sich dann zu

.. math::

  P(\bar{D})=P(C\bar{D})+P(\bar{C}\bar{D})=\frac{1}{2}

**Lösung zu Teil b**

Die Ereignisse :math:`C` und :math:`D` sind dann abhängig von einander, wenn der Ausgang des Ereignisses
:math:`C` die Wahrscheinlichket für das Ereignis :math:`D` beeinflusst. Es muss also gelten

.. math::

  \frac{3}{5} = \frac{P(CD)}{P(C)}\neq \frac{P(\bar{C}D)}{P(\bar{C})}=\frac{3}{10},

was hier offenbar erfüllt ist. Die Ereignisse :math:`C` und :math:`D` sind also abhängig voneinander.

**Lösung zu Teil c**

Wir betrachten die Gleichung für die Unabhängigkeit der zwei Ereignisse:

.. math::

   \frac{P(CD)}{P(C)} = \frac{P(\bar{C}D)}{P(\bar{C})}

Da :math:`P(\bar{C}D)` der einzige Wert ist, der verändert werden darf, lösen wir die Gleichung nach diesem
auf und erhalten

.. math::

  P(\bar{C}D) = \frac{P(CD)}{P(C)} \cdot P(\bar{C}) = \frac{1}{5}

Wir überprüfen das Ergebnis mit Sage.

.. sagecellserver::

    sage: p_c = 1 - (2/5) / (3/5)
    sage: var('p_cd')
    sage: solve(p_cd / p_c == 3/5, p_cd)
