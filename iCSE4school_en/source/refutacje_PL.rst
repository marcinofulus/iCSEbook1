refutacje PL
-------------------------

Warsztaty dla nauczycieli: Katowice
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. admonition:: Zafrapować

  :math:`\verb+sqrt(2)+=\sqrt{2}\quad\quad\quad\verb+sqrt(2)+\approx\sqrt{2}`
  
* Czy w powyższych znaczkach jest jakaś różnica?
  
.. admonition:: Zachęcić do poszukiwań

  Jakimi metodami możemy uzyskiwać przybliżenia :math:`\sqrt{2}`?
  
* Jak Twoje urządzenie "rozumie" :math:`\verb+sqrt(2)+`?
  
.. admonition:: Przejść się spacerkiem historycznym

  Newton, Heron, Babilon
  
.. sagecellserver::

  p=2 #zmień p
  for n in range(1,6): #zmień przedział
      p=0.5*(p+2/p)
      print p
      print "błąd =",abs(N(sqrt(2)-p))

.. admonition:: Zadać pytanie podstawowe

  Po co?
  
Przekształćmy wyrażenie zawierające :math:`\sqrt{2}`, np.

.. math::

  \left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3,

wykorzystujęc m.in. wzory skróconego mnożenia:

.. math::

  \left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3=\left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\cdot\frac{\sqrt{2}-1}{\sqrt{2}-1}\right)^3=\left(\sqrt{2}-1\right)^6,


ale

.. math::

  \left(\sqrt{2}-1\right)^6=\left(\left(\sqrt{2}-1\right)^2\right)^3=\left(3-2\sqrt{2}\right)^3,
  
i  

.. math::

  \left(\sqrt{2}-1\right)^6=\left(\left(\sqrt{2}-1\right)^3\right)^2=\left(5\sqrt{2}-7\right)^2,

i wreszcie

.. math::

  \left(\sqrt{2}-1\right)^6=\left(5\sqrt{2}-7\right)^2=99-70\sqrt{2}.
  
Niech

.. math::

  w_1=99-70\sqrt{2},\quad w_2=\left(5\sqrt{2}-7\right)^2,\quad w_3=\left(3-2\sqrt{2}\right)^3


.. math::
   
  w_4=\left(\sqrt{2}-1\right)^6,\quad w_5=\left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3.

  
Oczywiście :math:`w_1=w_2=w_3=w_4=w_5`, ale czy jest różnica między
:math:`w_1,\dots,w_5` gdy stosujemy przybliżenia :math:`\sqrt{2}`?

.. sagecellserver::

  p=1.44     #zmień p, nie zapomnij o sqrt(2)
  print 'apr=',p
  print 'w_1=',N(99-70*p)
  print 'w_2=',N((5*p-7)^2)
  print 'w_3=',N((3-2*p)^3)
  print'w_4=',N((p-1)^6)
  print 'w_5=',N(((p-1)/(p+1))^3)
  

Spróbujmy nasze rozważania zobrazować.

.. sagecellserver::

  @interact
  def _(xlimits=range_slider(0.5, 2.5, 0.1, default=(0.5, 2.5), label="horizontal range"),
      ylimits=range_slider(-10, 10, 0.1, default=(-10, 10), label="vertical range")):
      plt = plot(99-70*x, xlimits, color="red")
      plt = plt+plot((5*x-7)^2, xlimits, color="blue")
      plt = plt+plot((3-2*x)^3, xlimits, color="green")
      plt = plt+plot((x-1)^6, xlimits, color="orange")
      plt = plt+plot(((x-1)/(x+1))^3, xlimits, color="purple")
      show(plt, xmin=xlimits[0], xmax=xlimits[1], ymin=ylimits[0], ymax=ylimits[1], figsize=(4, 3))
    
.. admonition:: Refutować
  
  A co to takiego?
  
W roku 2005 wydawnictwo TIKKUN zaprezentowało (wreszcie!) Polakom książkę, która w roku 1976 zdobyła światowy rozgłos (ze względów politycznych - w Polsce była rodzajem podziemnej klasyki dla matematyków). Piszemy tutaj o "Dowodach i refutacjach" Imre Lakatosa, w których pokazano, istotność powątpiewania i stawiania hipotez. Dzięki SAGE'owi zauważamy, że **podstawowe** umiejętności programistyczne dają możliwość stosowania narzędzia, jakim jest komputer, do wielokrotnych powtórzeń pewnych czynności. Wspomniana wielokrotność doświadczeń jest - nierzadko - powodem niemożności ich wykonania (w czasie rzeczywistym) przez człowieka (a zatem: także nauczyciela i ucznia...).

Wspomniany przez nas rok 1976 pojawia się także jeszcze w innym kontekście. Otóż właśnie w tym roku na łamach "New York Timesa" pojawiła się informacja o udowodnieniu (i tutaj mniejszy lub większy znak zapytania) twierdzenia o czterech barwach. W dowodzie (?) wykorzystano programy komputerowe i ostateczne wyniki pochodziły z zaprogramowanych obliczeń. Można oczywiście dyskutować nad tego typu dowodem. Wydaje nam się jednak, że nad potrzebą wykorzystywania komputera do stawiania hipotez dyskutować nie trzeba. Mamy bowiem wrażenie, że rozumowanie matematyczne nie opiera się jedynie na logice indukcyjnej.