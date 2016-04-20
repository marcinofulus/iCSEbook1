
Permutation Matrices
--------------------

Niech będzie dana macierz 
:math:`\,\boldsymbol{A}=[a_{ij}]_{m\times n}\in M_{m\times n}(K)\,` o postaci wierszowej

.. math::
   
   \boldsymbol{A}\ \ =\ \ 
   \left[\begin{array}{c} \boldsymbol{A}_1 \\
                          \boldsymbol{A}_2 \\
                          \ldots           \\
                          \boldsymbol{A}_m\end{array}\right],\qquad
   \text{gdzie}\quad\boldsymbol{A}_i\ =\ [\,a_{i1}\ \,a_{i2}\ \,\dots\ \,a_{in}\,]\,,\quad 
   i=1,2,\dots,m\,,


oraz permutacja 
:math:`\ \ \sigma\ =\ 
\left(\begin{array}{cccc}
1 & 2 & \ldots & m \\ \sigma(1) & \sigma(2) & \ldots & \sigma(m)
\end{array}\right)\ \in\ S_m.`

.. .. math::
   
   \sigma\ \ =\ \ \left(\begin{array}{cccc}
                      1     &     2     & \ldots &     m \\
                  \sigma(1) & \sigma(2) & \ldots & \sigma(m)
                  \end{array}\right)\,.

:math:`\;`

Permutacja :math:`\,\sigma\,` wyznacza operację :math:`\,O_\sigma\,` 
zmieniającą kolejność wierszy macierzy :math:`\,\boldsymbol{A}\,:`

.. math::
   :label: perm_verse
   
   O_\sigma\,\boldsymbol{A}\ :\,=\ 
   \left[\begin{array}{c} \boldsymbol{A}_{\,\sigma(1)} \\
                          \boldsymbol{A}_{\,\sigma(2)} \\
                          \ldots           \\
                          \boldsymbol{A}_{\,\sigma(m)}\end{array}\right]\,.

:math:`\;`

Zastosowanie operacji :math:`\,O_\sigma\,` do macierzy jednostkowej

.. math::
   
   \boldsymbol{I}_m\ \ =\ \ \left[\begin{array}{c}
                            \boldsymbol{e}_1 \\ 
                            \boldsymbol{e}_2 \\ 
                            \ldots \\ 
                            \boldsymbol{e}_m
                            \end{array}\right]\,,

(:math:`\,\boldsymbol{e}_i\,` jest wierszem zawierającym jedynkę na :math:`\,i`-tym miejscu, 
poza tym zera) daje macierz :math:`\,\boldsymbol{P}_\sigma\,` 
nazywaną *macierzą permutacji* :math:`\,\sigma:`

.. math::
   
   \boldsymbol{P}_\sigma\ \ :\,=\ \ O_\sigma\,\boldsymbol{I}_m\ \ =\ \ 
                                    \left[\begin{array}{c}
                                    \boldsymbol{e}_{\,\sigma(1)} \\ 
                                    \boldsymbol{e}_{\,\sigma(2)} \\ 
                                    \ldots \\ 
                                    \boldsymbol{e}_{\,\sigma(m)}
                                    \end{array}\right]\,.


**Przykład.** :math:`\,` Niech
:math:`\quad\sigma\ =\ \left(\begin{array}{ccccc}
1 & 2 & 3 & 4 & 5 \\
4 & 3 & 5 & 1 & 2
\end{array}\right)\,\in S_5\,.` 

:math:`\;`

Macierz tej permutacji przedstawia się następująco: 

.. math::
   
   \boldsymbol{P}_\sigma\ =\ 
   \left[\begin{array}{c} \boldsymbol{e}_{\,\sigma(1)} \\
                          \boldsymbol{e}_{\,\sigma(2)} \\
                          \boldsymbol{e}_{\,\sigma(3)} \\
                          \boldsymbol{e}_{\,\sigma(4)} \\
                          \boldsymbol{e}_{\,\sigma(5)}
   \end{array}\right]\ =\ 
   \left[\begin{array}{c} \boldsymbol{e}_4 \\
                          \boldsymbol{e}_3 \\
                          \boldsymbol{e}_5 \\
                          \boldsymbol{e}_1 \\
                          \boldsymbol{e}_2
   \end{array}\right]\ =\ 
   \left[\begin{array}{ccccc} 0 & 0 & 0 & 1 & 0 \\
                              0 & 0 & 1 & 0 & 0 \\
                              0 & 0 & 0 & 0 & 1 \\
                              1 & 0 & 0 & 0 & 0 \\
                              0 & 1 & 0 & 0 & 0
   \end{array}\right]\,.

