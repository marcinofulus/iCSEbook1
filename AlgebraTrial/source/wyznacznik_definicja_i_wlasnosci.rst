
Definicja i własności wyznacznika
---------------------------------

Przyjmiemy aksjomatyczną definicję wyznacznika, która z góry określa jego podstawowe własności.
Posłużymy się przy tym kolumnowym zapisem kwadratowej macierzy :math:`\,\boldsymbol{A}\,`
stopnia :math:`\,n:`

.. math::
   
   M_n(K)\ni\boldsymbol{A}\ =\ [a_{ij}]_{n\times n}\ =\ 
   \left[\,\boldsymbol{A}_1\,|\;\boldsymbol{A}_2\,|\,\dots\,|\,\boldsymbol{A}_n\,\right]\,,\quad
   \text{gdzie}\quad
   \boldsymbol{A}_j\ =\ 
   \left[\begin{array}{c}
         a_{1j} \\ a_{2j} \\ \dots \\ a_{nj}
         \end{array}
   \right]\,,\quad j=1,2,\ldots,n.

.. admonition:: Definicja. :math:`\\`
   
   Wyznacznik stopnia :math:`\ n\ ` jest funkcją :math:`\ \det : M_n(K)\to K\ `
   spełniającą  następujące warunki :math:`\,` 
   (:math:`j\;-` dowolny numer kolumny, :math:`\ \lambda\in K`) : :math:`\\`

   1. :math:`\det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}_j+\boldsymbol{A}'_j\,|\,\dots\,|\,
      \boldsymbol{A}_n\,]\ \ =\ \ \\
      \det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}_j\,|\,\dots\,|\,\boldsymbol{A}_n\,]\ +\  
      \det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}'_j\,|\,\dots\,|\,
      \boldsymbol{A}_n\,]\,;\\`
      
   2. :math:`\det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,
      \lambda\,\boldsymbol{A}_j\,|\,\dots\,|\,\boldsymbol{A}_n\,]\ \ =\ \ 
      \lambda\,\cdot\,\det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,
      \boldsymbol{A}_j\,|\,\dots\,|\,\boldsymbol{A}_n\,]\,;\\`

   3. :math:`\boldsymbol{A}_j\ =\ \boldsymbol{A}_{j+1}
      \quad\Rightarrow\quad
      \det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}_j\,|\,\boldsymbol{A}_{j+1}\,|\,
      \dots\,|\,\boldsymbol{A}_n\,]\ =\ 0\,;\\`

   4. :math:`\det\ \boldsymbol{I}_n\ =\ 1\,,\qquad
      \boldsymbol{I}_n\ -\ \text{macierz jednostkowa.}`

Oznaczenia:

.. math::
   
   \det\boldsymbol{A}\ =\ 
   \det\ [a_{ij}]_{n\times n}\ =\ 
   \det
   \left[\begin{array}{cccc}
         a_{11} & a_{12} & \dots & a_{1n} \\
         a_{21} & a_{22} & \dots & a_{2n} \\
          \dots &  \dots & \dots &  \dots \\
         a_{n1} & a_{n2} & \dots & a_{nn}
         \end{array}
   \right]\ \ =\ \ 
   \left|\begin{array}{cccc}
         a_{11} & a_{12} & \dots & a_{1n} \\
         a_{21} & a_{22} & \dots & a_{2n} \\
          \dots &  \dots & \dots &  \dots \\
         a_{n1} & a_{n2} & \dots & a_{nn}
         \end{array}
   \right|\,.

**Uwagi i komentarze.**

