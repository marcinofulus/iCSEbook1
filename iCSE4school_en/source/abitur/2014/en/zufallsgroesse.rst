Random variable and expected value
==================================

.. admonition:: Aufgabe

  Consider a random variable :math:`X` with the possible values :math:`0, 1, 2` and
  :math:`3`. The table shows the probability distribution of
  :math:`X` with :math:`p_1,p_2\in[0;1]`.
  
  ================================  =============  =============================  ======================================  =====================================  =================================
  :math:`k`                         :math:`\vert`  :math:`0`                      :math:`1`                               :math:`2`                              :math:`3`
  ================================  =============  =============================  ======================================  =====================================  =================================
  :math:`P(X=k)\vphantom{1\over2}`  :math:`\vert`  :math:`p_1\vphantom{1\over2}`  :math:`\frac{3}{10}\vphantom{1\over2}`  :math:`\frac{1}{5}\vphantom{1\over2}`  :math:`p_2\vphantom{1\over2}`
  ================================  =============  =============================  ======================================  =====================================  =================================
  
  Demonstrate that the expectation value of :math:`X` cannot exceed 2.2.

**Solution**     

The expectation value of a random variable :math:`X` is given by the sum over
the products of all possible values and their corresponding probabilities:

.. math::

  E(X) = \sum\limits_k k\cdot p_k.

For the given probabilities, the expectation value becomes

.. math::

  E(X) = 0\cdot p_1+1\cdot \frac{3}{10}+2\cdot \frac{1}{5}+3\cdot p_2 = \frac{7}{10} + 3\cdot p_2.

:math:`p_1` and :math:`p_2` cannot be chosen arbitrarily because all
probabilities need to sum up to one:

.. math::

  \begin{aligned}
  p_1+\frac{3}{10}+ \frac{1}{5}+p_2=1\\
  \Rightarrow\quad p_2=\frac{1}{2}-p_1
  \end{aligned}

Furthermore, the probabilities :math:`p_1` and :math:`p_2` may not be negative,
so that :math:`p_2` takes on its maximum value for :math:`p_1=0`.
Therefore, the probability :math:`p_2` can take values from the interval
:math:`[0;\frac{1}{2}]`.

Taking the derivative of the expectation value with respect to the probability :math:`p_2`

.. math::

  E'(p_2)=3

one finds that the expectation value increases with increasing probability
:math:`p_2`. The maximum of the expectation value is therefore reached
for the maximum value of :math:`p_2` and is found to agree with the
expected value

.. math::

  E\left(\frac{1}{2}\right)=\frac{7}{10}+\frac{3}{2}=\frac{11}{5}=2.2.

For the implementation in Sage, we will use :math:`k` as an index for
the corresponding probability. :math:`p_1` and :math:`p_2` defined in
the problem will now be referred to as :math:`p_0` and :math:`p_3`.
In the Sage interface, it is possible to set the values for :math:`p_1`,
:math:`p_2`, and :math:`p_3` from which :math:`p_0` is determined.
At first, we will keep the values set to
:math:`p_1=\frac{3}{10}` and :math:`p_2=\frac{1}{5}`, as specified in
the problem. By changing the value of :math:`p_3` in the allowed interval,
we can determine the maximum of the expectation value. By varying the other
probabilities, we can also explore how the maximum of the expectation
value depends on the probabilities fixed in the problem.
We use a parameter ``eps`` to cope with rounding errors which
occur when adding probabilities. The necessity of this parameter
becomes clear by setting it to 0.

.. sagecellserver::

      @interact
      def _(p1=slider(0., 1., 0.1),
            p2=slider(0., 1., 0.1),
            p3=slider(0., 1., 0.01), eps=3e-16):
          p0 = 1-p1-p2-p3
          if p0 >= -eps:
              print 'p0 =', p0
              print 'E =', p1+2*p2+3*p3
          else:
              print 'p0 =', p0, 'Negative values are forbidden.'

..  end of output

