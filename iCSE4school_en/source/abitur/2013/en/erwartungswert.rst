Expected value of election process
==================================

.. admonition:: Problem

  After the election, party A may fill three seats in a committee. Out of the
  eight female and four male city councillors, who were interested in a seat
  in this comittee, three people are determined to be members of the committee
  by lot.
  
  The random variable :math:`X` describes the number of female members of the
  committee of party A. Figure 1 depicts the probability distribution of the
  random variable :math:`X` with 
  :math:`P(X=0) = \frac{1}{55}` and :math:`P(X=3) = \frac{14}{55}`.
  
  .. image:: ../figs/erwartungswert.png
     :align: center
  
  a) Compute the probability :math:`P(X=1)` and :math:`P(X=2)`.

     *(Result:* :math:`P(X=1)=\frac{12}{55}, P(X=2)=\frac{28}{55}`\ *)*
  
  b) Determine the expected value and the variance of the
     random variable :math:`X`.

     *(Result:* :math:`E(X)=2, \mathrm{Var}(X)=\frac{6}{11}`\ *)*
  
  c) Figure 2 shows the probability distribution of the binomially distributed
     random variable :math:`Y` with the parameters :math:`n=3` and
     :math:`p=\frac{2}{3}`. Show by calculation that :math:`Y` has the same
     expected value as the random variable :math:`X` but has a bigger variance
     than :math:`X`.
     Explain how one can see by comparison of figures 1 and 2 that 
     :math:`\mathrm{Var}(Y)>\mathrm{Var}(X)` holds.


**Solution of part a**

The drawing of lots corresponds to drawing from an urn without replacement. 
This yields a hypergeometric distribution. With the number of female 
(:math:`f=8`) and male city councillors (:math:`m=4`) one obtains for
:math:`N=3` members of the committee

.. math::

  P(X) = \dfrac{\frac{f!}{X!(f-X)!} \frac{m!}{(N-X)!(m-N+X)!}}
                           {\frac{(f+m)!}{N!(f+m-N)!}}\,.

For :math:`X=1` one finds

.. math::

  P(1)=\frac{12}{55}\,.

Since the sum of probabilities has to equal one, 
it follows that 

.. math::

  P(2) = 1-P(0)-P(1)-P(3) = \frac{28}{55}\,.

The probabilities can also be easily determined with the help of Sage.


.. sagecellserver::

   def hypergeometric(M, N, n, k):
       return binomial(M, k) * binomial(N - M, n - k) / binomial(N, n)

   f = 8
   m = 4
   N = 3
   for X in range(N+1):
       print("P(X={}) = {}".format(X, hypergeometric(f, m+f, N, X)))

.. end of output

**Solution of part b**

Generally, the expected value of the distribution can be computed with the formula

.. math::

  E(X) = \sum_k k \cdot P(k).

The variance is then given by

.. math::

  \mathrm{Var}(X) = E(X^2) - \big(E(X)\big)^2

with

.. math::

  E(X^2) = \sum_k k^2 \cdot P(k)\,.

With the probabilities from the first part of the problem, one obtains

.. math::

  E(X) &= \frac{1}{55}(0\cdot 1+1\cdot 12+2\cdot 28+3\cdot 14) = \frac{110}{55} = 2\\
  E(X^2) &= \frac{1}{55}(0\cdot 1+1\cdot 12+4\cdot 28+9\cdot 14) = \frac{250}{55} = \frac{50}{11}

and hence

.. math::

  \mathrm{Var}(X) = \frac{50}{11}-4 = \frac{6}{11}\,.

With Sage, we can determine these results easily as well.

.. sagecellserver::

   E_X = sum(hypergeometric(f, m+f, N, k)*k for k in range(N+1))
   E_X2 = sum(hypergeometric(f, m+f, N, k)*k^2 for k in range(N+1))
   print(u"E(X) = {} \nVar(X) = {}".format(E_X, E_X2-E_X^2))

.. end of output

**Solution of part c**

For the given binomial probability distribution

.. math::

  P(Y=k) = \left(\frac{2}{3}\right)^k\left(\frac{1}{3}\right)^{3-k}
           \begin{pmatrix}3\\k\end{pmatrix}\,,

we can determine the expected value as well as the variance with the
help of Sage.

.. sagecellserver::

   def bernoulli(N, p, k):
       return p^k*(1-p)^(N-k)*binomial(N, k)

   N = 3
   p = 2/3
   for k in range(N+1):
       print("P(X={}) = {}".format(k, bernoulli(N, p, k)))
    
   E_Y = sum(bernoulli(N, p, k)*k for k in range(N+1))
   E_Y2 = sum(bernoulli(N, p, k)*k^2 for k in range(N+1))
   print(u"E(Y) = {} \nVar(Y) = {}".format(E_Y, E_Y2-E_Y^2))

.. end of output

Of cource, one can obtain these results by explicit calculations along the
lines of the previous part of the problem if one determines the probabilities
first.

Comparing the results with part b, one sees that the expected value is equal
but the variance is bigger.

This can already be concluded by means of the figures because the probability
for :math:`Y` at :math:`k=2` is smaller, while at :math:`k=0` and :math:`k=3`
it is clearly bigger than for :math:`X`. Hence, the probability distribution
for :math:`Y` is “broader” and has a bigger variance.
