Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  Bei 0,074% der neugeborenen Kinder liegt eine bestimmte Stoffwechselstörung
  vor. Wird diese Störung frühzeitig erkannt, lässt sich durch eine geeignete
  Behandlung eine spätere Erkrankung vermeiden. Zur Früherkennung kann zunächst
  ein einfacher Test durchgeführt werden. Zeigt das Ergebnis des Tests die
  Stoffwechselstörung an, so bezeichnet man es als positiv.
  
  Liegt bei einem neugeborenen Kind die Stoffwechselstörung vor, so ist das
  Testergebnis mit einer Wahrscheinlichkeit von 99,5% positiv. Liegt bei einem
  neugeborenem Kind die Stoffwechselstörung nicht vor, so beträgt die
  Wahrscheinlichkeit dafür, dass das Testergebnis irrtümlich positiv ist,
  0,78%.
  
  Bei einem zufällig ausgewählten neugeborenen Kind wird der Test durchgeführt.
  Betrachtet werden folgende Ergebnisse:
  
  S: "Die Stoffwechselstörung liegt vor."
  
  T: "Das Testergebnis ist positiv."
  
  a) Beschreiben Sie das Ereignis :math:`\overline{S\cup T}` im
     Sachzusammenhang.
  
  b) Berechnen Sie die Wahrscheinlichkeit :math:`P(T)` und :math:`P_T (S)`.
     Interpretieren Sie das Ergebnis für :math:`P_T(S)` im Sachzusammenhang.
  
  c) Im Rahmen eines Screenings wird eine sehr große Anzahl zufällig
     ausgewählter neugeborener Kinder getestet. Ermitteln Sie die pro Millionen
     getesteter Kinder im Mittel zu erwartende Anzahl derjenigen Kinder, bei
     denen die Stoffwechselstörung vorliegt und das Testergebnis negativ ist.
  

**Lösung zu Teil a**

Zuerst vereinfachen wir die Aussage:

.. math::

  \overline{S\cup T} = \overline{S} \cap \overline{T}.

Diese Formel beschreibt also das Ereignis, dass keine Stoffwechselstörung
vorliegt und das Testergebnis negativ ist.

**Lösung zu Teil b**

:math:`P(T)` beschreibt wie Wahrscheinlich ein positives Testergebnis ist.
Sie ergibt sich aus der Wahrscheinlichkeit eines positiven Tests bei
eine gesunden neugeborenen Kind, sowie dem Wahrscheinlichkeit eines positiven Tests
bei einem kranken neugeborenen Kind.

.. math::

  P(T) = (1-0{,}00074)\cdot 0{,}0078 + 0{,}00074 \cdot 0{,}995 \approx 0{,}853\%

:math:`P_S(T)` berechnet sich wie folgt:

.. math::

  P_T(S) = \frac{P(S \cap T)}{P(T)} = \frac{0{,}00074\cdot 0{,}995}{0{,}00853} \approx 8{,}63\%

Dies bedeutet, dass bei einem Positiven Testergebnis nur in 8,63% tatsächlich
eine Stoffwechselstörung vorliegt.

**Lösung zu Teil c**

Die Wahrscheinlichkeit dass ein zufälliges Kind die Stoffwechselstörung hat und
nicht positiv getestet wird beträgt:

.. math::

  P(S\cap\overline{T}) = 0{,}00074\cdot (1-0{,}995) \approx 3{,}7 \cdot 10^{-6}

Bei einer Millionen getesteten Kinder tritt dieses Ereignis folglich bei etwa
vier Kindern auf.

Mit Sage können wir den Test simulieren und die Anzahl aller auftretenden
Ereignisse bestimmen.

.. sagecellserver::

  sage: from random import random
  sage: kinder = 1000000
  sage: ps = 0.00074
  sage: pst= 0.995
  sage: pnst = 0.0078

  sage: sum_s_pos = 0
  sage: sum_s_neg = 0
  sage: sum_ns_pos = 0
  sage: sum_ns_neg = 0

  sage: for _ in range(kinder):
  sage:     if(random() <= ps): # Kind hat Stoffwechselkrankheit
  sage:         if(random()<= pst): # Test ist positiv
  sage:             sum_s_pos += 1
  sage:         else: # Test ist negativ
  sage:             sum_s_neg += 1
  sage:     else: # Kind hat nicht Stoffwechselkrankheit
  sage:         if(random() <= pnst): # Test ist positiv
  sage:             sum_ns_pos += 1
  sage:         else: # Test ist negativ
  sage:             sum_ns_neg += 1

  sage: print("{} Kinder wurden wie folgt getestet:\n".format(kinder) +
  sage:       "{} Kinder waren erkrankt und wurden positiv getestet.\n".format(sum_s_pos) +
  sage:       "{} Kinder waren erkrankt und wurden negativ getestet.\n".format(sum_s_neg) +
  sage:       "{} Kinder waren nicht erkrankt und wurden positiv getestet.\n".format(sum_ns_pos) +
  sage:       "{} Kinder waren nicht erkrankt und wurden negativ getestet.\n".format(sum_ns_neg))  

.. end of output


