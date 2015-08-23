Parachute - code
++++++++++++++++


.. sagecellserver:: python

    from pylab import *
    
    m = 90
    g = 9.81
    rho = 1
    A = 0.7
    C = 1.4
    A_p = 44
    C_p = 1.8
    v0 = 0
.. sagecellserver:: python

    def a(v):
        return g - 0.5*rho*C*A/m*v*v
.. sagecellserver:: python

    dt = 0.01
    T = 180
    n = int(T/dt)

.. sagecellserver:: python

    t = zeros(n+1)
    v = zeros(n+1)
    x = zeros(n+1)
    gforces = zeros(n+1)


.. sagecellserver:: python

    # Simulating the first 60 seconds
    for i in range(0, int(60/dt)):
        t[i+1] = t[i] + dt
        v[i+1] = v[i] + a(v[i])*dt
        x[i+1] = x[i] + v[i]*dt + 0.5*a(v[i])*dt**2
        gforces[i] = 1 - a(v[i])/g
.. sagecellserver:: python

    # Simulating the next 5 seconds
    for i in range(int(60/dt), int(65/dt)):
        C += (C_p-C)/(5/dt)
        A += (A_p-A)/(5/dt)
    
        t[i+1] = t[i] + dt
        v[i+1] = v[i] + a(v[i])*dt
        x[i+1] = x[i] + v[i]*dt + 0.5*a(v[i])*dt**2
        gforces[i] = 1 - a(v[i])/g
.. sagecellserver:: python

    # Simulationg the last 120 seconds
    for i in range(int(65/dt), int(180/dt)):
        t[i+1] = t[i] + dt
        v[i+1] = v[i] + a(v[i])*dt
        x[i+1] = x[i] + v[i]*dt + 0.5*a(v[i])*dt**2
        gforces[i] = 1 - a(v[i])/g

.. sagecellserver:: python

    plot(t,v)
    xlabel('t')
    ylabel('v(t)')
    grid()
    savefig('1.png')
    html("<img src='cell://1.png' />")



.. sagecellserver:: python

    plot(t,gforces)
    xlabel('t')
    ylabel('gforces')
    grid()
    savefig('2.png')
    html("<img src='cell://2.png' />")

.. sagecellserver:: python

    plot(t,x)
    xlabel('t')
    ylabel('x')
    grid()
    savefig('3.png')
    html("<img src='cell://3.png' />")
