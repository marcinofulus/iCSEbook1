Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe 1

  Im Rahmen der sogenannten JIM-Studie wurde in Deutschland im Jahr 2012
  der Umgang von Jugendlichen im Alter von 12 bis 19 Jahren mit Information
  und Medien untersucht. In der folgenden Tabelle werden ausgewählte Ergebnisse
  dieser Studie anhand einer repräsentativen Auswahl von 200 Jugendlichen 
  wiedergegeben, von denen 102 Jungen sind. Dabei werden für vier Geräteklassen
  jeweils die Anzahl der Mädchen und die Anzahl der Jungen unter
  den 200 ausgewählten Jugendlichen angegeben, die ein entsprechendes Gerät besitzen.
  
   +--------------------+---------+--------+
   |                    | Mädchen | Jungen |
   +--------------------+---------+--------+
   | Smartphone         |   42    |   52   |
   +--------------------+---------+--------+
   | Computer           |   77    |   87   |
   +--------------------+---------+--------+
   | Fernsehgerät       |   54    |   65   |
   +--------------------+---------+--------+
   | feste Spielkonsole |   37    |   62   |
   +--------------------+---------+--------+
  
  a) Bestimmen Sie die Wahrscheinlichkeit dafür, dass eine aus den
     200 Jugendlichen zufällig ausgewählte Person weiblich ist und kein 
     Fernsehgerät besitzt.

  b) Aus den 200 Jugendlichen wird eine Person zufällig ausgewählt, die ein
     Fernsehgerät besitzt. Ermitteln Sie die Wahrscheinlichkeit dafür, dass
     diese Person weiblich ist.

  c) Begründen Sie, dass die Ereignisse „Eine aus den 200 Jugendlichen zufällig
     ausgewählte Person besitzt ein Fernsehgerät.“ und „Eine aus den
     200 Jugendlichen zufällig ausgewählte Person ist ein Mädchen.“ abhängig sind.

  d) Der Studie zufolge besitzen 55% der Mädchen im Alter von 12 bis
     19 Jahren ein Fernsehgerät. Geben Sie den Wert der Summe

     .. math::

       \sum\limits_{i=0}^{12}B(25;0{,}55;i)

     in Prozent an. Begründen Sie, dass dieser Wert im Allgemeinen nicht die Wahrscheinlichkeit
     dafür angibt, dass von den 25 Schülerinnen einer Klasse der Jahrgangsstufe
     9 weniger als die Hälfte ein Fernsehgerät besitzt.


**Lösung zu Teil 1a**

Es gibt insgesamt 98 Mädchen in der Gruppe. 54 davon haben ein Fernsehgerät. Entsprechend haben
44 Mädchen kein Fernsehgerät. Die Wahrscheinlichkeit ein Mädchen ohne Fernsehgerät zu treffen 
liegt demnach bei

.. math::

  \frac{44}{200}=22\%.

Wir überprüfen das Ergebnis, indem wir mit den gegebenen Daten eine Liste von 
200 Jugendlichen erstellen, die entweder Mädchen mit oder ohne Fernsehgerät oder Jungen
mit oder ohne Fernsehgerät sind. Anschließend simulieren wir das zufällige Ziehen aus
dieser Liste und geben zunächst alle gefundenen Häufigkeiten aus.

.. sagecellserver::

  sage: import random
  sage: maedchen = 98
  sage: jungen = 102
  sage: maedchen_mit = 54
  sage: jungen_mit = 65
  sage: jugendliche = (["Mädchen mit Fernseher"]*maedchen_mit
  ...                  + ["Mädchen ohne Fernseher"]*(maedchen-maedchen_mit)
  ...                  + ["Jungen mit Fernseher"]*jungen_mit
  ...                  + ["Jungen ohne Fernseher"]*(jungen-jungen_mit)
  ...                  )
  sage: iterationen = 60000
  sage: haeufigkeit = {"Mädchen mit Fernseher": 0,
  ...                  "Mädchen ohne Fernseher": 0,
  ...                  "Jungen mit Fernseher": 0,
  ...                  "Jungen ohne Fernseher": 0}
  sage: for _ in range(iterationen):
  ...       key = random.choice(jugendliche)
  ...       haeufigkeit[key] = haeufigkeit[key]+1
  sage: table(list(haeufigkeit.items()))

.. end of output

