Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Gegeben sind die in :math:`\mathbb{R}` definierten Funktionen :math:`g_{a,c}: x\mapsto \sin(ax)+c` mit :math:`a,c\in \mathbb{R}^+_0`.

    a) Geben Sie für jede der beiden folgenden Eigenschaften einen möglichen Wert für :math:`a` und einen möglichen Wert für :math:`c` so an, dass 
       die zugehörige Funktion :math:`g_{a,c}` diese Eigenschaft besitzt.
      1) Die Funktion :math:`g_{a,c}` hat die Wertemenge :math:`[0;2]`.
      2) Die Funktion :math:`g_{a,c}` hat im Intervall :math:`[0;\pi]` genau drei Nullstellen.
    
    b) Ermitteln Sie in Abhängigkeit von :math:`a`, welche Werte die Ableitung von :math:`g_{a,c}` annehmen kann.

**Lösung zu Teil a**

Der Parameter :math:`a` der Sinusfunktion gibt die Periode des Sinus vor. Er verändert jedoch nicht den Wertebereich der Funktion.
Der Parameter :math:`c` hingegen verschiebt den Wertebereich der Funktion um eine Konstante. 
  1) Der Wertebereich der Sinusfunktion :math:`\sin(ax)` ist durch [-1;1] gegeben. Eine Konstante Verschiebung um :math:`c=1` ändert 
     den Wertebereich gemäß der Aufgabenstellung. Für den Parameter :math:`a` kann ein beliebiger Wert ungleich Null (beispielsweise
     :math:`a=1`) gewählt werden. Dieses Ergebnis überprüfen wir mit Hilfe Sage:

.. sagecellserver::
     sage: a = 1
     sage: c = 1
     sage: var('x')
     sage: g = sin(a*x)+c
     sage: plot(g(x), (-2*pi, 2*pi), figsize=(4, 2.5))
     
.. end of output


  2) Die Anzahl der Nullstellen der Funktion kann mit deren Periode geändert werden. Hierfür ist es allerdings notwendig, dass der Wertebereich der Funktion die Null mit einschließt. Wählen wir beispielsweise :math:`c=0`, würde die natürliche Sinusfunktion mit :math:`a=1` eine halbe Schwingung vollführen und hätte damit zwei Nullstellen in dem vorgegebenen Intervall. Mit der Parameterwahl :math:`a=2` vollführt der Sinus jedoch eine ganze Schwingung und hat damit genau drei Nullstellen in dem vorgegebenen Intervall. Wir überprüfen das Ergebnis mit Hilfe von Sage:

.. sagecellserver::

     sage: plot(sin(2*x), (0, pi), figsize=(4, 2.5))
     
.. end of output

**Lösung zu Teil b**

Zunächst müssen wir die Ableitung der Funktion bestimmen. Durch Kettenregel erhalten wir :math:`g_{a,c}'(x)=a\cos(ax)`. Wir bemerken, dass die Ableitung unabhängig von dem Parameter :math:`c` ist. Der Kosinus in der Funktion hat den Wertebereich :math:`[-1;1]`. Dieser wird aber zusätzlich durch die Amplitude :math:`a` gestaucht, bzw. gestreckt. Dadurch erhalten wir einen Wertebereich :math:`[-a;a]`.

Mit Sage führen wir die Parameter :math:`a` und :math:`c` zunächst formell als weitere Variablen der Funktion mit, um eine allgemeine Form der Ableitung zu erhalten. Anschließend zeichnen wir die Funktion :math:`g'(x)` für verschiedene Werte des Parameters a. Aus den Graphen lassen sich unterschiedlichen Amplituden und Perioden leicht ablesen.

.. sagecellserver::

    sage: var('x')
    sage: var('a')
    sage: var('c')
    sage: g(x,a,c) = sin(a*x)+c
    sage: dg(x,a,c) = diff(g,x)
    sage: print 'Die Ableitung g ist ', dg
    sage: p1 = plot(df(x,1), (-2*pi,2*pi), figsize=(4,2.5), rgbcolor=hue(0.2))
    sage: p2 = plot(df(x,2), (-2*pi,2*pi), figsize=(4,2.5), rgbcolor=hue(0.4))
    sage: p3 = plot(df(x,3), (-2*pi,2*pi), figsize=(4,2.5), rgbcolor=hue(0.6))
    sage: plot(p1 + p2 + p3)

.. end of output

