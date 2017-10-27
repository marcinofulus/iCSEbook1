.. -*- coding: utf-8 -*-

Integration
===========

::

    sage: def fun(x):
    ...     return 2*x * x + 4 * x - 3;
    sage: n = 100 #liczba podziałów
    sage: print "Obliczanie  calki oznaczonej"
    sage: print " metodą prostokatów"
    sage: print „  „
    sage: print "f(x) = 2*x * x + 4 * x -3"
    sage: print
    sage: print "Podaj granice calkowania - poczatek"
    sage: print
    sage: xpocz = float(raw_input("xpocz = "))
    sage: print
    sage: print "Podaj granice calkowania - koniec"
    sage: print
    sage: xkoniec = float(raw_input("xkoniec = "))
    sage: print
    sage: suma = 0.
    sage: dx = (xkoniec - xpocz) / n
    sage: for i in range(1, n + 1):
    ...     suma += fun(xpocz + i * dx)
    sage: suma *= dx
    sage: print "Wartosc pola : %9.3f" % suma
    Obliczanie  calki oznaczonej
     metodą prostokatów
    
    f(x) = 2 * x * x + 4 * x - 3
    
    Podaj granice calkowania - poczatek
    
    xpocz = 

.. end of output

::

    sage: print "Obliczanie  calki oznaczonej"
    sage: print " metodą prostokatów"
    sage: print   
    sage: def f(x):
    ...     return 2*x * x + 4 * x - 3;
    sage: n = 100 #liczba podziałów
    sage: print "f(x) = 2 * x * x + 4 * x - 3"
    sage: xpocz = 1.
    sage: xkoniec = 2.
    sage: suma = 0.
    sage: dx = (xkoniec - xpocz) / n
    sage: for i in range(1, n + 1):
    ...     suma += f(xpocz + i * dx)
    ...     suma *= dx
    sage: print "Wartosc pola : %7.3f" % suma
    Obliczanie  calki oznaczonej
     metodą prostokatów
    
    f(x) = 2 * x * x + 4 * x - 3
    Wartosc pola :   0.131

.. end of output

::

    sage: inp = map(int, raw_input().split())
    sage: zakr = inp[0:3]
    sage: wiel = inp[3:len(inp)]
    sage: wiel.reverse()
    sage: def pole_t(x, delta):
    ...       return (sum([(x**i) * wiel[i] for i in range(len(wiel))])+sum([((x+1)**i) * wiel[i] for i in range(len(wiel))]))*abs(delta)*0.5
    sage: sumy = [sum([(x**i) * wiel[i] for i in range(len(wiel))])*abs(zakr[2]) for x in range(zakr[0], zakr[1], zakr[2])]
    sage: sumy_t = [pole_t(x, zakr[2]) for x in range(zakr[0], zakr[1], zakr[2])]
    sage: #for suma in sumy:
    sage: #    print(suma)
    sage: print(sum(sumy))
    sage: print(sum(sumy_t))


.. end of output

::

    sage: inp = map(int, raw_input().split())
    sage: zakr = inp[0:3]
    sage: wiel = inp[3:len(inp)]
    sage: wiel.reverse()
    sage: def pole_t(x, delta):
    ...       return (sum([(x**i) * wiel[i] for i in range(len(wiel))])+sum([((x+1)**i) * wiel[i] for i in range(len(wiel))]))*abs(delta)*0.5
    sage: sumy = [sum([(x**i) * wiel[i] for i in range(len(wiel))])*abs(zakr[2]) for x in range(zakr[0], zakr[1], zakr[2])]
    sage: sumy_t = [pole_t(x, zakr[2]) for x in range(zakr[0], zakr[1], zakr[2])]
    sage: #for suma in sumy:
    sage: #    print(suma)
    sage: print(sum(sumy))
    sage: print(sum(sumy_t))


.. end of output
