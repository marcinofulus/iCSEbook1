.. -*- coding: utf-8 -*-

Please write a title for this worksheet!
========================================

 *Revised version of teaching materials for the topic:* 

Acoustic Effects

**Introduction**

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

**Theoretical part**

Exercises in programming were preceded by a theoretical lecture about acoustic effects. This lecture was filmed and published in Polish but with English subtitles.

`https://youtu.be/jWGTTD5\-mFA <https://youtu.be/jWGTTD5-mFA>`_

Main problems discussed in this lecture are the following:

- Echo
- After\-sound
- Acoustic resonance
- Standing waves (especially in instruments)
- Beats

I will not describe the details here, because all of them are visible in the film.

**IT part**

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

 Easy example of plot with fixed frequencies and initial phase, which can be changed inside the code. Results of those changes can be observed on the plot.****


::

    sage: # **kwarg allows adding additional "called" arguments
    sage: # dudnienia (beats) is a function returning a plot of superimposed functions y1 and y2
    sage: def dudnienia(omega1=10,omega2=11,A1=1,A2=1,fi=2,t0=0,**kwarg):
    ...       y1(t)=A1*sin(omega1*(t-t0))
    ...       y2(t)=A2*sin(omega2*(t-t0)+fi)
    ...       y(t)=y1(t)+y2(t)
    ...       return   plot(y, (t, 0, 10),ymax=A1+A2,ymin=-(A1+A2),**kwarg )
    sage: dudnienia(figsize=(4,2))


.. end of output

More complex drawing including the parameters of functions and envelope. For simplicity the amplitudes are chosen to be equal.


::

    sage: def envelope(omega1, omega2, a, phase, t0):
    ...       f(t) = 2*a*cos((omega1-omega2)*(t-t0)/2-phase/2)
    ...       return f
    sage: def beat(omega1=10, omega2=11, a=1, phase=2, t0=0, plot_envelope=True, **kwargs):
    ...       y1(t) = a*sin(omega1*(t-t0))
    ...       y2(t) = a*sin(omega2*(t-t0)+phase)
    ...       y(t) = y1(t)+y2(t)
    ...       title = '$t_0 = %4.2f,\ \omega_1 = %5.2f,\ \omega_2 = %5.2f$' % (t0, omega1, omega2)
    ...       range = (t, 0, 10)
    ...       plt = plot(y, range, ymin=-2*a, ymax=2*a, title=title, **kwargs)
    ...       if plot_envelope:
    ...           envelope_func = envelope(omega1, omega2, a, phase, t0)
    ...           plt = plt+plot(envelope_func, range, color='red', **kwargs)
    ...           plt = plt+plot(-envelope_func, range, color='red', **kwargs)
    ...       return plt
    sage: beat(t0=2.5, figsize=(4, 2))


.. end of output

::

    sage: # A slider controlling the time shift
    sage: @interact
    sage: def _(t0=slider(0, 2*pi, 0.01, label="$t_0$")):
    ...       plt = beat(t0=t0, figsize=(4,2))
    ...       show(plt)


.. end of output

::

    sage: # Controlling the frequency of second wave
    sage: @interact
    sage: def _(t0=slider(0, 10, 0.01, label="$t_0$"),
    ...         omega2=slider(10, 12, 0.01, label="$\omega_2$")):
    ...       plt = beat(t0=t0 , omega2=omega2, figsize=(4,2))
    ...       show(plt)


.. end of output

::

    sage: # plts - it is a collection of plots for time argument t0 iterated in a loop.
    sage: plts = [dudnienia(t0=t0_,figsize=(4,2)) for t0_ in srange(0,6.3,0.2)]
    sage: # two plots shown as an example
    sage: show(plts[0])
    sage: show(plts[10])
    sage: # Preparation for the next box
    sage: anim = animate(plts)


.. end of output

::

    sage: plots = [beat(t0=t0, figsize=(4, 2)) for t0 in sxrange(0, 2*pi, pi/10)]
    sage: graphics_array(plots, ncols=4).show()


.. end of output

::

    sage: # Ready animation. We see the sequence of plots for different time arguments.
    sage: # %time
    sage: anim.show()


.. end of output

Another approach, making use of plots defined above


::

    sage: animate(plots).show()


.. end of output

Animation showing the impact of second frequency


::

    sage: plots = [beat(omega2=omega2, plot_envelope=False, figsize=(4, 2)) for omega2 in sxrange(5, 15, 0.2)]
    sage: animate(plots).show()


.. end of output

**Reflection and standing waves**

Standing wave as an interference of two waves travelling the opposite side. Students can manipulate all the parameters (it was an exercise).


::

    sage: # Semi-automatic color control in the loop
    sage: A=1
    sage: omega=6
    sage: v=13
    sage: delay=30
    sage: t_max= 7
    sage: # This plots show time evolution of standing wave. Students may manipulate the constants
    sage: sum( [plot(A*sin(omega*(t/delay-x/v))+A*sin(omega*(t/delay+x/v)),(x,0,20),figsize=6,color=hue(t/t_max)) for t in srange(0,t_max,1.0)] )


.. end of output

In order to make the time evolution of the standing wave more apparent, an animation is very useful.It might also be instructive to display the travelling waves.The variable delay seems to be unnecessary and the argument x\-vt  is used instead of t\-x/v so that no problem arises when v goes to zero.


