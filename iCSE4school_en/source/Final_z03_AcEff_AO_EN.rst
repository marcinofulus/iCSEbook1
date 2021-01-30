.. -*- coding: utf-8 -*-


Acoustic Effects
================



About this lesson plan
----------------------

This is a lesson plan for indented for realization during  2h lesson activities. 

It has been developed during work in iCSE4school project based on
lesson carried out in 2015-2017 at The Stefan Batory High School in
Chorzów.

It was prepared by  Adam Ogaza based on his lesson.


.. only:: html

   .. admonition::  Attention!

      In each of the "code" cells you can change any number, text or
      instruction. In order to return to the original version refresh
      the webpage.  Sometimes the next code depends on variables
      defined from the previous one, so one has to execute cells in
      order of apperance.


      
Introduction
------------

The main aims of this lesson are:

- Explaining, what is echo and after\-sound.
- Demonstration of acoustic resonance.
- Explaining the principle of operation of music instruments.
- Explaining, what are beats,
- Exercising in plotting diagrams in Python.
- Exercising interaction and sliders in Python.
- Exercising animations in SAGE

Circumstances taken into consideration:

- Students have already basic knowledge of waves in general. In particular they know the equantion of wave, idea of standing wave and resonance.
- It is the second students' contact with animations in Python. They participated in one IT lesson devoted to this problem.
- One should remember, that student don't know higher mathematics, so presented IT solutions must not be too sophisticated.
- Gradation of difficulty level is recommended. One should start with simple examples and gradually complicate them (for example by adding more parameters or varying constants)

All described below can be carried out during two hours: one in physics laboratory, the second in a class\-room equiped with sufficient amount of computers

Theoretical part
----------------
Exercises in programming were preceded by a theoretical lecture about acoustic effects. This lecture was filmed and published in Polish but with English subtitles.

`https://youtu.be/jWGTTD5\-mFA <https://youtu.be/jWGTTD5-mFA>`_

Main problems discussed in this lecture are the following:

- Echo
- After\-sound
- Acoustic resonance
- Standing waves (especially in instruments)
- Beats

I will not describe the details here, because all of them are visible in the film.

IT part
-------
Main skills exercised during lesson:

- Processes controlling with sliders.
- Puting diagrams into motion.
- Examining the motion of wave impulses.
- Composition of vibrations.
- Examining standing waves and beats.

The physical problems discussed in the code and diagrams below, are the following:

- Beats \- how does the shape of composite wave depend on component frequencies.
- How to animate a wave impulse and its reflection.
- Showing, that standing wave is really a result of interference betwee two waves travelling in opposite directions.

**Beats**

Easy example of plot with fixed frequencies and initial phase, which can be changed inside the code. Results of those changes can be observed on the plot.

.. sagecellserver::

    # **kwarg allows adding additional "called" arguments
    # dudnienia (beats) is a function returning a plot of superimposed functions y1 and y2
    def dudnienia(omega1=10,omega2=11,A1=1,A2=1,fi=2,t0=0,**kwarg):
        y1(t)=A1*sin(omega1*(t-t0))
        y2(t)=A2*sin(omega2*(t-t0)+fi)
        y(t)=y1(t)+y2(t)
        return   plot(y, (t, 0, 10),ymax=A1+A2,ymin=-(A1+A2),**kwarg )
    dudnienia(figsize=(4,2))

.. end of output

More complex drawing including the parameters of functions and envelope. For simplicity the amplitudes are chosen to be equal.

