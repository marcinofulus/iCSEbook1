.. -*- coding: utf-8 -*-

Zbiór Mandelbrota
-----------------


.. code-block:: python

    sage: %cython
    sage: import numpy as np
    sage: cimport numpy as np
    sage: def mandelbrot_cython(float x0,float  x1,float  y0,float  y1,
    ...                      int N=200, int L=50, float R=3):
    ...       '''returns an array NxN to be plotted with matrix_plot
    ...       '''
    ...       cdef double complex c, z, I
    ...       cdef float deltax, deltay, R2 = R*R
    ...       cdef int h, j, k
    ...       cdef np.ndarray[np.uint16_t, ndim=2] m
    ...       m = np.zeros((N,N), dtype=np.uint16)
    ...       I = complex(0,1)
    ...       deltax = (x1-x0)/N
    ...       deltay = (y1-y0)/N
    ...       for j in range(N):
    ...           for k in range(N):
    ...               c = (x0+j*deltax)+ I*(y0+k*deltay)
    ...               z=0
    ...               h=0
    ...               while (h<L and
    ...                      z.real**2 + z.imag**2 < R2):
    ...                   z=z*z+c
    ...                   h+=1
    ...               m[j,k]=h
    ...       return m


.. end of output

.. code-block:: python

    sage: import pylab
    sage: x0_default = -2
    sage: y0_default = -1.5
    sage: side_default = 3.0
    sage: side = side_default
    sage: x0 = x0_default
    sage: y0 = y0_default
    sage: options = ['Zresetuj','Górny lewy', 'Górny prawy', 'Zachowaj', 'Dolny lewy', 'Dolny prawy']
    sage: @interact
    sage: def show_mandelbrot(option = selector(options, nrows = 2, width=8),
    ...                       N = slider(100, 1000,100, 300),
    ...                       L = slider(20, 300, 20, 60),
    ...                       plot_size = slider(2,10,1,6),
    ...                       auto_update = False):
    ...       global x0, y0, side
    ...       if option == 'Lower Right':
    ...           x0 += side/2
    ...           y0 += side/2
    ...       elif option == 'Upper Right':
    ...           y0 += side/2
    ...       elif option == 'Lower Left':
    ...           x0 += side/2
    ...       if option=='Reset':
    ...           side = side_default
    ...           x0 = x0_default
    ...           y0 = y0_default
    ...       elif option != 'Stay':
    ...           side = side/2
    ...       time m=mandelbrot_cython(x0 ,x0 + side ,y0 ,y0 + side , N, L )
    sage: #    p = (matrix_plot(m) +
    sage: #             line2d([(N/2,0),(N/2,N)], color='red', zorder=2) +
    sage: #             line2d([(0,N/2),(N,N/2)], color='red', zorder=2))
    sage: #    time show(p, figsize = (plot_size, plot_size))
    ...       pylab.clf()
    ...       pylab.imshow(m, cmap = pylab.cm.gray)
    ...       time pylab.savefig('mandelbrot.png')


.. end of output

