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
  
  Folgende Tabelle gibt für die Verschiedenen Empfänger von Spendenblut an,
  welches Spendenblut für sie jeweils geeignet ist:
  
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
     Spendenblut benötigt. Bestimmen Sie, wie viele zufällig ausgewählte
     Personen mindestens Blut spenden müssen, damit man mit einer
     Wahrscheinlichkeit von mehr als 95 % mindestens einen für diesen Patienten
     geeignete Blutspende erhält.
  

**Lösung zu Teil a**

Die Wahrscheinlichkeit bei 25 Blutspendern genau zehn Personen mit Blutgruppe
A zu haben ist durch die Binomialverteilung gegeben. Die Wahrscheinlichkeit, für
jeden einzelnen Spender die Blutgruppe A zu haben, ist:

.. math:: 

  P(A) = P(A, Rh+) + P(A, Rh-) = 43 \%

Die gesuchte Wahrscheinlichkeit ergibt sich dann zu:

.. math::

  W^{25}_{0,43}(10) =& {25 \choose 10}\cdot0{,}43^{10}\cdot(1-0{,}43)^{15}\\
  =& \frac{25!}{10!\cdot 15!} 0{,}43^{10} \cdot 0{,}57^{15} \approx 15{,}4 \% 

Mit Sage lässt sich dieses Zufallsexperiment simulieren:

.. sagecellserver::

  sage: from random import random
  sage: iterationen = 10000
  sage: n = 25
  sage: k = 10
  sage: p = 0.43
  sage: erfolge = 0
  sage: for _ in range(iterationen):
  sage:     a = 0
  sage:     for __ in range(n):
  sage:         if random()<=p:
  sage:             a += 1
  sage:     if(a == 10):
  sage:         erfolge += 1
  sage: print("Empirische Wahrscheinlichkeit bei 25 Personen 10 Personen mit Blutgruppe A zu haben: {:4.3%}".format(
  sage:        float(erfolge)/iterationen))

.. end of output

**Lösung zu Teil b**

Die Wahrscheinlichkeit dafür, dass mehr als die Hälfte der Spender die
Blutgruppe 0 und den Rhesusfaktor Rh+ besitzen lässt sich mittels Sage leicht
bestimmen:

.. sagecellserver:: 

  sage: def bernoulli(N, p, n):
  sage:     return p^n*(1-p)^(N-n)*binomial(N, n)
  sage: summe = 0
  sage: for i in range(13,26):
  sage:     summe += bernoulli(25, 0.35, i)
  sage: print("Die Wahrscheinlichkeit dass mehr als die Hälfte der Spender die Blutgruppe 0, Rh+ besitzen:" + str(summe))

.. end of output

**Lösung zu Teil c**

Für einen Empfänger mit Blutgruppe B und Rhesusfaktor Rh- können nach der
Tabelle sowohl Personen mit Blutgruppe 0 Rh- sowie B Rh- Blut spenden.
Die Wahrscheinlichkeit dafür den passende Spender zu finden beträgt also:

.. math::

  P(0, Rh-) + P(B, Rh-) = 8\%

Die Wahrscheinlichkeit, dass eine Person kein passender Spender ist beträgt
also :math:`1-0{,}08 = 92\%`. Die Anzahl der Spender, bis die
Wahrscheinlichkeit unter :math:`5\%` ist, dass kein passender Spender dabei
ist, wird wie folgt berechnet:

.. math::

  (0{,}92)^{n} \leq 0{,}05 \Leftrightarrow \\
  n \leq \frac{\ln(0{,}05)}{\ln(0{,}92)} \approx 35{,}9

Mit Sage kann auch hier eine Zufallsexperiment durchgeführt werden:

.. sagecellserver:: 

  sage: from random import random
  sage: iterationen = 10000
  sage: n = 36
  sage: p = 0.08
  sage: erfolge = 0
  
  sage: def iterate():
  sage:     for _ in range(n):
  sage:         if random() <= p:
  sage:             return True
  sage:     return False

  sage: for _ in range(iterationen):
  sage:     if(iterate()):
  sage:         erfolge += 1
  sage: print("Wahrscheinlichkeit das bei {} Personen ein passender Spender dabei ist: {:4.3%}".format(n, float(erfolge)/iterationen))

.. end of output
