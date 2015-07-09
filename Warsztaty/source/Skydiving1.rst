
Skydiving - part 1
==================

We will now begin to look at how the velocity of a skydiver changes over
time. We will find mathematical equations based on our physical
understanding of the forces acting on the jumper. We will then discuss
these equations and see why they are impossible to solve with pen and
paper alone. Finally, we will see how we can solve the equations with
programming.

A parachuting jump consists mainly of two parts. The first part happens
before the parachute is deployed, this is commonly known as free-fall.
Most sport skydivers experience about a minute of free-fall each jump.
After this, the jumper deploys their parachute which dramatically
reduces the velocity of the fall. The jumper normally falls between one
and three more minutes before landing, dependent on the altitude and the
size of the parachute.

In both parts of the jump there are only two forces acting on the
jumper, gravity and air resistance. That is

.. math:: \sum F = F_G + F_D,

where :math:`F_G` is gravity and :math:`F_D` is air resistance. You
probably already know that if the jumper has mass :math:`m` and the
standard acceleration due to gravity is :math:`g`, which we define to be
:math:`g = 9.81 m/s^2`, then the gravitational force is
:math:`F_G = mg`.

Furthermore, a skydiver will fall with high velocity so we use quadratic
air resistance, that is

.. math:: F_D = \frac{1}{2}\rho C A v^2,

where :math:`\rho` is the air density, :math:`C` is the drag coefficient
that is dependent on the shape of the falling body and :math:`A` is the
silhouette area.

To avoid having to write all this, we define a constant :math:`D` to be
all of these numbers together like this

.. math:: \frac{1}{2}\rho C A = D,

.. math:: F_D = -Dv^2.

The equation we want to solve can then be written as

.. math:: ma = mg - D v^2.

In mathematics, this is what is known as a *differential equation*. Let
us talk a bit about what exactly that means.

Differential equations
======================

Previously when we have worked with equations, they have been
mathematical expressions, where we solve for one unknown variable. For
example

.. math:: x^2 + 7 = 56.

We recognize this as an equation because there is an 'equality', and we
know that we can solve this by subtracting the constant, and taking the
square root to get

.. math:: x = \pm 7.

So we have solved the equation and found that :math:`x` equals 7. A
differential equation is also an equation because it contains an
'equality' just like our example, and we can solve it to find something
unknown. The difference is that for a differential equation the unknown
is no longer a number, but a function.

Newtons 2nd equation is a perfect example of a differential equation,
which we solve to find either the velocity or the position of an object.
In this case both the velocity and the position are examples of
functions because they differ with time: :math:`v(t)`, :math:`x(t)`. A
differential equation contains the derivative of the function we want,
which is easier to see if we write the acceleration as the derivative of
the velocity in newtons second law:

.. math:: \sum F = ma = m\frac{d v}{d t}.

Then, the differential equation we are trying to solve can we written as

.. math:: m\frac{d v}{d t} = mg - D v(t)^2.

But how do we solve an equation like this? There exists a huge number of
different types of differential equations and even more ways to solve
them, but we don't have time to cover that much of this subject for now.

Unsolvable differential equations
=================================

We want to solve the following differential equation:

.. math:: m\frac{d v}{d t} = mg - D v(t)^2.

and we want to find the velocity :math:`v(t)`, but we cannot do that
because the acceleration is dependent on the velocity. This is exactly
why we often ignore air resistance when we solve Newtons 2nd law. A lot
of the time, ignoring air resistance is okay, because the result is more
or less the same anyway. But in some cases, air resistance makes a big
difference, and skydiving is one of those cases

Solving the unsolvable
======================

How do we solve an unsolvable equation with programming? The idea is
quite simple, but let us try to approach it step by step.

Let us begin by looking at what would have happened if we did ignore air
resistance. We would have free-fall, i.e.

.. math:: ma = \sum F = mg,

And so the acceleration would be constant

.. math::  a = g 