Damit lässt sich nun die Wahrscheinlichkeit bestimmen, ein Mädchen ohne Fernseher zu finden.

.. sagecellserver::

  sage: print("Wahrscheinlichkeit für ein Mädchen ohne Fernseher: {:4.1%}".format(
  ...         (float(haeufigkeit["Mädchen ohne Fernseher"])/iterationen)))

.. end of output

**Lösung zu Teil 1b**

Aus der Angabe wissen wir, dass die zufällig gewählte Person ein Fernsehgerät hat, also entweder
einer der 65 Jungen mit Fernsehgerät oder eines der 54 Mädchen mit Fernsehgerät ist. Die Gesamtanzahl
der Personen mit Fernsehgerät beträgt also 119. Die Wahrscheinlichkeit, dass diese Person ein
Mädchen ist, ergibt sich als

.. math::

  \frac{54}{119}\approx 45{,}4\%

Wir benutzen unsere Simulation aus Teilaufgabe a, um das Ergebnis empirisch zu überprüfen.

.. sagecellserver::

  sage: mit_fernseher = haeufigkeit["Mädchen mit Fernseher"]+haeufigkeit["Jungen mit Fernseher"]
  sage: print("Wahrscheinlichkeit, dass eine Person mit Fernseher weiblich ist: {:4.1%}".format(
  ...         (float(haeufigkeit["Mädchen mit Fernseher"])/mit_fernseher)))

.. end of output

**Lösung zu Teil 1c**

Die beiden Ereignisse :math:`A` „Eine aus den 200 Jugendlichen zufällig
ausgewählte Person besitzt ein Fernsehgerät.“ und :math:`B` „Eine aus den 200
Jugendlichen zufällig ausgewählte Person ist ein Mädchen.“ wären unabhängig,
wenn gelten würde:
 
.. math::

  P(B|A) = P(B|\bar{A}) = P(B)

In Teilaufgabe b) haben wir bereits die Wahrscheinlichkeit berechnet, dass eine
Person, die ein Fernsehgerät besitzt, ein Mädchen ist. Dieser Wert entspricht 
:math:`P(B|A)`. Wir müssen nun also nur noch die Wahrscheinlichkeit berechnen,
dass eine zufällig gewählte Person ein Mädchen ist:

.. math::

  P(B)=\frac{98}{200} = 49\%.

Es gilt

.. math::

    P(B|A) = \frac{54}{119} \neq \frac{49}{100} = P(B)

und somit sind die Ereignisse :math:`A` und :math:`B` abhängig.

**Lösung zu Teil 1d**

Zur Berechnung der Summe verwenden wir Sage und erhalten in etwa den Wert 30,6%.

.. sagecellserver::

  sage: def bernoulli(N, p, n):
  ...       return p^n*(1-p)^(N-n)*binomial(N, n)

  sage: p = 0.55
  sage: ntot = 25
  sage: nmax = 12
  sage: summe = 0
  sage: for i in range(nmax+1):
  ...       summe = summe+bernoulli(ntot, p, i)
  sage: print("Der Wert der Summe ist {:4.1%}".format(float(summe)))

.. end of output

Alternativ kann man das Ergebnis direkt folgendermaßen erhalten:

.. sagecellserver::

  sage: from scipy.special import bdtr
  sage: print("Der Wert der Summe ist {:4.1%}".format(bdtr(nmax, ntot, p)))

Die Studie wurde bei Jugendlichen in der Altersklasse 12 bis 19 erhoben. Allerdings ist nicht
bekannt, ob diese Ergebnisse auch für die Alterklasse der 9. Klasse (etwa 14-15 Jahre) repräsentativ
sind. Daher kann der Wert der Summe nicht verwendet werden, um die Wahrscheinlichkeit anzugeben,
dass in einer 9. Klasse von 25 Schülerinnen weniger als die Hälfte einen Fernseher haben.

Wenn wir allerdings davon ausgehen, dass wirklich 55% der Mädchen in der 9.
Jahrgangsstufe ein Fernsehgerät besitzen, können wir mit Sage empirisch
überprüfen, dass die Summe die Wahrscheinlichkeit wiedergibt, dass von 25
Mädchen weniger als die Hälfte ein Fernsehgerät hat.

