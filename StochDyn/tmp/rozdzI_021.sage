.. sagecellserver::
    :is_verbatim: True

    sage: var('t')
    sage: g(t,a) = a*exp(-2*t)
    sage: p1=plot(g(t,1),(t,0,2),figsize=(6, 3), legend_label="x(0)=1", color='blue' )
    sage: p2=plot(g(t,0),(t,0,2),figsize=(6, 3), legend_label="x(0)=0", color='red' )
    sage: p3=plot(g(t,-1),(t,0,2),figsize=(6, 3), legend_label="x(0)=-1", color='green' )
    sage: show(p1+p2+p3, axes_labels=[r'$t$',r'$x(t)$'], frame=True, axes=False)

.. end of output

.. sagecellserver::
    :is_verbatim: True

    sage: var('t')
    sage: #detect_poles - wykrywanie i rysowanie biegunów
    sage: g=plot(-4.0/(1 +12*t),t,0,5,detect_poles='show',legend_label=r'$x(0)= -4$', color='blue')
    sage: g+=plot(lambda t: 0.0,t,0,5,legend_label=r'$x(0)=0$',color='red')
    sage: g+=plot(1.0/(1-3*t),t,0,0.33,detect_poles='show', legend_label=r'$x(0)=1$',color='green')
    sage: g.show(axes_labels=[r'$t$',r'$x$'],tick_formatter='latex',xmin=0,xmax=0.5,ymin=-4.1,ymax=8, figsize=(7,4), frame=True, axes=False)

.. end of output

.. sagecellserver::
    :is_verbatim: True

    sage: var('t')
    sage: p1=plot(t*t,(t,0,1),figsize=(6, 3), legend_label="x(0)=1", color='blue' )
    sage: p2=plot(0,(t,0,1),figsize=(6, 3), legend_label="x(0)=0", color='red' )
    sage: show(p1+p2, frame=True, axes=False)

.. end of output

.. sagecellserver::
    :is_verbatim: True

    sage: var('x y')
    sage: def schemat_eulera2D(vec, ics, Tlist):
    ...    i = 0
    ...    dx = [ics[0]]
    ...    dy = [ics[1]]
    ...    h = Tlist[i+1] - Tlist[i]
    ...    iks(x,y) = vec[0R]*h
    ...    igrek(x,y) = vec[1R]*h
    ...    for time in Tlist:
    ...        dx.append(dx[i] + iks(dx[i],dy[i]))
    ...        dy.append(dy[i] + igrek(dx[i],dy[i]))
    ...        i += 1
    ...    return zip(dx,dy)
    sage: #
    sage: @interact(layout={'top':[['_omega','x0','y0']],'bottom':[['T','h']]})
    sage: def _(title=['a','b'], h=selector(['0.005','0.01','0.05','0.1','0.5','1'], default='0.1', buttons=True),x0=input_box(2,label=r'$x_0$', width=10), y0=input_box(4,label=r'$y_0$', width=10), T=input_box(0, width=10), _omega=input_box(1,label=r'$\omega$', width=10)):
    ...    global oscylator_nietlumiony, background
    ...    if T == 0:
    ...        T = 2*pi/_omega
    ...    listT = srange(0,T,float(h), include_endpoint=True)
    ...    background = desolve_odeint(vector([y,-_omega^2*x]), [x0, y0], srange(0,T+0.1,0.1,include_endpoint=True), [x,y])
    ...    oscylator_nietlumiony = schemat_eulera2D([y,-_omega^2*x], [x0, y0], listT)
    ...    print r'Parametry modelu'
    ...    html(r'$\omega=%s, x_0=%s, y_0=%s$'%(_omega,x0,y0))
    ...    print r'Parametry symulacji'
    ...    html(r'$h=%s, T=%s$'%(h,T))
    ...    print '\nDla T=0 lista generowana jest automatycznie dla jednego okresu własnego oscylatora'
    sage: #
    sage: @interact
    sage: def _(krok=slider(1, len(oscylator_nietlumiony), 1, default=1, label=r'krok')):
    ...    
    ...    buf = zip(*oscylator_nietlumiony)
    ...    minx, maxx, miny, maxy = min(buf[0]), max(buf[0]), min(buf[1]), max(buf[1])
    ...    kroki = oscylator_nietlumiony[:krok]
    ...    kroki_plot = list_plot(kroki, figsize=(4,4), axes_labels=[r'$x$',r'$y$'], size=30, xmin=minx, xmax=maxx, ymin=miny, ymax=maxy)
    ...    
    ...    txt_plot = text(r'$[x_0,y_0]$',kroki[0],vertical_alignment='bottom',horizontal_alignment='left')
    ...    for i in range(1,len(kroki)):
    ...        txt_plot += text(r'$[x_{%d},y_{%d}]$'%(i,i),kroki[i],vertical_alignment='bottom',horizontal_alignment='left')
    ...    
    ...    full_plot = list_plot(oscylator_nietlumiony, plotjoined=1, figsize=(4,4), axes_labels=[r'$x$',r'$y$'])
    ...    full_plot += list_plot(background.tolist(), plotjoined=1, color='grey', alpha=0.5)
    ...    html.table([["krzywe fazowe dla oscylatora bez tarcia",""],[full_plot+kroki_plot,kroki_plot+txt_plot]])

