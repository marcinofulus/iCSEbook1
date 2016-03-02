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
  :math:`2{,}2` sein kann.

**Lösung**     

Der Erwartungswert einer Zufallsgröße :math:`X` ist gegeben durch die Summe ihrer
möglichen Werte, multipliziert mit deren Wahrscheinlichkeiten:

.. math::

  E(X) = \sum\limits_k k\cdot p_k.

In unserem Fall ergibt sich der Erwartungswert also zu

.. math::

  E(X) = 0\cdot p_1+1\cdot \frac{3}{10}+2\cdot \frac{1}{5}+3\cdot p_2 = \frac{7}{10} + 3\cdot p_2.

Da die Summe der Wahrscheinlichkeit gleich Eins sein muss, können
:math:`p_1` und :math:`p_2` jedoch nicht beliebig gewählt werden,
sondern es muss gelten

.. math::

  \begin{aligned}
  p_1+\frac{3}{10}+ \frac{1}{5}+p_2=1\\
  \Rightarrow\quad p_2=\frac{1}{2}-p_1
  \end{aligned}

Da die Wahrscheinlichkeiten nicht negativ sein dürfen, nimmt :math:`p_2`
seinen maximalen Wert bei :math:`p_1=0` an. 
Die Wahrscheinlichkeit :math:`p_2` kann also im Bereich :math:`[0;\frac{1}{2}]` liegen.

Die Ableitung des Erwartungswerts
nach :math:`p_2`

.. math::

  E'(p_2)=3

zeigt dabei, dass der Erwartungswert mit steigender Wahrscheinlichkeit :math:`p_2` ebenfalls steigt.
Der maximale Erwartungswert befindet sich somit beim maximalen Wert von
:math:`p_2` wie behauptet zu

.. math::

  E\left(\frac{1}{2}\right)=\frac{7}{10}+\frac{3}{2}=\frac{11}{5}=2{,}2

Für die Verwendung mit Sage indizieren wir die Wahrscheinlichkeiten
durch den jeweiligen Wert von :math:`k`. :math:`p_1` aus der
Aufgabenstellung wird nun als :math:`p_0` bezeichnet und :math:`p_2`
als :math:`p_3`. Im Folgenden können die Werte für :math:`p_1, p_2,`
und :math:`p_3` eingestellt werden. Die Wahrscheinlichkeit :math:`p_0`
wird dann daraus berechnet. In einem ersten Schritt sollten wie in der
Aufgabenstellung :math:`p_1=\frac{3}{10}` und :math:`p_2=\frac{1}{5}`
eingestellt werden. Durch Variation von :math:`p_3` im erlaubten
Bereich lässt sich dann der maximale Erwartungswert bestimmen. Durch
Variation der anderen Wahrscheinlichkeiten lässt sich auch erkunden,
wie der maximale Erwartungswert von den vorgegebenen
Wahrscheinlichkeiten abhängt. Der Parameter ``eps`` ist erforderlich,
um mit kleinen Rundungsfehlern umzugehen, die bei der Addition der
Wahrscheinlichkeiten auftreten können. Die Problematik der
Rundungsfehler wird deutlich, wenn dieser Parameter auf Null gesetzt
wird.

.. sagecellserver::

     sage: @interact
     sage: def _(p1=slider(0., 1., 0.1),
     ...         p2=slider(0., 1., 0.1),
     ...         p3=slider(0., 1., 0.01), eps=3e-16):
     ...       p0 = 1-p1-p2-p3
     ...       if p0 >= -eps:
     ...           print 'p0 =', p0
     ...           print 'E =', p1+2*p2+3*p3
     ...       else:
     ...           print 'p0 =', p0, '  Negative Werte sind nicht erlaubt'

..  end of output

