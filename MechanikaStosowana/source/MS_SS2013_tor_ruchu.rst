.. -*- coding: utf-8 -*-


Tor ruchu u układach krzywoliniowych
====================================

Prędkość w ruchu krzywoliniowym na płaszczyźnie
-----------------------------------------------

Rozważmy ruch krzywoliniowy na płaszczyźnie. Tor ruchu niech będzie dany przez wektor wodzący zależny od czasu  
.. MATH::

     \vec r(t) = ( x(t), y(t) ).


Prędkość jest pochodna wektora wodzącego po czasie:  
.. MATH::

    v_{x}=\frac{dx}{dt}\quad \quad v_{y}=\frac{dy}{dt}.


Wartością prędkości jest długość wektora: :math:`\vec{v}=[v_{x},v_{y}]=v_{x}\cdot \vec{e}_{x}+v_{y}\cdot \vec{e}_{y}` i dana jest wzorem:


.. MATH::

    v=\sqrt{v_{x}^{2}+v_{y}^{2}}.


Można więc napisać, że :math:`\vec{v}= v \hat t`, gdzie :math:`\hat t` jest wektorem jednostkowym stycznym do toru.






Przykład 1.
~~~~~~~~~~~

Ruch jednostajny po okręgu.


.. code-block:: python

    sage: var('R t',domain='real')
    sage: assume(R>0)
    sage: x(t)=R*cos(2*pi*t)
    sage: y(t)=R*sin(2*pi*t)
    sage: r=vector( (x(t),y(t)) ) 
    sage: v=r.diff(t)
    sage: T=v/v.norm().trig_simplify()
    sage: show(r(t))
    sage: show(v)
    sage: show(T)

.. MATH::

    \left(t \cos\left(2 \, \pi t\right),\,t \sin\left(2 \, \pi t\right)\right)


.. MATH::

    \left(-2 \, \pi R \sin\left(2 \, \pi t\right),\,2 \, \pi R \cos\left(2 \, \pi t\right)\right)


.. MATH::

    \left(-\sin\left(2 \, \pi t\right),\,\cos\left(2 \, \pi t\right)\right)


.. end of output

W ruchu po okręgu prędkość jest prostopadła do wektora wodzącego!


.. code-block:: python

    sage: v.dot_product(r).trig_simplify()
    0

.. end of output

Sprawdzmy czy długość wektora wodzącego jest stała:


.. code-block:: python

    sage: r.norm().trig_simplify()
    R

.. end of output

Jak zmienia się wartość prędkości?


.. code-block:: python

    sage: v.norm().trig_simplify()
    2*pi*R

.. end of output


.. code-block:: python

    sage: var('t',domain='real')
    sage: R = 2
    sage: x(t)=R*cos(2*pi*t)
    sage: y(t)=R*sin(2*pi*t)
    sage: r=vector( (x(t),y(t)) ) 
    sage: v=r.diff(t)
    sage: T=v/v.norm().trig_simplify()
    sage: @interact
    sage: def r_v(t0 = slider(0,1.0,0.01,default=0.53)):
    ...       plt_r=point(r(t=t0),size=30)+arrow( (0,0),r(t=t0),color='green',width=1,aspect_ratio=1)
    ...       plt_T=arrow( r(t=t0),r(t=t0)+T(t=t0),color='red',aspect_ratio=1)
    ...       plt_tor = parametric_plot(r(t),(t,0,1))
    ...       (plt_r+plt_T+plt_tor).show(figsize=4)


.. end of output

Czy każdy ruch po okręgu jest jednostajny?


.. code-block:: python

    sage: var('R t',domain='real')
    sage: assume(R>0)
    sage: assume(t>0)
    sage: x(t)=R*cos(2*pi*t^2)
    sage: y(t)=R*sin(2*pi*t^2)
    sage: r=vector( (x(t),y(t)) ) 
    sage: v=r.diff(t)
    sage: T=v/v.norm().trig_simplify()
    sage: show(r)
    sage: show(v)
    sage: show(T)

