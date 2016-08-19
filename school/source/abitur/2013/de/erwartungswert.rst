Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  Nach der Wahl darf die Partei A in einem Ausschuss drei Sitze besetzen. Von
  den acht Stadträtinnen und vier Stadträten der Partei A, die Interesse an
  einem Sitz in diesem Ausschuss äußern, werden drei Personen per Losentscheid
  als Ausschussmitglieder bestimmt.
  
  Die Zufallsgröße :math:`X` beschreibt die Anzahl der weiblichen
  Ausschussmitglieder der Partei A. Abbildung 1 zeigt die
  Wahrscheinlichkeitsverteilung der Zufallsgröße :math:`X` mit
  :math:`P(X=0) = \frac{1}{55}` und :math:`P(X=3) = \frac{14}{55}`.
  
  .. image:: ../figs/erwartungswert.png
     :align: center
  
  a) Berechnen Sie die Wahrscheinlichkeit :math:`P(X=1)` und :math:`P(X=2)`.
  
  b) Bestimmen Sie Erwartungswert und Varianz der Zufallsgröße :math:`X`.
  
  c) Abbildung 2 zeigt die Wahrscheinlichkeitsverteilung einer
     binomialverteilten Zufallsgröße :math:`Y` mit den Parametern :math:`n=3`
     und :math:`p=\frac{2}{3}`. Zeigen Sie rechnerisch, dass :math:`Y` den
     gleichen Erwartungswert wie die Zufallsgröße :math:`X`, aber eine größer
     Varianz als :math:`X` besitzt.
     Erläutern Sie, woran man durch Vergleich der Abbildungen 1 und 2 erkennen
     kann, dass :math:`Var(Y)>Var(X)` gilt.


**Lösung zu Teil a**

Das Losverfahren entspricht dem ziehen ohne zurücklegen aus einer Urne. Dafür
ergibt sich eine hypergeometrische Verteilung. Die Wahrscheinlichkeiten für
:math:`P(X=1)` und :math:`P(X=2)` können durch Sage gelöst werden.


.. sagecellserver::

  sage: def hypergeometrisch(M, N, n, k):
  sage:     return binomial(M, k) * binomial(N - M, n - k) / binomial(N, n)

  sage: N = 12
  sage: M = 8
  sage: n = 3
  sage: for k in range(n+1):
  sage:     print("P(X={}) = {}".format(k, hypergeometrisch(M, N, n, k)))

.. end of output

**Lösung zu Teil b**

Der Erwartungswert zu einer Verteilung berechnet sich im Allgemeinen mit der
Formel

.. math::

  E(X) = \sum_k k \cdot P(X=k).

Die Varianz ist dann durch

.. math::

  Var(X) = E(X^2) - \vert E(X) \vert^2

gegeben.

Mit Sage können wir diese Werte leicht bestimmen.

.. sagecellserver::

  sage: E = sum(hypergeometrisch(M, N, n, k)*k for k in range(n+1))
  sage: sigma = sum(hypergeometrisch(M, N, n, k)*k**2 for k in range(n+1)) - E**2
  sage: print(u"E(X) = {} \n \u03c3 = {}".format(E, sigma))

.. end of output

**Lösung zu Teil c**

Mit der gegebenen binomialen Wahrscheinlichkeitsverteilung können wir mit Hilfe
von Sage den Erwartungswert sowie die Varianz genau bestimmen.

.. sagecellserver::

  sage: def bernoulli(N, p, k):
  sage:     return p^k*(1-p)^(N-k)*binomial(N, k)

  sage: N = 3
  sage: p = 2/3
  sage: for k in range(N+1):
  sage:     print("P(X={}) = {}".format(k, bernoulli(N,p,k)))
    
  sage: E = sum(bernoulli(N,p,k)*k for k in range(N+1))
  sage: sigma = sum(bernoulli(N,p,k)*k**2 for k in range(N+1)) - E**2
  sage: print(u"E(X) = {} \n\u03c3 = {}".format(E, sigma))

.. end of output

Vergleicht man die Ergebnisse mit der Teilaufgabe b, so sieht man das der
Erwartungswert gleich ist, die Varianz jedoch größer ist.

Aus den Abbildungen lässt sich dies bereit schließen, so ist bei :math:`k=2`
die Wahrscheinlichkeit für :math:`Y` deutlich kleiner und der
Wert bei :math:`k=0` hingegen deutlich größer. Die
Wahrscheinlichkeitsverteilung für :math:`Y` ist als "breiter" verteilt als die
für :math:`X`. Dies größere Verteilung wird genau durch eine größere Varianz
beschrieben.

