.. sagecellserver::
    :is_verbatim: True

    sage: var('t')
    sage: g(t,a) = a*exp(-2*t)
    sage: p1 = plot(g(t,a=1), (t,0,2), legend_label=r"$x(0)=1$", color='blue')
    sage: p2 = plot(g(t,a=0), (t,0,2), legend_label=r"$x(0)=0$", color='red')
    sage: p3 = plot(g(t,a=-1), (t,0,2), legend_label=r"$x(0)=-1$", color='green')
    sage: show(p1+p2+p3, figsize=[6,3], axes_labels=[r'$t$',r'$x(t)$'], axes=False, frame=True)

.. end of output

.. sagecellserver::
    :is_verbatim: True

    sage: var('t')
    sage: g  = plot(-4.0/(1 +12*t), (t,0,0.5), detect_poles='show', legend_label=r'$x(0)=-4$', color='blue')
    sage: g += plot(lambda t: 0.0, (t,0,0.5), legend_label=r'$x(0)=0$', color='red')
    sage: g += plot(1.0/(1-3*t), (t,0,1/3), detect_poles='show', legend_label=r'$x(0)=1$', color='green')
    sage: g.show(axes_labels=[r'$t$',r'$x$'], ymin=-4, ymax=8, figsize=[6,3], axes=False, frame=True)

.. end of output

.. sagecellserver::
    :is_verbatim: True

    sage: var('t')
    sage: p1=plot(t**2,(t,0,1), legend_label=r"$x(0)=1$", color='blue')
    sage: p2=plot(0,(t,0,1), legend_label=r"$x(0)=0$", color='red')
    sage: show(p1+p2, figsize=[6,3], axes=False, frame=True)

.. end of output

.. sagecellserver::
    :is_verbatim: True

    sage: var('t x_0')
    sage: x = function('x', t)
    sage: rrz = diff(x,t) == -2*x
    sage: rozw = desolve(rrz, x)
    sage: rozw = rozw.subs(c=x_0)
    sage: print "rozwiązanie równania"    
    sage: show(rozw)
    sage: p1 = plot(rozw(x_0=1), (t,0,2), legend_label=r"$x(0)=1$", color='blue')
    sage: p2 = plot(rozw(x_0=0), (t,0,2), legend_label=r"$x(0)=0$", color='red')
    sage: p3 = plot(rozw(x_0=-1), (t,0,2), legend_label=r"$x(0)=-1$", color='green')
    sage: show(p1+p2+p3, figsize=[6,3], axes_labels=[r'$t$',r'$x(t)$'], axes=False, frame=True)

.. end of output

.. sagecellserver::
    :is_verbatim: True

    sage: var('t x_0 c')
    sage: x = function('x', t)
    sage: print "Definiujemy równanie różniczkowe"
    sage: rrz = diff(x,t) == 3*x^2
    sage: rozw2 = desolve(rrz, x)
    sage: print "i je rozwiązujemy..."
    sage: show(rozw2)
    sage: print "krok 1\n obliczamy x(t) z poprzedniego kroku"
    sage: rozw2 = solve(rozw2,x)[0].rhs()
    sage: show(rozw2)
    sage: print "krok 2\n obliczamy x(0)"
    sage: buf = rozw2(t=0) == x_0
    sage: show(buf)
    sage: print "krok 3\n wyznaczamy stałą c"
    sage: buf = solve(buf,c)[0].rhs()
    sage: show(buf)
    sage: print "krok 4\n wstawiamy c do równania"
    sage: rozw2 = rozw2.subs(c=buf).full_simplify()
    sage: show(rozw2)
    sage: print "I na koniec prezentujemy wyniki"
    sage: x0 = -4
    sage: w = plot(rozw2(x_0=x0), (t,0,1), detect_poles='show', legend_label=r'$x(0)=%d$'%x0, color='blue')
    sage: x0 = 0    
    sage: w += plot(rozw2(x_0=x0), (t,0,1), legend_label=r'$x(0)=%d$'%x0, color='red')
    sage: x0 = 1
    sage: w += plot(rozw2(x_0=x0), (t,0,1/3), legend_label=r'$x(0)=%d$'%x0, color='green')
    sage: w.show(axes_labels=[r'$t$',r'$x$'], tick_formatter='latex', xmin=0, xmax=0.5, ymin=-4.1, ymax=8, figsize=(6,3), axes=False, frame=True)

.. end of output

.. sagecellserver::
    :is_verbatim: True

    sage: var('t x_0 c')
    sage: forget()
    sage: assume(x_0>=0)
    sage: assume(t+c>0)
    sage: print "równanie"
    sage: x = function('x', t)
    sage: rrz = diff(x,t) == 2*sqrt(x)
    sage: show(rrz)
    sage: print "i jego rozwiązanie"
    sage: rozw3 = solve(desolve(rrz, x),x)[0]
    sage: show(rozw3)
    sage: print "stała całkowania"
    sage: buf = solve(x_0 == rozw3.rhs()(t=0),c)
    sage: show(buf)
    sage: print "mamy dwa możliwe rozwiązania, wybieramy to z dodatnim c"
    sage: buf = buf[1]
    sage: show(buf)
    sage: print "i dostajemy ostatecznie"
    sage: rozw3 = rozw3.subs(c=buf.rhs())
    sage: show(rozw3)
    sage: print "I na koniec prezentujemy wyniki"
    sage: p1=plot(rozw3.rhs()(x_0=0),(t,0,1), legend_label=r"$x(0)=1$", color='blue')
    sage: show(p1, figsize=[6,3], axes=False, frame=True)

.. end of output