.. sagecellserver::

    def envelope(omega1, omega2, a, phase, t0):
        f(t) = 2*a*cos((omega1-omega2)*(t-t0)/2-phase/2)
        return f
    def beat(omega1=10, omega2=11, a=1, phase=2, t0=0, plot_envelope=True, **kwargs):
        y1(t) = a*sin(omega1*(t-t0))
        y2(t) = a*sin(omega2*(t-t0)+phase)
        y(t) = y1(t)+y2(t)
        title = '$t_0 = %4.2f,\ \omega_1 = %5.2f,\ \omega_2 = %5.2f$' % (t0, omega1, omega2)
        trange = (t, 0, 10)
        plt = plot(y, trange, ymin=-2*a, ymax=2*a, title=title, **kwargs)
        if plot_envelope:
            envelope_func = envelope(omega1, omega2, a, phase, t0)
            plt = plt+plot(envelope_func, trange, color='red', **kwargs)
            plt = plt+plot(-envelope_func, trange, color='red', **kwargs)
        return plt
    beat(t0=2.5, figsize=(4, 2))

.. end of output

A slider controlling the time shift. Enables moving the picture.

.. sagecellserver::

    @interact
    def _(t0=slider(0, 2*pi, 0.01, label="$t_0$")):
        plt = beat(t0=t0, figsize=(4,2))
        show(plt)

.. end of output

Controlling the frequency of second wave. One can onserve the dependence of pulsation period on the difference between frequencies of component waves.

.. sagecellserver::

    @interact
    def _(t0=slider(0, 10, 0.01, label="$t_0$"),
          omega2=slider(10, 12, 0.01, label="$\omega_2$")):
        plt = beat(t0=t0 , omega2=omega2, figsize=(4,2))
        show(plt)

.. end of output

Creation of graphics array for further animations.

.. sagecellserver::

    # plts - it is a collection of plots for time argument t0 iterated in a loop.
    plts = [dudnienia(t0=t0_,figsize=(4,2)) for t0_ in srange(0,6.3,0.2)]
    # two plots shown as an example
    show(plts[0])
    show(plts[10])
    # Preparation for the next box
    anim = animate(plts)

.. end of output

.. sagecellserver::

    plots = [beat(t0=t0, figsize=(4, 2)) for t0 in sxrange(0, 2*pi, pi/10)]
    graphics_array(plots, ncols=4).show()

.. end of output

Ready animation. We see the sequence of plots for different time arguments.

.. sagecellserver::

    %time
    anim.show()

.. end of output

Another approach, making use of plots defined above

.. sagecellserver::

    animate(plots).show()

.. end of output

Animation showing the impact of second frequency on the pulsation period.

.. sagecellserver::

    plots = [beat(omega2=omega2, plot_envelope=False, figsize=(4, 2)) for omega2 in sxrange(5, 15, 0.2)]
    animate(plots).show()

.. end of output

**Reflection and standing waves**

Standing wave as an interference of two waves travelling the opposite side. Students can manipulate all the parameters (it was an exercise).

.. sagecellserver::

    # Semi-automatic color control in the loop
    A=1
    omega=6
    v=13
    delay=30
    t_max= 7
    # This plots show time evolution of standing wave. Students may manipulate the constants
    sum( [plot(A*sin(omega*(t/delay-x/v))+A*sin(omega*(t/delay+x/v)),(x,0,20),figsize=6,color=hue(t/t_max)) for t in srange(0,t_max,1.0)] )

.. end of output

In order to make the time evolution of the standing wave more apparent, an animation is very useful.It might also be instructive to display the travelling waves.The variable delay seems to be unnecessary and the argument *x\-vt*  is used instead of *t\-x/v* so that no problem arises when v goes to zero.

.. sagecellserver::

    def running_wave(a=1, omega=1, v=10, t=0):
        wave(x) = a*sin(omega*(x-v*t))
        return wave
    trange = (x, 0, 20)
    figsize = (4, 2)
    v = 2
    plts = [plot(running_wave(v=v, t=t), trange, figsize=figsize)
            + plot(running_wave(v=-v, t=t), trange, color='green', figsize=figsize)
            + plot(running_wave(v=v, t=t)+running_wave(v=-v, t=t), trange, color='red', ymin=-2, ymax=2, figsize=figsize)
            for t in sxrange(0, 2*pi/v, pi/(10*v))]
    animate(plts).show()

.. end of output

Graphics array useful for a more detailed analysis.

.. sagecellserver::

    graphics_array(plts[0:6], ncols=3).show()

