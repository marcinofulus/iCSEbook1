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

     *(Ergebnis:* :math:`P(X=1)=\frac{12}{55}, P(X=2)=\frac{28}{55}`\ *)*
  
  b) Bestimmen Sie Erwartungswert und Varianz der Zufallsgröße :math:`X`.

     *(Ergebnis:* :math:`E(X)=2, \mathrm{Var}(X)=\frac{6}{11}`\ *)*
  
  c) Abbildung 2 zeigt die Wahrscheinlichkeitsverteilung einer
     binomialverteilten Zufallsgröße :math:`Y` mit den Parametern :math:`n=3`
     und :math:`p=\frac{2}{3}`. Zeigen Sie rechnerisch, dass :math:`Y` den
     gleichen Erwartungswert wie die Zufallsgröße :math:`X`, aber eine größere
     Varianz als :math:`X` besitzt.
     Erläutern Sie, woran man durch Vergleich der Abbildungen 1 und 2 erkennen
     kann, dass :math:`\mathrm{Var}(Y)>\mathrm{Var}(X)` gilt.


**Lösung zu Teil a**

Das Losverfahren entspricht dem Ziehen aus einer Urne ohne Zurücklegen. Dafür
ergibt sich eine hypergeometrische Verteilung. Mit der Zahl der Stadträtinnen
(:math:`w=8`) und der Stadträte (:math:`m=4`) erhält man bei :math:`N=3`
Ausschussmitgliedern

.. math::

  P(X) = \dfrac{\frac{w!}{X!(w-X)!} \frac{m!}{(N-X)!(m-N+X)!}}
                           {\frac{(w+m)!}{N!(w+m-N)!}}\,.

Einsetzen liefert

.. math::

  P(1)=\frac{12}{55}\,.
  
Da die Summe der Wahrscheinlichkeiten gleich Eins sein muss, ergibt sich mit
den anderen angegebenen Wahrscheinlichkeiten ferner

.. math::

  P(2) = 1-P(0)-P(1)-P(3) = \frac{28}{55}\,.

Die Wahrscheinlichkeiten können auch leicht mit Hilfe von Sage berechnet
werden.


.. sagecellserver::

  sage: def hypergeometrisch(M, N, n, k):
  sage:     return binomial(M, k) * binomial(N - M, n - k) / binomial(N, n)

  sage: w = 8
  sage: m = 4
  sage: N = 3
  sage: for X in range(N+1):
  sage:     print("P(X={}) = {}".format(X, hypergeometrisch(w, m+w, N, X)))

.. end of output

**Lösung zu Teil b**

Der Erwartungswert zu einer Verteilung berechnet sich allgemein mit der
Formel

.. math::

  E(X) = \sum_k k \cdot P(k).

Die Varianz ist dann durch

.. math::

  \mathrm{Var}(X) = E(X^2) - \big(E(X)\big)^2

mit

.. math::

  E(X^2) = \sum_k k^2 \cdot P(k)

gegeben. Mit den Wahrscheinlichkeiten aus der ersten Teilaufgabe erhält man

.. math::

  E(X) &= \frac{1}{55}(0\cdot 1+1\cdot 12+2\cdot 28+3\cdot 14) = \frac{110}{55} = 2\\
  E(X^2) &= \frac{1}{55}(0\cdot 1+1\cdot 12+4\cdot 28+9\cdot 14) = \frac{250}{55} = \frac{50}{11}

und damit

.. math::

  \mathrm{Var}(X) = \frac{50}{11}-4 = \frac{6}{11}\,.

Mit Sage können wir diese Werte ebenfalls leicht bestimmen.

.. sagecellserver::

  sage: E_X = sum(hypergeometrisch(w, m+w, N, k)*k for k in range(N+1))
  sage: E_X2 = sum(hypergeometrisch(w, m+w, N, k)*k^2 for k in range(N+1))
  sage: print(u"E(X) = {} \nVar(X) = {}".format(E_X, E_X2-E_X^2))

.. end of output

**Lösung zu Teil c**

Mit der gegebenen binomialen Wahrscheinlichkeitsverteilung

.. math::

  P(Y=k) = \left(\frac{2}{3}\right)^k\left(\frac{1}{3}\right)^{3-k}
           \begin{pmatrix}3\\k\end{pmatrix}

können wir mit Hilfe von Sage den Erwartungswert sowie die Varianz bestimmen.

.. sagecellserver::

  sage: def bernoulli(N, p, k):
  sage:     return p^k*(1-p)^(N-k)*binomial(N, k)

  sage: N = 3
  sage: p = 2/3
  sage: for k in range(N+1):
  sage:     print("P(X={}) = {}".format(k, bernoulli(N, p, k)))
    
  sage: E_Y = sum(bernoulli(N, p, k)*k for k in range(N+1))
  sage: E_Y2 = sum(bernoulli(N, p, k)*k^2 for k in range(N+1))
  sage: print(u"E(Y) = {} \nVar(Y) = {}".format(E_Y, E_Y2-E_Y^2))

.. end of output

Natürlich kann man diese Ergebnisse auch durch explizite Rechnung analog zur
vorigen Teilaufgabe erhalten, wenn man zunächst die Wahrscheinlichkeiten
bestimmt.

Vergleicht man die Ergebnisse mit der Teilaufgabe b, so sieht man, dass der
Erwartungswert gleich ist, die Varianz jedoch größer.

Aus den Abbildungen lässt sich dies bereits schließen, da die Wahrscheinlichkeit
für :math:`Y` bei :math:`k=2` kleiner und bei :math:`k=0` und :math:`k=3`
hingegen deutlich größer ist als für :math:`X`. Die
Wahrscheinlichkeitsverteilung für :math:`Y` ist also „breiter“
und besitzt somit eine größere Varianz.