.. MATH::

    \left(R \cos\left(2 \, \pi t^{2}\right),\,R \sin\left(2 \, \pi t^{2}\right)\right)


.. MATH::

    \left(-4 \, \pi R t \sin\left(2 \, \pi t^{2}\right),\,4 \, \pi R t \cos\left(2 \, \pi t^{2}\right)\right)


.. MATH::

    \left(-\sin\left(2 \, \pi t^{2}\right),\,\cos\left(2 \, \pi t^{2}\right)\right)


.. end of output

Zweryfikujmy prostopadłość prędkości do wektora wodzącego (innymi słowy \- czy ruch odbywa się po okręgu?)


.. code-block:: python

    sage: T.dot_product(r).trig_simplify()
    0

.. end of output

.. code-block:: python

    sage: v.dot_product(r).trig_simplify()
    0

.. end of output

Ale prędkość w tym ruchu rośnie z czasem!


.. code-block:: python

    sage: v.norm().trig_simplify()
    4*pi

.. end of output


Przykład 2.
~~~~~~~~~~~

Ruch po krzywej spiralnej.


.. code-block:: python

    sage: var('t',domain='real')
    sage: R = 2
    sage: x(t)=R*cos(2*pi*t)*t
    sage: y(t)=R*sin(2*pi*t)*t
    sage: r=vector( (x(t),y(t)) ) 
    sage: v=r.diff(t)
    sage: T=v/v.norm().trig_simplify()
    sage: @interact
    sage: def r_v(t0 = slider(0,2.0,0.01,default=0.53)):
    ...       plt_r=point(r(t=t0),size=30)+arrow( (0,0),r(t=t0),color='green',width=1,aspect_ratio=1)
    ...       plt_T=arrow( r(t=t0),r(t=t0)+T(t=t0),color='red',aspect_ratio=1)
    ...       plt_tor = parametric_plot(r(t),(t,0,2))
    ...       (plt_r+plt_T+plt_tor).show(figsize=4)


.. end of output

Prędkość w taki ruchu nie jest prostopadła do wektora wodzącego.


.. code-block:: python

    sage: show(v.dot_product(r).trig_simplify())

.. MATH::

    4 \, t


.. end of output

.. code-block:: python

    sage: show(T.dot_product(r).trig_simplify())

.. MATH::

    \frac{\sqrt{16 \, \pi^{2} t^{2} + 4} t}{4 \, \pi^{2} t^{2} + 1}


.. end of output

Przyśpieszenie w ruchu krzywoliniowym na płaszczyźnie
-----------------------------------------------------

Przyśpieszenie jest pochodną prędkości po czasie. Zapiszmy prędkość jako iloczyn wersora jednostkowego i długość :math:`\vec v=v\hat t.` Obydwa czynniki tego iloczynu zależą od czasu więc można zastosować twierdzenie o pochodnej iloczynu:


.. MATH::

    \vec{a}=\frac{\mathrm d\vec v }{\mathrm dt}=\left( \frac{\mathrm dv}{\mathrm dt} \right)\hat t +v\left( \frac{\mathrm d\hat t}{\mathrm dt} \right)


Z geometrii różniczkowej wiemy, że:


.. MATH::

    \frac{\mathrm d\hat t}{\mathrm dt}=\underbrace{\frac{\mathrm d\hat t}{\mathrm ds}}_{\hat n/\rho}\underbrace{\frac{\mathrm ds}{\mathrm dt}}_{v}=\frac{v}{\rho} \hat n


więc:


.. MATH::

    \vec{a}=\left( \frac{\mathrm dv}{\mathrm dt} \right)\hat t +\frac{v^2}{\rho} \hat n.


Krzywizna:
~~~~~~~~~~

Def. Wektorem krzywizny jest pochodna jednostkowego wektora stycznego po drodze:  
.. MATH::

    \vec K=\frac{\mathrm d\hat t}{\mathrm ds}.


Tw. Długość wektora krzywizny jest odwrotnością promienia koła stycznego do krzywej w danym punkcie.





