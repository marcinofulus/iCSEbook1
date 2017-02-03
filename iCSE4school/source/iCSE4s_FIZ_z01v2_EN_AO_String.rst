.. -*- coding: utf-8 -*-

Examining vibrations of a string
================================



*Teaching materials for teachers*


Introduction
------------

The aims of lesson:

-  Experimental determination the dependence of frequency on the length of the string.
-  Use Python to carry out the graphical data analysis.

 

Educational aids:

-  String stretched on a ruler / resonance box / any string instrument
-  Acoustic generator
-  Loudspeaker 
-  Phone application measuring frequency of sound 
-  Phone application generating sound of a given frequency


Used methods:

-  Preliminary computer exercises in drawing plots in Python and fitting straits and curves to experimental data.
-  Lecture – as a theoretical introduction.
-  Exercises in groups – measurements of vibration frequencies for string of different lengths.

 

This lesson is addressed to students of age 17, learning at advanced level. It fulfills the following requirements included in National Curriculum:

-  General requirement V: “planning and executing simple experiments and analyzing their results”.

 
-  Detailed requirement 6.8: “student uses in calculations the relations between wave parameters: length, frequency, period and velocity”

 
-  Detailed requirement 6.12: “student describes standing waves and their dependence on waves running backwardly”.

 
-  Intersection requirement 12.2: “student single\-handedly makes correct graphs”.

 
-  Intersection requirement 12.5: “student fits a straight line y = ax \+ b to the graph and calculates the coefficients a and b”.

 
-  Experimental requirement 13.6: “student examines string vibrations (for example the dependence of frequency on the length), does the measurements, description, data analysis and graph interpretation”

 

The described topic is a simple example of a perfect integration science with IT and teaching English. Therefore it must be carried out both in computer laboratory, physics laboratory and English class\-room.

IT Part
-------

The experimental lesson must be preceded by a basic course of Python, including drawing and formatting graphs and fitting functions to measuring points. Polish National Curriculum requires only fitting straight lines y = ax \+ b and counting the coefficients a and b. Python allows to fit any curve without any effort, so it is a good opportunity to play with hyperbola. The additional skills needed to complete the homework assigned at the end of experimental lesson are: formatting text in SAGE, inserting pictures and making tables in the text. It is advisable to perform with students the following exercises:

1. Insert any photo into SAGE document:

   .. image:: iCSE4s_FIZ_z01v2_EN_AO_String_media/DSC04811.JPG
      :align: center

2. Create and format a hypothetical table:

=== ==== === === === === === === === ==
LP. 1    2   3   4   5   6   7   8   9 
l   5    10  15  20  30  40  50  70  90
y   1750 879 589 444 309 243 185 122 99
=== ==== === === === === === === === ==

3. Create and decorate a dot diagram of it.


.. sagecellserver::

    sage: # Creation the dot diagram
    sage: l = [5, 10, 15, 20, 30, 40, 50, 70, 90]
    sage: y = [1750, 879, 589, 444, 309, 243, 185, 122, 99]
    sage: point(zip(l,y))


.. end of output

.. sagecellserver::

    sage: # Methods of decorating the diagram
    sage: pkt=[(l[i],y[i]) for i in range(len(l))]
    sage: point(pkt, gridlines=True, size=25, color='red', axes_labels=['l', 'y'], legend_label='y(l)')


.. end of output

Tabular output of data (instead of print)


.. sagecellserver::

    sage: data = [['l', 'y']]
    sage: data.extend(zip(l, y))
    sage: table(data)



.. end of output

4) Fit a hyperbola to above points


::

    sage: # Fitting a hyperbola
    sage: var ('a, b')
    sage: hyper(x) = a/x+b
    sage: fit = find_fit(pkt, hyper,solution_dict=True)
    sage: print fit
    sage: rys1=plot(hyper.subs(fit), x, 5, 90, color="green", legend_label='fitted hyperbola')
    sage: rys2=point(pkt, gridlines=True, size=25, color='red', legend_label='measuring points')
    sage: rys1+rys2
    {b: 10.119707922401814, a: 8702.825243335203}

.. end of output

5) Assume, that l represents the length of string and y stands for the frequency. Draw the graph T(l), where T is the period and fit a straight line to it. Examine, whether forcing the straight to go through the origin of coordinates changes much.


