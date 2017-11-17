.. -*- coding: utf-8 -*-

Sound Waves
===========


About this lesson plan
----------------------

This is a lesson plan for indented for realization during  2h lesson activities. 

It has been developed during work in iCSE4school project based on
lesson carried out in 2015-2017 at  The Stefan Batory High School in Chorzów.

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

The lesson described below was tested three times on students learning
physics at advanced level (age 17). In 2015 the numerical amount of
group was 14, in 2016: 21 and in 2017: 16. This lesson was preceded by
a short course of programming in Python and consists of two parts:
theoretical introduction and IT laboratory. Both parts were filmed in
2015 and published on Youtube with English subtitles.

The main aims of this lesson are:

- Explaining, what is sound.
- Explaining, what is acoustics, how it is divided and why?
- Defining all physical and physiological quantities describing sound.
- Giving a basic knowledge of sound spectrum.
- Exercising in plotting diagrams in Python.
- Showing, that any periodical function can be presented as a linear
  combination of sine functions.
- Exercising interaction and sliders in Python.

Preparing this lesson we should take into consideration the following circumstances:

- At high school level pupils cannot integrate. They have heard about
  integral and its applications, but performing integrations at the
  level required by Fourier transform is far beyond their
  abilities. Therefore real calculations must be replaced by simple
  playing with amplitudes of harmonics.
- It is the first students' contact with @interact and
  sliders. Technical problems themselves are heavy to overcome, so
  there is no point in making the physical side of the topic more
  difficult.
- This lesson (like any other) should be attractive, so spectacular
  results should be reached by relatively simple means.
- The level of difficulties of the examples should gradually grow
  during this lesson. A good idea is to show different solutions for
  the same problem.

Theoretical part
----------------

Exercises in programming were preceded by a theoretical lecture about sound waves, published at: `https://youtu.be/dp\-ajKHs6WU <https://youtu.be/dp-ajKHs6WU>`_

Main problems discussed in this lecture are the following:

- Definition of sound wave.
- Announcement, that some ideas from this lecture will be developed
  further during IT lesson with the use of SAGE and Python
- Definition of acoustics and explanation the essence of physical and
  physiological acoustics.
- Infrasounds and ultrasounds.
- Frequency / wavelength and their relation to the tone
- Spectrum of sound and its relation to the timbre.
- Weber \- Fechner law.
- Sound intensity level and its relation to the loudness (audiogram).
- Phase of the sound wave and its relation to the spatial impressions.

During this lesson a software acoustic generator is used to
demonstrate the tone output with respect to the frequency. It can also
show, how changes of shape of signal influences the sound spectrum and
timbre of voice. Students are informed, that they will use Python to
illustrate the shape of complex signal with respect to the amplitudes
of individual harmonics.

IT part
-------
The IT part of this lesson was executed in IT laboratory, filmed and published at: `https://youtu.be/0fVgRy6CpWQ <https://youtu.be/0fVgRy6CpWQ>`_

This film, made in 2015, shows the previous version of programming. After some improvement it looks as follows:


.. sagecellserver::

    sage: wall = 20 # limit of domain = end of space accessible for waves

.. end of output

Hypothetical complex wave, defined in a static manner

.. sagecellserver::

    sage: amplitudes = (1, 1/2, 3/10, 1/5, 1/10)
    sage: WaveComplex(t) = sum(a*sin((n+1)*t) for n, a in enumerate(amplitudes))
    sage: WaveComplex(t)
    1/10*sin(5*t) + 1/5*sin(4*t) + 3/10*sin(3*t) + 1/2*sin(2*t) + sin(t)

.. end of output

.. sagecellserver::

    sage: plot(WaveComplex, (t, 0, wall))

.. end of output

The same as above, but obtained with different tools.