Tw. Pochodna jednostkowego wektora stycznego po czasie jest do niego prostopadła.


.. MATH::

    {\mathrm const} = |\hat t|^2


.. MATH::

    0 = \frac{ |\hat t|^2|}{dt}=2 \hat t \frac{\hat t}{dt}


Mając dowolną parametryzacje wektora wodzącego możemy zawsze skorzystać z zależności:


.. MATH::

    \vec K=\frac{\mathrm d\hat t}{\mathrm ds} =\frac{\mathrm d\hat t}{\mathrm dt}\frac{\mathrm dt}{\mathrm ds}=\frac{\mathrm d\hat t}{\mathrm dt}\frac{1}{v}.


Z drugiej strony możemy napisać:


.. MATH::

    \vec K=\frac{\mathrm d\hat t}{\mathrm ds}


czyli


.. MATH::

    \frac{\mathrm d\hat t}{\mathrm dt} = \vec K \frac{\mathrm ds}{\mathrm dt} = \hat n \frac{v}{\rho}.



Przykład 3.
~~~~~~~~~~~

Przyśpieszenie w ruchu jednostajnym po okręgu.


.. code-block:: python

    sage: var('R t',domain='real')
    sage: assume(R>0)
    sage: x(t)=R*cos(2*pi*t)
    sage: y(t)=R*sin(2*pi*t)
    sage: r = vector( (x(t),y(t)) ) 
    sage: v = r.diff(t)
    sage: a = r.diff(t,2)
    sage: T=v/v.norm().trig_simplify()
    sage: N=T.diff(t)*1.0/sqrt(x.diff(t)^2+y.diff(t)^2)
    sage: show(r)
    sage: show(v)
    sage: show(a)

.. MATH::

    \left(R \cos\left(2 \, \pi t\right),\,R \sin\left(2 \, \pi t\right)\right)


.. MATH::

    \left(-2 \, \pi R \sin\left(2 \, \pi t\right),\,2 \, \pi R \cos\left(2 \, \pi t\right)\right)


.. MATH::

    \left(-4 \, \pi^{2} R \cos\left(2 \, \pi t\right),\,-4 \, \pi^{2} R \sin\left(2 \, \pi t\right)\right)


.. end of output

Sprawdźmy czy wektor przyśpieszenia jest prostopadły do prędkości:


.. code-block:: python

    sage: (a.dot_product(v)).trig_simplify()
    0

.. end of output

skoro tak to sprawdźmy czy zachodzi wzór:


.. MATH::

     a = \frac{v^2}{R}


.. code-block:: python

    sage: bool( v.norm()^2/R==a.norm() )
    True

.. end of output

Przykład 4.
~~~~~~~~~~~

Przyśpieszenie w ruchu  **nie**  jednostajnym po okręgu.





.. code-block:: python

    sage: var('R t',domain='real')
    sage: assume(R>0)
    sage: x(t)=R*cos(2*pi*t^2)
    sage: y(t)=R*sin(2*pi*t^2)
    sage: r = vector( (x(t),y(t)) ) 
    sage: v = r.diff(t)
    sage: a = r.diff(t,2)
    sage: T=v/v.norm().trig_simplify()
    sage: N=T.diff(t)*1.0/sqrt(x.diff(t)^2+y.diff(t)^2)
    sage: show(r)
    sage: show(v)
    sage: show(a)

.. MATH::

    \left(R \cos\left(2 \, \pi t^{2}\right),\,R \sin\left(2 \, \pi t^{2}\right)\right)


.. MATH::

    \left(-4 \, \pi R t \sin\left(2 \, \pi t^{2}\right),\,4 \, \pi R t \cos\left(2 \, \pi t^{2}\right)\right)


.. MATH::

    \left(-16 \, \pi^{2} R t^{2} \cos\left(2 \, \pi t^{2}\right) - 4 \, \pi R \sin\left(2 \, \pi t^{2}\right),\,-16 \, \pi^{2} R t^{2} \sin\left(2 \, \pi t^{2}\right) + 4 \, \pi R \cos\left(2 \, \pi t^{2}\right)\right)


