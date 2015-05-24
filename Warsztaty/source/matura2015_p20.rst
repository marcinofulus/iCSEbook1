Zadanie 20 - punkty odbicia i działania na wektorach 
----------------------------------------------------

.. image:: matura2015/matura2015_p20.png
   :align: center




.. sagecellserver::

    p1 = vector((-2,1))
    p2 = vector((-1,3))

    plt = point( p1,size=40)+point(p2 ,size=40)
    plt += point(1/2*(p1+p2),size=40,color='red')
    plt += point(-1/2*(p1+p2),size=40,color='green')
    plt.show()
    show(-1/2*(p1+p2) )
