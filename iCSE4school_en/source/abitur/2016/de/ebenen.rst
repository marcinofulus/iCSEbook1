Bayerisches Abitur in Mathematik 2016
-------------------------------------

.. admonition:: Aufgabe
  
  Gegeben sind die Ebene :math:`E: 2x_1+x_2+2x_3=6` sowie die Punkte :math:`P(1|0|2)`
  und :math:`Q(5|2|6)`.
  
  a) Zeigen Sie, dass die Gerade durch die Punkte :math:`P` und :math:`Q` senkrecht 
     zur Ebene :math:`E` verläuft.
  
  b) Die Punkte :math:`P` und :math:`Q` liegen symmetrisch zu einer Ebene :math:`F`.
     Ermitteln Sie eine Gleichung von :math:`F`.
  

**Lösung zu Teil a**

Der Normalenvektor :math:`\vec n` der Ebene :math:`E` kann aus der Ebenengleichung
abgelesen werden. Es gilt:

.. math::
  \vec n = \begin{pmatrix}2\\1\\2\end{pmatrix}

Für die Gerade :math:`PQ` wählen wir den Richtungsvektor

.. math::
  \vec{PQ} = \vec Q - \vec P = \begin{pmatrix}5\\2\\6\end{pmatrix}-\begin{pmatrix}1\\0\\2\end{pmatrix}=\begin{pmatrix}4\\2\\4\end{pmatrix}\,.

Man kann dann einfach überprüfen, dass :math:`\vec{PQ}=2\vec n` gilt. Somit sind
die Vektoren :math:`\vec{PQ}` und :math:`\vec n` kollinear, was des Weiteren bedeutet,
dass die Gerade :math:`PQ` senkrecht zur Ebene :math:`E` verläuft.

Mit Sage können wir dies graphisch überprüfen:

.. sagecellserver::
  
  sage: def E(x1, x2, x3):
  sage:     return 2*x1 + x2 + 2*x3 - 6

  sage: P = vector([1, 0, 2])
  sage: Q = vector([5, 2, 6])
  
  sage: p1 = implicit_plot3d(E, (-1, 7), (-4, 4), (-1, 7), color="blue")
  sage: p2 = line([P, Q], color="red", thickness=2)
  sage: labeloffset = vector([0, 0, 0.3])
  sage: p3 = point(P, size=10)+text3d("P", P+labeloffset, color="black", horizontal_alignment="right")
  sage: p4 = point(Q, size=10)+text3d("Q", P+labeloffset, color="black", horizontal_alignment="right")
  
  sage: show(p1+p2+p3+p4, aspect_ratio=1)

**Lösung zu Teil b**

Da die Punkte :math:`P` und :math:`Q` symmetrisch zur Ebene :math:`F` liegen sollen,
verläuft die Gerade :math:`PQ` senkrecht zu dieser Ebene. Des Weiteren haben
wir in Aufgabenteil a gesehen, dass der Vektor :math:`\vec{PQ}` senkrecht zur Ebene :math:`E`
steht. Somit liegen :math:`E` und :math:`F` parallel und haben den gleichen
Normalenvektor :math:`\vec n`.

Als Aufpunkt :math:`A` von :math:`F` wählen wir den Mittelpunkt der Strecke :math:`[PQ]`.
Es gilt also:

.. math::

  \vec A = \frac{1}{2}\cdot\left(\vec P + \vec Q\right) = \frac{1}{2}\cdot\left(\begin{pmatrix}1\\0\\2\end{pmatrix}+\begin{pmatrix}5\\2\\6\end{pmatrix}\right) = \begin{pmatrix}3\\1\\4\end{pmatrix}

Die Normalengleichung für :math:`F`

.. math::
  
  \left(\vec X - \vec A\right)\cdot \vec n = 0

ergibt sich folglich zu

.. math::
  
  2 x_1 + x_2 + 2 x_3 - 15 = 0\,.

Mit Sage können wir dies wieder anhand einer 3D-Grafik überprüfen:

.. sagecellserver::

  sage: def F(x1, x2, x3):
  sage:     return 2*x1 + x2 + 2*x3 - 15

  sage: p5 = implicit_plot3d(F, (-1, 7), (-4, 4), (-1, 7), color="green")
  sage: show(p1+p2+p3+p4+p5, aspect_ratio=1) 