.. end of output

Sprawdźmy czy przyśpieszenie w takim ruchu jest prostopadłe do prędkości:


.. code-block:: python

    sage: (a.dot_product(v)).trig_simplify()
    16*pi^2*R^2*t

.. end of output

oczywiście w taki przypadku nie zachodzi:  
.. MATH::

     a = \frac{v^2}{R}


.. code-block:: python

    sage: bool( v.norm()^2/R==a.norm() )
    False

.. end of output


Przykład 5.
~~~~~~~~~~~

Ruch po dowolnej krzywej.


W elemencie interaktywnym lokalny promień krzywizny :math:`\rho` jest zwizualizowany przez dorysowanie okręgu o tymże promieniu. Wektor normalny do krzywej - czyli wektor przyśpieszenia dośrodkowego został zaznaczony kolorem niebieskim


.. code-block:: python

    sage: %hide
    sage: @interact
    sage: def krzyw(t0=slider(srange(0.0,1,0.001))):
    ...       var('t',domain='real')
    ...       tmin=-2.
    ...       tmax=2.
    ...       plt=[]
    ...       x(t)=1+t
    ...       y(t)=1+t*exp(-t^2)
    ...       r=vector( (x(t),y(t)) ) 
    ...       #T=vector( [X.diff(1) for X in [x,y]] ) 
    ...       T=r.diff(t)
    ...       T=T/T.norm().trig_simplify()
    ...       
    ...       plt.append( parametric_plot( r, (t,tmin,tmax)) )
    ...       plt.append( point(r(t=t0),size=30)+arrow( (0,0),r(t=t0),color='green',width=1,aspect_ratio=1) )
    ...       plt.append( arrow( r(t=t0),r(t=t0)+T(t=t0),color='red',aspect_ratio=1) ) 
    ...       p=sum(plt)
    ...       
    ...       N=T.diff(t)*1.0/sqrt(x.diff(t)^2+y.diff(t)^2)
    ...       if N(t=t0).norm()!=0:
    ...           plt.append( arrow( r(t=t0),r(t=t0)+N(t=t0)/N(t=t0).norm(),color='navy',aspect_ratio=1) ) 
    ...           p=sum(plt)
    ...           plt.append( circle( r(t=t0)+N(t0)/(N(t0).norm())^2, 1/N(t0).norm() ) )
    ...           print  1/N(t0).norm() 
    ...           
    ...       sum(plt).show(figsize=6,xmin=p.xmin(),xmax=p.xmax(),ymin=p.ymin(),ymax=p.ymax())


.. end of output

.. code-block:: python

    sage: @interact
    sage: def krzyw(t0=slider(srange(-1,1,0.001))):
    ...       var('t',domain='real')
    ...       tmin=-2.
    ...       tmax=2.
    ...       plt=[]
    ...       x(t)=1+t
    ...       y(t)=1+t*exp(-t^2)
    ...       
    ...       #x(t)=t
    ...       #y(t)=t^2
    ...       
    ...       r=vector( (x(t),y(t)) ) 
    ...       v=r.diff(t)
    ...       a = r.diff(t,2)
    ...       a_norm = a/a.norm() 
    ...       
    ...       T=v/v.norm().trig_simplify()
    ...       
    ...       plt.append( parametric_plot( r, (t,tmin,tmax)) )
    ...       plt.append( point(r(t=t0),size=30)+arrow( (0,0),r(t=t0),color='green',width=1,aspect_ratio=1) )
    ...       plt.append( arrow( r(t=t0),r(t=t0)+T(t=t0),color='red',aspect_ratio=1) ) 
    ...       plt.append( arrow( r(t=t0),r(t=t0)+a_norm(t=t0),color='brown',aspect_ratio=1) ) 
    ...       
    ...       
    ...       p=sum(plt)
    ...       
    ...       N=T.diff(t)*1.0/sqrt(x.diff(t)^2+y.diff(t)^2)
    ...       if N(t=t0).norm()!=0:
    ...           plt.append( arrow( r(t=t0),r(t=t0)+N(t=t0)/N(t=t0).norm(),color='navy',aspect_ratio=1) ) 
    ...           p=sum(plt)
    ...           plt.append( circle( r(t=t0)+N(t0)/(N(t0).norm())^2, 1/N(t0).norm() ) )
    ...           print  "v=",v(t=t0).norm(),"a_lin=",a(t=t0).dot_product(T(t=t0))
    ...           
    ...       sum(plt).show(figsize=6,xmin=p.xmin(),xmax=p.xmax(),ymin=p.ymin(),ymax=p.ymax())


