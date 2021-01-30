.. _matura2015_p22.rst:

Zadanie 22 - 
------------

.. image:: matura2015/matura2015_p22.png
   :align: center


	   
Poniższy wysokość trójkąta równobocznego obliczamy z twierdzenia
Pitagorasa. Ponieważ jest ona również wysokością stożka to wystarczy
podstawić do wzoru na objętość stoźka i gotowe. 


.. sagecellserver::

    var('l')
    r = l/2
    h = sqrt(l^2-r^2)
    V = 1/3*pi*r^2*h
    print(V.subs(l==6))
    assume(l>0)
    show(V.simplify())
   


.. note::

   Zauważmy, że musimy założyć dodatniość :math:`l`, w innym
   przypadku wzór nie uprości się. Usuń to założenie (np. wstawiając
   po nim :code:`forget()`) i zobacz jaki otrzymamy wynik. Dlaczego?
   
