Przekształcenia liniowe
=======================

Definicja przekształcenia liniowego
-----------------------------------

Niech :math:`X` będzie przestrzenią liniową nad zbiorem :math:`K` i niech :math:`Y`
będzie przestrzenią liniową nad zbiorem :math:`K`.  Odwzorowanie 
:math:`S\colon X\to Y` nazywamy *odwzorowaniem liniowym,* jeżeli

.. math::

   S(\alpha\mathbf x+\beta\mathbf y)= \alpha S(\mathbf x)+\beta S(\mathbf y)

dla dowolnych :math:`\mathbf x,\mathbf y\in X` i
:math:`\alpha,\beta\in K`.  Jeżeli :math:`S` jest odwzorowaniem
liniowym, to często piszemy :math:`S\mathbf x` zamiast
:math:`S(\mathbf x)`.

Reprezentacja macierzowa przekształcenia liniowego
--------------------------------------------------

Przekształcenie liniowe można wyznaczyć wiedząc jak działa na
wektorach z dowolnej bazy. Ograniczymy się do odwzorowania liniowego
:math:`S\colon \mathbf R^n\to \mathbf R^m`.  Niech :math:`\mathbf v_1,
...,\mathbf v_n` będzie bazą w przestrzeni :math:`\mathbf R^n` i niech
:math:`\mathbf w_1, ..., \mathbf w_m` będzie bazą w przestrzeni :math:`\mathbf
R^m`.  Dla dowolnego :math:`1\le i\le n` wektor :math:`S\mathbf v_i` jest
elementem przestrzeni :math:`\mathbf R^m`, a więc istnieje ciąg liczb
rzeczywistych :math:`a_{1i},a_{2i},...,a_{mi}` taki, że

.. math:: 

   S\mathbf v_i=a_{1i}\mathbf w_1+ a_{2i}\mathbf w_2+...
   +a_{mi}\mathbf w_m.
 
Niech teraz :math:`\mathbf x` będzie dowolnym wektorem z
:math:`\mathbf R^n`.  Wtedy istnieją stałe :math:`x_1,...,x_n`, zwane
*współrzędnymi wektora* :math:`\mathbf x` w bazie :math:`\mathbf v_1,
..., \mathbf v_n` takie, że

.. math::

   \mathbf x= x_1\mathbf v_1+...+x_n\mathbf v_n.
  
Z  definicji odwzorowania liniowego 
otrzymujemy:

.. math::
 
   S\mathbf x=S (x_1\mathbf v_1+...+x_n\mathbf v_n),

a stąd 

.. math::

   S\mathbf x=x_1S \mathbf v_1+...+x_nS\mathbf v_n,
 
a więc wyznaczyliśmy wektor :math:`S\mathbf x` znając wartości
odwzorowania :math:`S` na wektorach bazowych.  Korzystając z
ostatniego wzoru oraz z przedstawienia wektorów :math:`S\mathbf v_i` w
bazie :math:`\mathbf w_1, ...,\mathbf w_m` możemy również wyznaczyć
przedstawienie wektora :math:`S\mathbf x` w bazie :math:`\mathbf w_1, ..., \mathbf
w_m`:

 .. math::
 
    S\mathbf x= x_1 \Big (\sum_{i=1}^m a_{i1}\mathbf w_i \Big) +...+ x_n \Big (\sum_{i=1}^m a_{in}\mathbf w_i \Big).
 
Zmieniając kolejność sumowania otrzymujemy

 .. math::
   :label: S

   S\mathbf x= \sum_{j=1}^n \sum_{i=1}^m a_{ij}x_j\mathbf w_i= \sum_{i=1}^m \Big( \sum_{j=1}^n a_{ij} x_j \Big)\mathbf w_i.

Ostatnie wyrażenie we wzorze :eq:`S` zawiera znaną nam postać wzoru na
mnożenie macierzy przez wektor: :math:` \sum_{j=1}^n a_{ij}
x_j`. Czyli mając współrzędne wektora w pewnej bazie, możemy wyrazić
efekt działania dowolnego przekształcenia liniowego na ten wektor jako
mnożenie przez pewną macierz. Co więcej, macierz ta składa się z
kolumn, które są współrzędnymi obrazów wektorów bazy pod działaniem
tegoż przekształcenia liniowego.



Jądro i obraz przekształcenia
=============================


Niech :math:`S\colon X\to Y` będzie przekształceniem liniowym. Wtedy zbiór

.. math::
 
   \mathrm{Ker\,} S= \{\mathbf x \in X\colon \,\,S(\mathbf x)=\mathbf 0\}
 

nazywamy **jądrem** odwzorowania :math:`S`, a zbiór

.. math::

   \mathrm{Im\,} S= \{S(\mathbf x)\colon \,\, \mathbf x\in X\}
 

nazywamy **obrazem** odwzorowania :math:`S`.  Jądro i obraz
przekształcenia liniowego są podprzestrzeniami liniowymi, odpowiednio,
przestrzeni :math:`X` i :math:`Y`.  Jeżeli :math:`\mathrm{Ker\,}
S=\{\mathbf 0\}`, to odwzorowanie :math:`S` jest różnowartościowe, a
więc z warunku :math:`S(\mathbf x)=S(\mathbf y)` wynika, że
:math:`\mathbf x=\mathbf y`. Wymiar jądra i obrazu odwzorowania
:math:`S` spełniają warunek

.. math::

   \mathrm{dim\,} \mathrm{Ker\,} S + \mathrm{dim\,} \mathrm{Im\,} S =n.

 

 
