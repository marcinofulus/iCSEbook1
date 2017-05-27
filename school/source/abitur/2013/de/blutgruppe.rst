Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  Folgende Tabelle gibt die Verteilung der Blutgruppen und der Rhesusfaktoren
  innerhalb der Bevölkerung Deutschlands wieder:
  
   +-------+----+----+----+----+
   |       |0   |A   |B   |AB  |
   +-------+----+----+----+----+
   |Rh+    |35% |37% |9%  |4%  |
   +-------+----+----+----+----+
   |Rh-    |6%  |6%  |2%  |1%  |
   +-------+----+----+----+----+
  
  In einem Krankenhaus spenden an einem Vormittag 25 Personen Blut. Im
  Folgenden soll angenommen werden, dass diese 25 Personen eine zufällige
  Auswahl aus der Bevölkerung darstellen.
  
  a) Bestimmen Sie die Wahrscheinlichkeit dafür, dass genau zehn der Spender
     die Blutgruppe A haben.
  b) Ermitteln Sie die Wahrscheinlichkeit dafür, dass mehr als die Hälfte der
     Spender die Blutgruppe 0 und den Rhesusfaktor Rh+ besitzen.
  
  Folgende Tabelle gibt für die verschiedenen Empfänger von Spenderblut an,
  welches Spenderblut für sie jeweils geeignet ist:
  
  +------------------+-----------------------------------------------------------------+
  |                  | Spender                                                         |
  |                  +-------+-------+-------+-------+-------+-------+--------+--------+
  |                  | 0 Rh- | 0 Rh+ | A Rh- | A Rh+ | B Rh- | B Rh+ | AB Rh- | AB Rh+ |
  +-----------+------+-------+-------+-------+-------+-------+-------+--------+--------+
  | Empfänger |AB Rh+| ✓     | ✓     | ✓     | ✓     | ✓     | ✓     | ✓      | ✓      |
  |           +------+-------+-------+-------+-------+-------+-------+--------+--------+
  |           |AB Rh-| ✓     |       | ✓     |       | ✓     |       | ✓      |        |
  |           +------+-------+-------+-------+-------+-------+-------+--------+--------+
  |           |B Rh+ | ✓     | ✓     |       |       | ✓     | ✓     |        |        |
  |           +------+-------+-------+-------+-------+-------+-------+--------+--------+
  |           |B Rh- | ✓     |       |       |       | ✓     |       |        |        |
  |           +------+-------+-------+-------+-------+-------+-------+--------+--------+
  |           |A Rh+ | ✓     | ✓     | ✓     | ✓     |       |       |        |        |
  |           +------+-------+-------+-------+-------+-------+-------+--------+--------+
  |           |A Rh- | ✓     |       | ✓     |       |       |       |        |        |
  |           +------+-------+-------+-------+-------+-------+-------+--------+--------+
  |           |0 Rh+ | ✓     | ✓     |       |       |       |       |        |        |
  |           +------+-------+-------+-------+-------+-------+-------+--------+--------+
  |           |0 Rh- | ✓     |       |       |       |       |       |        |        |
  +-----------+------+-------+-------+-------+-------+-------+-------+--------+--------+
  
  c) Für einen Patienten mit der Blutgruppe B und dem Rhesusfaktor Rh- wird
     Spenderblut benötigt. Bestimmen Sie, wie viele zufällig ausgewählte
     Personen mindestens Blut spenden müssen, damit man mit einer
     Wahrscheinlichkeit von mehr als 95 % mindestens eine für diesen Patienten
     geeignete Blutspende erhält.
  

**Lösung zu Teil a**

Die Wahrscheinlichkeit, bei 25 Blutspendern genau zehn Personen mit Blutgruppe
A zu haben, ist durch die Binomialverteilung gegeben. Die Wahrscheinlichkeit, für
jeden einzelnen Spender die Blutgruppe A zu haben, ist:

