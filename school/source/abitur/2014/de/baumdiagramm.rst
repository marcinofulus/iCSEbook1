Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Das Baumdiagramm gehört zu einem Zufallsexperiment mit den Ereignissen
  C und D.

  .. image:: ../figs/baumdiagramm.png
     :align: center
     
  a) Berechnen Sie :math:`P(\bar{D})`.

  b) Weisen Sie nach, dass die Ereignisse :math:`C` und :math:`D` abhängig sind.

  c) Von den im Baumdiagramm angegebenen Zahlenwerten soll nur der Wert 
     :math:`\frac{1}{10}` so geändert werden, dass die Ereignisse :math:`C` und 
     :math:`D` unabhängig sind. Bestimmen Sie den geänderten Wert.

**Lösung zu Teil a**     

Die Wahrscheinlichkeit :math:`P(D)` ergibt sich aus den Angaben im Baumdiagramm
zu

.. math::

   P(D) = P(C\cap D)+P(\bar{C}\cap D) = \frac{2}{5}+\frac{1}{10} = \frac{1}{2}

Mit der Bedingung :math:`P(D)+P(\bar{D})=1` folgt
:math:`P(\bar{D})=\frac{1}{2}`.

**Lösung zu Teil b**


Die Ereignisse :math:`C` und :math:`D` sind dann abhängig voneinander, wenn der Ausgang des Ereignisses :math:`C` die Wahrscheinlichkeit für das Ereignis
:math:`D` beeinflusst. Es muss also gelten :math:`P(D|C)\neq P(D|\bar{C})`.
Aus dem Baumdiagramm lesen wir :math:`P(D|C)=\frac{3}{5}` ab.

Des Weiteren benötigen wir

.. math::

   P(C) = \frac{P(C\cap D)}{P(D|C)} = \frac{2/5}{3/5} = \frac{2}{3},

womit wir :math:`P(\bar C) = 1-P(C)=\frac{1}{3}` und damit schließlich

.. math::

   P(D|\bar{C}) = \frac{P(\bar{C}\cap D)}{P(\bar C)}=\frac{1/10}{1/3} 
                = \frac{3}{10}

erhalten. Somit folgt wie behauptet :math:`P(D|C)\neq P(D|\bar{C})`, so
dass die Ereignisse :math:`C` und :math:`D` abhängig sind.

**Lösung zu Teil c**

Im Gegensatz zur Teilaufgabe b muss nun :math:`P(D|C)=P(D|\bar{C})`
gelten. Dabei muss weiterhin :math:`P(\bar{C})=\frac{1}{3}` sein. Wir
erhalten somit

.. math::

   P(\bar{C}\cap D) = P(D|\bar{C})\cdot P(\bar{C}) = P(D|C)\cdot P(\bar{C})
    = \frac{3}{5}\cdot\frac{1}{3}=\frac{1}{5}.

Wir benutzen nun Sage, um aus den gegebenen Wahrscheinlichkeiten mit Hilfe
der Bedingungen

.. math::

   P(C)+P(\bar{C}) = 1

   P(D|C)+P(\bar{D}|C) = 1

   P(D|\bar{C})+P(\bar{D}|\bar{C}) = 1

   P(D|C)\cdot P(C) = P(C\cap D)

   P(\bar{D}|C)\cdot P(C) = P(C\cap\bar{D})

   P(D|\bar{C})\cdot P(\bar{C}) = P(\bar{C}\cap D)

   P(\bar{D}|\bar{C})\cdot P(\bar{C}) = P(\bar{C}\cap\bar{D})

sämtliche Wahrscheinlichkeiten im Baumdiagramm zu berechnen. In der Liste
``wahrscheinlichkeiten`` können die Werte für :math:`P(D|C)`, :math:`P(C\cap D)`
und :math:`P(\bar{C}\cap D)` gesetzt werden.

.. sagecellserver::

    sage: var('p_c p_cb p_d_if_c p_db_if_c p_d_if_cb p_db_if_cb')
    sage: var('p_c_and_d p_c_and_db p_cb_and_d p_cb_and_db')
    sage: wahrscheinlichkeiten = [p_d_if_c==3/5,
    sage:                         p_c_and_d==2/5,
    sage:                         p_cb_and_d==1/10]
    sage: gleichungen = [p_c+p_cb==1,
    sage:                p_d_if_c+p_db_if_c==1,
    sage:                p_d_if_cb+p_db_if_cb==1,
    sage:                p_d_if_c*p_c==p_c_and_d,
    sage:                p_db_if_c*p_c==p_c_and_db,
    sage:                p_d_if_cb*p_cb==p_cb_and_d,
    sage:                p_db_if_cb*p_cb==p_cb_and_db]
    sage: loesung = solve(wahrscheinlichkeiten+gleichungen,
    ...                   p_c, p_cb,
    ...                   p_d_if_c, p_db_if_c, p_d_if_cb, p_db_if_cb,
    ...                   p_c_and_d, p_c_and_db, p_cb_and_d, p_cb_and_db,
    ...                   solution_dict=True)[0]
    sage: print 'P(C) =', loesung[p_c]
    sage: print '   P(D|C) =', loesung[p_d_if_c],
    sage: print '   P(D∩C) =', loesung[p_c_and_d]
    sage: print '   P(D̅|C) =', loesung[p_db_if_c],
    sage: print '   P(D̅∩C) =', loesung[p_c_and_db]
    sage: print 'P(C̅) =', loesung[p_cb]
    sage: print '   P(D|C̅) =', loesung[p_d_if_cb],
    sage: print '   P(D∩C̅) =', loesung[p_cb_and_d]
    sage: print '   P(D̅|C̅) =', loesung[p_db_if_cb],
    sage: print '   P(D̅∩C̅) =', loesung[p_cb_and_db]
