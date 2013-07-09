.. -*- coding: utf-8 -*-

Wektory kolumnowe
-----------------
 
:math:`n`-elementowy wektor kolumnowy nad ciałem :math:`\,K\,` ma ogólną postać

.. math::

   \boldsymbol{x}\ =\ [x_{i}]_n\ \ =\ \ \left[\begin{array}{c} x_{1} \\ x_{2} \\ \ldots \\ x_{n} \end{array}\right] \,,
   \qquad x_{i}\,\in\,K, \quad i=1,2,\ldots,n\,; \quad n\,=\,1,2,\ldots

| Zbiór wszystkich takich wektorów oznaczamy :math:`\ K^n\ ` (:math:`K\ ` jest najczęściej ciałem liczb rzeczywistych :math:`\,R\ `
| albo ciałem liczb zespolonych :math:`\,C`).

Wektory kolumnowe ze zbioru :math:`\,K^n\,` można dodawać (symbol :math:`\,:\,= \,` znaczy "równa się z definicji"):

.. math::

   \left[\begin{array}{c} x_1 \\ x_2 \\ \ldots \\ x_n \end{array}\right] \ +\ 
   \left[\begin{array}{c} y_1 \\ y_2 \\ \ldots \\ y_n \end{array}\right] \ :\,=\ \,
   \left[\begin{array}{c} x_1+y_1 \\ x_2+y_2 \\ \ldots \\ x_n+y_n \end{array}\right]\,,

i mnożyć przez liczby :math:`\, c \in K`:

.. math::

   c \ \ 
   \left[\begin{array}{c} x_1 \\ x_2 \\ \ldots \\ x_n \end{array}\right] \ :\,=\ \,
   \left[\begin{array}{c} c\; x_1 \\ c\; x_2 \\ \ldots \\ c\; x_n \end{array}\right]\,.

|
| Własności tych działań są odbiciem własności działań w ciele :math:`\,K:`

1. dodawanie wektorów w zbiorze :math:`\,K^n\,` jest łączne i przemienne:
   
   .. math::
      
      (\boldsymbol{x} + \boldsymbol{y}) \, + \, \boldsymbol{z} \ \; = \ \; \boldsymbol{x} \, + \, (\boldsymbol{y} + \boldsymbol{z})\,,

      \boldsymbol{x} \, + \, \boldsymbol{y} \ \; = \ \; \boldsymbol{y} \, + \, \boldsymbol{x},
      \qquad\boldsymbol{x}, \, \boldsymbol{y}, \, \boldsymbol{z} \, \in \, K^n.
   
2. elementem neutralnym dla dodawania jest wektor zerowy 
   :math:`\ \,\boldsymbol{\theta}\ =\ \left[\begin{array}{c} 0 \\ 0 \\ \ldots \\ 0 \end{array}\right]\,.`

3. wektorem odwrotnym (tutaj raczej: przeciwnym)  
   
   do danego wektora :math:`\quad\boldsymbol{x}\,=\,\left[\begin{array}{c} x_{1} \\ x_{2} \\ \ldots \\ x_{n} \end{array}\right]\quad`
   jest :math:`\quad -\boldsymbol{x}\,=\,\left[\begin{array}{c} -x_{1} \\ -x_{2} \\ \ldots \\ -x_{n} \end{array}\right]\,.`

Wynika stąd, że zbiór :math:`\,K^n\,` jest grupą przemienną ze względu na dodawanie wektorów.

Łatwo też udowodnić rozdzielność mnożenia wektorów przez liczby,
zarówno względem dodawania liczb, jak i dodawania wektorów:

.. math::

   (a + b)\ \boldsymbol{x}\ =\ a\,\boldsymbol{x}\ +\ b\,\boldsymbol{x}\,,\qquad
   a\,(\boldsymbol{x} + \boldsymbol{y})\ =\ a\,\boldsymbol{x}\,+\,a\,\boldsymbol{y}\,,

oraz związki

.. math::

   a\,(b\,\boldsymbol{x})\ =\ (ab)\,\boldsymbol{x},\qquad
   1\,\boldsymbol{x}\ =\ \boldsymbol{x},
   \qquad\quad a,\,b\,\in\, K,\quad \boldsymbol{x},\,\boldsymbol{y}\,\in\, K^n.

