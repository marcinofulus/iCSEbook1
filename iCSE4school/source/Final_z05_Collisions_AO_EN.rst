.. -*- coding: utf-8 -*-


Collisions
==========

Description of the problem
--------------------------

The experiment presented in this document has been accomplished during facultative activities and has the status of optional task. Interested pupils might conduct it, film it and describe in a report, additionally evaluated.

The task is to analyze a central collision of 2 bodies of known masses on air truck. The original gliders of air track were equipped with elastic metal bumpers. Because I noticed, that during collisions part of the energy dissipates, causing permanent deformations of bumpers, I replaced them by repelling neodymium magnets. One can expect, that now the collisions will be perfectly elastic, so that both momentum and kinetic energy will be conserved. Such experiment gives also opportunity for detailed investigation the nature of magnetic forces.

Collisions lasted about 3 seconds and were filmed using HD cameras. Exemplary film is available here: https://youtu.be/JSpKctrX_YM

The pupil's task was to read out (frame by frame) positions of both gliders from the air track's scale. There were a few gliders to choose from, each of different mass. The variables :math:`x_1` and :math:`x_2` denote coordinates of the ends of gliders' grounds turned to each other. The magnets glued to gliders jutted by :math:`d_1` and :math:`d_2`, so that the distance between poles was less from :math:`|x_2-x_1|` by :math:`d_1+d_2`. The set of experimental data was the following:

- Gliders' masses: :math:`m_1` and :math:`m_2` from about 0,17 kg to over 0,4 kg

- Sizes of magnets and their fastening: :math:`d_1` and :math:`d_2`, about 0,01 m

- Time was calculated iteratively and, depending on the camera, was increasing with the step 1/25 s or 1/30 s

- Gliders' coordinates :math:`x_1(t)` i :math:`x_2(t)` red out from the film and expressed in meters. If gliders were moving towards decreasing values on the scale, their velocities and momentums were negative.

On the basis of above data, one should draw and interpret the following charts:

- :math:`x_1(t)` and :math:`x_2(t)` - gliders' positions as a function of time.

- :math:`v_1(t)` and :math:`v_2(t)` - gliders' instantaneous velocities in particular frames. When points of charts created a chaotic cloud (data noising), I advised to take averages from 2 neighbor frames.

- :math:`p_1(t), p_2(t)` and :math:`p_c(t)` - momentums of particular gliders and the whole system. One should check, whether the total momentum was conserved.

- :math:`E_1(t), E_2(t)` and :math:`E_c(t)` - gliders' kinetic energies and their sum. One should check, whether the total kinetic energy was conserved.

- :math:`a_1(t)` and :math:`a_2(t)` - gliders' accelerations.

- :math:`F_1(t)` and :math:`F_2(t)` - forces applied to gliders.

- :math:`F(r)` - dependence of magnetic force on the distance between poles.

Remarks concerning implementation
---------------------------------

**Data of first student** 

It was a trailblazing performance of this experiment in April 2016, done by a single volunteer from the firs age-group of pupils involved in the project.

Results of measurements and charts :math:`x_1(t)` and :math:`x_2(t)`:

.. sagecellserver::

    sage: m1=0.1793
    sage: m2=0.3197
    sage: d1=0.01
    sage: d2=0.011
    sage: delta_t=1/30
    sage: t=[(i*delta_t) for i in range(0,100)]
    sage: x1=[1.005,1.005,1.005,1.005,1.006,1.006,1.006,1.006,1.007,1.007,1.007,1.007,1.008,1.008,1.008,1.008,1.009,1.009,1.009,1.009,1.010,1.010,1.010,1.010,1.011,1.011,1.011,1.011,1.012,1.012,1.012,1.012,1.013,1.013,1.013,1.013,1.014,1.014,1.014,1.014,1.015,1.015,1.015,1.016,1.016,1.015,1.012,1.007,0.994,0.978,0.963,0.948,0.931,0.914,0.899,0.882,0.863,0.846,0.830,0.817,0.800,0.783,0.765,0.749,0.733,0.716,0.700,0.684,0.668,0.652,0.636,0.620,0.605,0.590,0.575,0.559,0.543,0.528,0.512,0.496,0.481,0.466,0.450,0.434,0.419,0.403,0.387,0.373,0.357,0.342,0.326,0.311,0.296,0.282,0.266,0.251,0.238,0.224,0.208,0.200]
    sage: x2=[1.720,1.710,1.695,1.680,1.665,1.650,1.635,1.620,1.605,1.589,1.573,1.559,1.545,1.530,1.515,1.501,1.486,1.472,1.458,1.443,1.429,1.415,1.400,1.388,1.375,1.362,1.347,1.332,1.319,1.304,1.291,1.277,1.264,1.249,1.235,1.221,1.208,1.195,1.183,1.169,1.156,1.143,1.130,1.117,1.100,1.090,1.079,1.068,1.057,1.047,1.040,1.036,1.034,1.030,1.026,1.022,1.019,1.015,1.011,1.008,1.004,1.000,0.997,0.994,0.991,0.987,0.984,0.981,0.978,0.974,0.970,0.966,0.962,0.960,0.956,0.953,0.950,0.946,0.942,0.938,0.935,0.931,0.928,0.925,0.922,0.919,0.915,0.911,0.908,0.904,0.899,0.895,0.891,0.887,0.885,0.881,0.878,0.874,0.871,0.868]
    sage: x1t=[(t[i],x1[i]) for i in range(0,100)]
    sage: x2t=[(t[i],x2[i]) for i in range(0,100)]
    sage: xt=point(x1t,color="red",legend_label='x1(t)')+point(x2t,color="blue",legend_label='x2(t)')
    sage: xt