.. sagecellserver::

    sage: def WaveComplexPlot(amplitudes=(1, 0.5, 0.3, 0.2, 0.1), tmin=0, tmax=20, **kwargs):
    ....:     WaveComplex(t) = sum(a*sin((n+1)*t) for n, a in enumerate(amplitudes))
    ....:     plt = plot(WaveComplex, (t, tmin, tmax), **kwargs)
    ....:     show(plt)
    sage: WaveComplexPlot(tmax=wall, figsize=(6, 3))

.. end of output

Another version of the same function, but the individual amplitudes are now controlled by sliders.

Because students are working on server sage03 with version 6.4.1 of SAGE, we cannot use the ready function histogram. Instead I propose my own version.

.. sagecellserver::

    sage: def WaveComplexPlot(A1=1, A2=0.5, A3=0.3, A4=0.2, A5=0.1, **kwarg):
    ....:     WaveComplex(t) = A1*sin(t) + A2*sin(t*2) + A3*sin(t*3) + A4*sin(t*4) + A5*sin(t*5)
    ....:     return plot(WaveComplex, t, 0, wall)
    sage: WaveComplexPlot(figsize=(2,1))

.. end of output

.. sagecellserver::

    sage: @interact
    sage: def _(A1_=slider(0,1,0.01), A2_=slider(0,1,0.01), A3_=slider(0,1,0.01), A4_=slider(0,1,0.01), A5_=slider(0,1,0.01)):
    ....:     plt = WaveComplexPlot(A1=A1_,A2=A2_, A3=A3_, A4=A4_, A5=A5_, figsize=(1,1))
    ....:     show(plt)
    ....:     histogram = line([(1,0), (1,A1_)], thickness=10) + line([(2,0), (2,A2_)], thickness=10) + line([(3,0), (3,A3_)], thickness=10) + line([(4,0), (4,A4_)], thickness=10) + line([(5,0), (5,A5_)], thickness=10)
    ....:     show(histogram)

.. end of output

Decomposition of an example function with the use of Fourier transform.

.. sagecellserver::

    sage: f(t) = sum(sin(n*t)/n for n in range(1, 6))
    sage: f = Piecewise([[(0, 2*pi), f]])
    sage: show(f.plot(), figsize=(4, 2))
    sage: sine_coeffs = [N(f.fourier_series_sine_coefficient(i, pi), digits=8) for i in range(20)]
    sage: show(bar_chart(sine_coeffs), figsize=(4, 2))

.. end of output

.. sagecellserver::

    sage: Piecewise?

.. end of output

Similar analysis extended to a sawtooth\-like function as well as the functions used with the sound generator as shown in the video.

.. sagecellserver::

    sage: sawtooth(t) = (pi-t)/2
    sage: sawtooth = Piecewise([[(0, 2*pi), sawtooth]])
    sage: show(sawtooth.plot(), figsize=(4, 2))
    sage: sine_coeffs = [N(sawtooth.fourier_series_sine_coefficient(i, pi), digits=8) for i in range(20)]
    sage: show(bar_chart(sine_coeffs), figsize=(4, 2))

.. end of output

.. sagecellserver::

    sage: triangle1(t) = pi/4*t
    sage: triangle2(t) = pi/4*(pi/2-(t-pi/2))
    sage: triangle3(t) = pi/4*((t-2*pi))
    sage: triangle = Piecewise([[(0, pi/2), triangle1],
    ....:                       [(pi/2, 3*pi/2), triangle2],
    ....:                       [(3*pi/2, 2*pi), triangle3]])
    sage: show(triangle.plot(), figsize=(4, 2))
    sage: sine_coeffs = [N(triangle.fourier_series_sine_coefficient(i, pi), digits=8) for i in range(20)]
    sage: show(bar_chart(sine_coeffs), figsize=(4, 2))

.. end of output