.. sagecellserver::

  sage: import numpy as np
  sage: schwelle = 12
  sage: p = 0.55
  sage: haeufigkeit = 0
  sage: iterationen = 50000
  sage: for _ in range(iterationen):
  ...       maedchen_mit = sum(np.random.random(25) < p)
  ...       if maedchen_mit <= schwelle:
  ...           haeufigkeit = haeufigkeit+1
  sage: print("Wahrscheinlichkeit, dass weniger als die Hälfte der Mädchen "
  ...         "einen Fernseher besitzt: {:4.1%}".format(
  ...         float(haeufigkeit)/iterationen))

.. end of output


.. admonition:: Aufgabe 2

  Der JIM-Studie zufolge besitzen deutlich weniger als 90% der Jugendlichen
  einen Computer. Daher wird an den Stadtrat einer Kleinstadt der Wunsch
  herangetragen, im örtlichen Jugendzentrum einen Arbeitsraum mit Computern
  einzurichten. Der Stadtrat möchte die dafür erforderlichen finanziellen
  Mittel nur dann bewilligen, wenn weniger als 90% der Jugendlichen der
  Kleinstadt einen Computer besitzen.

  a) Die Entscheidung über die Bewilligung der finanziellen Mittel soll 
     mithilfe einer Befragung von 100 zufällig ausgewählten 12- bis 19-jährigen
     Jugendlichen der Kleinstadt getroffen werden. Die Wahrscheinlichkeit 
     dafür, dass die finanziellen Mittel irrtümlich bewilligt werden, soll 
     höchstens 5% betragen. Bestimmen Sie die zugehörige Entscheidungsregel, 
     bei der zugleich die Wahrscheinlichkeit dafür, dass die finanziellen 
     Mittel irrtümlich nicht bewilligt werden, möglichst klein ist.

  b) Bestimmen Sie die Wahrscheinlichkeit dafür, dass unter den 100 befragten
     Jugendlichen genau 85 einen Computer besitzen, wenn der Anteil derjenigen
     Jugendlichen, die einen Computer besitzen, unter den Jugendlichen der 
     Kleinstadt ebenso groß ist wie unter den in der Tabelle erfassten
     Jugendlichen.

**Lösung zu Teil 2a**

Bei dem vorliegenden Hypothesentest ist zu überprüfen, wie viele der
100 befragten Jugendlichen einen Computer haben dürfen, damit die
Wahrscheinlichkeit, dass mehr als 90% der Jugendlichen einen Computer
haben, höchstens bei 5% liegt.

Hierfür gehen wir davon aus, dass die Zufallsgröße :math:`X`, wie viele 
Jugendliche einen Computer haben, binomial verteilt ist. Wir gehen von 
dem Schwellwert aus, dass 90% der Jugendlichen einen Computer haben, und 
überprüfen, welcher Grenzwert :math:`C` bei einer Stichprobengröße von 100 nur
zu 5% unterschritten wird:

.. math::

  \sum\limits_{i=0}^C B(100; 0.9; i)\leq 5\%

Wir berechnen die Summe mit Hilfe von Sage:

.. sagecellserver::

  sage: p = 0.9
  sage: jugendliche = 100
  sage: C = 0
  sage: summe = bernoulli(jugendliche, p, C)
  sage: while summe < 0.05:
  ...       C = C+1
  ...       summe = summe+bernoulli(jugendliche, p, C)
  ...   C = C-1
  sage: print("Der Arbeitsraum sollte genehmigt werden, wenn {} "
  ...         "oder weniger Jugendliche einen Computer haben.").format(C)

.. end of output

Wir können den Grenzwert :math:`C=84` durch eine Simulation überprüfen.

.. sagecellserver::

  sage: haeufigkeit_C = 0
  sage: haeufigkeit_Cp1 = 0
  sage: iterationen = 50000
  sage: C = 84
  sage: for _ in range(iterationen):
  ...       jugendliche_mit = sum(np.random.random(100) < p)
  ...       if jugendliche_mit <= C:
  ...           haeufigkeit_C = haeufigkeit_C+1
  ...       if jugendliche_mit <= C + 1:
  ...           haeufigkeit_Cp1 = haeufigkeit_Cp1+1
  sage: print("Empirische Wahrscheinlichkeit, dass bei 90% Computerwahrscheinlichkeit "
  ...         "von 100 Jugendlichen {} oder weniger einen Computer haben: {:3.1%}".format(
  ...         C, float(haeufigkeit_C)/iterationen))
  sage: print("Empirische Wahrscheinlichkeit, dass bei 90% Computerwahrscheinlichkeit "
              "von 100 Jugendlichen {} oder weniger einen Computer haben: {:3.1%}".format(
              C+1, float(haeufigkeit_Cp1)/iterationen))