.. math:: 

  P(\mathrm{A}) = P(\mathrm{A, Rh+}) + P(\mathrm{A, Rh-}) = 43 \%\,.

Die gesuchte Wahrscheinlichkeit ergibt sich dann zu:

.. math::

  W^{25}_{0,43}(10) =& {25 \choose 10}\cdot0{,}43^{10}\cdot(1-0{,}43)^{15}\\
  =& \frac{25!}{10!\cdot 15!} 0{,}43^{10} \cdot 0{,}57^{15} \approx 15{,}4 \%\,.

Mit Sage lässt sich dieses Zufallsexperiment simulieren:

.. sagecellserver::

  sage: import numpy as np
  sage: from numpy.random import random_sample
  sage: wiederholungen = 100000
  sage: personen = 25
  sage: personen_a = 10
  sage: p_a = 0.43
  sage: treffer = 0
  sage: for _ in range(wiederholungen):
  sage:     if np.sum(random_sample(personen) < p_a) == personen_a:
  sage:         treffer = treffer+1
  sage: print("Empirische Wahrscheinlichkeit, bei 25 Personen genau 10 Personen mit Blutgruppe A zu haben: {:5.2%}".format(
  sage:        float(treffer)/wiederholungen))

.. end of output

**Lösung zu Teil b**

Die Wahrscheinlichkeit dafür, dass mehr als die Hälfte der Spender die
Blutgruppe 0 und den Rhesusfaktor Rh+ besitzen lässt sich mittels Sage leicht
durch Aufsummation bestimmen:

.. sagecellserver:: 

  sage: def bernoulli(N, p, n):
  sage:     return p^n*(1-p)^(N-n)*binomial(N, n)

  sage: p_0_rhneg = 0.35
  sage: summe = 0
  sage: for treffer in range((personen+1)//2, personen+1):
  sage:     summe = summe+bernoulli(personen, p_0_rhneg, treffer)
  sage: print("Die Wahrscheinlichkeit, dass mehr als die Hälfte der Spender die Blutgruppe 0 Rh+ besitzen: {:5.2%}".format(float(summe)))

.. end of output

**Lösung zu Teil c**

Für einen Empfänger mit Blutgruppe B und Rhesusfaktor Rh- können nach der
Tabelle sowohl Personen mit Blutgruppe 0 Rh- sowie B Rh- Blut spenden.
Die Wahrscheinlichkeit dafür, den passenden Spender zu finden, beträgt also:

.. math::

  P(\mathrm{0, Rh-}) + P(\mathrm{B, Rh-}) = 8\%\,.

Die Wahrscheinlichkeit, dass eine Person kein passender Spender ist beträgt
also :math:`92\%`. Die Wahrscheinlichkeit, dass unter :math:`n` Personen kein
passender Spender dabei ist, beträgt demnach :math:`0.92^n`. Wir suchen nun die
kleinste ganze Zahl :math:`n`, für die 

.. math::

  (0{,}92)^{n} \leq 0{,}05\,.

Nimmt man den Logarithmus und bedenkt, dass :math:`\ln(0,92)` negativ ist, findet
man

.. math::

  n \geq \frac{\ln(0{,}05)}{\ln(0{,}92)} \approx 35{,}9\,.

Man benötigt also mindestens 36 Spender.

Mit Hilfe eines Zufallsexperiments kann man mit Sage näherungsweise die Wahrscheinlichkeit
bestimmen, dass unter 36 Spendern mindestens ein passender ist.

.. sagecellserver:: 

  sage: wiederholungen = 100000
  sage: n = 36
  sage: p = 0.08
  sage: erfolge = 0
  sage: for _ in range(wiederholungen):
  sage:     if np.sum(random_sample(n) < p):
  sage:         erfolge = erfolge+1
  sage: print("Wahrscheinlichkeit das bei {} Personen ein passender Spender dabei ist: {:5.2%}".format(n, float(erfolge)/wiederholungen))

.. end of output
