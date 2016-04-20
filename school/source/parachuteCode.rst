Parachute code
++++++++++++++++
This is the solution to the parachute problems from Skydiving 1 and Skydiving 2. We recommend that 
you try to solve the problems from both before you have a look at this solution. 

We begin by importing pylab and declaring all the parameters we need

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

Then we define the acceleration as a function of the velocity

.. sagecellserver:: python

    def a(v):
        return g - 0.5*rho*C*A/m*v*v
        
We define :math:`\Delta t = 0.01`,  :math:`T = 60` and :math:`n = T/dt`

.. sagecellserver:: python

    dt = 0.01
    T = 180
    n = int(T/dt)

We declare two arrays, one for the velocity :math:`v` and one for the
time :math:`t`. We want the arrays to be empty and have room for
:math:`\verb!n+1!` elements, so we use the :math:`\verb+zeros+` command.

.. sagecellserver:: python

    t = zeros(n+1)
    v = zeros(n+1)
    x = zeros(n+1)
    gforces = zeros(n+1)

We use :math:`\verb+range+` to create a :math:`\verb+for+` loop that that
iterates over :math:`i =0,1,2,..,n`. Inside the loop, we calculate
:math:`\verb!v[i+1]!` from :math:`\verb+v[i]+` by using the formula we 
found in the tutorial. We update the time with :math:`\verb!t[i+1] = t[i] + dt!`.

.. sagecellserver:: python 

    # Simulating the first 60 seconds
    for i in range(0, int(60/dt)):
        t[i+1] = t[i] + dt
        v[i+1] = v[i] + a(v[i])*dt
        x[i+1] = x[i] + v[i]*dt + 0.5*a(v[i])*dt**2
        gforces[i] = 1 - a(v[i])/g
        
We simulate the deployment of the parachute by updating the drag coefficient,
:math:`C`, and the silhouette area, :math:`A`. 

.. sagecellserver:: python

    # Simulating the next 5 seconds
    for i in range(int(60/dt), int(65/dt)):
        C += (C_p-C)/(5/dt)
        A += (A_p-A)/(5/dt)
    
        t[i+1] = t[i] + dt
        v[i+1] = v[i] + a(v[i])*dt
        x[i+1] = x[i] + v[i]*dt + 0.5*a(v[i])*dt**2
        gforces[i] = 1 - a(v[i])/g

Finally, we simulate the next 120 seconds after the parachute is completely deployed

.. sagecellserver:: python

    # Simulationg the last 120 seconds
    for i in range(int(65/dt), int(180/dt)):
        t[i+1] = t[i] + dt
        v[i+1] = v[i] + a(v[i])*dt
        x[i+1] = x[i] + v[i]*dt + 0.5*a(v[i])*dt**2
        gforces[i] = 1 - a(v[i])/g

We plot the velocity vs. time

.. sagecellserver:: python

    plot(t,v)
    xlabel('t')
    ylabel('v(t)')
    grid()
    savefig('1.png')
    html("<img src='cell://1.png' />")


We plot the  g-forces vs. time

.. sagecellserver:: python

    plot(t,gforces)
    xlabel('t')
    ylabel('g-forces')
    grid()
    savefig('2.png')
    html("<img src='cell://2.png' />")

We plot the position vs. time

.. sagecellserver:: python

    plot(t,x)
    xlabel('t')
    ylabel('x')
    grid()
    savefig('3.png')
    html("<img src='cell://3.png' />")