* Wyznacznik jest funkcją, która przypisuje liczby macierzom kwadratowym.
   
  Warunki :math:`\,` 1. :math:`\,` i :math:`\ ` 2. :math:`\,` stwierdzają,
  że jest to funkcja liniowa ze względu na każdą kolumnę macierzy
  :math:`\,\boldsymbol{A}\ ` z osobna. Trzeba natomiast zaznaczyć, 
  że wyznacznik :math:`\,\det\boldsymbol{A}\ `
  *nie jest* :math:`\,` liniowy ze względu na samą macierz :math:`\,\boldsymbol{A}:`
  
  .. math::
      
     \det\ (\boldsymbol{A} + \boldsymbol{B})\ \ne\ \det\ \boldsymbol{A} + \det\ \boldsymbol{B}\,,
     \quad\det\ (\lambda\,\boldsymbol{A})\ \ne\ \lambda\cdot\boldsymbol{A}\,,
     \quad\boldsymbol{A},\boldsymbol{B}\in M_n(K).

  Z postulatu :math:`\,` 2. :math:`\,` wynika mianowicie, że 
  :math:`\ \ \det\ (\lambda\,\boldsymbol{A})\ =\ \lambda^n\cdot\boldsymbol{A},\quad n=1,2,\ldots`
  
  Warunek :math:`\,` 3. :math:`\,` oznacza, :math:`\,` że jeżeli jakiekolwiek dwie 
  :math:`\,` *sąsiednie* :math:`\,` kolumny macierzy :math:`\,\boldsymbol{A}\ ` są identyczne, 
  :math:`\,` to wyznacznik tej macierzy znika.
  
  Punkt :math:`\,` 4. :math:`\,` postuluje, że wyznacznik macierzy jednostkowej równa się jedności.

* Wyznacznik jest określony tylko dla macierzy kwadratowych: 
  nie istnieje wyznacznik macierzy prostokątnej niekwadratowej.

* W zapisie trzeba odróżniać macierz od wyznacznika tej macierzy
  (nawiasy dla macierzy, proste kreski dla wyznacznika). :math:`\\`

.. Przyjmując, że funkcja :math:`\,\det\,` istnieje, zapiszemy dalsze własności wyznacznika, 
   wynikające bezpośrednio z definicji.

Bezpośrednio z definicji wynikają dalsze własności wyznacznika. :math:`\\`

.. admonition:: Własność :math:`\,` I. :math:`\,` 
   
   Jeżeli jakaś kolumna macierzy :math:`\,\boldsymbol{A}\ `
   składa się z samych zer, :math:`\,` to :math:`\ \det\boldsymbol{A}=0.`

**Dowód.** :math:`\,` Niech 
:math:`\ \ d\,:\,=\,\det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,
\boldsymbol{A}_j\,|\,\dots\,|\,\boldsymbol{A}_n\,]\,,\quad j\in\{1,2,\ldots,n\}\,.\ \ \\`
Jeżeli :math:`\ \boldsymbol{A}_j=\boldsymbol{0},\ \,` 
to :math:`\ \boldsymbol{A}_j=0\cdot\boldsymbol{A}_j\,.\ `
Z postulatu 2. wynika wtedy, że :math:`\ \,d = 0\cdot d = 0\,.\\` 

.. admonition:: Własność :math:`\,` IIa. :math:`\,`

   Przestawienie dwóch :math:`\,` *sąsiednich* :math:`\,` kolumn zmienia znak wyznacznika.

**Dowód.** :math:`\,` 
Na podstawie postulatów :math:`\,` 1. :math:`\,` i :math:`\,` 3. :math:`\,`  można zapisać:

.. math::
   
   \det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}' + \boldsymbol{A}''\,|\,
   \boldsymbol{A}' + \boldsymbol{A}''\,|\,\dots\,|\,\boldsymbol{A}_n\,]\ \ =

   =\ \ 
   \det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}'\,|\,
   \boldsymbol{A}'\,|\,\dots\,|\,\boldsymbol{A}_n\,]\ +\ 
   \det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}'\,|\,
   \boldsymbol{A}''\,|\,\dots\,|\,\boldsymbol{A}_n\,]\ \ +

   \ \ +\ \ 
   \det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}''\,|\,
   \boldsymbol{A}'\,|\,\dots\,|\,\boldsymbol{A}_n\,]\ +\ 
   \det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}''\,|\,
   \boldsymbol{A}''\,|\,\dots\,|\,\boldsymbol{A}_n\,]\ \ =

   =\ \ 
   \det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}'\,|\,
   \boldsymbol{A}''\,|\,\dots\,|\,\boldsymbol{A}_n\,]\ +\ 
   \det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}''\,|\,
   \boldsymbol{A}'\,|\,\dots\,|\,\boldsymbol{A}_n\,]\ \ =\ \ 0\,.