.. end of output

Charts :math:`v_1(t)` and :math:`v_2(t)`: 

.. sagecellserver::

    sage: v1=[((x1[i+1]-x1[i])/(delta_t)) for i in range(0,99)]
    sage: v2=[((x2[i+1]-x2[i])/(delta_t)) for i in range(0,99)]
    sage: v1t=[(t[i],v1[i]) for i in range(0,99)]
    sage: v2t=[(t[i],v2[i]) for i in range(0,99)]
    sage: vt=point(v1t,color="red",legend_label='v1(t)')+point(v2t,color="blue",legend_label='v2(t)')
    sage: vt

.. end of output


We see a big noise caused by a limited resolution in reading out the coordinates in time. A small fluctuations of position increases in respective frames, invisible on position charts, are enough to spill the chart of velocity. The data noise devolves (and increases) into charts of momentums, kinetic energies (here we have a square of speed), accelerations and forces. I advised to take average speed for every two neighbor frames:

.. sagecellserver::

    sage: v1=[((x1[i+1]-x1[i-1])/(2*delta_t)) for i in range(1,99,2)]
    sage: v2=[((x2[i+1]-x2[i-1])/(2*delta_t)) for i in range(1,99,2)]
    sage: v1t=[(t[2*i],v1[i]) for i in range(0,49)]
    sage: v2t=[(t[2*i],v2[i]) for i in range(0,49)]
    sage: vt=point(v1t,color="red",legend_label='v1(t)')+point(v2t,color="blue",legend_label='v2(t)')
    sage: vt

.. end of output

The noise decreased, but it refers also to the amount of chart points and time resolution of investigated phenomenon. We lose the most interesting processes going on in a short while during the closest gliders' approach.

The pupil made the rest of charts, wrote the report and drew conclusions, but in the cloud of measurement points it was difficult to discern any interesting details. The noise can be reduced by advanced mathematical means, far away from high school pupil's capabilities.

**Data of second student** 

In October 2016 the whole group of next pupils age-group filmed their collisions. They tried to investigate different cases, varying the gliders' masses, values and senses of velocity or putting one glider motionless (as a target). I dish up data from the best elaboration (referring to film quoted above).

Results of measurements and charts :math:`x_1(t)` and :math:`x_2(t)`

.. sagecellserver::

  m1 = 0.4093
  m2 = 0.17195
  d1 = 0.011
  d2 = 0.01
  delta_t = 1/25
  t = [(i*delta_t) for i in range(0, 61)]
  x1 = [0.187, 0.197, 0.207, 0.217, 0.227, 0.237, 0.247, 0.257, 0.266, 0.276, 
  0.286, 0.296, 0.306, 0.316, 0.325, 0.335, 0.345, 0.354, 0.364, 0.374, 
  0.383, 0.393, 0.403, 0.413, 0.422, 0.432, 0.442, 0.451, 0.461, 0.471, 
  0.480, 0.490, 0.500, 0.509, 0.519, 0.529, 0.538, 0.546, 0.554, 0.558, 
  0.560, 0.561, 0.562, 0.563, 0.5635, 0.5638, 0.564, 0.5645, 0.565, 0.5655, 
  0.566, 0.5665, 0.567, 0.5675, 0.568, 0.568, 0.5685, 0.569, 0.569333, 0.569666,   0.567]
  x2 = [0.845, 0.837, 0.83, 0.823, 0.816, 0.809, 0.801, 0.793, 0.786, 0.78, 
  0.774, 0.767, 0.76, 0.754, 0.746, 0.739, 0.733, 0.726, 0.72, 0.713, 0.705, 
  0.699, 0.692, 0.686, 0.68, 0.673, 0.666, 0.66, 0.653, 0.647, 0.64, 0.633, 
  0.628, 0.621, 0.616, 0.61, 0.604, 0.602, 0.605, 0.615, 0.629, 0.644, 0.66, 
  0.677, 0.691, 0.706, 0.723, 0.738, 0.754, 0.77, 0.786, 0.802, 0.818, 0.833, 
  0.848, 0.863, 0.878, 0.892, 0.906, 0.92, 0.936]
  x1t = [(t[i], x1[i]) for i in range(0, 61)]
  x2t = [(t[i],x2[i]) for i in range(0, 61)]
  xt = point(x1t, color = "red", legend_label = 'x1(t)')+point(x2t, color = "blue",    legend_label = 'x2(t)')
  xt