.. sagecellserver::

    sage: upper(t) = 1
    sage: lower(t) = -1
    sage: rectangle = Piecewise([[(0, pi), upper],
    ....:                        [(pi, 2*pi), lower]])
    sage: show(rectangle.plot(), figsize=(4, 2))
    sage: sine_coeffs = [N(rectangle.fourier_series_sine_coefficient(i, pi), digits=8) for i in range(20)]
    sage: show(bar_chart(sine_coeffs), figsize=(4, 2))

.. end of output

With the use of interact, the code segments above could be combined as follows. Students may now play with different input signal forms:

.. sagecellserver::

    sage: def pw_sawtooth():
    ....:     sawtooth(t) = (pi-t)/2
    ....:     return Piecewise([[(0, 2*pi), sawtooth]])
    sage: def pw_triangle():
    ....:     triangle1(t) = pi/4*t
    ....:     triangle2(t) = pi/4*(pi/2-(t-pi/2))
    ....:     triangle3(t) = pi/4*((t-2*pi))
    ....:     return Piecewise([[(0, pi/2), triangle1],
    ....:                       [(pi/2, 3*pi/2), triangle2],
    ....:                       [(3*pi/2, 2*pi), triangle3]])
    sage: def pw_rectangle():
    ....:     upper(t) = 1
    ....:     lower(t) = -1
    ....:     return Piecewise([[(0, pi), upper],
    ....:                       [(pi, 2*pi), lower]])
    sage: @interact
    sage: def fourier_sine_trafo(signalname=selector(['sawtooth', 'triangle', 'rectangle'])):
    ....:     signaldict = {'sawtooth': pw_sawtooth,
    ....:                   'triangle': pw_triangle,
    ....:                   'rectangle': pw_rectangle}
    ....:     signal = signaldict[signalname]()
    ....:     show(signal.plot(), figsize=(4, 2))
    ....:     sine_coeffs = [N(signal.fourier_series_sine_coefficient(i, pi), digits=8) for i in range(20)]
    ....:     show(bar_chart(sine_coeffs), figsize=(4, 2))

.. end of output

We can also control the number of iteration. In the example below, the loop superimposes plots of functions and displays the sum together with the components: 

.. sagecellserver::

    sage: @interact
    sage: def _(n=slider(1, 10, 1)):
    ....:     plt = sum(plot(sin(i*t)/i, (t, 0, wall), color=hue(i/10)) for i in range(1, n+1))
    ....:     plt = plt+plot(sum(sin(i*t)/i for i in range(1, n+1)), (t, 0, wall), color='black')
    ....:     show(plt)

.. end of output

Now the loop creates a complex wave built with harmonics of amplitudes inversely proportional to their frequencies. The number of iterations is controlled by a slider. The functions shown above are added each to other and the sum is plotted.

.. sagecellserver::

    sage: @interact
    sage: def _(n=slider(1, 20, 1)):
    ....:     wave(t) = sum(sin(i*t)/i for i in range(1, n+1))
    ....:     plot(wave, (t, 0, wall), figsize=(4, 2)).show()

.. end of output

The same effect, but without any interaction.

.. sagecellserver::

    sage: def WaveCmplx(t):
    ....:         w=0
    ....:         for i in range(1,10):
    ....:             w=w+1/i*sin(i*t)
    ....:         return w
    sage: plot(WaveCmplx,  (t, 0, wall), figsize=(4,2))

.. end of output

Conclusions
-----------
Using Python led pupils to better understanding the essence of sound spectrum. In high school pupils don't know Fourier transform \- it is beyond the curriculum. It is a big discovery for them, that any periodic function, which has the correct symmetries (which is the case in the context of acoustic waves), can be presented as a combination of sine functions.

From the other side, the participants of the lesson had an opportunity to learn the basic methods of plotting in interactive manner, which was new for them. The topic "sound spectrum" became less abstract, because students had it "in their hands".

My observation is, that students are happy when using ready tools included in this worksheet, but are not able to develop them. My attempts to encourage students to improve above code as a homework failed.