.. end of output

**Lösung zu Teil 2b**

Der Anteil der in der Tabelle erfassten Jugendlichen mit Computer beträgt

.. math::

  \frac{77+87}{200} = 82\%.

Die Wahrscheinlichkeit, dass von 100 Jugendlichen, die jeweils zu 82% einen
Computer besitzen, insgesamt genau 85 einen Computer besitzen, liegt bei

.. math::

  P(X=85) = B(100;0.82;85)

Mit Sage finden wir :math:`P(X=85) \approx8{,}1\%`.

.. sagecellserver::

  sage: print("Wahrscheinlichkeit für genau 85 Jugendliche mit Computer: {:3.1%}".format(
  ...          float(bernoulli(100, 0.82, 85))))

.. end of output


.. admonition:: Aufgabe 3

  Es ist zu vermuten, dass unter den Jugendlichen, die ein Smartphone besitzen,
  der Anteil derjenigen, die eine feste Spielkonsole besitzen, größer ist als 
  unter den Jugendlichen, die kein Smartphone besitzen. Bestimmen Sie für
  die in der Tabelle erfassten 200 Jugendlichen, wie groß die Anzahl derjenigen
  Personen, die sowohl ein Smartphone als auch eine feste Spielkonsole
  besitzen, mindestens sein muss, damit die Vermutung für die in der Tabelle
  erfassten Jugendlichen zutrifft.

**Lösung zu Teil 3**

In dieser Aufgabe geht es um die Abhängigkeit von Ereignissen. Wir benennen im
Folgenden die Ereignisse :math:`A` „Eine aus den 200 Jugendlichen zufällig 
ausgewählte Person besitzt eine feste Spielekonsole.“ und :math:`B` „Eine aus
den 200 Jugendlichen zufällig ausgewählte Person besitzt ein Smartphone.“

Wir fordern, dass die beiden Ereignisse statistisch abhängig sind, und zwar so,
dass

.. math::

  P(A|B) > P(A|\bar{B})

erfüllt ist. Aus der Tabelle lassen sich :math:`P(A) = (37+62)/200 = 49{,}5\%` und
:math:`P(B) = (42+52)/200 = 47\%` ermitteln.

Mit Hilfe der Zusammenhänge

.. math::

  P(A|B) = \frac{P(A\cap B)}{P(B)}

und

.. math::

  P(A\cap B) + P(A \cap \bar{B}) = P(A)

lässt sich obige Forderung folgendermaßen umformen:

.. math::

  \frac{P(A\cap B)}{P(B)}& > &\frac{P(A)-P(A\cap B)}{P(\bar{B})}\\
  P(A\cap B)P(\bar{B})& > &P(A)P(B)-P(A\cap B)P(B)\\
  P(A\cap B)[P(\bar{B})+P(B)]& > &P(A)P(B)\\
  P(A\cap B)& > &P(A)P(B)\\
  P(A\cap B)& > &0{,}495\cdot0{,}47

Von den 200 Jugendlichen müssen also mindestens 23,3% ein Smartphone und eine
feste Spielekonsole besitzen, damit die These der Aufgabenstellung stimmt.
Dies entspricht 47 Jugendlichen.

Den Grenzwert von :math:`P(A\cap B)`, ab dem :math:`A` und :math:`B` in der
gewünschten Weise voneinander abhängig sind, lässt sich auch mit Sage berechnen,
indem man das lineare Gleichungssystem löst:

.. sagecellserver::

  sage: var('p_aub p_aunb p_b p_nb p_a')
  sage: wahrscheinlichkeiten = [p_a == 0.47, 
  ...                           p_b == 0.495]
  sage: gleichungen = [p_b + p_nb == 1,
  ...                  p_aub + p_aunb == p_a,
  ...                  p_aub/p_b == p_aunb/p_nb]
  sage: loesung = solve(gleichungen + wahrscheinlichkeiten, p_aub, p_aunb, p_b, p_nb, p_a,
  ...                   solution_dict=True)[0]
  sage: print("Statistische Unabhängigkeit liegt vor für P(A∩B) = {:4.1%}".format(
  ...         float(loesung[p_aub])))

.. end of output