In this case we could easily solve the equations of motion to get

.. math:: v(t) = v_0 + at.

And similarly

.. math:: x(t) = x_0 + v_0 t + \frac{1}{2}at^2.

We notice that the velocity keeps growing constantly for ever. This of
cource, has to be incorrect, because we know that in reality, a skydiver
would quickly hit terminal velocity.

Terminal velocity
=================

Terminal velocity is the highest velocity attainable by a falling
object. We can easily derive the terminal velocity of the jumper without
using our differential equation. We know that when the air resistance
equals the gravity, the sum of all forces acting on the jumper equals
zero. Then the acceleration equals zero, and the skydiver falls with a
constant velocity, the terminal velocity. This means that

.. math:: mg = \frac{1}{2}\rho C A v_T^2,

By solving this for the terminal velocity, :math:`v_T`, we get

.. math:: v_T = \sqrt{\frac{2mg}{\rho C A}}.

And when we substitute in some reasonable values (:math:`m=90` kg,
:math:`C=1.4`, :math:`\rho=1` kg/m\ :math:`^3`, :math:`A=0.7`
m\ :math:`^2`, :math:`g=9.81` m/s\ :math:`^2`), we get the answer

.. math:: v_T = 42.4 {\rm\ m/s} = 153 {\rm\ km/h}.

So the terminal velocity in this case is 153 km/h.

Solving the equations of motion with air resistance.
====================================================

If we now add air resistance again, we know that we cannot use the
equations of motion because the acceleration is not constant. The
acceleration is dependent on the velocity

.. math:: a(v) = g - \frac{1}{2m}Dv^2.

And since we know that the velocity increases with time, we can see that
the acceleration will decrease. Notice that we write :math:`a(v)`
because the acceleration is a function of the velocity. If we instead
look at a tiny difference in time, :math:`\Delta t`, we know that the
change in velocity is very small, and then the acceleration is almost
constant. This means that we can use the equations of motion to take a
short step in time by regarding the acceleration as essentially constant
for a short time interval.

.. math:: v_1 = v_0 + a(v_0)\Delta t.

This gives us an approximation to the velocity of the skydiver shortly
after he jumped. We can move further in time by updating the
acceleration with the new velocity, and have it be constant for another
time interval.

.. math:: v_2 = v_1 + a(v_1)\Delta t.

The trick is to let :math:`\Delta t` be very small, so that the
acceleration is very close to constant. Thus we have to take a lot of
tiny steps in time like this

.. math:: v_{n+1} = v_n + a(t_n)\Delta t.

With this method, we can solve our differential equation step by step
until we have the entire solution

A more mathematical approach
============================

Alternatively, we can look at the definition of the of the derivative

.. math:: a(t) = \frac{d v}{d t} = \lim_{\Delta t \to 0} \frac{v(t+\Delta t) - v(t)}{\Delta t}

We can approximate the derivative by removing the limit and making
:math:`\Delta t` a very small constant

.. math::  a(t) \approx \frac{v(t+\Delta t) - v(t)}{\Delta t}  

As long as we choose a small enough :math:`\Delta t`, we get a good
approximation. Now, we can solve for :math:`v(t+\Delta t)` and get

.. math::  v(t+\Delta t) \approx v(t) + a(t)\cdot \Delta t 

So if we know the velocity and acceleration at a time :math:`t`, we can
approximate the velocity at the the time :math:`t+\Delta t` by

.. math:: v(t+\Delta t) = v(t) + a(t)\cdot \Delta t

Parameters
==========

The numbers :math:`m`, :math:`g`, :math:`\rho`, :math:`C`, :math:`A` is
what is known as parameters, that is values we choose. We choose the
parameters based on what kind of simulation we want to run, but we
generally consider them to be known. In our simulation we want to use
the following parameters

.. raw:: html

   <table style="width:30%">

.. raw:: html

   <tr>

::

    <td colspan="2">Free fall</td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

