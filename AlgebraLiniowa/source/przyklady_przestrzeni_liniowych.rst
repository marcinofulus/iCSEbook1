Przykłady przestrzeni liniowych 
================================


Przykład 1: przestrzeń :math:`{\mathbf{R}}^{n}`
-----------------------------------------------

Przestrzeń :math:`{\mathbf{R}}^{n}` nad zbiorem :math:`\mathbf{R}` z
działaniami

.. math:: 

({x}_{1},...,{x}_{n}) + ({y}_{1},...,{y}_{n}) &=& ({x}_{1} +
           {y}_{1},...,{x}_{n} + {y}_{n}),\\ ({x}_{1},...,{x}_{n}) &=&
           ({x}_{1},...,{x}_{n})

i wektorem zerowym :math:`\mathbf{0} = (0,...,0)` jest przestrzenią
liniową. Na przykład płaszczyznę można utożsamiać z przestrzenią
:math:`{\mathbf{R}}^{2}`, zaś to co w języku potocznym nazywamy
przestrzenią można utożsamić z :math:`{\mathbf{R}}^{3}`. Para wektorów
:math:`{\mathbf{e}}_{1} = (1,0)` i :math:`{\mathbf{e}}_{2} = (0,1)` w
:math:`{\mathbf{R}}^{2}` jest liniowo niezależna. Dowolny wektor
:math:`\mathbf{x} = ({x}_{1},{x}_{2})` można przedstawić w postaci

.. math::

   \mathbf{x} = {x}_{1}{\mathbf{e}}_{1} + {x}_{2}{\mathbf{e}}_{2},

   
a więc zbiór :math:`\{{\mathbf{e}}_{1},{\mathbf{e}}_{2}\}` jest
bazą. Ogólnie, zbiór wektorów postaci:

   .. math::

    {\mathbf{e}}_{1} &=& (1,0,...,0),\\
    {\mathbf{e}}_{2} &=& (0,1,...,0),\\
    &...&\\
     {\mathbf{e}}_{n} &=& (0,0,...,1)

.. sidebar:: Grupa

             Grupa jest OK :math:`{\mathbf{R}}^{n}`

OK

|more| Read more about :ref:`the toctree directive <toctree-directive>`.

jest bazą w przestrzeni :math:`{\mathbf{R}}^{n}` . Taką bazę nazywamy
 bazą kanoniczną w :math:`{\mathbf{R}}^{n}`. Nie każda para wektoróww
 przestrzeni :math:`{\mathbf{R}}^{2}` jest bazą. Na przykład wektory
 :math:`(1,0)` i :math:`(2,0)` są liniowo zależne i nie tworzą bazy.


.. admonition:: How do I generate PDF documents?

   ``make latexpdf`` runs the :mod:`LaTeX builder
   <sphinx.builders.latex.LaTeXBuilder>` and readily invokes the pdfTeX
   toolchain for you.


Przykład 2: przestrzeń :math:`{\mathbf{C}}^{n}`
-----------------------------------------------


Przestrzeń :math:`{\mathbf{C}}^{n}` nad zbiorem :math:`\mathbf{C}` lub
nad zbiorem :math:`\mathbf{R}` z wprowadzonymi poprzednio działaniami
dodawania i mnożenia przez skalar i wektorem zerowym :math:`\mathbf{0}
= (0,...,0)` jest przestrzenią liniową. W przypadku, gdy przestrzeń
:math:`{\mathbf{C}}^{n}` jest określona nad zbiorem
:math:`\mathbf{C}`, to podobnie jak poprzednio zbiór
:math:`{\mathbf{e}}_{1},{\mathbf{e}}_{2},...,{\mathbf{e}}_{n}`
jest bazą w tej przestrzeni, a więc jest to
przestrzeń:math:`n`-wymiarowa. Jeżeliprzestrzeń
:math:`{\mathbf{C}}^{n}` jestokreślona nad zbiorem
:math:`\mathbf{R}`,to zbiór

                      \{{\mathbf{e}}_{1},{\mathbf{e}}_{2},...,{\mathbf{e}}_{n},i{\mathbf{e}}_{1},i{\mathbf{e}}_{2},...,i{\mathbf{e}}_{n}\}
jest bazą w tej przestrzeni, a więc jest to przestrzeń:math:`2n`-wymiarowa.

3. Niech :math:`E` będzie dowolnym zbiorem i niech :math:`X`będzie przestrzenią funkcji z :math:`E`w :math:`\mathbf{R}`. Wtedyprzestrzeń :math:`X`z działaniami dodawania funkcji i mnożenia funkcji przez liczbę rzeczywistą oraz zfunkcją :math:`f  0`jako elementem zerowym jest przestrzenią liniową. Zauważmy, że jeżeli:math:`E = \{1,2,...,n\}` , to:math:`X ={ \mathbf{R}}^{n}`, bo funkcję                                                                                                                                          :math:`f:E \mathbf{R}` możemy utożsamićz ciągiem :math:`(f(1),f(2),...,f(n))`. Podobnie,jeżeli :math:`E` jest zbiorem liczbnaturalnych, to przestrzeń :math:`X`jest przestrzenią ciągów nieskończonych. W przyszłości poznamy inneprzestrzenie funkcji tworzące przestrzenie liniowe. Poza przypadkiem, gdy:math:`E` jestzbiorem skończonym, nie można efektywnie wypisać bazy w przestrzeni:math:`X`.