.. math::

   \text{A zatem}\qquad\det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}''\,|\,
   \boldsymbol{A}'\,|\,\dots\,|\,\boldsymbol{A}_n\,]\ \ =\ \ -\ 
   \det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}'\,|\,
   \boldsymbol{A}''\,|\,\dots\,|\,\boldsymbol{A}_n\,]\,.

.. :math:`\ \det\ [\,\boldsymbol{A}_1,\,\dots,\,\boldsymbol{A}' + \boldsymbol{A}'',\,
   \boldsymbol{A}' + \boldsymbol{A}'',\,\dots,\,\boldsymbol{A}_n\,]\ \ =`
   
   :math:`\ \det\ [\,\boldsymbol{A}_1,\,\dots,\,\boldsymbol{A}',\,
   \boldsymbol{A}',\,\dots,\,\boldsymbol{A}_n\,]\ +\ 
   \det\ [\,\boldsymbol{A}_1,\,\dots,\,\boldsymbol{A}',\,
   \boldsymbol{A}'',\,\dots,\,\boldsymbol{A}_n\,]\ \ +`
   
   :math:`\ \det\ [\,\boldsymbol{A}_1,\,\dots,\,\boldsymbol{A}'',\,
   \boldsymbol{A}',\,\dots,\,\boldsymbol{A}_n\,]\ +\ 
   \det\ [\,\boldsymbol{A}_1,\,\dots,\,\boldsymbol{A}'',\,
   \boldsymbol{A}'',\,\dots,\,\boldsymbol{A}_n\,]\ \ =`
   
   :math:`\ \det\ [\,\boldsymbol{A}_1,\,\dots,\,\boldsymbol{A}',\,
   \boldsymbol{A}'',\,\dots,\,\boldsymbol{A}_n\,]\ +\ 
   \det\ [\,\boldsymbol{A}_1,\,\dots,\,\boldsymbol{A}'',\,
   \boldsymbol{A}',\,\dots,\,\boldsymbol{A}_n\,]\ \ =\ \ 0\,.`

   Stąd :math:`\quad\det\ [\,\boldsymbol{A}_1,\,\dots,\,\boldsymbol{A}'',\,
   \boldsymbol{A}',\,\dots,\,\boldsymbol{A}_n\,]\ \ =\ \ -\ 
   \det\ [\,\boldsymbol{A}_1,\,\dots,\,\boldsymbol{A}',\,
   \boldsymbol{A}'',\,\dots,\,\boldsymbol{A}_n\,]\,.`

.. admonition:: Własność :math:`\,` IIb. :math:`\,`

   Przestawienie dwóch :math:`\,` *dowolnych*  :math:`\,` kolumn zmienia znak wyznacznika.

**Dowód.** :math:`\,` Przestawienie dwóch dowolnych kolumn jest złożeniem nieparzystej ilości przestawień kolumn sąsiednich, a każde z nich powoduje zmianę znaku wyznacznika. 

:math:`\;`

.. admonition:: Własność :math:`\,` IIc. :math:`\,` 
   
   Dla dowolnej permutacji :math:`\,\sigma\in S_n:`

   .. math::
   
      \det\ [\,
      \boldsymbol{A}_{\sigma(1)}\,|\;\boldsymbol{A}_{\sigma(2)}\,|\,\dots\,|\,
      \boldsymbol{A}_{\sigma(n)}\,]
      \ \ =\ \ 
      \text{sgn}\,\sigma\,\cdot\,
      \det\ [\,\boldsymbol{A}_1\,|\;\boldsymbol{A}_2\,|\,\dots\,|\,\boldsymbol{A}_n\,]\,,

