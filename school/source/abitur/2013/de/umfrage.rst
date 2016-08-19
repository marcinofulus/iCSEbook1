Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  In einer Großstadt steht die Wahl des Oberbürgermeisters bevor. 12% der
  Wahlberechtigten sind Jungwähler, d. h. Personen im Alter von 18 bis 24
  Jahren. Vor Beginn des Wahlkampfs wird eine repräsentative Umfrage unter den
  Wahlberechtigten durchgeführt. Der Umfrage zufolge haben sich 44% der
  befragten Wahlberechtigten bereits für einen Kandidaten entschieden. Jeder
  Siebte derjenigen Befragte, die sich noch nicht für einen Kandidaten
  entschieden haben, ist Jungwähler.
  
  Betrachtet werden folgende Ereignisse:
  
  J: "Eine aus den Befragten zufällig ausgewählte Person ist Jungwähler."
  
  K: "Eine aus den Befragten zufällig ausgewählte Person hat sich bereits für
  einen Kandidaten entschieden."
  
  a) Erstellen Sie zu dem beschriebenen Sachzusammenhang eine vollständig
     ausgefüllte Vierfeldertafel.
  
  b) Zeigen Sie, dass :math:`P_J(\overline{K})>P_{\overline{J}}(\overline{K})`
     gilt. Begründen Sie, dass es trotz der Gültigkeit dieser Ungleichung nicht
     sinnvoll ist, sich im Wahlkampf vorwiegend auf die Jungwähler zu
     konzentrieren.
  
  c) Der Kandidat der Partei A spricht an einem Tag während seines Wahlkampfs
     48 zufällig ausgewählt wahlberechtigte an. Bestimmen Sie die
     Wahrscheinlichkeit dafür, dass sich darunter genau sechs Jungwähler
     befinden.

**Lösung zu Teil a**

Aus der Aufgabenstellung ergibt sich folgende Vierfeldertafel:

+--------------------+---------+--------------------+------------+
|                    |:math:`K`|:math:`\overline{K}`|:math:`\sum`|
+--------------------+---------+--------------------+------------+
|:math:`J`           |         |:math:`X`           |12%         |
+--------------------+---------+--------------------+------------+
|:math:`\overline{J}`|         |:math:`6\cdot X`    |88%         |
+--------------------+---------+--------------------+------------+
|:math:`\sum`        |44%      |56%                 |100%        |
+--------------------+---------+--------------------+------------+

Aus der Aussage "Jeder Siebte derjenigen Befragte, die sich noch nicht für
einen Kandidaten entschieden haben, ist Jungwähler." erhalten wir für die
Vierfeldertafel die Gleichung

.. math::

  X + 6\cdot X = 56\% \Rightarrow X = 8\%.

Damit können wir durch einfaches Subtrahieren die Vierfeldertafel füllen.

+--------------------+---------+--------------------+------------+
|                    |:math:`K`|:math:`\overline{K}`|:math:`\sum`|
+--------------------+---------+--------------------+------------+
|:math:`J`           |4%       |8%                  |12%         |
+--------------------+---------+--------------------+------------+
|:math:`\overline{J}`|40%      |48%                 |88%         |
+--------------------+---------+--------------------+------------+
|:math:`\sum`        |44%      |56%                 |100%        |
+--------------------+---------+--------------------+------------+

**Lösung zu Teil b**

Um die Ungleichung zu zeigen berechnen wir :math:`P_J(\overline{K})` und 
:math:`P_{\overline{J}}(\overline{K})`.

.. math::

  P_J(\overline{K}) = \frac{P(\overline{K} \cap J)}{P(J)}
  = \frac{8\%}{12\%} = 66,7\% \\
  P_{\overline{J}}(\overline{K}) = \frac{P(\overline{K} \cap \overline{J})}{P(\overline{J})}
  = \frac{48\%}{88\%} \approx 54{,}5\% \\

Die Ungleichung :math:`P_J(\overline{K})>P_{\overline{J}}(\overline{K})` ist
also erfüllt, jedoch ist es deswegen nicht sinnvoll sich im Wahlkampf auf die
Jungwähler zu konzentrieren. Für die Wahlentscheidung muss die Gesamtzahl der
Wähler betrachtet werden. Auch wenn bei den älteren Wählern sich Prozentual
schon mehr für einen Kandidaten entschieden haben als bei Jungwählern ist dies
in absoluten Zahlen nicht der Fall. Bei 8% Jungwählern und 48% älteren Wählern
die sich noch nicht entschieden haben sollte der Wahlkampf besser auf ältere
Wähler konzentriert sein.

**Lösung zu Teil c**

Die Wahrscheinlichkeit das ein Wahlberechtigter ein Jungwähler ist beträgt 12%.
Die Wahrscheinlichkeit genau sechs Jungwählern bei 48 Wählern zu haben lässt
sich analog dem Urnenmodell mit zurücklegen berechnen.

.. math::

  P^{48}_{0{,}12}(6) = {48 \choose 6} \cdot 0{,}12^6 \cdot (1-0{,}12)^{48} = 17{,}07\%

Mit Sage können wir diese Experiment simulieren.

.. sagecellserver::

  sage: from random import random
  sage: iterationen = 10000
  sage: n = 48
  sage: p = 0.12
  sage: k = 6
  sage: erfolge = 0

  sage: def iterate():
  sage:     j = 0
  sage:     for _ in range(n):
  sage:         if random() <= p:
  sage:             j += 1
  sage:     return j == k

  sage: for _ in range(iterationen):
  sage:     if(iterate()):
  sage:         erfolge += 1
  sage: print("Wahrscheinlichkeit dafür, dass bei {} zufälligen Personen genau {} Jungwähler dabei sind beträgt: {:4.3%}".format(n, k, float(erfolge)/iterationen))

.. end of output




