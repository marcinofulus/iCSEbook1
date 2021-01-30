Tree diagrams
=============

.. admonition:: Problem
  
  The two tree diagrams belong to the same random experiment with
  events :math:`A` and :math:`B`.

  Compute the probability :math:`P(B)` and, subsequently, add the corresponding
  probabilities to each branch in the right tree diagram.

  *(Partial result: P(B)=0.5)*
     
  .. image:: ../figs/baumdiagramme.png

**Solution**     

The probability :math:`P(B)` results from the information given in the left
tree diagram as

.. math::

   P(B) = P(B\cap A)+P(B\cap \bar{A}) = P(B|A)\cdot P(A) + P(B|\bar{A})\cdot P(\bar{A}) = \frac{3}{4}\cdot 0.4 + \frac{1}{3}\cdot 0.6
                                      = 0.5

Then, the condition :math:`P(B)+P(\bar{B})=1` yields :math:`P(\bar{B})=0.5`.
The probabilities corresponding to the remaining branches can be determined
by means of Bayes' theorem.

.. math::

   P(A|B) = \frac{P(B|A)\cdot P(A)}{P(B)} = \frac{\frac{3}{4}\cdot 0.4}{0.5} = \frac{3}{5}

   P(\bar{A}|B) = \frac{P(B|\bar{A})\cdot P(\bar{A})}{P(B)} = \frac{\frac{1}{3}\cdot 0.6}{0.5} = \frac{2}{5}

   P(A|\bar{B}) = \frac{P(\bar{B}|A)\cdot P(A)}{P(\bar{B})} = \frac{\frac{1}{4}\cdot 0.4}{0.5} = \frac{1}{5}

   P(\bar{A}|\bar{B}) = \frac{P(\bar{B}|\bar{A})\cdot P(\bar{A})}{P(\bar{B})} = \frac{\frac{2}{3}\cdot 0.6}{0.5} = \frac{4}{5}

We can use Sage to determine all probabilities of the right
tree diagram on the basis of the given probabilities and the conditions

.. math::

   P(B)+P(\bar{B}) = 1\,,

   P(A|B)+P(\bar{A}|B) = 1\,,

   P(A|\bar{B})+P(\bar{A}|\bar{B}) = 1\,,

   P(A|B) \cdot P(B) = P(B|A) \cdot P(A)\,,

   P(A|\bar{B}) \cdot P(\bar{B}) = P(\bar{B}|A) \cdot P(A)\,,

   P(\bar{A}|B) \cdot P(B) = P(B|\bar{A}) \cdot P(\bar{A})\,,

   P(\bar{A}|\bar{B}) \cdot P(\bar{B}) = P(\bar{B}|\bar{A}) \cdot P(\bar{A})\,.
   
The values of the left tree diagram can be set in the list ``probabilities``.

.. sagecellserver::

     var('p_a p_ab p_b_if_a p_bb_if_a p_b_if_ab p_bb_if_ab')
     var('p_b p_bb p_a_if_b p_ab_if_b p_a_if_bb p_ab_if_bb')
     probabilities = [p_a == 0.4,
                             p_ab == 0.6,
                             p_b_if_a == 3/4,
                             p_bb_if_a == 1/4,
                             p_b_if_ab == 1/3,
                             p_bb_if_ab == 2/3]
     equations = [p_b+p_bb == 1,
                    p_a_if_b+p_ab_if_b == 1,
                    p_a_if_bb+p_ab_if_bb == 1,
                    p_a_if_b*p_b == p_b_if_a*p_a,
                    p_ab_if_b*p_b == p_b_if_ab*p_ab,
                    p_a_if_bb*p_bb == p_bb_if_a*p_a,
                    p_ab_if_bb*p_bb == p_bb_if_ab*p_ab]
     solution = solve(probabilities+equations,
                     p_a, p_ab, p_b_if_a, p_bb_if_a, p_b_if_ab, p_bb_if_ab,
                     p_b, p_bb, p_a_if_b, p_ab_if_b, p_a_if_bb, p_ab_if_bb,
                     solution_dict=True)[0]
     print('P(B) =', solution[p_b])
     print('   P(A|B) =', solution[p_a_if_b],)
     print('   P(̅A|B) =', solution[p_ab_if_b],)
     print('\nP(̅B) =', solution[p_bb])
     print('   P(A|̅B) =', solution[p_a_if_bb],)
     print('   P(̅A|̅B) =', solution[p_ab_if_bb])
