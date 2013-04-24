Do Z51, Z52: Algebra liniowa

Zagadnienie: Zastosowania algebry liniowej

Zadanie: Teoria obwodów elektrycznych. Zadanie: procesy Markowa.

Zadania
=======

Zadanie 1. Sprawdzić, że jeżeli macierz :math:`P` spełnia założenia
twierdzenia Perrona, to stała :math:`\lambda` występująca w jego tezie
jest dominującą wartością własną, tzn. dla dowolnej innej wartości
własnej :math:`\bar\lambda` mamy :math:`|\bar\lambda|<\lambda`\ .

1mm Zadanie 2. **Do symulacji komputerowych**. Wyznaczanie metodą
iteracyjną dominującej wartości własnej i odpowiadających jej wektorów
własnych :math:`\mathbf x^*` i :math:`\mathbf y^*` macierzy :math:`P` i
:math:`P^T`\ .

1mm

Zadanie 3. Niech macierz :math:`B` ma wszystkie wyrazy nieujemne i
spełnia warunek

(K) dla dowolnych :math:`i`\ , :math:`j`\ , :math:`i\ne j` istnieje ciąg
:math:`i_0,i_1,\dots,i_r` taki, że :math:`i_0=i`\ , :math:`i_r=j` oraz

.. math:: b_{i_0 i_1}b_{i_1 i_2}\dots b_{i_{r-1}i_r}>0

 (gdzie :math:`r` może zależeć od :math:`i,j`\ ). Sprawdzić, że macierz

.. math:: P=e^B=\sum_{k=0}^{\infty} \frac {B^n}{n!}

 spełnia założenia twierdzenia Perrona.

1mm

Zadanie 4. O macierzy kwadratowej :math:`A` zakładamy, że ma wszystkie
wyrazy poza główną przekątną nieujemne oraz spełnia warunek (K).
Rozważmy rozwiązanie równania

.. math:: x'=Ax

 spełniające warunek początkowy :math:`\mathbf x(t)=\mathbf x_0`\ .
Sprawdzić, że to istnieją stała :math:`c\in\mathbf R` oraz ciągi
:math:`x^* = ( x^*_1,\dots , x^*_n)` i
:math:`y^* = ( y^*_1,\dots , y^*_n)` o wyrazach dodatnich takie, że

.. math:: \lim_{t\to\infty} e^{-ct} \mathbf x(t) = \mathbf x^*\langle \mathbf y^*, \mathbf x_0 \rangle.

*Wskazówka.* Zauważyć, że istnieje stała :math:`\mu>0` taka, że macierz
:math:`B=A+\mu I` ma wyrazy nieujemne. Zapisać rozwiązanie równania w
postaci

.. math:: \mathbf x(t) =e^{-\mu t}e^{Bt}=e^{-\mu t} \sum_{k=0}^{\infty} \frac {B^nt^n}{n!}\mathbf x_0.

1mm

Zadanie 5. Niech :math:`P` będzie macierzą o wymiarach :math:`n\times n`\ ,
w której :math:`p_{i,i+1}>0` dla :math:`i=1,\dots,n-1` oraz
:math:`p_{n-1,1}>0` i :math:`p_{n,1}>0`\ . Sprawdzić, że macierz ta
spełnia założenia Twierdzenia Perrona.

1mm

Zadanie 6. Niech :math:`P` będzie macierzą o wymiarach :math:`n\times n`\ ,
w której :math:`p_{i,i+1}>0` dla :math:`i=1,\dots,n-1` oraz
:math:`p_{n,1}>0`\ . Sprawdzić, że macierz ta spełnia założeń
Twierdzenia Perrona. Co można powiedzieć o wektorach :math:`eP^k`\ , gdy
:math:`e=[1,0,\dots,0]`\ .

1mm

Zadanie 7. Niech :math:`P` będzie macierzą o wymiarach :math:`n\times n`\ ,
w której :math:`p_{i,i+1}>0` dla :math:`i=1,\dots,n-1` oraz
:math:`p_{n-2,1}>0` i :math:`p_{n,1}>0`\ . Sprawdzić, że czy macierz
:math:`P` spełnia założenia Twierdzenia Perrona.

1mm

Zadanie 8. Rozważmy układ równań

.. math::

   \begin{array}{ll}
   &x_1'=b_nx_n-a_1x_1,\\
   &x_i'=b_{i-1}x_{i-1}- a_ix_i \quad  \textrm{dla  } i=2,\dots,n, 
   \end{array}

 gdzie :math:`b_i>0` dla :math:`1\le i\le n`\ . Sprawdzić, że
rozwiązania tego układu spełniają warunek Zadania 4.
