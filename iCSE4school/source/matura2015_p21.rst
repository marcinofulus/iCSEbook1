.. _matura2015_p21.rst:

Zadanie 21 - 
------------

.. image:: matura2015/matura2015_p21.png
   :align: center

Poniższy kod pokazuje ten kąt:


.. sagecellserver::

    
    bryla = Polyhedron(vertices = CartesianProduct([0,1],[0,1],[0,2])).plot(opacity=0.1,aspect_ratio=1)
    bryla += polygon3d( [[0,0,0],[1,1,0],[0,1,2]] ,opacity=0.2,aspect_ratio=1)
    bryla += line3d( [(0,1,0),(1/2,1/2,0),(0,1,2)],thickness=2,color='red' )
    bryla.show(figsize=4)


