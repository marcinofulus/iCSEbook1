.. _matura2015_p02.rst:

O logarytmach i upraszczaniu
----------------------------


.. image:: matura2015/matura2015_p02.png
   :align: center
   :width: 76%


Dane są liczby: :math:`a= \frac{1}{27}`,
:math:`b=\log_{\frac{1}{4}}\left(64\right)`,
:math:`c=\log_\frac{1}{3}\left(27\right)`. Mamy
policzyć iloczyn.

Wystarczy poprosić system algebry komputerowej i od razu mamy wynik:


.. sagecellserver::

    a = 1/27
    b = log(64,base=1/4)
    c = log(27,base=1/3)
    show(a*b*c)


.. only:: latex 

    Otrzymujemy wynik :math:`\frac{1}{3}`.



.. admonition:: Jak to działa?

  Korzystamy tu z funkcji `log` z Sage - jest to algebraiczna
  implementacja logarytmu, która zna pewne zasady upraszczania. Na
  przykład logarytm z :math:`64` o podstawie :math:`\frac{1}{4}`
  zostanie przedstawiony jako:

  .. sagecellserver::

      show(  log(64,base=1/4) )


