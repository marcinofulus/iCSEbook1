Bayerisches Abitur in Mathematik 2015
-------------------------------------

.. admonition:: Aufgabe

  Die Zufallsgröße :math:`X` kann die Werte 0, 1, 2 und 3 annehmen. Die Tabelle
  zeigt die Wahrscheinlichkeitsverteilung von :math:`X` mit :math:`p_1,p_2\in[0;1]`.
  
  ==============  ===========  ====================  ===================  ==========
  :math:`k`       0            1                     2                    3
  ==============  ===========  ====================  ===================  ==========
  :math:`P(X=k)`  :math:`p_1`  :math:`\frac{3}{10}`  :math:`\frac{1}{5}`  :math:`p_2`
  ==============  ===========  ====================  ===================  ==========

  Zeigen Sie, dass der Erwartungswert von :math:`X` nicht größer als 2,2 sein kann.

**Lösung**     

Der Erwartungswert einer Zufallsgröße :math:`X` ist gegeben durch die Summe ihrer
möglichen Werte, mutlipliziert mit deren Wahrscheinlichkeiten:

.. math::

  E(X) = \sum\limits_k k\cdot p_k,

in unserem Fall also

.. math::

  E(X) = 0\cdot p_1+1\cdot \frac{3}{10}+2\cdot \frac{1}{5}+3\cdot p_2 = \frac{1}{2} + 3\cdot p_2.

Die Werte für :math:`p_1` und :math:`p_2` können dabei aber nicht beliebig gewählt werden. Die
Summe aller Wahrscheinlichkeiten muss dabei genau 1 ergeben und die einzelnen Wahrscheinlichkeiten
dürfen nicht kleiner als 0 sein:

.. math::

  \begin{aligned}
  p_1+\frac{3}{10}+ \frac{1}{5}+p_2=1\\
  \Rightarrow\quad p_2=\frac{1}{2}-p_1
  \end{aligned}

Die Wahrscheinlichkeit :math:`p_2` ist also nach oben hin durch den Wert :math:`\frac{1}{2}`
beschränkt, kann also im Bereich :math:`[0;\frac{1}{2}]` liegen. Die Ableitung des Erwartungswerts
nach :math:`p_2`

.. math::

  E'(p_2)=3

zeigt dabei, dass der Erwartungswert mit steigender Wahrscheinlichkeit :math:`p_2` ebenfalls steigt.
Der maximale Erwartungswert befindet sich somit beim maximalen Wert von :math:`p_2`:

.. math::

  E\left(\frac{1}{2}\right)=2{,}2

Mit Sage wollen wir zur Kontrolle den Erwartungswert in Abhängig von der Wahrscheinlichkeit :math:`p_2`
graphisch darstellen. Der maximale Wert ist dabei mit einem roten Punkt gekennzeichnet.

.. sagecellserver::

  sage: E(p2) = 1 * 3/10 + 2 * 1/5 + 3*p2
  sage: p1 = plot(E(p2), (0, 0.5))
  sage: max = find_local_maximum(E, 0, 0.5)
  sage: p2 = point((max[1], max[0]), size=30, color='red')
  sage: plot(p1 + p2, ymin = 0, figsize=[7,3])