::

    sage: pktinv=[(l[i],N(1/y[i], digits=4)) for i in range(len(l))]
    sage: print pktinv
    sage: var ('a, b, c')
    sage: straight(x) = a*x+b
    sage: straight0(x) = c*x
    sage: fit = find_fit(pktinv, straight,solution_dict=True)
    sage: print fit
    sage: fit0 = find_fit(pktinv, straight0,solution_dict=True)
    sage: print fit0
    sage: rys1=plot(straight.subs(fit), (x, 0, 90), color="green", legend_label='fitted straight line')
    sage: rys0=plot(straight0.subs(fit0), (x, 0, 90), color="yellow", legend_label='going through 0')
    sage: rys2=point(pktinv, gridlines=True, size=25, color='red', legend_label='measuring points', axes_labels=['l [cm]','T [s]'])
    sage: rys1+rys0+rys2
    [(5, 0.0005714), (10, 0.001138), (15, 0.001698), (20, 0.002252), (30, 0.003236), (40, 0.004115), (50, 0.005405), (70, 0.008197), (90, 0.01010)]
    {b: -7.478975440361598e-05, a: 0.00011329332454009768}
    {c: 0.00011197702487309774}

.. end of output

**Experimental Part**

At the beginning the teacher ask pupils to recall the ideas of standing waves, frequency, wave length and phase velocity. Next, he derives the formula   *f* (  *l*  ), where  *l*  is the length of string. It shows, that this two variables are inversely proportional. Checking this dependence is the main aim of this lesson.

Next, students are divided into groups. Each group chooses one instrument. It may be a string stretched on a ruler, string stretched on a resonance box or any real music string instrument. Groups move far away each from other to minimize the mutual disturbance.

In each group somebody is responsible for putting the string into vibrations. Simultaneously, somebody else generates sound using software generator. It has a property of fluent adjusting the frequency. When the group judge, that the tone coming out from the loudspeaker is the same as from the string, they note the length of string and frequency. This measurement is repeated for different length of the oscillator, in the most possible range. Alternatively, students may make independent measurements, using software applications in their smartphones.

All collected data are noted in a table in notebooks. Students are encouraged to make photos. The teacher announces, that this data and photos will be used in a homework.

**Homework**

Write in SAGE a short report of the executed experiment, including description of the essence of the matter, measuring system (with photo), used tools, performed activities, obtained results and inferences. In particular, the report should prove or refute the hypothesis, that frequency of vibrations is reciprocally proportional to the length of string.

The data are shared for the whole groups, but all reports must be independent and individual. The authors of best reports will have the right to translate their works into English and publish them, gaining additional points for it. English teachers are ready to assist and supervise pupils in translation.

*Evaluation Report*

The second edition of the lesson *Examining String Vibrations* was accomplished 5th April 2016 (both IT and experimental parts). Students were divided into 5 groups of four people each. One girl brought her own violin, somebody else used her own guitar. The remaining 3 groups were equipped with instruments from my laboratory, i.e. a string stretched on resonance box and two strings stretched on a ruler. All groups were equipped with software acoustic generators and applications measuring the dominant frequency of heared sound. Some groups stayed in the classroom, whereas the others went to corridor to carry out their measurements far away from noises generated by other groups.

After tentative calculations it occurred, that 4 groups succeeded in their measurements, whereas one encountered disturbances by voices coming from the neighbor group. They asked me to repeat this experiment during additional classes. Finally, all students obtained reasonable results and wrote quite good reports.

After two weeks we met again in the IT laboratory. By this time I had made a preliminary assessments of the works. I explained my remarks and advised, what could be improved. After next week I set the final assessments. Five works got the highest grades and moved on to the second step. Their authors were granted a possibility to translate the works into English and publish them for extra points. Earlier I asked English teacher for cooperation. They supervised the translations and also made their own assessments of the language. All the awarded homeworks are published at sage01 server.

This lesson was a great success. Students liked it very much. I managed to integrate physics not only with IT, but also with English. Language teachers appreciated my initiative and reported, that it was an interesting experience both for them and for the students. They teach a subject called   *technical English for engineers* and this was its live, practical application.

I will not describe the individual student’s conclusions, because they are all included in the original works.


