Bayerisches Abitur in Mathematik 2015
-------------------------------------

.. admonition:: Aufgabe

  Ein Moderator lädt zu seiner Talkshow drei Politiker, eine Journalistin und
  zwei Mitglieder einer Bürgerinitiative ein. Für die Diskussionsrunde ist eine
  halbkreisförmige Sitzordnung vorgesehen, bei der nach den Personen
  unterschieden wird und der Moderator den mittleren Platz einnimmt.

  a) Geben Sie einen Term an, mit dem die Anzahl der möglichen Sitzordnungen
     berechnet werden kann, wenn keine weiteren Einschränkungen berücksichtigt
     werden.

  b) Der Sender hat festgelegt, dass unmittelbar neben dem Moderator auf einer
     Seite die Journalistin und auf der anderen Seite einer der Politiker sitzen
     soll. Berechnen Sie unter Berücksichtigung dieser weiteren Einschränkung
     die Anzahl der möglichen Sitzordnungen.

**Lösung zu Teil a**

Wenn wir alle möglichen Sitzverteilungen erzeugen wollen, haben wir für den
ersten Platz die Wahl unter 6 Personen, für den zweiten Platz bleibt noch die
Wahl zwischen 5 Personen, usw. Insgesamt gibt es also

.. math::

   6!=6\cdot5\cdot4\cdot3\cdot2\cdot1=720

Möglichkeiten.

Bezeichnen wir den Moderator mit M, die Politiker mit 1, 2 und 3, die
Journalistin mit J und die Mitglieder der Bürgerinitiative mit B und b, so
können wir alle Sitzordnungen auflisten:

.. sagecellserver::

    sage: for n, a in enumerate(Arrangements(["1", "2", "3", "J", "B", "b"], 6)):
    ...       if not n % 8:
    ...           print "%3i" % (n/8+1),
    ...       print "%sM%s" % ("".join(a[:3]), "".join(a[3:])),
    ...       if not (n+1) % 8:
    ...           print

.. end of output

Unsere Liste umfasst tatsächlich :math:`8\cdot90=720` verschiedene
Sitzordnungen.

**Lösung zu Teil b**

Bei der Besetzung der Stühle können wir zum Beispiel folgendermaßen vorgehen:
Die Journalistin bekommt einen der beiden Stühle (2 Möglichkeiten), den anderen 
Stuhl erhält dann einer der drei Politiker (3 Möglichkeiten), so dass noch vier 
Personen auf die restlichen Stühle zu verteilen sind (in Analogie zur
Überlegung aus Teilaufgabe a ergibt das :math:`4\cdot3\cdot2\cdot1=24`
Möglichkeiten). Damit ergeben sich insgesamt :math:`2\cdot3\cdot24`
Sitzordnungen. Diese können wir wiederum auflisten:

.. sagecellserver::

    sage: persons = set(["1", "2", "3", "B", "b"])
    sage: n = 0
    ...   for jleft in (True, False):
    ...       for pmiddle in ("1", "2", "3"): 
    ...           for others in Arrangements(persons-set([pmiddle]), 4):
    ...               if jleft:
    ...                   a = "".join(others[:2])+"JM"+pmiddle+"".join(others[2:])
    ...               else:
    ...                   a = "".join(others[:2])+pmiddle+"MJ"+"".join(others[2:])
    ...               if not n % 8:
    ...                   print "%3i" % (n/8+1),
    ...               print a,
    ...               if not (n+1) % 8:
    ...                   print
    ...               n = n+1

Wie erwartet erhalten wir :math:`18\cdot8=144` Sitzordnungen.
