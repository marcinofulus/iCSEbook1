Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  #.  Die Anzahl der Kinder, die eine Frau im Laufe ihres Lebens
      durchschnittlich zur Welt bringt, wird durch eine sogenannte
      Geburtenziffer angegeben, die jedes Jahr statistisch
      ermittelt wird

      Die Funktion :math:`g_{1,4}: x \rightarrow 2x \cdot e^{-0,5x^2} + 1,4`
      beschreibt für :math:`x\geq0` modellhaft die zeitlich Entwicklung der
      Geburtenziffer in einem europäischen Land. Dabei ist :math:`x` die seit
      dem Jahre 1955 vergangene Zeit in Jahrzehnten (d. h. :math:`x=1`
      entspricht dem Jahr 1965) und :math:`g_{1,4}(x)` die Geburtenziffer.
      Damit die Bevölkerungszahl in diesem Land langfristig näherungsweise
      konstant bleibt, ist dort eine Geburtenziffer von etwa :math:`2,1`
      erforderlich.

      a) Zeichnen Sie den Graphen von :math:`g_{1,4}` in Abbildung 2 ein
         und ermitteln Sie graphisch mit angemessener Genauigkeit, in welchem
         Zeitraum die Geburtenziffer mindestens :math:`2,1` beträgt.

      b) Welche künftige Entwicklung der Bevölkerungszahl ist auf der Grundlage
         des Modells zu erwarten? Begründen Sie ihr Antwort.

      c) Im betrachteten Zeitraum gibt es ein Jahr, in dem die Geburtenziffer
         am stärksten abnimmt. Geben sie mithilfe von Abbildung 2 einen
         Näherungswert für dieses Jahr an. Beschreiben Sie, wie man auf
         Grundlage des Modells rechnerisch nachweisen könnte, dass die Abnahme
         der Geburtenziffer von diesem Jan an kontinuierlich schwächer wird.
 

Aufgabe 3
^^^^^

**Lösung zu Teil a**

Um den Startpunkt und Endpunkt des Intervalls zu finden in welchem
:math:`g_{1,4}(x) > 2,1` ist, muss folgende Gleichung gelöst werden:

.. math:

  g_{1,4}(x) - 2,1 = 0
  
Aus den vorherigen Aufgaben wissen wir, dass der Hochpunkt von :math:`g_c(x)`
bei :math:`x = 1` liegt. Daraus folgt, dass der Startpunkt des Intervalls einen
kleineren :math:`x`-Wert hat. Der Endpunkt muss hingegen einen größeren
:math:`x`-Wert haben. Die Punkte werden durch numerisches lösen der Gleichung
mit Hilfe von Sage berechnet.

.. sagecellserver::

  sage: startx = find_root(gc(1.4)-2.1, -1, 1)
  sage: endx = find_root(gc(1.4)-2.1, 1, 3)
  sage: print("gc(1.4,x) ist im Intervall [" + str(startx) + ", " + str(endx) + "] größer als 2,1")
  sage: pg14l = plot(gc(1.4,x), (-4, startx), color='red')
  sage: pg14 = plot(gc(1.4,x), (startx, endx), fill=2.1, fillcolor='yellow', color='red')
  sage: pg14r = plot(gc(1.4,x), (endx, 4), color='red')
  sage: show(pg0 + pg14l + pg14 + pg14r, aspect_ratio=1)

.. end of output

**Lösung zu Teil b**

In Aufgabe 2 c wurde gezeigt, dass

.. math:: 
  \lim\limits_{x\rightarrow \infty} g_c(x) = c

gilt. Für das gegebene Modell der Bevölkerungsentwicklung folgt daraus,
dass sich die Geburtenrate hin zu :math:`1,4` entwickelt. Mit dieser
Geburtenrate sinkt der Bevölkerungsanteil.

**Lösung zu Teil c**