Stwierdziliśmy w ten sposób, że zbiór :math:`\ K^n\ ` jest przestrzenią wektorową nad ciałem :math:`\ K\ ` ze względu na dodawanie wektorów
i mnożenie ich przez liczby z :math:`\ K.`

Dwu- i trójelementowym wektorom kolumnowym nad ciałem liczb rzeczywistych odpowiadają wektory geometryczne,
odpowiednio na płaszczyźnie i w przestrzeni:

:math:`\quad\boldsymbol{x}\ =\ \left[\begin{array}{c} x_1 \\ x_2 \end{array}\right]
\quad\simeq\quad\vec{v}\ =\ x_1\,\vec{e}_1 + x_2\,\vec{e}_2\,;`

:math:`\quad\boldsymbol{x}\ =\ \left[\begin{array}{c} x_1 \\ x_2 \\ x_3 \end{array}\right]
\quad\simeq\quad\vec{v}\ =\ x_1\,\vec{e}_1 + x_2\,\vec{e}_2 + x_3\,\vec{e}_3\,.`

Tutaj wektory :math:`\ \ \vec{e}_1,\,\vec{e}_2\ \ ` albo :math:`\ \ \vec{e}_1,\,\vec{e}_2\,,\vec{e}_3\ \,`
tworzą bazę złożoną ze wzajemnie prostopadłych wektorów jednostkowych.

Ta relacja między wektorami kolumnowymi i wektorami geometrycznymi charakteryzuje się tym, że

.. math::
   
   \text{jeżeli}\quad\boldsymbol{x}\ \simeq\ \vec{v}\quad\text{i}\quad\boldsymbol{y}\ \simeq\ \vec{w},
   
   \text{to}\quad\boldsymbol{x}+\boldsymbol{y}\ \,\simeq\ \,\vec{v}+\vec{w}\quad
   \text{oraz}\quad c\ \boldsymbol{x}\ \simeq\ c\ \vec{v}\,,\quad c\in R.

Odpowiedniość, która w tym sensie zachowuje działania w zbiorach,
nazywa się izomorfizmem grup (wektory geometryczne również tworzą grupę przemienną).
W analogiczny sposób określa się izomorfizm innych, bardziej zaawansowanych struktur algebraicznych.

.. admonition:: Poeksperymentuj z Sage

   | Wybierając suwakami wartości :math:`\ \,x_1, x_2,\,` otrzymasz 
     geometryczny obraz :math:`\ \vec{v}\ ` wektora
     :math:`\ \,\boldsymbol{x} = \left[\begin{array}{c} x_1 \\ x_2 \end{array}\right].` 

.. sagecellserver::

   e1 = vector([1,0]); e2 = vector([0,1])

   @interact

   def _(x1=('$$x_1:$$', slider(-3, 3, 1/4, default=3)),
         x2=('$$x_2:$$', slider(-2, 3, 1/4, default=2))):

       plt = arrow((0,0),e1, color='red',  legend_label=' $\\vec{e}_1$', zorder=6) +\
             arrow((0,0),e2, color='green',legend_label=' $\\vec{e}_2$', zorder=6) +\
             arrow((0,0),x1*e1, color='red',  width=1, arrowsize=3, zorder=7) +\
             arrow((0,0),x2*e2, color='green',width=1, arrowsize=3, zorder=7) +\
             arrow((0,0),x1*e1+x2*e2, color='black',legend_label=' $\\vec{v}$', zorder=8) +\
             line([x1*e1,x1*e1+x2*e2], linestyle='dashed', thickness=0.5, color='black')  +\
             line([x2*e2,x1*e1+x2*e2], linestyle='dashed', thickness=0.5, color='black')  +\
             point((0,0), color='white', faceted=True, size=18, zorder=9)
          
       html("$\\qquad\\qquad\\quad\\vec{v}\,=\,x_1\,\\vec{e}_1+x_2\,\\vec{e}_2\\\$")
       plt.set_axes_range(-3,5,-2,3)
       plt.show(aspect_ratio=1, axes_labels=['x','y'], ticks=[1,1], figsize=5)