::

    <td>$m$</td>
    <td>90 kg</td> 

.. raw:: html

   </tr>

.. raw:: html

   <tr>

::

    <td>$g$</td>
    <td>9.81 m/s$^2$</td> 

.. raw:: html

   </tr>

.. raw:: html

   <tr>

::

    <td>$\rho$</td>
    <td>1 kg/m$^3$</td> 

.. raw:: html

   </tr>

.. raw:: html

   <tr>

::

    <td>$C$</td>
    <td>1.4</td> 

.. raw:: html

   </tr>

.. raw:: html

   <tr>

::

    <td>$A$</td>
    <td>0.7 m$^2$</td> 

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <table style="width:30%">

.. raw:: html

   <tr>

::

    <td colspan="2">Under parachute</td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

::

    <td>$C_{\rm p}$</td>
    <td>1.8</td> 

.. raw:: html

   </tr>

.. raw:: html

   <tr>

::

    <td>$A_{\rm p}$</td>
    <td>44 m$^2$</td> 

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   </table>

Writing the code
================

We are now ready to get started! This is the template for the program
you are going to write

1. Import pylab, that is everything we will need.
2. Declare all the parameters we need, i.e. :math:`m`, :math:`g`,
   :math:`\rho`, :math:`A`, :math:`C`, :math:`A_{p}`, :math:`C_{\rm p}`,
   :math:`v_0`
3. Define the acceleration as a function of the velocity. **Hint:**
   :math:`\verb+Def a(V)+`. and remember to return something.
4. Define $:raw-latex:`\Delta `t = 0.01 $ (**Hint:** name the variable
   :math:`\verb+dt+` in your program) :math:`T = 60` and
   :math:`n = T/dt`
5. Declare two arrays, one for the velocity :math:`v` and one for the
   time :math:`t`. We want the arrays to be empty and have room for
   :math:`\verb!n+1!` elements, so use the :math:`\verb+zeros+` command.
   Notice that :math:`\verb+v[i]+` in your code corresponds to
   :math:`v_i`.
6. Create a :math:`\verb+for+` loop that that iterates over $i =
   0,1,2,..,n $ (**Hint:** use :math:`\verb+range+`)
7. Inside the loop, calculate :math:`\verb!v[i+1]!` from
   :math:`\verb+v[i]+` by using the formula we found earlier. Remember
   to update the time (**Hint:** :math:`\verb!t[i+1] = t[i] + dt!`).
8. Plot the result to see if everything is correct (**Hint:**
   :math:`\verb+plot(t,v)+`).

Exercises
=========

When you have a working program, you can try to do the following
exercises:

1. Make the plot look nicer. You can for example add a grid
   (:math:`\verb+grid()+`), a title, and label the axes
   (:math:`\verb+xlabel+` and :math:`\verb+ylabel+`)
2. At what time will the jumper reach terminal velocity? Look at the
   plot
3. Have the program print out the terminal velocity. (**Hint:** The
   function :math:`\verb+max+`, fetches the maximal element from an
   array) Compare this with the terminal velocity you found earlier. How
   similar are the values? Does it look like your program is calculating
   correctly?

What now?
=========

By now we have created a program that finds the velocity of a jumper in
free-fall with air resistance. But we still need to include deployment
of the parachute. The main idea is as follows: When the parachute is
deployed, only the silhouette area :math:`A`, and the drag coefficient
:math:`C` changes. And so if we can change these values at the right
time, we can simulate that the parachute is deployed. In our loop we
have the time, :math:`t_i`, so perhaps we can use an
:math:`\verb+if+`-statement to change :math:`A` and :math:`C` at the
right time?

We will look at this in the next part, but if you want, you can try for
yourself to figure out what we need to add to the code as an exercise.

In the next part, we will also calculate and plot the g-forces that the
jumper experiences, and we will find the velocity of a bungee jumper
with the same approach we used for the skydiver.
