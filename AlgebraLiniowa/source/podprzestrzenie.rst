Podprzestrzenie
---------------

.. admonition:: Podprzestrzeń

  Def.: Niepusty podzbiór W przestrzeni wektorowej :math:`V(K)`,
  będący przestrzenią wektorową ze względu na dodawanie wektorów w V i
  ich mnożenie przez skalary z K, nazywa się podprzestrzenią
  przestrzeni V.

*Oznaczenie.*  Fakt,  że  W  jest  podprzestrzenią  przestrzeni  V,  zapisujemy:   :math:`W < V`.

Tw.  (WKW dla podprzestrzeni):  Niech  :math:`W \subset \,V(K)`.  Wtedy

.. math:: 
  
  W < V{\rm{     }} \Leftrightarrow {\rm{     }}\mathop  \wedge \limits_{w_1 ,w_2  \in V} \mathop  \wedge \limits_{\alpha  \in K} \left[ {w_{{\kern 1pt} 1} ,w_{{\kern 1pt} 2}  \in W{\rm{   }} \Rightarrow {\rm{   }}\left( {{\kern 1pt} w_{{\kern 1pt} 1}  + w_{{\kern 1pt} 2}  \in \,W{\rm{  }} \wedge {\rm{  }}\alpha \,w_{{\kern 1pt} 1}  \in \,W{\kern 1pt} } \right)} \right]

(podzbiór W przestrzeni V jest podprzestrzenią, gdy jest domknięty ze
względu na dodawanie wektorów i mnożenie ich przez skalary)

Dowód.

:math:`\Rightarrow`:	Oczywisty.

:math:`\Leftarrow`:

Zakładamy, że 

.. math:: 

  \mathop \wedge \limits_{w_1 ,w_2  \in V} \mathop \wedge
  \limits_{\alpha  \in K} \left[ {w_{{\kern 1pt} 1}
  ,w_{{\kern 1pt} 2} \in W{\rm{ }} \Rightarrow {\rm{ }}\left(
  {{\kern 1pt} w_{{\kern 1pt} 1}  + w_{{\kern 1pt} 2} \in
  \,W{\rm{ }} \wedge {\rm{ }}\alpha \,w_{{\kern 1pt} 1} \in
  \,W{\kern 1pt} } \right)} \right].

(0) Trzeba udowodnić, że W jest przestrzenią wektorową nad ciałem K.
Założenie (0) stwierdza, że dodawanie wektorów i mnożenie ich przez
skalary z ciała K są działaniami w podzbiorze W.  Następnie należy
pokazać, że struktura :math:`(W, + \,)` jest podgrupą grupy
:math:`(V, + \,)`.  W tym celu korzystamy z WKW dla podgrupy: jeżeli
:math:`\left( {\,V, + \,} \right)` jest grupą oraz :math:`\emptyset \, \ne \,W \subset \,V`, to 

.. math:: 

 W < V{\rm{ }} \Leftrightarrow {\rm{ }}\mathop \wedge \limits_{w_1
 ,w_2 \in V} \left[ {w_{{\kern 1pt} 1} ,w_{{\kern 1pt} 2} \in W{\rm{
 }} \Rightarrow {\rm{ }}\left( {{\kern 1pt} w_{{\kern 1pt} 1} +
 w_{{\kern 1pt} 2} \in \,W{\rm{ }} \wedge {\rm{ (}} - w_{{\kern 1pt}
 1} ) \in \,W{\kern 1pt} } \right)} \right].

(1) Kładąc we wzorze (0) :math:`\alpha \, = \, - 1` i
wykorzystując równość :math:`( - 1)v\, = \, - \,v\,,{\rm{
}}v{\kern 1pt} \in {\kern 1pt} V`, przekonujemy się, że
warunek (1) jest spełniony, wobec czego :math:`(W, + \,)` jest grupą
(podgrupą grupy addytywnej przestrzeni V).  Postulaty PW3., PW4.  i
PW5., spełnione w całej przestrzeni V, zachodzą również w
podzbiorze W.  To kończy dowód.  

Każda przestrzeń wektorowa ma dwie podprzestrzenie niewłaściwe: jej
podprzestrzenią jest cała przestrzeń :math:`V`: :math:`V < V`, a
także jednoelementowy podzbiór składający się z wektora zerowego
:math:`\{ \,{\rm{\theta }}\,{\rm{\} }}\, < \,V`.  Pozostałe
podprzestrzenie nazywamy właściwymi.  

Przykłady (właściwych) podprzestrzeni.  

1.)  Niech V będzie przestrzenią wektorów geometrycznych zaczepionych
w początku układu współrzędnych O, :math:`V_1` - zbiorem wektorów
leżących na (dowolnej ustalonej) prostej przechodzącej przez O,
:math:`V_2` - zbiorem wektorów leżących na (dowolnej ustalonej)
płaszczyźnie, przechodzącej przez O.  Wtedy :math:`V_1 < V, V_2 < V`.  

2.)  Niech :math:`V\, = \,K^n  = \left\{
{(\alpha _{{\kern 1pt} 1} \,,\, \ldots ,\,\alpha _p ,\,\alpha
_{p\, + \,1} ,\, \ldots ,\,\alpha _{{\kern 1pt} n} )} \right\}`,
:math:`W = \left\{ {(\,\alpha _{{\kern 1pt} 1} \,,\,
\ldots ,\,\alpha _p ,\,0,\, \ldots ,\,0\,)} \right\}`,
:math:`1\, \le \,p\, \le \,n`.  Wówczas :math:`W < V`.







