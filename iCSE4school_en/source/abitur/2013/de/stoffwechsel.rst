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
  neugeborenen Kind die Stoffwechselstörung nicht vor, so beträgt die
  Wahrscheinlichkeit dafür, dass das Testergebnis irrtümlich positiv ist,
  0,78%.
  
  Bei einem zufällig ausgewählten neugeborenen Kind wird der Test durchgeführt.
  Betrachtet werden folgende Ereignisse:
  
  :math:`S`: „Die Stoffwechselstörung liegt vor.“
  
  :math:`T`: „Das Testergebnis ist positiv.“
  
  a) Beschreiben Sie das Ereignis :math:`\overline{S\cup T}` im
     Sachzusammenhang.
  
  b) Berechnen Sie die Wahrscheinlichkeiten :math:`P(T)` und :math:`P_T (S)`.
     Interpretieren Sie das Ergebnis für :math:`P_T(S)` im Sachzusammenhang.

     *(zur Kontrolle:* :math:`P(T)\approx 0{,}85\%, P_T(S)<0{,}1`\ *)*
  
  c) Im Rahmen eines Screenings wird eine sehr große Anzahl zufällig
     ausgewählter neugeborener Kinder getestet. Ermitteln Sie die pro Million
     getesteter Kinder im Mittel zu erwartende Anzahl derjenigen Kinder, bei
     denen die Stoffwechselstörung vorliegt und das Testergebnis negativ ist.
  

**Lösung zu Teil a**

Zuerst vereinfachen wir die Aussage:

.. math::

  \overline{S\cup T} = \overline{S} \cap \overline{T}.

Diese Formel beschreibt also das Ereignis, dass keine Stoffwechselstörung
vorliegt und das Testergebnis negativ ist.

**Lösung zu Teil b**

:math:`P(T)` beschreibt die Wahrscheinlichkeit für ein positives Testergebnis.
Sie ergibt sich aus der Wahrscheinlichkeit eines positiven Tests bei
einem gesunden neugeborenen Kind sowie der Wahrscheinlichkeit eines positiven Tests
bei einem kranken neugeborenen Kind.

.. math::

  P(T) = (1-0{,}00074)\cdot 0{,}0078 + 0{,}00074 \cdot 0{,}995 \approx
  0{,}00853\,.

:math:`P_T(S)` berechnet sich wie folgt:

.. math::

  P_T(S) = \frac{P(S \cap T)}{P(T)} = \frac{0{,}00074\cdot 0{,}995}{0{,}00853} \approx 0{,}0863\,.

Dies bedeutet, dass bei einem positiven Testergebnis nur in 8,63% der Fälle tatsächlich
eine Stoffwechselstörung vorliegt.

**Lösung zu Teil c**

Die Wahrscheinlichkeit dass ein zufälliges Kind die Stoffwechselstörung hat und
nicht positiv getestet wird beträgt:

.. math::

  P(S\cap\overline{T}) = 0{,}00074\cdot (1-0{,}995) \approx 3{,}7 \cdot 10^{-6}

Bei einer Million getesteter Kinder tritt dieses Ereignis folglich bei etwa
vier Kindern auf.

Mit Sage können wir den Test simulieren und die Anzahl aller auftretenden
Ereignisse bestimmen.

.. sagecellserver::

  sage: import numpy as np
  sage: from numpy.random import random_sample
  sage: kinder = 1000000
  sage: ps = 0.00074
  sage: pst = 0.995
  sage: pnst = 0.0078

  sage: test_s = random_sample(kinder)
  sage: kranke_kinder = np.sum(random_sample(kinder) < ps)
  sage: kranke_kinder_pos = np.sum(random_sample(kranke_kinder) < pst)
  sage: kranke_kinder_neg = kranke_kinder-kranke_kinder_pos
  sage: gesunde_kinder = kinder-kranke_kinder
  sage: gesunde_kinder_pos = np.sum(random_sample(gesunde_kinder) < pnst)
  sage: gesunde_kinder_neg = gesunde_kinder-gesunde_kinder_pos

  sage: print("""{} Kinder wurden wie folgt getestet:
  sage: {} Kinder waren erkrankt und wurden positiv getestet.
  sage: {} Kinder waren erkrankt und wurden negativ getestet.
  sage: {} Kinder waren nicht erkrankt und wurden positiv getestet.
  sage: {} Kinder waren nicht erkrankt und wurden negativ getestet.""").format(
  sage:     kinder, kranke_kinder_pos, kranke_kinder_neg, gesunde_kinder_pos, gesunde_kinder_neg)
