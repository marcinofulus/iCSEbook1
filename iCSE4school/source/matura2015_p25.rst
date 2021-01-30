.. _matura2015_p25.rst:

Zadanie 25 - 
------------

.. image:: matura2015/matura2015_p25.png
   :align: center


	   
Najprościej będzie przeprowadzić kilka tysięcy takich losowań i
zobaczyć co wyjdzie. Z braku dostępności kul i pojemników zróbmy to
pisząc taki algorytm:



.. sagecellserver::


   N = 5000
   (sum([sum([randint(0,1) for i in range(3)])==2 for n in range(N)])/N).n()


Podczas gdy wyniki naszego zadania są takie:

.. sagecellserver::

   wyniki = [1/4.,3/8.,1/2.,2/3.]
   wyniki

.. sagecellserver::
   
   import numpy as np
   N=1e7
   np.sum(np.sum(np.random.randint(0,2,size=(N,3)),axis=1)==2)/float(N)


   Jak wyglądałby nasza decyzja co do wyboru właściwej odpowiedzi w zadaniu z rosnącą liczbą losowań?

.. sagecellserver::
   
   N=240
   eksperymenty = np.cumsum(np.sum(np.random.randint(0,2,size=(N,3)),axis=1)==2)/np.arange(1,N+1,dtype=np.float)
   list_plot(eksperymenty,gridlines=[[],wyniki],ymin=0,ymax=.7,figsize=(8,2))

A można przecież policzyć (prawie) ręcznie:


.. sagecellserver::
   
   for i,el in enumerate(CartesianProduct([0,1],[0,1],[0,1])):
       print(i+1,el,sum(el))


.. sagecellserver::


   print(len([sum(el) for el in CartesianProduct([0,1],[0,1],[0,1]) if sum(el)==2]))
   print(len(CartesianProduct([0,1],[0,1],[0,1]) ))
