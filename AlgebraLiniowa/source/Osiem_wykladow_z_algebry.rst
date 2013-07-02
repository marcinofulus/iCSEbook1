.. 8AL - Skrypt documentation master file, created by
   sphinx-quickstart on Fri Mar  8 15:41:59 2013.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

=================================
Osiem wykładów z Algebry liniowej
=================================

Wstęp
=====

Algebra liniowa:
  dział algebry zajmujący się badaniem przestrzeni liniowych i przekształceń liniowych. 

.. toctree::

   Uwagi techniczne (tylko do użytku wewnętrznego) <uwagi_techniczne>
   Przewodnik po strukturach algebraicznych <struktury_algebraiczne>
   literatura

Wykład I: Układy równań liniowych. Eliminacja Gaussa
====================================================

| Geometryczna interpretacja oznaczonych, nieoznaczonych i sprzecznych układów równań liniowych.
| Doprowadzenie układu równań do postaci schodkowej poprzez operacje elementarne na równaniach.

.. toctree::

   wektory_kolumnowe
   geometria_ukladow_rownan
   eliminacja_gaussa_bez_macierzy

Zadania do wykładu I:
---------------------

.. toctree::

   zadanie_eliminacja_gaussa_bez_macierzy

Wykład II:  Macierze
====================

| Wprowadzenie macierzy jako prostokątnej tablicy elementów z pewnego ciała.
| Definicja dodawania macierzy, mnożenia ich przez liczbę i mnożenia macierzy przez macierz.
| Eliminacja Gaussa w zapisie macierzowym dla układów oznaczonych, nieoznaczonych i sprzecznych.

.. toctree::

   dzialania_na_macierzach
   macierze_w_sage
   eliminacja_gaussa_I
   eliminacja_gaussa_II
   macierze_przyklady

Zadania do wykladu II:
----------------------

.. toctree::
   :maxdepth: 1

   zadanie_mnozenie_macierzy
   zadanie_eliminacja_gaussa


Wykład III:  Macierz odwrotna
=============================

Macierz identycznościowa i macierz odwrotna. Własności macierzy
odwrotnej. Obliczanie macierzy odwrotnej metodą Gaussa Jordana.
Macierze elementarne, zapisa macierzowy procesu eliminacji: rozkład LU
i LDU.

.. toctree::
   :maxdepth: 1

   macierz_odwrotna
   macierze_elementarne_LU
   transpozycja_macierzy


Zadania do wykladu III:
-----------------------

.. toctree::
   :maxdepth: 1

   zadanie_macierz_odwrotna

  

Wykład IV:  Przestrzenie wektorowe 
===================================

.. toctree::
   :maxdepth: 1

   przestrzenie_wektorowe
   przyklady_przestrzeni_wektorowych
   przestrzenie_wektorowe_twierdzenia
   podprzestrzenie
   kombinacja_liniowa
   liniowa_niezaleznosc
   baza_wymiar


Wykład V Przekształcenia liniowe
=================================

Przekszałcenie liniowe, własności formalne i przykłady przekształceń na płaszczyźnie. Tw. każde przeksz. l. jest repr. przez macierz.


.. toctree::
   :maxdepth: 1

   przeksztalcenia_liniowe


Wykład VI: ortogonalnośc
========================

Jądro, dopełnienie ortogonalne, nierównośc Schwarza, AtA - najmniejsze
kwadraty

.. toctree::
   :maxdepth: 1


Wykład VII: Wyznacznik
======================

Definicja i własności wyznacznika, zastosowanie: jawny wzór na
rozwiązywanie układu równań liniowych oraz macierz odwrotą.
   
.. toctree::
   :maxdepth: 1

   wyznacznik
   wyznacznik_zastosowania

              

Wykład VIII: wartości i wektory własne
======================================

Zagadnienie własne i jego zastosowania.

.. toctree::
   :maxdepth: 1

   zagadnienie_wlasne


Zadania
=======

W tej sekcji znajdują się zadania obowiązujące na zaliczenie i egzamin.

.. toctree::
   :maxdepth: 1

   zadania_01
   zadania_02
   zadania_03
..   zadania_test1
..   zadania_egzamin1

.. .. include:: orginaly.rst
