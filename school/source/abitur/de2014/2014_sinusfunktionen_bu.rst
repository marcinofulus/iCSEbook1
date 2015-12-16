Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Gegeben sind die in :math:`\mathbb{R}` definierten Funktionen :math:`g_{a,c}: x\mapsto \sin(ax)+c` mit :math:`a,c\in \mathbb{R}^+_0`.

    a) Geben Sie für jede der beiden folgenden Eigenschaften einen möglichen Wert für :math:`a` und einen möglichen Wert für c so an, dass 
       die zugehörige Funktion :math:`g_{a,c}` diese Eigenschaft besitzt.
      1) Die Funktion :math:`g_{a,c}` hat die Wertemenge :math:`[0;2]`.
      2) Die Funktion :math:`g_{a,c}` hat im Intervall :math:`[0;\pi]` genau drei Nullstellen.
    
    b) Ermitteln Sie in Abhängigkeit von :math:`a`, welche Werte die Ableitung von :math:`g_{a,c}` annehmen kann.

**Lösung zu Teil a**

Der Parameter :math:`a` der Sinusfunktion gibt die Periode des Sinus vor. Er verändert jedoch nicht den Wertebereich der Funktion.
Der Parameter :math:`c` hingegen verschiebt den Wertebereich der Funktion um eine Konstante. 
  1) Der Wertebereich der Sinusfunktion :math:`\sin(ax)` ist durch [-1;1] gegeben. Eine Konstante Verschiebung um :math:`c=1` ändert 
     den Wertebereich gemäß der Aufgabenstellung. Für den Parameter :math:`a` kann ein beliebiger Wert ungleich Null (beispielsweise)
     :math:`a=1` gewählt werden. Dieses Ergebnis überprüfen wir mit Hilfe Sage:


  2) Die Anzahl der Nullstellen der Funktion kann mit deren Periode geändert werden. Hierfür ist es allerdings notwendig, dass der Wertebereich der Funktion die Null mit einschließt. Wählen wir beispielsweise :math:`c=0`, wird würde die natürliche Sinusfunktion mit :math:`a=1` eine halbe Schwingung vollführen und hätte damit zwei Nullstellen in dem vorgegebenen Intervall. Mit der Parameterwahl :math:`a=2` vollführt der Sinus jedoch eine ganze Schwingung und hat damit genau drei Nullstellen in dem vorgegebenen Intervall. Wir überprüfen das Ergebnis mit Hilfe von Sage:

**Lösung zu Teil b**

Wir können denselben Rechenweg mit Sage überprüfen. Wir bestimmen zunächst die Nullstelle der ersten Ableitung unserer Funktion

.. sagecellserver::

     sage: g(x)=x/ln(x)
     sage: dg(x)=diff(g,x)
     sage: print 'Ableitung von f(x): ', dg
     sage: solve(dg(x)==0,x)
     sage: print 'Extremwert an der Stelle: ( e |', g(e), ')' 

.. end of output

Der Extremwert liegt also an der Stelle :math:`(e|e)`. Das Krümmungsverhalten erhalten wir anschließend aus der 
zweiten Ableitung der Funktion an der Stelle :math:`e`.

.. sagecellserver::

     sage: ddg(x)=diff(dg,x)
     sage: print 'zweite Ableitung von f(x): ', ddg
     sage: print 'Wert von f''(e): ', ddg(e)	

.. end of output
