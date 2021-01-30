Tossing a coin
==============

.. admonition:: Problem

  For a random experiment an ideal coin is tossed until it shows heads (:math:`H`) for a
  second time or tails (:math:`T`) for a second time.
  The event space is set to be: :math:`\{HH; TT; HTH; HTT; THH; THT\}`.
  
  a) Argue that this random experiment is not a Laplace experiment.
  
  b) The random variable :math:`X` assigns to each event the number of coins tossed.
     Compute the expectation value of :math:`X`.
  

**Solution of part a**

For a Laplace experiment each outcome has the same probability.
Here, this would mean that each outcome has a probability of :math:`\frac{1}{6}`.
Because an ideal coin is used for the random experiment, we can determine the
probabilities of each event as follows:

.. math::

  P(HH) = P(TT) = \left(\frac{1}{2}\right)^2 = \frac{1}{4}

  P(HTH) = P(HTT) = P(THH) = P(THT) = \left(\frac{1}{2}\right)^3 = \frac{1}{8}

Because at least one of the probabilities now differs from :math:`\frac{1}{6}`,
this random experiment is not a Laplace experiment.

The different probabilities also become apparent if one simulates the random
experiment with Sage.

.. sagecellserver::

   def toss():
       return Set(["T", "H"]).random_element()

   def event():
       event = toss()+toss()
       if event[0] != event[1]:
           event = event+toss()
       return event

   eventspace = {"HH": 0, "TT": 0,
                    "HTH": 0, "HTT": 0, "THH": 0, "THT": 0}
   iterations = 10000
   for n in range(iterations):
       e = event()
       eventspace[e] = eventspace[e]+1
   for k, v in eventspace.items():
       print("Frequency of the event %3s: %5i" % (k, v))

**Solution of part b**

The expectation value of :math:`X` can be determined with the probabilities obtained in part a:

.. math::
  
  E(X)=2\cdot P(HH)+2\cdot P(TT) + 3\cdot P(HTH) + 3\cdot P(HTT) + 3\cdot P(THH) + 3\cdot P(THT) = 2.5.

A simulation with Sage yields:

.. sagecellserver::

   iterations = 10000
   x = 0
   for n in range(iterations):
       x = x+len(event())
   print("The expectation value of X is about: ", "%4.2f" % float(x/iterations))
