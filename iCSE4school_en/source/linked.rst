
Linked cells vs unlinked
------------------------

Mamy 2 rodzaje komówrek - niezależnie i połączone


.. sagecellserver::

   a = 3


.. sagecellserver::

   print a


To jest niezależna komórka


.. sagecellserver::
   :linked: false 

   print "OK"


.. sagecellserver::
   :linked: false 

   print a

    
  
