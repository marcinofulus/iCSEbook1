Przestrzenie  wektorowe.
------------------------

Def.: Przestrzeń wektorowa nad ciałem :math:`K` jest strukturą
algebraiczną:

.. math::

 \left( {\,V,\; \oplus \;;\;\,K,\; + \;,\;{\kern 1pt} \cdot \;\,;\;\;\boxdot} \right),

gdzie  odwzorowania   

.. math:: 
   \oplus \;:\;\,V\; \times \;\;V\; \to \;\,V  \\
   + \;,\;\; \cdot \;\;:\;\;K\; \times \;K\;{\kern 1pt}  \to {\kern 1pt} \;K \\
   \boxdot \;:\;\,K\; \times \;\,V\; \to \;\,V 

są działaniami spełniającymi następujące warunki:

.. admonition:: Przestrzeń wektorowa (liniowa):
 
 PW1. :math:`\left( {\,V,\; \oplus {\kern 1pt} } \right)` jest grupą
 abelową (jest to grupa addytywna przestrzeni wektorowej);

 PW2. :math:`\left( {K,\;\, + \,,\,\; \cdot \;} \right)`  jest  ciałem;

 PW3. :math:`\alpha \boxdot(v\oplus w)\;\; = \;\;(\alpha  \boxdot v) \oplus (\alpha\boxdot w)`, 
  
   :math:`(\alpha +\beta )\boxdot v\;\; = \;\;(\alpha \boxdot v)\;\, \oplus \;\,(\beta \boxdot v)`; 
   (rozdzielność mnożenia względem dodawania) 

 PW4. :math:`\alpha \boxdot (\beta \boxdot v)\;\; = \;\;(\alpha  \cdot \beta )\boxdot v` (łączność) 
 
 PW5. :math:`1\boxdot v\;\; = \;\;v`.  


W powyższych wyrażeniach są :math:`\alpha` i :math:`\beta` dowolnymi
elementami ciała K (1 jest jednością tego ciała), :math:`v` i
:math:`w` są dowolnymi elementami zbioru V.

Elementy zbioru V (oznaczane literami łacińskimi ) nazywamy wektorami,
a elementy zbioru K (oznaczane literami greckimi ) – skalarami.  

W praktyce sam zbiór wektorów V nazywany jest przestrzenią wektorową.
W tym sensie przestrzeń wektorowa jest zbiorem wektorów, które można
dodawać (i które tworzą grupę abelową ze względu na dodawanie) oraz
mnożyć przez skalary z ciała K (przy czym działanie to jest rozdzielne
zarówno względem dodawania wektorów, jak i dodawania skalarów oraz
spełnia warunki PW4. i PW5.).

Warto zauważyć, że dodawanie :math:`\oplus` wektorów oraz dodawanie
:math:`+` i mnożenie :math:`\cdot` skalarów są działaniami
wewnętrznymi odpowiednio w zbiorach V i K, podczas gdy mnożenie
:math:`\boxdot` wektorów przez skalary jest działaniem zewnętrznym w
zbiorze V.  

Element neutralny grupy addytywnej ciała K – zero ciała K – oznaczamy
symbolem 0, a element neutralny grupy addytywnej przestrzeni V –
wektor zerowy – oznaczać będziemy :math:`{\rm{\theta }}`.  Dalsze
oznaczenia (skrót p.w.  oznacza przestrzeń wektorową): :math:`V(K)` –
p.w.  nad ciałem K.  :math:`V(R)` – p.w.  nad ciałem liczb
rzeczywistych, krótko: przestrzeń rzeczywista, :math:`V(C)` – p.w.
nad ciałem liczb zespolonych, krótko: przestrzeń zespolona.  W dalszym
ciągu często będą stosowane uproszczone oznaczenia działań oparte na
umowie, że mnożenie wektorów przez skalary ma wyższy priorytet od ich
dodawania:

.. math:: 

   (\,\alpha \;\;v\,)\;\, \oplus \;\,w\;\;\, \to \;\;\,\alpha\,v\;{\kern 1pt} + {\kern 1pt} \;w.


