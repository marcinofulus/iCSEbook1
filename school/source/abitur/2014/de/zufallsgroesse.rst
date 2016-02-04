Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Die Zufallsgröße :math:`X` kann die Werte :math:`0, 1, 2` und
  :math:`3` annehmen. Die Tabelle
  zeigt die Wahrscheinlichkeitsverteilung von :math:`X` mit :math:`p_1,p_2\in[0;1]`.
  
  ================================  =============  =============================  ======================================  =====================================  =================================
  :math:`k`                         :math:`\vert`  :math:`0`                      :math:`1`                               :math:`2`                              :math:`3`
  ================================  =============  =============================  ======================================  =====================================  =================================
  :math:`P(X=k)\vphantom{1\over2}`  :math:`\vert`  :math:`p_1\vphantom{1\over2}`  :math:`\frac{3}{10}\vphantom{1\over2}`  :math:`\frac{1}{5}\vphantom{1\over2}`  :math:`p_2\vphantom{1\over2}`
  ================================  =============  =============================  ======================================  =====================================  =================================
  
  Zeigen Sie, dass der Erwartungswert von :math:`X` nicht größer als
  :math:`2,2` sein kann.

**Lösung**     

Der Erwartungswert einer Zufallsgröße :math:`X` ist gegeben durch die Summe ihrer
möglichen Werte, multipliziert mit deren Wahrscheinlichkeiten:

.. math::

  E(X) = \sum\limits_k k\cdot p_k,

in unserem Fall also

.. math::

  E(X) = 0\cdot p_1+1\cdot \frac{3}{10}+2\cdot \frac{1}{5}+3\cdot p_2 = \frac{7}{10} + 3\cdot p_2.

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

Mit Sage wollen wir zur Kontrolle den Erwartungswert in Abhängigkeit von der Wahrscheinlichkeit :math:`p_2`
graphisch darstellen. Der maximale Wert ist dabei mit einem roten Punkt gekennzeichnet.

.. sagecellserver::

     sage: @interact
     sage: def _(p1=slider(0., 1., 0.1),
     ...         p2=slider(0., 1., 0.1),
     ...         p3=slider(0., 1., 0.01), eps=3e-16):
     sage:     p0 = 1-p1-p2-p3
     sage:     if p0 >= -eps:
     ...           print 'p_0 =', p0
     ...           print 'E =', p1+2*p2+3*p3
     ...       else:
     ...           print 'p_0 =', p0, '  Negative Werte sind nicht erlaubt'

..  end of output

