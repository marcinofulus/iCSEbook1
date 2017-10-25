.. _matura2015_p17.rst:

Kąty, radiany i szacowanie funkcji sinus 
----------------------------------------

.. image:: matura2015/matura2015_p17.png
   :align: center


Jeżeli obwód rombu wynosi :math:`8` to jego bok jest cztery razy
mniejszy czyli ma ma długość :math:`a=2`. Z drugiej strony pole rombu
to :math:`P=a^2 \sin (\alpha)`. Możemy więc wyznaczyć kąt
:math:`\alpha` z równania:

.. math::

   a^2 \sin(\alpha) = 1


czyli:

.. math::

   4 \sin(\alpha) = 1



Mając do dyspozycji Sage rozwiązanie otrzymujemy natychmiast:

.. sagecellserver::

   solve(4*sin(x)==1,x)[0].rhs().n()*180/pi.n()
   
   
.. only:: latex

   Otrzymujemy 14.4775121859299.


Gotowe!

.. admonition:: Radiany vs. stopnie

   Argumentem funkcji trygonometrycznych są kąty w radianach natomiast
   w zadaniu (i życiu codziennym) posługujemy się
   stopniami. Przeliczanie radianów w stopnie i na odwrót jest bardzo
   proste, wystarczy pamiętać, że kąt pełny :math:`360^\circ` to
   :math:`2 \pi \, \mathrm{rad}`. Wynika z tego, że jeżeli mamy wynik w
   radianach, to aby przeliczyć go na stopnie należy pomnożyć przez
   :math:`\frac{180}{\pi}`. Z drugiej strony mając stopnie możemy
   otrzymać radiany mnożąc przez :math:`\frac{\pi}{180}`


Przypuścmy, że nie potrafimy oszacować numeryczne wartości 
:math:`\arcsin(\frac{1}{4})`. Czy możemy rozwiązać to zadanie?

Wiemy przecież, że
:math:`\arcsin(\frac{1}{2})=\frac{pi}{6}\mathrm{rad} =30^\circ`
Narysujmy wykres funkcji :math:`\sin` dla kątów ostrych. 

.. sagecellserver::

    p = plot( sin(x/180*pi), (x,0,90), figsize=4)
    p


Punkt :math:`(30^\circ,\frac{1}{2})` należy do wykresu funkcji sinus:

.. sagecellserver::

    p = plot( sin(x/180*pi), (x,0,90), figsize=4)
    p += point( [30,1/2])
    p


.. only:: latex
          
    .. figure:: matura2015/matura2015_p17_1.pdf
       :width: 50%
       :name: matura2015_p17_1


Zauważmy, że dla kątów mniejszych od :math:`30^\circ` funkcja sinus
może być całkiem nieźle przybliżona przez liniową:


.. sagecellserver::

    p = plot( sin(x/180*pi), (x,0,90), figsize=4)
    p += point( [30,1/2])    
    p += plot( x/180*pi, (x,0,90),color='red')
    p


.. only:: latex
          
    .. figure:: matura2015/matura2015_p17_2.pdf
       :width: 50%
       :name: matura2015_p17_2


Ponadto widać, że wykres sinusa leży pod prostą:

.. math::

   \sin(x) \lesssim x,

lub

.. math::

   \sin(\frac{\pi}{180} x) \lesssim \frac{\pi}{180} x.



Możemy to zinterpretować następująco - dla małych kątów sinus rośnie
proporcjonalnie z kątem. Jeżeli dla :math:`30^\circ` wynosił
:math:`1/2` to będzie :math:`\sin 15^\circ \simeq
\frac{1}{4}`. Zobaczmy graficznie jak przedstawia się nasze
przybliżenie:


.. sagecellserver::

    p = plot( sin(x/180*pi), (x,0,90), figsize=4)
    p += plot( x/180*pi, (x,0,90),color='red')
    p += point( [30,1/2])
    p += point( [15,1/4],color='green',size=30)
    p


.. only:: latex
          
    .. figure:: matura2015/matura2015_p17_3.pdf
       :width: 50%
       :name: matura2015_p17_3

