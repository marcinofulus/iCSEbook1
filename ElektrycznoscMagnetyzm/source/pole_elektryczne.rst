.. -*- coding: utf-8 -*-


Pole od ładunku
===============

Pole elektryczne :math:`\vec E` dane jest wzorem


.. math::

   \vec E(\vec r) = \frac{1}{4 \epsilon_0 \pi} \vec r \frac{1}{r^2}


Narysujmy takie pole wektorowe:


.. sagecellserver::
    :is_verbatim: False


    f1(x,y) = -((x-1)^2+y^2)^(-1/2)
    (g1,g2)=f1(x,y).gradient()
    gdir = atan2(g2,g1)
    glen = sqrt(g1^2+g2^2)
    len_trans(x) = atan(x)/(pi/2)
    wektor = (cos(gdir)*len_trans(glen), sin(gdir)*len_trans(glen))
    plot_vector_field( wektor, (x, -2, 2), (y, -2, 2), plot_points=25) + \
    point((-1,0), color="red", size=25) + point((1,0), color="blue", size=25)

