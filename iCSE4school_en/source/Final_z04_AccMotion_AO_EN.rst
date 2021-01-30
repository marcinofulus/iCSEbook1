.. -*- coding: utf-8 -*-


Accelerated motion
==================

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

The aim of the lesson is examining the accelerated motion, in particular sampling, whether this motion is uniformly accelerated, i.e. the acceleration is constant, and determining the value of acceleration. It requires a sequence of measurements in repeatable conditions. Python will be used for processing a big amount of data and conducting graphical analysis. The concept of the topic predicts the following stages of proceeding:

1. Carrying out a lesson in physical classroom, including theoretical lecture about uniformly accelerated motion and demonstration of proper experiment.

2. Carrying out a lesson in IT classroom about graphical data analysis, fitting straights and curves to measuring points and drawing error-bars.

3. Setting a homework: performing a similar exercise and work out data using methods introduced during IT lesson.

The order of first two points may be switched.

This document includes general speculations. Details of experimental lesson are contained in attached film (English subtitles available). Exemplary homeworks are enclosed in separate files.

Experimental part
-----------------

**Teaching resources**

1. Any system for repeatable examining accelerated motion. The best is slightly  inclined air track. An ordinary inclined plane and globule or trolley may work as well.

2. A device for distance measurements.

3. Set of devices measuring time. Student's smartphones are good for this purpose.

**The course of the lesson**

The whole course of lesson, description of experiment and expectation towards the way of data processing are contained in the film: `https://youtu.be/deTJ4i1V0dg <https://youtu.be/deTJ4i1V0dg>`_ In particular it shows the pattern of measuring chart, tips on the way of conducting the experiment and formulas necessary for calculations. Presented calculation methods basically exceeds the Curriculum, but thanks to Python they are very easy in use and students immediately gain spectacular results without any need of deep understanding all the mechanisms.

In simple words, the suggested experimental method requires marking on the plane a sequence of scores in a certain distances from the starting point and conducting several series of measurements of motion time from starting point to each particular score. The distance measurement accuracy (single measurement) is estimated as a scale interval (thickness of the chalk). Times for each score are averaged, and as their uncertainty we assume the standard deviation for each score. The uncertainty of complex measurements (square of time, acceleration) is calculated by logarithmic derivative method.

This experiment should be reported in writing, according to general recommendations published in PDF form on the school web site.

IT part
-------

The following section does not contain a complex problem solving, but only a set of tips, how to do different things. The rest remains for student's invention. In case of problems, enclosed exemplary student's homeworks may be used as a pattern. All data below are fabricated and their purpose is to show, how certain Python instructions work.

Exemplary calculation of standard deviation. Traditional calculation is arduous, in Python it comes down to execute a banal instruction:

.. sagecellserver::
    :linked: false  

    anydata = (3.4, 3.6, 3.3, 3.3, 3.5, 3.7, 3.6, 3.6, 3.6, 3.5) # przykładowe dane
    mean_data = mean(anydata) # mean value
    std_data = std(anydata) # standard deviation
    print(anydata)
    print("Mean value = ", N(mean_data, digits=3))
    print("Std deviation = ", N(std_data, digits=3))
 

.. end of output

Measuring data simulation and plot :math:`s(t)`


.. sagecellserver::

    s = (0, 0.03, 0.1, 0.39, 0.88, 1.62, 2.44, 3.55)
    t = (0, 0.5, 1.01, 2.1, 2.97, 3.88, 5.02, 5.95)
    delta_s = (0, 0.02, 0.02, 0.02, 0.05, 0.05, 0.05, 0.1)
    delta_t = (0.1, 0.1, 0.1, 0.2, 0.2, 0.2, 0.2, 0.3)
    pkt = zip(t, s)
    point(pkt, gridlines=True, size=25, color='red', axes_labels=['l', 'y'], legend_label='s(t)')


.. end of output

