Bavarian final secondary-school examinations in mathematics 2014
----------------------------------------------------------------

.. admonition:: Aufgabe

  Consider a random variable :math:`X` with the possible values :math:`0, 1, 2` and
  :math:`3`. The table below shows shows the probability distribution of
  :math:`X` with :math:`p_1,p_2\in[0;1]`.
  
  ================================  =============  =============================  ======================================  =====================================  =================================
  :math:`k`                         :math:`\vert`  :math:`0`                      :math:`1`                               :math:`2`                              :math:`3`
  ================================  =============  =============================  ======================================  =====================================  =================================
  :math:`P(X=k)\vphantom{1\over2}`  :math:`\vert`  :math:`p_1\vphantom{1\over2}`  :math:`\frac{3}{10}\vphantom{1\over2}`  :math:`\frac{1}{5}\vphantom{1\over2}`  :math:`p_2\vphantom{1\over2}`
  ================================  =============  =============================  ======================================  =====================================  =================================
  
  Prove that the expectation value of :math:`X` can not exceed the value 2.2.

**Lösung**     

The expectation value of a random varible :math:`X` is given by the sum over
the products of all possible values with their probabilities:

.. math::

  E(X) = \sum\limits_k k\cdot p_k.

In our scenario, we obtain

.. math::

  E(X) = 0\cdot p_1+1\cdot \frac{3}{10}+2\cdot \frac{1}{5}+3\cdot p_2 = \frac{7}{10} + 3\cdot p_2.

Due to the fact that the sum over all probabilities equals to 1,
we have to consider some restrictions about :math:`p_1` und :math:`p_2`:

.. math::

  \begin{aligned}
  p_1+\frac{3}{10}+ \frac{1}{5}+p_2=1\\
  \Rightarrow\quad p_2=\frac{1}{2}-p_1
  \end{aligned}

Further, the probabilities :math:`p_1` and :math:`p_2` may not be negative.
This leads to a minimum value of 0 for the probability :math:`p_1`. The 
probability :math:`p_2` therefore can take values from the interval
:math:`[0;\frac{1}{2}]`.

We derive the expectation value with respect to the probability :math:`p_2`

.. math::

  E'(p_2)=3.

The constantly positive derivation determines that the expectation value 
increases with an ascending probability :math:`p_2`. The maximum 
of the expectation value is therefore correlated to the maximum value
of :math:`p_2` and can be calculated as

.. math::

  E\left(\frac{1}{2}\right)=\frac{7}{10}+\frac{3}{2}=\frac{11}{5}=2{,}2.

In Sage, we will program an interface that allows us to set the
probabilities of the random variable :math:`X` interactively. 
:math:`p_1` will be renamed as :math:`p_0` and :math:`p_2` as
:math:`p_3`. The values of :math:`p_1`, :math:`p_2` and :math:`p_3`
can be modified. The value of :math:`p_0` is calculated by Sage.

At first, we will leave the values :math:`p_1=\frac{3}{10}` and
:math:`p_2=\frac{1}{5}` fixed, as required in the task. By changing
the value of :math:`p_3` in the allowed interval, we can check the
maximum of the expectation value. By variating the other probabilities,
we can also see how the maximum of the expectation value changes.
We used a parameter ``eps`` in order to handle round-off errors, which
occur in additions of the probabilities. The necessity of this parameter
comes clear when it is set to 0.

.. sagecellserver::

     sage: @interact
     sage: def _(p1=slider(0., 1., 0.1),
     ...         p2=slider(0., 1., 0.1),
     ...         p3=slider(0., 1., 0.01), eps=3e-16):
     sage:     p0 = 1-p1-p2-p3
     sage:     if p0 >= -eps:
     ...           print 'p0 =', p0
     ...           print 'E =', p1+2*p2+3*p3
     ...       else:
     ...           print 'p0 =', p0, '  Negative Werte sind nicht erlaubt'

..  end of output