.. end of output

**Wave pulse and its reflection**

Motion of wave impulse. I know, that so defined impulse is not physical because of differential discontinuity, but it is the first approach to such kind of animations. Students were informed of the physical doubts.

.. sagecellserver::

    def pulse1(x):
        if x>=0 and x<=4*pi:
            return A1*sin(x)
        else:
            return 0.0

.. end of output

Two incoming wave impulses coming from opposite directions

.. sagecellserver::

    var('x')
    A1 = 1
    c = 1.4
    nl = 2
    nL = 4
    k = 4*pi # 2pi/wavelenght
    @interact 
    def _(t=slider(0,10,0.0001,default=1/c*(nL-nl)*2*pi)):
        x0 = -nL*2*pi/k
        x1 = (nL-nl)*2*pi/k  
        plt = Graphics()
        plt += plot( lambda x:pulse1(k*(x-x0)-c*t),(x,x0,1),figsize=(12,4),thickness=1)
        plt += plot( lambda x:pulse1(k*(x-x1)+c*t),(x,x0,2),color='red',thickness=1)
     
        plt.show()

.. end of output

Superposition of impuls and its reflection

.. sagecellserver::

    var('x')
    A1 = 1
    c = 3.4
    nl = 2
    nL = 4
    k = 4*pi # 2pi/wavelenght
    @interact 
    def _(t=slider(0,10,2*pi/k/64)):
        x0 = -nL*2*pi/k
        x1 = (nL-nl)*2*pi/k  
        plt = Graphics()
        plt += plot( lambda x:pulse1(k*(x-x0)-c*t)+pulse1(k*(x-x1)+c*t),(x,x0,0),figsize=(12,4),thickness=1,ymin=-2,ymax=2)
        plt.show()

.. end of output

Numerical wave reflection

.. sagecellserver::

    %time
    import numpy as np 
    N = 4048
    l = 50.
    dx = float(l)/(N-1)
    c2 = np.ones(N)
    dt = 0.005
    print(np.sqrt(np.max(c2))*dt/dx)
    x = np.linspace(0,l,N)
    u = np.zeros(N)
    u0 = np.zeros(N)
    unew = np.zeros(N)
    ulst=[u.copy()]
    n=4.
    T = 1.*l/n
    for i in range(25000):
        unew[1:-1] = 2.*u[1:-1] - u0[1:-1] + dt**2 *(c2[1:-1]/dx**2*np.diff(u,2))
        u0=u.copy()
        u=unew.copy()

        u[-1] = u[-2]
        u[0] = u[1]
   
        u[-1] = 0
        u[0] = 0
      
        if dt*i/T*2.0*np.pi< 4*np.pi:
            u[0] = 0.5*np.sin(dt*i/T*2.0*np.pi)
     
        if i%50==0:
            ulst.append(u.copy())

.. end of output

.. sagecellserver::

    @interact
    def _(ith=slider(range(len(ulst)))):
        u = ulst[ith]
        plt =  line(zip(x,u),figsize=(12,5),ymin=-1,ymax=1) 
        plt.show()

.. end of output

.. sagecellserver::

    len(ulst)

.. end of output

.. sagecellserver::

    plts = [line(zip(x,u),figsize=(6,2),ymin=-1,ymax=1) for u in ulst[::8]]
    animate(plts).show()

.. end of output

Conclusions
-----------

Programming in Python became an interesting supplement of physics
lesson. The benefit lies in the possibility of (more or less) easy
visualisation of processes with the change of parameters. Thank this,
the formulae presented during lectures are less abstract and everybody
can single\-handed check, how the result of interference depends on
frequencies, direction of speed and so on.

Animations itself were a new challenge for students. In the previous
version I asked student to develop somehow the code to create some new
ideas. It failed, because the code was too difficult for them. All
they are able to do is to manipulate the parameters.

Nevertheless, I judge this lesson high. Students were very interested
and engaged. Their skills, both in physics and informatics, increased.



