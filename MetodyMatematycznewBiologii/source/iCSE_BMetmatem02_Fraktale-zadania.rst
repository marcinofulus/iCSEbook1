.. -*- coding: utf-8 -*-

Zadania
-------


Zadanie 1
~~~~~~~~~

Przedstawiony algorytm otrzymywania i wykreślania smoka Heighwaya to tylko jeden z możliwych. Nieco bardziej "klasyczną" metoda przebiega następująco: W pierwszym kroku :math:`D_0` smok to jednostkowy odcinek. W kolejnym kroku :math:`P_1` zamieniamy ów odcinek na dwa odcinki o długości :math:`1/\sqrt{2}` zaczepione w końcach wyjściowego odcinka i połączonych pod odpowiednim kątem


(oblicz jakim). Możliwe są dwie wersje - budujemy smoka łącząc odcinki obracając je zgodnie z ruchem wskazówek zegara lub odwrotnie (na rysunku poniżej jasno widać obroty zgodne z ruchem wskazówek). W kroku :math:`P_2` postepujemy podobnie z dwoma odcinkami, odkładając odcinki długości :math:`(1/\sqrt{2})/\sqrt{2} = 1/\sqrt{2}^2 = 1/2`, itd. Każdy kolejny :math:`n`-ty krok budowany jest z odcinków o długości :math:`(\sqrt{2})^{-n}`.


.. image:: http://upload.wikimedia.org/wikipedia/commons/9/97/Dragon_curve_iterations_%282%29.svg
    :align: center


Napisz klasę/funkcje realizujące powyższy algorytm. Do końcowej prezentacji użyj trybu interaktywnego.


Zadanie 2
~~~~~~~~~

Posługując się tokiem myślenia z powyższego schematu pokaż, że wymiar fraktalny smoka Heighwaya :math:`HD_{smok} = 2`.


Zadanie 3
~~~~~~~~~

Rozważmy hyperboliczny IFS dany przez


.. MATH::

    \{ R^2: w_n: n = 1,2,\dots,N\}


gdzie każda mapa to transformacja afiniczna. Trójkąt Sierpińskiego można zdefiniować jako atraktor powyższego IFS, gdzie :math:`N=3` oraz


.. MATH::

    w_1  \left( \begin{array}{cc} x_1 \\ x_2 \end{array} \right) = \left( \begin{array}{cc} 0.5 & 0 \\ 0 & 0.5 \end{array} \right) \left( \begin{array}{cc} x_1 \\ x_2 \end{array} \right) + \left( \begin{array}{cc} 1 \\ 1 \end{array} \right)


.. MATH::

    w_2  \left( \begin{array}{cc} x_1 \\ x_2 \end{array} \right) = \left( \begin{array}{cc} 0.5 & 0 \\ 0 & 0.5 \end{array} \right) \left( \begin{array}{cc} x_1 \\ x_2 \end{array} \right) + \left( \begin{array}{cc} 1 \\ 50 \end{array} \right)


.. MATH::

    w_3  \left( \begin{array}{cc} x_1 \\ x_2 \end{array} \right) = \left( \begin{array}{cc} 0.5 & 0 \\ 0 & 0.5 \end{array} \right) \left( \begin{array}{cc} x_1 \\ x_2 \end{array} \right) + \left( \begin{array}{cc} 50 \\ 50 \end{array} \right)


Zbuduj klasę rysującą ów fraktal korzysając z powyższego IFS.


Zadanie 4
~~~~~~~~~

Kolejną metoda na otrzymanie rrójkąta Sierpińskiego to bezpośrednia metoda usuwania środkowych trójkątów, tak jak opisane to zostało w definicji (punkt 2) w arkuszu  *iCSE_BMetmatem02_Fraktale\-przykłady* . Czyli - zaczynamy od pełnego, równobocznego trójkąta (krok :math:`S_0`) i dzielimy go na równe 4 części łącząc środki boków odcinkami. Na koniec usuwamy środkowy trójkąt (krok :math:`P_1`). W kroku :math:`P_2` powtarzamy dzielenie i usunięcie środka w każdym z poprzednio otrzymanych trójkątów (tym razem 3).


Zaprogramuj w Sage taką konstrukcję.


Uwaga: zamiast usuwać środkowy trójkąt, możesz tak naprawdę w danym kroku iteracji nanosić mniejsze trójkąty w kolorze tła na trókąt (trójkąty) z kroku poprzedniego.


Zadanie 5
~~~~~~~~~

Wytłumacz, dlaczego wymiar fraktalny trójkąta Sierpińskiego :math:`HD_{S} = 1.5849625007211562977005314678535796701908111572265625\dots`