.. Wykorzystując wierszową regułę mnożenia macierzowego można stwierdzić, że wykonanie operacji 
   :math:`\,O_\sigma\,` na macierzy :math:`\,\boldsymbol{A}\in M_{m\times n}(K)\,` jest
   równoważne     pomnożeniu :math:`\,\boldsymbol{A}  \,` z lewej strony przez 
   :math:`\,\boldsymbol{P}_\sigma:`

:math:`\;`

W analogii do Twierdzenia 3. o operacjach i macierzach elementarnych,
wykonanie operacji :math:`\,O_\sigma\,` na macierzy 
:math:`\,\boldsymbol{A}\in M_{m\times n}(K)\,` jest równoważne pomnożeniu 
:math:`\,\boldsymbol{A}  \,` z lewej strony przez :math:`\,\boldsymbol{P}_\sigma:`

.. math::

   O_\sigma\,\boldsymbol{A}\ \ =\ \ 
   \boldsymbol{P}_\sigma\,\boldsymbol{A}\,,
   \qquad\sigma\in S_m\,.

:math:`\;`

**Własności macierzy permutacji.**

1. Każda macierz permutacji jest iloczynem macierzy elementarnych pierwszego rodzaju
   (odpowiadających przestawieniom wierszy macierzy).

   Wynika to stąd, że każdą permutację :math:`\,\sigma\in S_m\,` można zapisać jako złożenie
   pewnej liczby transpozycji, którym odpowiadają operacje elementarne pierwszego rodzaju. 

2. Macierze permutacji są :math:`\,` *ortogonalne*:
   :math:`\quad\boldsymbol{P}_\sigma^{\,T}\,\boldsymbol{P}_\sigma\ = 
   \ \boldsymbol{I}_m\,,\quad\sigma\in S_m\,.`

3. Iloczyn dwóch macierzy permutacji jest macierzą permutacji, przy czym

   .. math::
      
      \boldsymbol{P}_\rho\,\boldsymbol{P}_\sigma\ =\ \boldsymbol{P}_{\sigma\,\circ\,\rho}\,,
      \qquad\rho,\sigma\in S_m\,.

4. Permutacji identycznościowej :math:`\,\text{id}\in S_m\,` odpowiada macierz jednostkowa
   :math:`\,\boldsymbol{I}_m.`

5. Macierze permutacji są odwracalne, przy czym
   odwrotność macierzy permutacji jest macierzą permutacji odwrotnej:
   
   .. math::
      
      \boldsymbol{P}_\sigma^{-1}\ =\ \boldsymbol{P}_{\sigma^{-1}}\ =\ \,\boldsymbol{P}_\sigma^T\,,
      \qquad\sigma\in S_m\,.

.. admonition:: Wniosek. :math:`\,`

   Zbiór :math:`\,P=\{\,\boldsymbol{P}_\sigma:\ \sigma\in S_m\,\}\ `
   jest grupą ze względu na mnożenie macierzowe. :math:`\\`
   Dla :math:`\,m>2\,` jest to grupa nieprzemienna.

.. Warunek :eq:`comp` stwierdza, że grupa :math:`\,P\,` 
   jest izomorficzna z grupą permutacji :math:`\,\Pi(m).\ `

Polecenie ``SymmetricGroup(n)`` konstruuje grupę permutacji zbioru
:math:`X=\{\,1,2,\ldots,n\}.` Jej elementy są wyświetlane w postaci cyklicznej.

.. code-block:: python
   
   sage: G = SymmetricGroup(4)
   sage: L = G.list()
   sage: print L

   [(), (3,4), (2,3), (2,3,4), (2,4,3), (2,4), (1,2), (1,2)(3,4), (1,2,3),
   (1,2,3,4), (1,2,4,3), (1,2,4), (1,3,2), (1,3,4,2), (1,3), (1,3,4),
   (1,3)(2,4), (1,3,2,4), (1,4,3,2), (1,4,2), (1,4,3), (1,4), (1,4,2,3),
   (1,4)(2,3)]

Metoda ``matrix()`` zastosowana do elementu grupy permutacji daje macierz tego elementu.
Dla przykładu znajdziemy macierz transpozycji :math:`\,\tau=(2,4)\in S_4\,:`

.. math::
   
   \tau\ =\ (2,4)\ =\ \left(\begin{array}{cccc}
                         1 & 2 & 3 & 4 \\
                         1 & 4 & 3 & 2
                      \end{array}\right)\,.

.. code-block:: python
   
   sage: p = L[5]
   sage: show((p, p.matrix()))

.. math::
   
   \left(\ (2,4),\ \left(\begin{array}{rrrr}
                      1 & 0 & 0 & 0 \\
                      0 & 0 & 0 & 1 \\
                      0 & 0 & 1 & 0 \\
                      0 & 1 & 0 & 0
                   \end{array}\right)\ \right)   
 


