.. end of output

.. code-block:: python

    sage: x(t)=t
    sage: y(t)=t^2
    sage: r=vector( (x(t),y(t)) ) 
    sage: v=r.diff(t)
    sage: a = r.diff(t,2)
    sage: a_norm = a/a.norm() 
    ...       
    sage: T=v/v.norm().trig_simplify()
    sage: N=T.diff(t)*1.0/sqrt(x.diff(t)^2+y.diff(t)^2)


.. end of output

.. code-block:: python

    sage: show(N(t=0))

.. MATH::

    \left(0,\,2\right)


.. end of output

.. code-block:: python

    sage: x(t)=cos(t)
    sage: y(t)=sin(t)
    sage: r=vector( (x(t),y(t)) ) 
    sage: v=r.diff(t)
    sage: a = r.diff(t,2)
    sage: a_norm = a/a.norm() 
    ...       
    sage: T=v/v.norm().trig_simplify()
    sage: N=T.diff(t)*1.0/sqrt(x.diff(t)^2+y.diff(t)^2)


.. end of output

.. code-block:: python

    sage: var('t',domain='real')
    sage: (N(t).norm()).trig_simplify()
    sqrt(sin(t)^2 + cos(t)^2)

.. end of output

.. code-block:: python

    sage: normR=lambda a:sqrt(a[0]^2+a[1]^2)


.. end of output

.. code-block:: python

    sage: normR(N(t)).trig_simplify()
    1

.. end of output

.. code-block:: python

    sage: x(t)=t
    sage: y(t)=sqrt(1-t^2)
    sage: r=vector( (x(t),y(t)) ) 
    sage: v=r.diff(t)
    sage: a = r.diff(t,2)
    sage: a_norm = a/a.norm() 
    ...       
    sage: T=v/v.norm().trig_simplify()
    sage: N=T.diff(t)*1.0/sqrt(x.diff(t)^2+y.diff(t)^2)


.. end of output

.. code-block:: python

    sage: normR(N(t))
    sqrt(-(t^2/((-t^2 + 1)^(3/2)*sqrt(-1/(t^2 - 1))) + 1/(sqrt(-t^2 + 1)*sqrt(-1/(t^2 - 1))) - t^2/(sqrt(-t^2 + 1)*(t^2 - 1)^2*(-1/(t^2 - 1))^(3/2)))^2/(t^2/(t^2 - 1) - 1) + t^2/((t^2/(t^2 - 1) - 1)*(t^2 - 1)))

.. end of output

.. code-block:: python

    sage: normR(N(t)).full_simplify()
    1

.. end of output

Dodatek
-------

.. code-block:: python

    sage: var('t')
    sage: @interact
    sage: def _(t0=slider(0,360,1)):
    ...       r=vector((cos(t),sin(t+1)))
    ...       print "W radianach:",pi.n()/180.0*t0
    ...       p=arrow( (0,0),r.subs(t=(pi/180.0*t0)),figsize=5)
    ...       p1=arrow( r.subs(t=(pi/180.0*t0)),(r.diff(t)+r).subs(t=(pi/180.0*t0)),figsize=5,color='red')
    ...       p2=parametric_plot( r,(t,0,2*pi),color='gray')
    ...       (p+p1+p2).show()


.. end of output

.. code-block:: python

    sage: r.diff(t)
    (-2*pi*R*sin(2*pi*t), 2*pi*R*cos(2*pi*t))

.. end of output