**Dowód.** :math:`\,` Przejście od wyjściowego układu kolumn do układu określonego 
przez permutację :math:`\,\sigma\ ` wymaga wykonania parzystej 
(gdy :math:`\,\text{sgn}\,\sigma=+1`) bądź nieparzystej
(gdy :math:`\,\text{sgn}\,\sigma=-1`) ilości transpozycji kolumn, z których każda
zmienia znak wyznacznika.

**Wniosek.** :math:`\,` Zmiana kolejności kolumn macierzy zmienia co najwyżej znak wyznacznika.

:math:`\;`

.. admonition:: Własność :math:`\,` IIIa. :math:`\,`
   
   Gdy :math:`\,` *jakiekolwiek* :math:`\,` dwie kolumny macierzy są sobie równe, :math:`\,`
   to jej wyznacznik znika.

**Dowód.** :math:`\,` Niech 
:math:`\ d\,:\,=\,\det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,
\boldsymbol{A}_j\,|\,\dots\,|\,\boldsymbol{A}_k\,|\,
\dots\,|\,\boldsymbol{A}_n\,]\,,\quad j<k\in\{1,2,\dots,n\}\,.`

Jeżeli :math:`\ \boldsymbol{A}_j = \boldsymbol{A}_k\,,\ `
to na podstawie własności IIb. mamy :math:`\ \,d = -\ d,\ \,` skąd :math:`\ \,d = 0.`

:math:`\;`

.. admonition:: Własność :math:`\,` IIIb. :math:`\,`
   
   Jeżeli dwie kolumny macierzy są proporcjonalne, to jej wyznacznik znika.

**Dowód.** :math:`\,` Rzeczywiście, :math:`\,` z :math:`\,` 2. postulatu :math:`\,` i :math:`\,` 
własności :math:`\,` IIIa. :math:`\,` wynika, :math:`\,` że dla :math:`\,\lambda\in K`

.. math::
   
   \det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}'\,|\,\dots\,|\,
   \lambda\,\boldsymbol{A}'\,|\,\dots\,|\,\boldsymbol{A}_n\,]\ \ =\ \ 
   \lambda\,\cdot\,\det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}'\,|\,\dots\,|\,
   \boldsymbol{A}'\,|\,\dots\,|\,\boldsymbol{A}_n\,]\ =\ 0\,.

:math:`\;`
   
.. admonition:: Własność :math:`\,` IIIc. :math:`\,`
   
   Dodanie do pewnej kolumny innej kolumny pomnożonej przez dowolną liczbę 
   nie zmienia wartości wyznacznika.

**Dowód.** :math:`\,` Własność ta wynika z :math:`\,` 1. :math:`\,` i :math:`\,` 2. :math:`\,` postulatu oraz z udowodnionej już własności IIIb.:

.. math::
   
   \det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}_j\,|\,\dots\,|\,
   \boldsymbol{A}_k + \lambda\,\boldsymbol{A}_j\,|\,\dots\,|\,\boldsymbol{A}_n\,]\ \ =

   =\ \ 
   \det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}_j\,|\,\dots\,|\,\boldsymbol{A}_k\,|\,
   \dots\,|\,\boldsymbol{A}_n\,]\ +\ 
   \lambda\ 
   \det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}_j\,|\,\dots\,|\,\boldsymbol{A}_j\,|\,
   \dots\,|\,\boldsymbol{A}_n\,]\ \ =

   =\ \ 
   \det\ [\,\boldsymbol{A}_1\,|\,\dots\,|\,\boldsymbol{A}_j\,|\,\dots\,|\,\boldsymbol{A}_k\,|\,
   \dots\,|\,\boldsymbol{A}_n\,]\,.

   


       























