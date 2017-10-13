Wymiar fraktalny
================


Potrzebujemy algorytmów do generacji samopodobnych objektów geometrycznych. 

.. sagecellserver::

    import numpy as np

    def kochenize(a,b):
        HFACTOR = (3**0.5)/6
        dx = b[0] - a[0]
        dy = b[1] - a[1]
        mid = ( (a[0]+b[0])/2, (a[1]+b[1])/2 )
        p1 = ( a[0]+dx/3, a[1]+dy/3 )
        p3 = ( b[0]-dx/3, b[1]-dy/3 )
        p2 = ( mid[0]-dy*HFACTOR, mid[1]+dx*HFACTOR )
        return p1, p2, p3
    
    def koch(steps, width=1):
        arraysize = 4**steps + 1
        points = [(0.0,0.0)]*arraysize
        points[0] = (-width/2., 0.0)
        points[-1] = (width/2., 0.0)
        stepwidth = arraysize - 1
        for n in xrange(steps):
            segment = (arraysize-1)/stepwidth
            for s in xrange(segment):
                st = s*stepwidth
                a = (points[st][0], points[st][1])
                b = (points[st+stepwidth][0], points[st+stepwidth][1])
                index1 = st + (stepwidth)/4
                index2 = st + (stepwidth)/2
                index3 = st + ((stepwidth)/4)*3
                result = kochenize(a,b)
                points[index1], points[index2], points[index3] = result            
            stepwidth /= 4
        return np.array(points)
    def hilbert(n=6):
        L=[]
        M = matrix([[2,3],[1,4]])
        for i in range(1,n):
            M1=M.antitranspose()
            M2=M+4^i*ones_matrix(2^i)
            M3=M+2*4^i*ones_matrix(2^i)
            M4=M.transpose()+3*4^i*ones_matrix(2^i)
            P=block_matrix([[M2,M3],[M1,M4]])
            M=P
            L.append(P)
            
        A = M.numpy()
        nx,ny = A.shape
        Z = np.argsort(A.flatten())
        X,Y = Z%nx,Z/ny
        X,Y = X/(2^n-1.),Y/(2^n-1.)
        xy = np.vstack([X,Y]).T
        return xy

.. sagecellserver:: python

    %%time
    data_koch = koch(10)
    data_koch.shape

.. sagecellserver:: python

    %%time
    data_hilbert = hilbert(10)
    print data_hilbert.shape

.. sagecellserver:: python

    phi = np.linspace(0,2*3.14,1000000)
    data_circle =  np.vstack([0.3*np.cos(phi),0.3*np.sin(phi)]).T 


Wymiar pudełkowy (Mińkowskiego)
-------------------------------

Jak długość zależy od skali (linijki)?

.. math::  l(\epsilon) \sim e^{ (1-d)}

Krzywa Kocha:\ 

.. math::  d = \frac{\log(4)}{\log(3)}\simeq 1.2618

Okrąg:

.. math:: d=1

Krzywa Hilberta:

.. math:: d=2 

Bierzemy dane (np. 1mln. punktów leżących na krzywej Kocha) i mierzymy
długość łamanej. Następnie wyrzucamy co drugi punkt i powtarzamy pomiar.
Taką procedurę możemy zastosować dla dowolnego objektu będącego krzywą
łamaną.

Linijka:

::

            np.mean(np.sqrt(np.sum(np.diff(l,axis=0)**2,axis=1)))
            

oznacza:

.. math:: \frac{1}{N} \sum_{i=0}^{N-1} \sqrt{ \sum_{j=1}^{2} (l_{i,j}- l_{i-1,j})^2}

::

             np.sum(np.sqrt(np.sum(np.diff(l,axis=0)**2,axis=1)))

oznacza:

.. math:: \sum_{i=0}^{N-1} \sqrt{ \sum_{j=1}^{2} (l_{i,j}- l_{i-1,j})^2}

.. sagecellserver:: python

    # l = data_hilbert
    # l = data_circle
    l = data_koch

.. sagecellserver:: python

    scal=[]
    for i in range(100):
        epsilon = np.mean(np.sqrt(np.sum(np.diff(l,axis=0)**2,axis=1)))
        length = np.sum(np.sqrt(np.sum(np.diff(l,axis=0)**2,axis=1)))
        scal.append( (epsilon,length) )
        
        l = l[0::2,:]
        if l.shape[0]<=2:
            break

.. sagecellserver:: python

    var('a,d,x')
    model(x)=a*x^(1-d)
    scal_sel = [(eps,length) for eps,length in scal if eps>0.0009 and eps<0.01]
    fit = find_fit(scal_sel,model)
    fit

.. sagecellserver:: python

    plot_loglog(model(x).subs(fit),(x,0.001,1),title=r"$l(\epsilon)= b \epsilon^{(1-%0.4f)}}$"%(d.subs(fit))) +\
     point(scal,size=30) + point(scal_sel,size=30,color='red')


Box counting
------------

Jak zmienia się liczba pikseli ze skalą (rozmiarem piksela)?

Wykorzystujemy histogram wbudowany w numpy: ``np.histogramdd``

Pixel - lub voxel (3d) może być n-wymiarowym pudełkiem, jednak takim by
mogły pokrywać one cały objekt. Czyli dla krzywej Kocha bierzemy do najmniej pixele 2d.

Zalety box countingu - wystarczy mieć punkty należące do objektu w
dowolnej kolejności. Np. takie generowane w grze w chaos.

.. sagecellserver:: python

    # xy = data_circle
    # xy = data_hilbert
    xy = data_koch

.. sagecellserver:: python

    scal = [] 
    # np.logspace(1.2,3.3,10)
    for bs in [15, 27, 46, 79, 135, 232, 398, 681, 1165, 1995]:
        H = np.histogramdd(xy,bins=[np.linspace(-1.,1.0,int(bs))]*2 )[0]
        scal.append( (2*bs,np.sum(H>0) ))
        print np.sum(H>0),bs**2

.. sagecellserver:: python

    var('a,d,x')
    model(x)=a*x^d
    fit = find_fit(scal,model)
    print fit
    plt = plot_loglog(model(x).subs(fit),(x,1,1e5),title="$y= c \epsilon^{%0.4f}$"%(d.subs(fit))) + point(scal,size=30)

    plt.show()