::

    sage: def running_wave(a=1, omega=1, v=10, t=0):
    ...       wave(x) = a*sin(omega*(x-v*t))
    ...       return wave
    sage: range = (x, 0, 20)
    sage: figsize = (4, 2)
    sage: v = 2
    sage: plts = [plot(running_wave(v=v, t=t), range, figsize=figsize)
    ...           + plot(running_wave(v=-v, t=t), range, color='green', figsize=figsize)
    ...           + plot(running_wave(v=v, t=t)+running_wave(v=-v, t=t), range, color='red', ymin=-2, ymax=2, figsize=figsize)
    ...           for t in sxrange(0, 2*pi/v, pi/(10*v))]
    sage: animate(plts).show()


.. end of output

Graphics array useful for a more detailed analysis.


::

    sage: graphics_array(plts[0:6], ncols=3).show()


.. end of output

**Wave pulse and its reflection**

Motion of wave impulse. I know, that so defined impulse is not physical because of differential discontinuity, but it is the first approach to such kind of animations. Students were informed of the physical doubts.


::

    sage: def pulse1(x):
    ...       if x>=0 and x<=4*pi:
    ...           return A1*sin(x)
    ...       else:
    ...           return 0.0


.. end of output

Two incoming wave impulses coming from opposite directions


::

    sage: var('x')
    sage: A1 = 1
    sage: c = 1.4
    sage: nl = 2
    sage: nL = 4
    sage: k = 4*pi # 2pi/wavelenght
    sage: @interact 
    sage: def _(t=slider(0,10,0.0001,default=1/c*(nL-nl)*2*pi)):
    ...       x0 = -nL*2*pi/k
    ...       x1 = (nL-nl)*2*pi/k  
    ...       plt = Graphics()
    ...       plt += plot( lambda x:pulse1(k*(x-x0)-c*t),(x,x0,1),figsize=(12,4),thickness=1)
    ...       plt += plot( lambda x:pulse1(k*(x-x1)+c*t),(x,x0,2),color='red',thickness=1)
    ...       
    ...       plt.show()


.. end of output

Superposition of impuls and its reflection


::

    sage: var('x')
    sage: A1 = 1
    sage: c = 3.4
    sage: nl = 2
    sage: nL = 4
    sage: k = 4*pi # 2pi/wavelenght
    sage: @interact 
    sage: def _(t=slider(0,10,2*pi/k/64)):
    ...       x0 = -nL*2*pi/k
    ...       x1 = (nL-nl)*2*pi/k  
    ...       plt = Graphics()
    ...       plt += plot( lambda x:pulse1(k*(x-x0)-c*t)+pulse1(k*(x-x1)+c*t),(x,x0,0),figsize=(12,4),thickness=1,ymin=-2,ymax=2)
    ...       plt.show()


.. end of output

Numerical wave reflection


::

    sage: %time
    sage: import numpy as np 
    sage: N = 4048
    sage: l = 50.
    sage: dx = float(l)/(N-1)
    sage: c2 = np.ones(N)
    sage: dt = 0.005
    sage: print np.sqrt(np.max(c2))*dt/dx
    sage: x = np.linspace(0,l,N)
    sage: u = np.zeros(N)
    sage: u0 = np.zeros(N)
    sage: unew = np.zeros(N)
    sage: ulst=[u.copy()]
    sage: n=4.
    sage: T = 1.*l/n
    sage: for i in range(25000):
    ...       unew[1:-1] = 2.*u[1:-1] - u0[1:-1] + dt**2 *(c2[1:-1]/dx**2*np.diff(u,2))
    ...       u0=u.copy()
    ...       u=unew.copy()
    ...       
    ...       u[-1] = u[-2]
    ...       u[0] = u[1]
    ...     
    ...       u[-1] = 0
    ...       u[0] = 0
    ...       
    ...       if dt*i/T*2.0*np.pi< 4*np.pi:
    ...           u[0] = 0.5*np.sin(dt*i/T*2.0*np.pi)
    ...       
    ...       if i%50==0:
    ...           ulst.append(u.copy())
    0.4047
    CPU time: 5.31 s,  Wall time: 5.30 s

.. end of output

::

    sage: @interact
    sage: def _(ith=slider(range(len(ulst)))):
    ...       u = ulst[ith]
    ...       plt =  line(zip(x,u),figsize=(12,5),ymin=-1,ymax=1) 
    ...       plt.show()


.. end of output

::

    sage: len(ulst)
    501

.. end of output

::

    sage: plts = [line(zip(x,u),figsize=(6,2),ymin=-1,ymax=1) for u in ulst[::8]]
    sage: animate(plts).show()


.. end of output

**Conclusions**

Programming in Python became an interesting supplement of physics lesson. The benefit lies in the possibility of (more or less) easy visualisation of processes with the change of parameters. Thank this, the formulae presented during lectures are less abstract and everybody can single\-handed check, how the result of interference depends on frequencies, direction of speed and so on.

Animations itself were a new challenge for students. In the previous version I asked student to develop somehow the code to create some new ideas. It failed, because the code was too difficult for them (and sometimes also for me). All they are able to do is to manipulate the parameters.

Nevertheless, I judge tis lesson high. Students were very interested and engaged. Their skills, both in physics and informatics, increased.

Adam Ogaza, Gert\-Ludwig Ingold, Marcin Kostur, 22nd October 2016


