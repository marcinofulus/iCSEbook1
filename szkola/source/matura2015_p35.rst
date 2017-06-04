Zadanie 35 - solve and subs
---------------------------

.. image:: matura2015/matura2015_p35.png
   :align: center

Poniższy kod:


.. sagecellserver::



   var('r,a1')
   a(n) = a1+(n-1)*r
   sol = solve([ sum([a(i) for i in range(1,1+11)])==187,1/3*sum([a(i) for i in [1,3,9]])==12],[a1,r]) 
   show(sol[0])
   c(n) = a(n).subs(sol[0])
   var('k')
   show( solve( c(k)/c(3)==c(3)/c(1),k) ) 
