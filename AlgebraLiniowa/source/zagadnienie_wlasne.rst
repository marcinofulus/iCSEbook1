Zagadnienie własne
==================

Wektory i wartości własne
-------------------------

Wartości własne i wektory własne odgrywają zasadniczą rolę w
rozwiązywaniu równań różniczkowych liniowych, w badaniu ich
stabilności, w wyznaczaniu stanów stacjonarnych w zagadnieniach
mechaniki kwantowej.  w równaniach cząstkowych oraz analizie drgań
własnych.

Dobrym punktem wyjścia do wprowadzenia pojęcia wartości własnej i
wektora własnego są układy równań różniczkowych liniowych

.. math:: \mathbf x'=A\mathbf x,

gdzie :math:`A` jest macierzą kwadratową o wymiarach :math:`n\times n`\ .
Szukamy rozwiązań postaci

.. math::

   \mathbf x(t)=\mathbf v e^{\lambda t}, \qquad 
   \lambda\in\mathbf C, 
   \,\,\, \mathbf v\in \mathbf C^n.

Ponieważ :math:`(e^{\lambda t})'=\lambda e^{\lambda t}`\ , więc

.. math::

   \mathbf x'(t)=
   \frac{d}{dt}\Big(\mathbf v e^{\lambda t}\Big)
   =\lambda
   \mathbf v e^{\lambda t}.

Podstawiając wyliczoną wartość :math:`\mathbf x'(t)` do naszego układu
otrzymujemy

.. math::

   \lambda\mathbf v e^{\lambda t}=
   A(\mathbf v e^{\lambda t})=
   e^{\lambda t} A\mathbf v.

Zatem funkcja :math:`\mathbf x(t)=\mathbf v e^{\lambda t}` jest
rozwiązaniem układu wtedy i tylko wtedy, gdy stała
:math:`\lambda \in\mathbf C` i wektor :math:`\mathbf v\in\mathbf C^n`
spełniają równanie

.. math:: A\mathbf v=\lambda \mathbf v.

Jeżeli liczba :math:`\lambda \in\mathbf C` i niezerowy wektor
:math:`\mathbf
v\in\mathbf C^n` spełniają powyższe równanie, to :math:`\lambda`
nazywamy *wartością własną*, a wektor :math:`\mathbf v` *wektorem
własnym* macierzy (odwzorowania) :math:`A`\ . Jeżeli :math:`\lambda`
jest wartością własną, a :math:`\mathbf v` wektorem własnym macierzy
:math:`A` odpowiadającym :math:`\lambda`\ , to spełniają one równanie

.. math:: (A-\lambda I)\mathbf v=\mathbf 0.

W istocie jest to jednorodny układ :math:`n` równań liniowych o
:math:`n` niewiadomych i ma on niezerowe rozwiązanie :math:`\mathbf v`
wtedy i tylko wtedy, gdy

.. math:: \det (A-\lambda I)=0.

Ostatnie równanie nazywamy *równaniem charakterystycznym*. Układ
złożony z wektorów własnych odpowiadających różnym wartościom własnym
jest liniowo niezależny. W szczególności, jeżeli macierz kwadratowa
wymiaru :math:`n\times n` ma :math:`n` różnych wartości własnych, to
odpowiadające im wektory własne tworzą bazę w :math:`\mathbf C^n`\ .