.. end of output

.. sagecellserver::
    :is_verbatim: True

    sage: var('x y')
    sage: def schemat_eulera2D(vec, ics, Tlist):
    ...    i = 0
    ...    dx = [ics[0]]
    ...    dy = [ics[1]]
    ...    h = Tlist[i+1] - Tlist[i]
    ...    iks(x,y) = vec[0R]*h
    ...    igrek(x,y) = vec[1R]*h
    ...    for time in Tlist:
    ...        dx.append(dx[i] + iks(dx[i],dy[i]))
    ...        dy.append(dy[i] + igrek(dx[i],dy[i]))
    ...        i += 1
    ...    return zip(dx,dy)
    sage: #
    sage: @interact(layout={'top':[['_omega','_gamma','x0','y0']],'bottom':[['T','h']]})
    sage: def _(title=['a','b'], h=selector(['0.05','0.01','0.1','0.5','1'], default='0.1', buttons=True),x0=input_box(2,label=r'$x_0$', width=10), y0=input_box(4,label=r'$y_0$', width=10), T=input_box(0, width=10), _omega=input_box(1,label=r'$\omega$', width=10), _gamma=input_box(0.5,label=r'$\gamma$', width=10)):
    ...    global oscylator_tlumiony, glob_gamma, glob_omega, background2
    ...    glob_gamma = _gamma
    ...    glob_omega = _omega
    ...    if T == 0: 
    ...        T = 2*pi/_omega
    ...    listT = srange(0,T,float(h),include_endpoint=True)
    ...    background2 = desolve_odeint(vector([y,-_omega^2*x-_gamma*y]), [x0, y0], srange(0,2*pi/_omega+0.1,0.1,include_endpoint=True), [x,y])
    ...    oscylator_tlumiony = schemat_eulera2D([y,-_omega^2*x-_gamma*y], [x0, y0], listT)
    ...    print r'Parametry modelu'
    ...    html(r'$\gamma=%s, \omega=%s, x_0=%s, y_0=%s$'%(_gamma,_omega,x0,y0))
    ...    print r'Parametry symulacji'
    ...    html(r'$h=%s, T=%s$'%(h,T))
    ...    print '\nDla T=0 lista generowana jest automatycznie dla jednego okresu własnego oscylatora'
    sage: #
    sage: @interact    
    sage: def _(krok=slider(1, len(oscylator_tlumiony), 1, default=1, label=r'krok')):
    ...    buf = zip(*oscylator_tlumiony)
    ...    minx, maxx, miny, maxy = min(buf[0]), max(buf[0]), min(buf[1]), max(buf[1])
    ...    kroki = oscylator_tlumiony[:krok]
    ...    kroki_plot = list_plot(kroki, figsize=(4,4), axes_labels=[r'$x$',r'$y$'], size=30, xmin=minx, xmax=maxx, ymin=miny, ymax=maxy)
    ...    txt_plot = text(r'$[x_0,y_0]$',kroki[0],vertical_alignment='bottom',horizontal_alignment='left')
    ...    for i in range(1,len(kroki)):
    ...        txt_plot += text(r'$[x_{%d},y_{%d}]$'%(i,i),kroki[i],vertical_alignment='bottom',horizontal_alignment='left')
    ...    full_plot = list_plot(oscylator_tlumiony, plotjoined=1, figsize=(4,4), axes_labels=[r'$x$',r'$y$'])
    ...    full_plot += list_plot(background2.tolist(), plotjoined=1, color='grey', alpha=0.5)
    ...    html.table([["krzywe fazowe dla oscylatora tłumionego",""],[full_plot+kroki_plot,kroki_plot+txt_plot]])

.. end of output

