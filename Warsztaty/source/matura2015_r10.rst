Zadanie 10 - 
------------

.. image:: matura2015/matura2015_r10.png
   :align: center

Poniższy kod:


.. sagecellserver::


    var('r')
    d = [2,3,4,5]
    p=[]
    for i in range(4):
        p.append( (var('x%d'%i),var('y%d'%i)))
    show(p)
    eqs = []
    for i in range(4):


        eqs.append( (p[i][0]-p[(i+1)%4][0])^2+(p[i][1]-p[(i+1)%4][1])^2==d[i]^2)
        eqs.append( p[i][0]^2+p[i][1]^2==r^2)

    for eq in eqs:
        show(eq)
    vrb = flatten(p)+[r]


    show(vrb)
    print solve(eqs+[y0==0],vrb)
