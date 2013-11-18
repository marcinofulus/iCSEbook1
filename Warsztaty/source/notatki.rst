


.. sagecellserver::

    def cobweb(r=2,x0=0.4,color='red',nit=14):
        f(x)=r*x*(1-x)
        p = plot(f(x)==0,(x,0,1),ymin=-0.1,ymax=1.5,xmin=0,xmax=1.5,color='black')
        p += plot(x,(x,0,1),color='green',figsize=7)
        th=1.5
        for n in range(nit):
            th = th*0.9
            l1 = line([(x0,x0),(x0,f(x0))],color=color,thickness=th)
            l2 = line([(x0,f(x0)),(f(x0),f(x0))],\
             color=color,thickness=th,xmin=0,xmax=1,ymin=0,ymax=1)
            p = p+l1+l2
            x0 = f(x0)
        p.axes_labels(["$x_n$","$x_{n+1}$"])
        return p
    p1 = cobweb(r=4,x0=0.1000001,color='red')
    p2 = cobweb(r=4,x0=0.1,color='blue')
    (p1+p2).show(aspect_ratio=1)
    
        
            
.. sagecellserver::

    x = a*x*(1-x)
    point(pkts,figsize=5,xmin=0,xmax=1).show()


.. sagecellserver::

    import numpy as np
    Nx = 200
    Na = 300

    x = np.linspace(0,1,Nx)
    x = x + np.zeros((Na,Nx))
    x = np.transpose(x)
    a=np.linspace(3,4,Na)
    a=a+np.zeros((Nx,Na))

    for i in range(1000):
        x=a*x*(1-x)

    pt = [[a_,x_] for a_,x_ in zip(a.flatten(),x.flatten())]

    point(pt,size=1,alpha=0.1,figsize=2.5)

