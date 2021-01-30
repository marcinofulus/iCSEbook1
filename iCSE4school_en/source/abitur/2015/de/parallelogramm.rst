Bayerisches Abitur in Mathematik 2015
-------------------------------------

.. admonition:: Aufgabe

  Die Gerade :math:`g` verläuft durch die Punkte A(0|1|2) und B(2|5|6).

  a) Zeigen Sie, dass die Punkte A und B den Abstand 6 haben. Die Punkte C und D
     liegen auf :math:`g` und haben von A jeweils den Abstand 12. Bestimmen Sie
     die Koordinaten von C und D.

  b) Die Punkte A, B und E(1|2|5) sollen mit einem weiteren Punkt die Eckpunkte
     eines Parallelogramms bilden. Für die Lage des vierten Eckpunkts gibt es
     mehrere Möglichkeiten. Geben Sie für zwei dieser Möglichkeiten die
     Koordinaten des vierten Eckpunkts an.

**Lösung zu Teil a**

Der Verbindungsvektor von Punkt A nach Punkt B lautet (2, 4, 4) und hat damit
die Länge :math:`\sqrt{2^2+4^2+4^2}=\sqrt{36}=6`. Die Punkte C und D ergeben
sich, indem man das Doppelte des Verbindungsvektors zwischen A und B zum
Ortsvektor von A addiert bzw. subtrahiert. Wir erhalten so die Punkte C(4|9|10) 
und D(-4|-7|-6).

Wir führen nun die entsprechenden Überlegungen mit der Hilfe von Sage durch.
Zunächst berechnen wir den Abstand der Punkte A und B und bestimmen dann die
Koordinaten der Punkte C und D. Abschließend überprüfen wir noch, ob der
Abstand zwischen den Punkten C und D und dem Punkt A wie gewünscht gleich 12
ist.

.. sagecellserver::

    sage: a = vector([0, 1, 2])
    sage: b = vector([2, 5, 6])
    sage: print('Länge des Verbindungsvektors von A nach B:', norm(b-a))
    sage: c = a+2*(b-a)
    sage: d = a-2*(b-a)
    sage: print('Koordinaten von C:', c)
    sage: print('Koordinaten von D:', d)
    sage: print('Abstand der Punkte A und C:', norm(c-a))
    sage: print('Abstand der Punkte A und D:', norm(d-a))

.. end of output

**Lösung zu Teil b**

Man wählt zwei der drei möglichen Verbindungsvektoren und fügt an einen
Verbindungsvektor den anderen Verbindungsvektor an, um den vierten Punkt zu
erhalten.

Im ersten Fall verwenden wir die Verbindungvektoren von A nach B und von A nach 
E:

.. sagecellserver::

    sage: a = vector([0, 1, 2])
    sage: b = vector([2, 5, 6])
    sage: e = vector([1, 2, 5])
    sage: a_to_b = b-a
    sage: a_to_e = e-a
    sage: f1 = b+a_to_e
    sage: f2 = e+a_to_b
    sage: f1, f2

.. end of output

Die beiden Berechnungswege ergeben, wie es auch sein muss, das gleiche
Resultat. Der vierte Eckpunkt ist also zum Beispiel F(3|6|9).

Ein anderes Parallelogramm ergibt sich, wenn der Punkt B diagonal gegenüber
dem neuen Punkt liegt.

.. sagecellserver::

    sage: a = vector([0, 1, 2])
    sage: b = vector([2, 5, 6])
    sage: e = vector([1, 2, 5])
    sage: b_to_a = a-b
    sage: b_to_e = e-b
    sage: f1 = a+b_to_e
    sage: f2 = e+b_to_a
    sage: f1, f2

.. end of output

Der Vollständigkeit halber berechnen wir noch den dritten möglichen Eckpunkt.

.. sagecellserver::

    sage: a = vector([0, 1, 2])
    sage: b = vector([2, 5, 6])
    sage: e = vector([1, 2, 5])
    sage: e_to_a = a-e
    sage: e_to_b = b-e
    sage: f1 = a+e_to_b
    sage: f2 = b+e_to_a
    sage: f1, f2

.. end of output
