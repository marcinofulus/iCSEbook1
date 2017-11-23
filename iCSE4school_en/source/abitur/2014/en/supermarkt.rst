A scrapbook
===========

.. admonition:: Problem

  Customers of a supermarket receive as a function of the value of their
  purchase a certain amount of packages containing animal pictures which
  can be collected in a scrapbook. Each package contains five pictures.
  The scrapbook contains places for a total of 200 different pictures.
  Large numbers of pictures are produced with equal probability and distributed
  randomly among the packages. The pictures in a given package do not necessarily
  differ.

  a) Justify that the term

     .. math::

       \frac{200\cdot199\cdot198\cdot197\cdot196}{200^5}

     gives the probability that all animal pictures in a given package differ.

  b) In the scrapbook of a boy, 15 pictures are still missing. He goes shopping
     with his mother and finally receives two packages with animal pictures.
     Determine the probability that the two packages contain only pictures which
     the boy already has in his scrapbook.

  Childrens' favorites are the 3D pictures where the animals appear as
  three-dimensional. 20 of the 200 pictures provided for the scrapbook
  are 3D pictures.

  c) Determine how many packages a child needs at least to obtain a 3D picture
     with a probability of at least 99\%.


**Solution of part a**

In order to obtain five different pictures, the first picture may be selected
among all 200 pictures, the second picture may be selected out of 199 pictures
etc. The respective probabilities are obtained by division by the number of
different pictures, i.e. 200. The probability that all five pictures are
different, is obtained as the product of the respective probabilities:

.. math::

  \frac{200\cdot199\cdot198\cdot197\cdot196}{200^5}

Evaluating this expression by means of Sage, one finds

.. sagecellserver::

   print "The probability to obtain five different pictures is given by {:4.1%}.".format(
         float(200*199*198*197*196/200**5))

.. end of output

This value can be confirmed empirically through a simulation using Sage:

.. sagecellserver::

   from numpy.random import randint
   iterations = 100000
   different = 0
   for _ in range(iterations):
       a = set(randint(200, size=5))
       if len(a) == 5:
           different +=1
   print "Empirical probability to obtain five different pictures: {:4.1%}".format(
         float(different)/iterations)

.. end of output

**Solution of part b**

The probability that one of the pictures found by the boy in one of the two packages
is already contained in his collection is given by

.. math::

  \frac{200-15}{200}=\frac{37}{40}.

The probability that all ten pictures found by the boy in the two packcages are
already contained in his collection is again obtained by multiplication:

.. math::

  P=\left(\frac{37}{40}\right)^{10}

By means of Sage we can evaluate this expression

.. sagecellserver::

   print "Probability to obtain no new picture: {:4.1%}".format(float((37/40)**10))

.. end of output

and verify it by means of a simulation

.. sagecellserver::

   iterations = 100000
   property = set(range(185))
   no_new = 0
   for _ in range(iterations):
       pictures = set(randint(200, size=10))
       if pictures.issubset(property):
           no_new = no_new+1
   print "Empirical probability for not obtaining a new picture: {:4.1%}".format(
         float(no_new/iterations))

.. end of output

**Solution of part c**

The probability that a picture is not a 3D picture amounts to

.. math::

  \frac{200-20}{200}=\frac{9}{10}\,.

Correspondingly, the probability that among :math:`n` pictures none is
a 3D picture is given by

.. math::

  P(n)=\left(\frac{9}{10}\right)^n\,.

We now need to determine :math:`n` such that the probability term is smaller
than 1%. We thus solve

.. math::

  P(n)=0.01

and obtain

.. math::

  n= \frac{\log(0.01)}{\log(0.9)} = 43.7\,.

As the pictures are only available in packages of five pictures, one needs
nine packages in order to received a 3D picture with a probability of 99%.
We again use Sage to check this result by a simulation.

.. sagecellserver::

   nr_packages = 9
   pictures_per_package = 5
   iterations = 100000
   threeD_pictures = set(range(20))
   threeD_found = 0
   for _ in range(iterations):
       mypictures = set(randint(200, size=nr_packages*pictures_per_package))
       if not mypictures.isdisjoint(threeD_pictures):
           threeD_found = threeD_found+1
   print "Empirical probability to obtain at least one 3D picture: {:4.1%}".format(
         float(threeD_found/iterations))

.. end of output