Fitting parabola to data. Without Sage environment it is absolutely infeasible for students. Here it comes down to a few simple instructions. The formula describing the parabola is written in such a manner, that the result of fitting gives directly the acceleration value. Pupil doesn't need to understand, how it works. He is convinced of proper result, seeing plot closely adhesive to measurement points.

.. sagecellserver::

    var ('a')
    parabola(x) = a/2*x^2 # Time is marked as x, to avoid collision in variables
    fit = find_fit(pkt, parabola,solution_dict=True)
    print(fit)
    rys1=plot(parabola.subs(fit), x, 0, 6, color="green", legend_label='fitted parabola')
    rys2=point(pkt, gridlines=True, size=25, color='red', legend_label='measurement points')
    rys1+rys2

.. end of output

Python is not equipped with mechanisms for automatic drawing error-bars. Additional library *matplotlib* is needed. Points are connected by broken line (fmt='o-').


.. sagecellserver::

    import matplotlib.pyplot as plt
    plt.clf()
    plt.errorbar(t, s, xerr=delta_t, yerr=delta_s, fmt='o-')
    plt.xlabel("t [s]")
    plt.ylabel("s [m]")
    plt.savefig('1.png')


.. end of output

Unfortunately, mentioned library does not draw function plots. To put on one plot both error-bars and fitted parabola, the following construction must be used. Function *linspace* scales the time axis (in this case from 0 to the last point t[7]) and determines the sampling density (here: 100 points - the more the curve is smoother).

.. sagecellserver::

    import matplotlib.pyplot as plt
    import numpy as np 
    plt.clf()
    plt.errorbar(t, s, xerr=delta_t, yerr=delta_s, fmt='o')
    plt.xlabel("Czas [s]")
    plt.ylabel("Droga [m]")
    t_ = np.linspace(0,t[7],100)
    plt.plot(t_,a.subs(fit)/2*t_**2)
    plt.grid()
    plt.xlim(0, 6.2)
    plt.ylim(0, 4)
    plt.savefig('1.png')
    plt.savefig('1.pdf')


.. end of output

Homework
--------

Construct any system for observing the accelerated motion. Conduct series of measurements of travelling time for different distances in this motion. Write a report in Sage notebook, including:

1. Theoretical introduction

2. Description of experimental system (with picture) and performed actions

3. Results of measurements and calculations

4. Graphical data analysis \- plots :math:`s(t), s(t^2)` and :math:`a(t)` with error-bars and fitted straights / curves

5. Discussion of results \- one should adjudicate by different means, whether the acceleration in observed motion was constant.

Detailed recommendations concerning writing reports are familiar for pupils, as they were published on school website in an PDF document many years ago.

Remarks concerning implementation
---------------------------------

This scenario was tested in the years 2015-2017 on three age groups of pupils of second class high school (age 17) learning physics at extended level. Earlier, before starting the project, similar experiment has been accomplished for many years, but reports were written in paper version. Python made easier the data processing and chart plotting and made feasible the calculation of parameters of straights / curves fitted to experimental data. Earlier it was impossible. If quantities were directly proportional, student could only apply a ruler to plotted points and check, whether the line goes through all error-bars.

The pupil's approach to project requirements was various. The middle age-group was the worst. It was the only class of science profile, which, because of some changes in the schedule, didn't realize the full extension in IT science. Some of the pupils declared open aversion to programming. Evident benefits of IT use didn't convince them. Therefore I agreed for hybrid solution - making calculations in Python and writing paper reports (with Python charts as attachments).

Pupils of first and third age-group didn't demonstrate any resistance in using IT technologies in full range. They didn't see also any obstacle in the necessity of learning Latex, needed in writing formulas in the reports. I also established cooperation with English teachers and encouraged the authors of the best reports to translate their works into English. For their effort pupils were granted additional points both in physics and in English.

Links to exemplary works:

Polish version: https://sage01.icse.us.edu.pl/home/pub/148/

English version: https://sage01.icse.us.edu.pl/home/pub/177/

Features of good report: http://3lo.edu.pl/?p=306

