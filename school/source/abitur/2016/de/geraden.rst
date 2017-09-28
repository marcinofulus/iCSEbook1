Bayerisches Abitur in Mathematik 2016
-------------------------------------

.. admonition:: Aufgabe

  Gegeben sind die Punkte :math:`A(-2|1|4)` und :math:`B(-4|0|6)`.
  
  a) Bestimmen Sie die Koordinaten des Punkts :math:`C` so, dass gilt: :math:`\vec{CA} = 2\cdot \vec{AB}`. 
  
  b) Durch die Punkte :math:`A` und :math:`B` verläuft die Gerade :math:`g`.
     Betrachtet werden Geraden, für welche die Bedingungen I und II gelten:
     
     I. Jede dieser Geraden schneidet die Gerade :math:`g` orthogonal.
     
     II. Der Abstand jeder dieser Geraden vom Punkt :math:`A` beträgt :math:`3`.
     
     Ermitteln Sie eine Gleichung für eine dieser Geraden. 
  

**Lösung zu Teil a**

Wir können zunächst :math:`\vec{CA}=\vec A - \vec C` und :math:`\vec{AB}=\vec B - \vec A`
in die Gleichung einsetzen,

.. math::

  \vec A - \vec C = 2 \cdot \left(\vec B - \vec A\right)\,,

und anschließend nach :math:`\vec C` auflösen:

.. math::

  \vec C = \vec A - 2 \cdot \left(\vec B - \vec A\right) = 3\cdot\vec A - 2\cdot\vec B = 3 \cdot\begin{pmatrix} -2\\1\\4\end{pmatrix} - 2\cdot\begin{pmatrix} -4\\0\\6\end{pmatrix} = \begin{pmatrix} 2\\3\\0\end{pmatrix} 

Diese Rechnung können wir mit Sage schnell überprüfen:

.. sagecellserver::

  sage: A = vector([-2, 1, 4])
  sage: B = vector([-4, 0, 6])
  sage: C = A - 2*(B-A)
  sage: print C

Die Koordinaten von :math:`C` sind also :math:`(2|3|0)`.

**Lösung zu Teil b**

Wir beobachten als Erstes, dass der Abstand von :math:`B` zu :math:`A` gerade :math:`3` ist, denn
die Strecke :math:`[AB]` hat die Länge

.. math::
  |\vec{AB}| = \left|\begin{pmatrix}-2\\-1\\2\end{pmatrix}\right| = \sqrt{(-2)^2+(-1)^2+2^2} = 3\,.
    
Sage kann das auch bestätigen:

.. sagecellserver::

  sage: A = vector([-2, 1, 4])
  sage: B = vector([-4, 0, 6])
  sage: BA = B-A
  sage: print norm(BA)

Als Aufpunkt wählen wir deswegen :math:`B`.
Es muss dann nur noch ein Richtungsvektor :math:`\vec G` der Geraden bestimmt werden.
Dieser muss senkrecht zu :math:`\vec{AB}` sein, also die Bedingung

.. math::

  \vec{AB}\cdot\vec G = 0

erfüllen. Man kann durch Ausprobieren eine Lösung finden, wie zum Beispiel

.. math::

  \vec G = \begin{pmatrix}1\\0\\1\end{pmatrix}\,.

Die Gleichung der Geraden :math:`g` ist dann:

.. math::

  g: \vec X = \begin{pmatrix}-4\\0\\6\end{pmatrix} + \lambda \begin{pmatrix}1\\0\\1\end{pmatrix},\quad\lambda\in\mathbb{R}\,.

Mit Sage können wir den Richtungsvektor bestimmen, wenn wir zum Beispiel
die :math:`x_1`- und :math:`x_2`-Koordinate beliebig vorgeben. Zur Überprüfung
des obigen Ergebnisses setzten wir diese jeweils gleich 1 beziehungsweise 0:

.. sagecellserver::

  sage: var('G_3')
  sage: G_1 = 1
  sage: G_2 = 0
  sage: G = vector([G_1, G_2, G_3])
  sage: loesung = solve(BA*G == 0, G_3, solution_dict=True)[0]
  sage: print "Richtungsvektor G:", G.substitute(loesung)
