Wykres 3d
=========

.. sagecellserver::

   var('x,y,z,t,t0,k,l,m')
   @interact
   def _(x=input_box(t^(1/2), label=r'$x(t)$'), y=input_box(t, label=r'$y(t)$'), z=input_box(t^2, label=r'$z(t)$'), t0=input_box(2, label=r'$t_0$')):
       p = []
       r0 = vector([0,0,0])
       p.append( point(r0, size=15, color='magenta') )
       p.append( arrow(r0, (1,0,0), color='magenta', arrowisize=3, width=2) )
       p.append( arrow(r0, (0,1,0), color='magenta', arrowisize=3, width=2) )
       p.append( arrow(r0, (0,0,1), color='magenta', arrowisize=3, width=2) )
       p.append( arrow(r0, (x(t0),y(t0),z(t0)), color='red', arrowsize=3, width=5 ) )
       p.append( point((x(t0),y(t0), z(t0)), size=15, color='red') )
       p.append( parametric_plot3d((x,y,z), (t,0,3), thickness=4) )
       vx(t) = diff(x,t)
       vy(t) = diff(y,t)
       vz(t) = diff(z,t)
       p.append( parametric_plot3d((x(t0)+vx(t0)*t, y(t0)+vy(t0)*t, z(t0)+vz(t0)*t), (t,-1,2), color='red', thickness=4) )
       p.append( arrow((x(t0), y(t0), z(t0)), (x(t0)+vx(t0),y(t0)+vy(t0),z(t0)+vz(t0)), color='green', arrowsize=3, width=5) )
       p.append( implicit_plot3d((k-x(t0))*vx(t0) + (l-y(t0))*vy(t0) + (m-z(t0))*vz(t0) == 0, (k,-1,10), (l,-1,10), (m,-1,10), color='green') )
       show(sum(p),aspect_ratio=1)                