.. sagecellserver::
    :is_verbatim: True

    sage: var('x y')
    sage: @interact(layout={'top':[['_omega','_gamma','x0','y0']],'bottom':[['T','h']]})
    sage: def _(title=['a','b'], h=selector(['0.05','0.01','0.1','0.5','1'], default='0.1', buttons=True),x0=input_box(2,label=r'$x_0$', width=10), y0=input_box(4,label=r'$y_0$', width=10), T=input_box(20, width=10), _omega=input_box(1,label=r'$\omega$', width=10), _gamma=input_box(0.5,label=r'$\gamma$', width=10)):
    ...    global oscylator_tlumiony, glob_gamma, glob_omega
    ...    glob_gamma = _gamma
    ...    glob_omega = _omega
    ...    listT = srange(0,T,float(h))
    ...    oscylator_tlumiony = desolve_odeint(vector([y,-_omega^2*x-_gamma*y]), [x0, y0], listT, [x,y])   
    ...    print r'Parametry modelu'
    ...    html(r'$\gamma=%s, \omega=%s, x_0=%s, y_0=%s$'%(_gamma,_omega,x0,y0))
    ...    print r'Parametry symulacji'
    ...    html(r'$h=%s, T=%s$'%(h,T))
    sage: vf = lambda u,a,b: (u[0]+u[1],u[1]-a*u[0]-b*u[1])
    sage: #
    sage: @interact
    sage: def _(krok=slider(1, len(oscylator_tlumiony), 1, default=1, label=r'krok')):
    ...    kroki = oscylator_tlumiony[:krok]
    ...    kroki_plot = list_plot(kroki.tolist(), figsize=(4,4), axes_labels=[r'$x$',r'$y$'], size=30, xmin=-4.5, xmax=4.5, ymin=-4.5, ymax=4.5)
    ...    pole_wektorowe = arrow(kroki[0],vf(kroki[0],glob_omega^2,glob_gamma),color='red',xmax=vf(kroki[0],glob_omega^2,glob_gamma)[0])
    ...    for krok in kroki[1:]:
    ...        pole_wektorowe += arrow(krok,vf(krok,glob_omega^2,glob_gamma),color='red', width=.4)      
    ...    txt_plot = text(r'$[x_0,y_0]$',kroki[0],vertical_alignment='bottom',horizontal_alignment='left')
    ...    for i in range(1,len(kroki)):
    ...        txt_plot += text(r'$[x_{%d},y_{%d}]$'%(i,i),kroki[i],vertical_alignment='bottom',horizontal_alignment='left')
    ...    shadowplot = list_plot(oscylator_tlumiony.tolist(), plotjoined=1, figsize=(4,4), axes_labels=[r'$x$',r'$y$'], alpha=0.2) 
    ...    full_plot = list_plot(oscylator_tlumiony.tolist(), plotjoined=1, figsize=(4,4), axes_labels=[r'$x$',r'$y$']) + plot_vector_field([y,-glob_omega^2*x-glob_gamma*y], (x, -4.5, 4.5), (y, -4.5, 4.5), plot_points=20, color='lime')
    ...    html.table([["krzywe fazowe dla oscylatora tłumionego",""],[full_plot+kroki_plot,shadowplot+kroki_plot+txt_plot+pole_wektorowe]])

.. end of output

.. sagecellserver::
    :is_verbatim: True

    sage: #########
    sage: # Model #
    sage: #########
    sage: # zmienne
    sage: var('x y')
    sage: #
    sage: # parametry
    sage: # UWAGA: jeżeli Twój model będzie zależny od innych parametrów 
    sage: #        tu właśnie musisz je wszystkie wyspecyfikować
    sage: alpha = 1
    sage: #
    sage: # warunki początkowe
    sage: x0 = 1
    sage: y0 = 1
    sage: #
    sage: # model
    sage: dx = y
    sage: dy = -alpha*x - y
    sage: #
    sage: # czas (T) symulacji
    sage: T = 12
    sage: #
    sage: ###################################################
    sage: # Symulacje + wizualizacja                        #
    sage: ###################################################
    sage: listT = srange(0,T,0.1,include_endpoint=True)
    sage: numeryka = desolve_odeint(vector([dx, dy]), [x0, y0], listT, [x,y])
    sage: przestrzen_fazowa = list_plot(numeryka.tolist(), plotjoined=1, figsize=(4,4), axes_labels=[r'$x$',r'$y$'])
    sage: pole_wektorowe = plot_vector_field([dx,dy], (x, numeryka[:,0].min(), numeryka[:,0].max()), (y, numeryka[:,1].min(), numeryka[:,1].max()), plot_points=10, color='lime')
    sage: show(przestrzen_fazowa+pole_wektorowe)

.. end of output

