Z49: Algebra liniowa

Zagadnienie: Rozkłady macierzy LU, RU, SVD

Zadanie: Rozkład SVD.

2mm

Rozkład SVD
===========

Rozkład SVD
-----------

Rozkład SVD (z ang. Singular Value Decomposition) polega na zapisaniu
macierzy :math:`A` wymiaru :math:`m\times n` w postaci

.. math:: A=U\Sigma V^*,

 gdzie :math:`U` i :math:`V` są macierzami ortogonalnym, odpowiednio,
:math:`U` wymiaru :math:`m\times m`\ , :math:`V` wymiaru
:math:`n\times n`\ , zaś :math:`\Sigma ` jest macierzą diagonalną
wymiaru :math:`m\times n`\ , tzn. :math:`\sigma_{ij}=0`\ , gdy
:math:`i\ne j`\ . Rozkład SVD stosuje się między innymi do obliczania
macierzy odwrotnych i w teorii aproksymacji. Ważną cechą rozkładów SVD
jest, że są niewrażliwe na błędy również w przypadka macierzy prawie
osobliwych.

Każda macierz ma rozkład SVD. Niezerowe wyrazy macierzy :math:`\Sigma`
nazywamy *wartościami szczególnymi macierzy* :math:`A` i nie zależą one
od rozkładu SVD. Kolumny macierzy :math:`U` i :math:`V` nazywamy,
odpowiednio, *lewymi* i *prawymi* *wektorami szczególnymi macierzy*
:math:`A`\ . Gdy :math:`A` jest macierzą kwadratową o wyrazach
rzeczywistych o wyznaczniku dodatnim, to macierze :math:`U`\ ,
:math:`\Sigma`\ , :math:`V` też są macierzami o wyrazach rzeczywistych,
przy czym :math:`U` i :math:`V` są obrotami, zaś :math:`\Sigma` jest
odwzorowaniem afinicznym przeskalowującym osie układu współrzędnych.

2mm

Algorytm Rozkład SVD
--------------------

2mm

Ograniczymy się do omówienia algorytmu wyznaczania rozkładu SVD dla
macierzy wymiaru :math:`2\times 2` o wyrazach rzeczywistych.

1. Wyznaczamy macierz :math:`A^TA`\ .

2. Wyznaczamy wartości własne :math:`\lambda_1` i :math:`\lambda_2`
macierzy :math:`A^TA`\ . Wtedy :math:`\lambda_1` i :math:`\lambda_2` są
liczbami dodatnimi. Przyjmujemy, że :math:`\lambda_1\ge \lambda_2`\ .
Wtedy wartości szczególne macierzy :math:`A` są wyrażone wzorami
:math:`\sigma_1=\sqrt{\lambda_1}` oraz :math:`\sigma_2=\sqrt{\lambda_2}`\ .

3. Wyznaczamy wektory własne :math:`\mathbf v_1` i :math:`\mathbf v_2`
macierzy :math:`A^TA` i po podzieleniu przez ich długość otrzymujemy
kolumny macierzy :math:`V`\ .

4. Wyznaczamy macierz :math:`U` korzystając ze wzoru
:math:`U=AV\Sigma^{-1}`\ .