.. end of output

Charts :math:`v_1(t)` and :math:`v_2(t)`

The averaging over neighbor frames was applied immediately, to reduce the noise.

.. sagecellserver::

  v1 = [((x1[i+1]-x1[i-1])/(2*delta_t)) for i in range(0,60,1)]
  v2 = [((x2[i+1]-x2[i-1])/(2*delta_t)) for i in range(0,60,1)]
  v1t = [(t[i], v1[i]) for i in range(1, 60)]
  v2t = [(t[i], v2[i]) for i in range(1, 60)]
  vt = point(v1t, color = "red", legend_label='v1(t)')+point(v2t, color = "blue", legend_label = 'v2(t)')
  vt
.. end of output

Nie będę przedstawiał sposobu tworzenia dalszych wykresów, gdyż z punktu widzenia technik programowania nie ma w nich niczego odkrywczego. Uczniowie są w stanie samodzielnie napisać kod pozostałych komórek. Wystarczy umieć posługiwać się pętlą, znać instrukcje tworzenia wykresów i dopasowywania prostej do punktów pomiarowych. Ewentualne wątpliwości rozwieje oryginalna praca domowa ucznia:

Polish version: https://sage01.icse.us.edu.pl/home/pub/146/

English version: https://sage01.icse.us.edu.pl/home/pub/147/ 

Dodam tylko, że nie w pełni zgadzam się z przedstawionymi tam wnioskami końcowymi. Ponadto, moim zdaniem, uczeń zupełnie niepotrzebnie dopasowywał wielomiany 12 stopnia do wykresów prędkości. Nie wiem, czemu to miało służyć.

Conclusions
-----------

Przedstawione doświadczenie było jednym z ciekawszych w mojej karierze zawodowej. Ze względu na mnogość różnych sytuacji (dowolne prędkości, kilka mas ślizgaczy do wyboru), można było uzyskać zupełnie różne rezultaty. Uczniowie mieli też swobodę w wyciąganiu wniosków, była to ich samodzielna praca badawcza. Na przykład w cytowanej pracy, na wykresie energii kinetycznej widać wyraźne minimum w chwili największego zbliżenia wózków. Uczeń zinterpretował to jako błąd pomiarowy spowodowany zbyt szybko zmieniającymi się prędkościami. Moim zdaniem jest to moment, w którym energia kinetyczna częściowo zamieniła sie w energię oddziaływań magnetycznych. Ale dlaczego, w takim razie, widać też załamanie na wykresie pędu całkowitego?

Doświadczenie dotyczyło w zasadzie czystej mechaniki, ale przy okazji dało sposobność zbadania charakteru siły magnetycznej. Uczniowie mogli dopasowywać do wykresu :math:`F(r)` dowolne krzywe - nie narzucałem tutaj rozwiązań. Należało spojrzeć na dane i domyślić się, jakiego typu krzywa będzie najbardziej odpowiednia.

Jak widać z powyższej analizy, kluczowe znaczenie ma precyzyjny odczyt położeń ślizgaczy na poszczególnych klatkach filmu. Nie jest to łatwe i wymaga zastosowania kamery o dobrych parametrach. Szum danych można częśiowo usunąć, ale odbywa sie to kosztem obniżenia rozdzielczości, z jaką widzimy całe zjawisko.

Wartością dodatkową była owocna współpraca z anglistami, pod okiem których autorzy najlepszych prac dokonali ich tłumaczenia. Uczniowie klas ścisłych realizują w naszej szkole dodatkowy przedmiot o nazwie *język angielski dla inżynierów*. Doświadczenie z fizyki stworzyło możliwość przećwiczenia języka technicznego na żywym przykładzie i otrzymania dodatkowej oceny z tego przedmiotu.

    Adam Ogaza, 2017.