Tree diagram
============

.. admonition:: Aufgabe

  The following tree diagram is related to a random experiment with
  events :math:`C` and :math:`D`.

  .. image:: ../figs/baumdiagramm.png
     :align: center
     
  a) Calculate :math:`P(\bar{D})`.

  b) Prove that :math:`C` and :math:`D` are statistically dependent.

  c) Modify the value :math:`\frac{1}{10}` in the tree diagram so that
     :math:`C` and :math:`D` are statistically independent.

**Solution of part a**     

The probability :math:`P(D)` results from the given tree diagram as

.. math::

   P(D) = P(C\cap D)+P(\bar{C}\cap D) = \frac{2}{5}+\frac{1}{10} = \frac{1}{2}

The condition :math:`P(D)+P(\bar{D})=1` leads to
:math:`P(\bar{D})=\frac{1}{2}`.

**Solution of part b**

Two events :math:`C` and :math:`D` are statistically dependent if the
occurrence of event :math:`C` has an influence on the probability of event :math:`D`,
i.e. :math:`P(D|C)\neq P(D|\bar{C})`. From the tree diagram we read off :math:`P(D|C)=\frac{3}{5}`.

In addition, we need

.. math::

   P(C) = \frac{P(C\cap D)}{P(D|C)} = \frac{2/5}{3/5} = \frac{2}{3},

which results in :math:`P(\bar C) = 1-P(C)=\frac{1}{3}` and finally in

.. math::

   P(D|\bar{C}) = \frac{P(\bar{C}\cap D)}{P(\bar C)}=\frac{1/10}{1/3} 
                = \frac{3}{10}.

This proves :math:`P(D|C)\neq P(D|\bar{C})` so that :math:`C` and :math:`D` are
indeed statistically dependent.

**Solution of part c**

In contrast to the previous task, the condition :math:`P(D|C)=P(D|\bar{C})`
has to hold. :math:`P(\bar{C})` is still given as :math:`\frac{1}{3}` so
that

.. math::

   P(\bar{C}\cap D) = P(D|\bar{C})\cdot P(\bar{C}) = P(D|C)\cdot P(\bar{C})
    = \frac{3}{5}\cdot\frac{1}{3}=\frac{1}{5}.

We will calculate all probabilities of the tree diagram with Sage by using
the conditions

.. math::

   P(C)+P(\bar{C}) = 1

   P(D|C)+P(\bar{D}|C) = 1

   P(D|\bar{C})+P(\bar{D}|\bar{C}) = 1

   P(D|C)\cdot P(C) = P(C\cap D)

   P(\bar{D}|C)\cdot P(C) = P(C\cap\bar{D})

   P(D|\bar{C})\cdot P(\bar{C}) = P(\bar{C}\cap D)

   P(\bar{D}|\bar{C})\cdot P(\bar{C}) = P(\bar{C}\cap\bar{D}).

The values of :math:`P(D|C)`, :math:`P(C\cap D)`, and :math:`P(\bar{C}\cap D)` 
can be modified in the list ``probabilities``.

.. sagecellserver::

     var('p_c p_cb p_d_if_c p_db_if_c p_d_if_cb p_db_if_cb')
     var('p_c_and_d p_c_and_db p_cb_and_d p_cb_and_db')
     probabilities = [p_d_if_c==3/5,
                             p_c_and_d==2/5,
                             p_cb_and_d==1/10]
     equations = [p_c+p_cb==1,
                    p_d_if_c+p_db_if_c==1,
                    p_d_if_cb+p_db_if_cb==1,
                    p_d_if_c*p_c==p_c_and_d,
                    p_db_if_c*p_c==p_c_and_db,
                    p_d_if_cb*p_cb==p_cb_and_d,
                    p_db_if_cb*p_cb==p_cb_and_db]
     solution = solve(probabilities+equations,
                     p_c, p_cb,
                     p_d_if_c, p_db_if_c, p_d_if_cb, p_db_if_cb,
                     p_c_and_d, p_c_and_db, p_cb_and_d, p_cb_and_db,
                     solution_dict=True)[0]
     print 'P(C) =', solution[p_c]
     print '   P(D|C) =', solution[p_d_if_c],
     print '   P(D∩C) =', solution[p_c_and_d]
     print '   P(D̅|C) =', solution[p_db_if_c],
     print '   P(D̅∩C) =', solution[p_c_and_db]
     print 'P(C̅) =', solution[p_cb]
     print '   P(D|C̅) =', solution[p_d_if_cb],
     print '   P(D∩C̅) =', solution[p_cb_and_d]
     print '   P(D̅|C̅) =', solution[p_db_if_cb],
     print '   P(D̅∩C̅) =', solution[p_cb_and_db]
