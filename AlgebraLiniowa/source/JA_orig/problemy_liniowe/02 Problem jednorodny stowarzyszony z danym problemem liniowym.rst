02. Problem jednorodny stowarzyszony z danym problemem liniowym
===============================================================

Niech  będzie  dany  problem  liniowy

.. math::
   :label: PL02.3

   {\boldsymbol{A}}{\boldsymbol{X}} = {\boldsymbol{B}}.


Zagadnienie

.. math::
   :label: PL02.30

   {\boldsymbol{A}}{\boldsymbol{X}} = {\boldsymbol{0}}


nazywamy  problemem  jednorodnym  stowarzyszonym  z  problemem  :eq:`PL02.3`.

Oznaczenia:

.. math::

   S: = \left\{ {{\boldsymbol{X}}:{\boldsymbol{A}}{\boldsymbol{X}} = {\boldsymbol{B}}} \right\} \\
   S_0 : = \left\{ {{\boldsymbol{X}}:{\boldsymbol{A}}{\boldsymbol{X}} = {\boldsymbol{0}}} \right\}


–  zbiory  rozwiązań  problemów  :eq:`PL02.3`  oraz  :eq:`PL02.30`  odpowiednio.


**Tw.**	Niech  :math:`{\boldsymbol{X'}}`  będzie  pewnym  rozwiązaniem  problemu  :eq:`PL02.3`.  Wtedy

.. math::

   S = \left\{ {{\boldsymbol{X'}} } \right\} + S_0 .


Dodając  pewne  szczególne  rozwiązanie  :math:`{\boldsymbol{X'}}`  problemu  :eq:`PL02.3`  do  wszystkich  rozwiązań  	stowarzyszonego  z  nim  problemu  :eq:`PL02.30`  otrzymujemy  zbiór  wszystkich  rozwiązań  problemu  :eq:`PL02.3`.

Tutaj

.. math::

   \left\{ {{\boldsymbol{X'}}} \right\} + S_0  = \left\{ {{\boldsymbol{X}}:\mathop  \vee \limits_{{\boldsymbol{X}}_0  \in S} {\boldsymbol{X}} = {\boldsymbol{X'}} + {\boldsymbol{X}}_0 } \right\} \quad – \quad \text{suma  algebraiczna  zbiorów} \quad  \left\{ {{\boldsymbol{X'}} } \right\} \quad \text{i} \quad S_0 .


**Dowód.**  Trzeba  wykazać  równość  dwóch  zbiorów.

a.)  Niech	:math:`{\boldsymbol{X}} \in S`;   wtedy  :math:`{\boldsymbol{A}}{\boldsymbol{X}} = {\boldsymbol{B}}`,
		ale  również  :math:`{\boldsymbol{A}}{\boldsymbol{X'}} = {\boldsymbol{B}}`,   wobec  czego

.. math::

   {\boldsymbol{A}}({\boldsymbol{X}} - {\boldsymbol{X'}}) = {\boldsymbol{0}}, \\
   {\boldsymbol{X}} - {\boldsymbol{X'}} \in S_0 , \\
   \mathop  \vee \limits_{{\boldsymbol{X}}_0  \in S} {\boldsymbol{X}} - {\boldsymbol{X'}} = {\boldsymbol{X}}_0 , \\
   {\boldsymbol{X}} = {\boldsymbol{X'}} + {\boldsymbol{X}}_0 , \\
   {\boldsymbol{X}} \in \left\{ {\boldsymbol{X'}} \right\} + S_0 .


b.)  Niech	:math:`{\boldsymbol{X}} \in \left\{ {{\boldsymbol{X'}} } \right\} + S_0`;  wtedy  :math:`\mathop  \vee \limits_{{\boldsymbol{X}}_0  \in S} {\boldsymbol{X}} = {\boldsymbol{X'}} + {\boldsymbol{X}}_0`,

		wobec czego  :math:`{\boldsymbol{A}}{\boldsymbol{X}} = {\boldsymbol{A}}({\boldsymbol{X'}} + {\boldsymbol{X}}_0 ) = {\boldsymbol{A}}{\boldsymbol{X'}} + {\boldsymbol{A}}{\boldsymbol{X}}_0  = {\boldsymbol{B}} + {\boldsymbol{0}} = {\boldsymbol{B}}`,

		czyli  :math:`{\boldsymbol{X}} \in S`.

Tak  więc,  przynajmniej  w  zasadzie,  aby  rozwiązać  niejednorodny  problem  :eq:`PL02.3`,  wystarczy  znaleźć  (np. odgadnąć)  jakieś  jego  szczególne  rozwiązanie  oraz  rozwiązać  ogólnie  stowarzyszony  z  nim  problem  jednorodny  :eq:`PL02.30`.

