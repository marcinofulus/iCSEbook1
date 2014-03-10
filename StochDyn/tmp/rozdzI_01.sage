.. sagecellserver::
    :is_verbatim: True

    sage: var('N1,N2,N3')
    sage: T = srange(0,3,0.01)
    sage: ## rozwiązania dla różnych wartości k=0, 0.1, 0.2
    sage: sol=desolve_odeint( vector([0, 0.1*N2,  0.2*N3]), [5,5,5],T,[N1,N2,N3])
    sage: ## wykresy rozwiązań dla różnych wartości k=-1, 0, 0.5
    sage: line(zip(T,sol[:,0]), figsize=(5, 3), legend_label="k=0") +\
    sage:  line(zip(T,sol[:,1]), color='red', legend_label="k=0.1")+\
    sage:  line(zip(T,sol[:,2]), color='green', legend_label="k=0.2") 

.. end of output


.. sagecellserver::
    :is_verbatim: True

    sage: var('x,y,z')
    sage: U = srange(0,300,0.01)
    sage: sol=desolve_odeint( vector([x*exp(-0.1*x),  y*exp(-0.2*y),  z*exp(-0.3*z)]), [5,5,5],U,[x,y,z])
    sage: ## pokazujemy rozwiązania dla różnych wartości k=-1, 0, 0.5
    sage: line(zip(U,sol[:,0]), figsize=(5, 3), legend_label="k=0")+\
    sage:  line(zip(U,sol[:,1]), color='red', legend_label="k=0.1")+\
    sage:  line(zip(U,sol[:,2]), color='green', legend_label="k=0.2")

.. end of output

