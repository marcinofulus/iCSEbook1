.. _matura2015_p16.rst:

O kątach i rysowaniu
--------------------

.. image:: matura2015/matura2015_p16.png
   :align: center


Wiemy, że kąt wpisany jest dokładnie dwa razy mniejszy od środkowego
więc zadanie sprowadza się do rozwiązania równania: :math:`2 x = x +
20`, gdzie :math:`x` oznacza wartość kąta wpisanego:

.. sagecellserver::

   solve( 2*x == x + 20,x)

I mamy nasze rozwiązanie!


Ale możemy pokusić się o geometryczną konstrukcje, wykorzystująca w
Sage możliwość rysowania lini przechodzącej przez zadane punkty
:code:`line` i okręgów :code:`circle`.  Załóżmy, że okrąg ma promien
jeden to do narysowania kąta środkowego potrzebujemy wzorów na
współrzędne punktu na okręgu. Z pomocą przychodzą definicje sinusa i
cosinusa i mamy:

.. math::

   \cos(\phi) = \frac{x}{r} \\
   \sin(\phi) = \frac{y}{r}

Czyli współrzędne punktu na okręgu jednostkowym będącego pod kątem
:math:`\phi` względem osi x wynoszą:
:math:`\left(\cos(\phi),\sin(\phi)\right)`
 



.. sagecellserver::
    :linked: false

    var('x')
    def dwa_katy(phi0= 1.23):

        p = line( [(0,0),(cos(phi0),sin(phi0))])
        p += line( [(-1,0),(cos(phi0),sin(phi0))])
        p += circle((0,0),1,color='gray',fill=True,alpha=0.2)
        return p

    @interact
    def _(phi0=slider(0,180,1)):
        dwa_katy(phi0/180*pi).show(figsize=5)


.. only:: latex
          
    .. figure:: matura2015/qr_2015p16.png
       :width: 30%

       Wynik jest interaktywny, najlepiej samemu wykonać kod:


Hmmm, a co z drugą połową wykresu? Oczywiście mamy symetrię
:math:`y\to-y` - lub :math:`\phi\to-\phi` więc wystarczy odbic
względem osi x nasz rysunek. Moglibysmy dopisać odpowiednie komendy w
funkcji :code:`dwa_katy`, ale możemy postąpić chytrzej!. Zauważmy, że
w funkcji :code:`dwa_katy` możemy podać ujemną wartość kąta. Gdybyśmy
mogli nałożyć na rysunek dla kąta :math:`\phi` jego symetryczny
odpowiednik dla :math:`-\phi` do otrzymalibyśmy kompletną
ilustracje. W Sage jest to niezwykle proste - objekty graficzne można
do siebie dodawać, a nasza funkcja własnie zwraca objekt
graficzny. Poeksperymentujmy sami zastępując ostatnią linię kodu
przez:

.. code-block:: python

    (dwa_katy(phi0/180*pi)+dwa_katy(-phi0/180*pi)).show(figsize=5)
