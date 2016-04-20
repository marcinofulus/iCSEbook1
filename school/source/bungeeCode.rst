Bungee code
+++++++++++
This is the solution to the bungee problems in Skydiving 2. We recommend that you try to 
solve the problems before you look at this solution.

As before, we begin by importing Pylab and declaring all the parameters we need.

.. sagecellserver:: python

    from pylab import *
    
    v0 = 0.0
    m = 70.
    #C = 1.4
    #rho = 1.0
    #A = 0.7
    g = 9.81
    #C_p = 1.8
    #A_p = 44
    k = 40
    D = 10
    
We define the "cord force" as a function of x and use an :math:`\verb+if+`-test to check if x
is above or below zero

.. sagecellserver:: python

    def r(x):
    	if x > 0:
    		return 0
    	else:
    		return -k*x
            
We define the acceleration as a function of both position, :math:`\verb+x+`, and velocity, :math:`\verb+v+`.

.. sagecellserver:: python

    def a(x, v):
        return r(x)/m - g - D/m*v
        
We define :math:`\Delta t = 0.01`, :math:`T=60` and :math:`n=T/dt`

.. sagecellserver:: python

    x0 = 20
    dt = 1e-3
    T = 100
    N = int(ceil(T/dt))	# number of mesh cells

We declare three arrays, one for the velocity :math:`v` , one for the position :math:`x`
and one for the time :math:`t`. We want the arrays to be empty and have room for n+1
elements, so we use the :math:`\verb+zeros+` command.

.. sagecellserver:: python

    v = zeros(N+1)
    x = zeros(N+1)
    t = linspace(0, T, N+1)
    
We set the first element in the x-array to be :math:`x_0` and 
the first element in the v-array to be :math:`v_0`
     
.. sagecellserver:: python

    v[0] = v0
    x[0] = x0
    
    
We declare one array for the g-forces
 
.. sagecellserver:: python

    gforces = zeros(N+1)
    
We use range to create a :math:`\verb+for+` loop that iterates over :math:`n = 0,1,2,..,N`. 
Inside the loop, we use the formulas from the tutorial to calculate :math:`\verb!t[n+1]!`, :math:`\verb!v[n+1]!`, :math:`\verb!x[n+1]!`
and :math:`\verb!gforces[i]!`

.. sagecellserver:: python

    for i in range(N):
        gforces[i] = a(x[i], v[i])/g +1
        v[i+1] = v[i] + a(x[i], v[i])*dt
        x[i+1] = x[i] + v[i]*dt + 0.5*a(x[i], v[i])*dt**2

We plot the position vs. time

.. sagecellserver:: python

    plot(t, x)
    grid()
    show()
    print x[N]


We plot the g-forces vs. time

.. sagecellserver:: python

    plot(t,gforces)
    xlabel('t')
    ylabel('gforces')
    grid()
    show()




