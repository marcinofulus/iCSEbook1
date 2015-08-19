Zadanie 09 - solve and substitute
---------------------------------

.. image:: matura2015/matura2015_r09.png
   :align: center


Poniższy kod załatwia temat:
 

.. sagecellserver::


   var('a,b,c,d,p,s,r,q')
   eqs = [ a/2 + d/2 + q == 180, \
          d/2 + c/2 + r == 180, \
          b/2 + c/2 + s == 180,\
          b/2 + a/2 + p ==180 ] 
   sol = solve(eqs,[p,s,r,q],solution_dict=True)
   print (q+s).subs(sol).subs( a==(360-b-c-d) )
   print (p+r).subs(sol).subs( a==(360-b-c-d) )
