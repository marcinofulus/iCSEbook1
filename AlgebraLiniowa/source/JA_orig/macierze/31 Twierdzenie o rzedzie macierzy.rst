31.\* Twierdzenie o rzędzie macierzy
====================================

Uzasadnij,  że  dopisanie  do  macierzy  :math:`\boldsymbol{A} \in M_{m \times n} (K)`  dodatkowej  kolumny  :math:`\boldsymbol{B}`  nie  zmienia  rzędu  wtedy  i  tylko  wtedy,  gdy  :math:`\boldsymbol{B}`  wyraża  się  liniowo  przez  kolumny  :math:`\boldsymbol{A}_1 , \boldsymbol{A}_2 , \ldots , \boldsymbol{A}_n`   macierzy  :math:`\boldsymbol{A}`.

_____________________________________________________________________________________


Trzeba  udowodnić,  że  warunek

.. math::

   \text{rz} \boldsymbol{A} = \text{rz} \boldsymbol{\tilde A}


gdzie

.. math::

   \boldsymbol{A} = (\boldsymbol{A}_1 , \ldots , \boldsymbol{A}_n ), \quad \boldsymbol{\tilde A} = (\boldsymbol{A}_1 , \ldots , \boldsymbol{A}_n , \boldsymbol{B}) \quad \quad \text{(zapis kolumnowy macierzy)}


zachodzi  wtedy  i  tylko  wtedy,  gdy

.. math::

   \mathop  \vee \limits_{(\gamma _i )_{ 1}^{ n} } \boldsymbol{B} = \gamma _1 \boldsymbol{A}_1 +  \ldots  + \gamma _n \boldsymbol{A}_n .


\ 

:math:`\Rightarrow`: Niech  :math:`\text{rz} \boldsymbol{A} = \text{rz} \boldsymbol{\tilde A} = k, \quad k \le n`.
	W  macierzy  :math:`\boldsymbol{A}`  jest  (maksymalnie)  :math:`k`  liniowo  niezależnych  kolumn.
	Niech  to  będą  kolumny  :math:`\boldsymbol{A}_1 , \ldots , \boldsymbol{A}_k`.
	Te  same  kolumny  tworzą  maksymalny  liniowo  niezależny  układ  kolumn  macierzy  :math:`\boldsymbol{\tilde A}`.
	Pozostałe  kolumny  macierzy  :math:`\boldsymbol{\tilde A}`  (w liczbie :math:`n - k + 1`)  wyrażają  się  liniowo  przez  :math:`\boldsymbol{A}_1 , \ldots , \boldsymbol{A}_k`.
	W  szczególności  kolumna  :math:`B`  wyraża  się  liniowo  przez  kolumny  :math:`\boldsymbol{A}_1 , \ldots , \boldsymbol{A}_k`.
	Ponieważ  każdą  kombinację  liniową  kolumn  :math:`\boldsymbol{A}_1 , \ldots , \boldsymbol{A}_k`   można  przepisać  jako  kombinację  liniową  kolumn  :math:`\boldsymbol{A}_1 , \ldots , \boldsymbol{A}_n`   (wstawiając współczynniki zerowe przy kolumnach  :math:`\boldsymbol{A}_{ k + 1} , \ldots ,\boldsymbol{A}_n )`, dochodzimy  do  tezy.


:math:`\Leftarrow`: Zakładamy,  że


.. math::

   \boldsymbol{B} = \gamma _1 \boldsymbol{A}_1 +  \ldots  + \gamma _n \boldsymbol{A}_n ,


\ 
	czyli,  że

.. math::

   \boldsymbol{B} \in L(\boldsymbol{A}_1 , \ldots , \boldsymbol{A}_n ).


\ 
	Wtedy

.. math::

   \begin{array}{l}
   L(\boldsymbol{A}_1 , \ldots , \boldsymbol{A}_n ) = L(\boldsymbol{A}_1 , \ldots , \boldsymbol{A}_n ,\boldsymbol{B}), \\
   \dim L(\boldsymbol{A}_1 , \ldots , \boldsymbol{A}_n ) = \dim L(\boldsymbol{A}_1 , \ldots , \boldsymbol{A}_n , \boldsymbol{B}) \\
   \text{rz} (\boldsymbol{A}_1 , \ldots , \boldsymbol{A}_n ) = \text{rz} (\boldsymbol{A}_1 , \ldots ,\boldsymbol{A}_n , \boldsymbol{B}) \\
   \text{rz} \boldsymbol{A} = \text{rz} \boldsymbol{\tilde A}.
   \end{array}


Twierdzenie  można  zinterpretować  następująco:

Problem  liniowy  określony  przez  macierz  :math:`\boldsymbol{A} = (\boldsymbol{A}_1 , \ldots ,\boldsymbol{A}_n )`  i  kolumnę  wolnych  wyrazów  :math:`\boldsymbol{B}`
ma  rozwiązanie  wtedy  i  tylko  wtedy,  gdy   :math:`\text{rz} (\boldsymbol{A}_1 , \ldots , \boldsymbol{A}_n ) = \text{rz} (\boldsymbol{A}_1 , \ldots , \boldsymbol{A}_n , \boldsymbol{B})`.

Jest  to  więc  zakamuflowana  wersja  twierdzenia  Kroneckera-Capelliego.

