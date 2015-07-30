
Skydiving - part 2
==================

In part 1 we created a program to solve the equations of motion for
skydiving. We began with Newtons 2nd law, and we looked at the forces
acting on the jumper. This gave us a formula for the acceleration as a
function of the velocity. Then we used the equations of motion that we
know hold for constant acceleration to find the velocity at small steps
forward in time.

In this part we will do the same for the position, and we will use a
bungee jumper as an example. The only thing that differs between
skydiving and bungee jumping is the formula for acceleration. Everything
else is exactly the same. But because the forces acting on the bungee
jumper is dependent on the position of the jumper, we have to solve for
the position as well.

After this we will plot the g-forces for both the skydiver and the
bungee jumper. Then we can compare skydiving and bungee jumping based on
the g-forces experienced by the jumper. We will also look at how the
parachute deploys and the effect it has on the g-forces.

In part 1, we began by finding the following expression for the
acceleration of a skydiver:

.. math:: a(v) = g - \frac{1}{2}C\rho A v^2.

Then we used the equations of motion for constant acceleration

.. math:: v = v_0 + a t,

 to take short steps in time of length :math:`\Delta t`, which gave us

.. raw:: latex

   \begin{align*}
   v_1 &= v_0 + a(v_0)\Delta t \\  
   v_2 &= v_1 + a(v_1)\Delta t \\
   v_3 &= v_2 + a(v_2)\Delta t \\
   &\vdots \\
   v_{i+1} &= v_i + a(v_i)\Delta t.
   \end{align*}

But there is a corresponding equation for constant acceleration which we
can use to find the position:

.. math:: x = x_0 + v_0 t + \frac{1}{2}at^2.

We can use this to take short 'steps in time' in the same way as we did
for the velocity

.. raw:: latex

   \begin{align*}
   x_1 &= x_0  + v_0 \Delta t + \frac{1}{2} a(v_0) \Delta t^2 \\  
   x_2 &= x_1  + v_1 \Delta t + \frac{1}{2} a(v_1) \Delta t^2 \\  
   x_3 &= x_2  + v_2 \Delta t + \frac{1}{2} a(v_2) \Delta t^2 \\  
   &\vdots \\
   x_{i+1} &= x_i + v_i\Delta t + \frac{1}{2} a(v_i)\Delta t^2.
   \end{align*}

Bungee jump
===========

Let us examine a bungee jumper and the forces acting on her. We can
regard the elastic cord as similar to a stretched spring. But unlike a
spring, the cord does not exert any force when it is compressed, only
when it is stretched. When the jumper jumps from the top of a bridge,
the cord is not stretched, and so it does not affect the jumper until
she has fallen far enough for the cord to begin to stretch. This point,
right before the elastic cord starts to stretch, is known as the point
of equilibrium

Now, let us create a reference that fits the problem we are examining.
We place :math:`x=0` at the point of equilibrium, and we decide that the
cord is 20 meters long, so our jumper jumps from a point 20 meters above
the the point of equilibrium, that is at :math:`x_0 = 20`\ m. Let us add
a river 60 meters below the bridge.

.. figure:: figs\Bungee_bridge.svg
   :alt: bungee jumper illustration

   bungee jumper illustration

We can tell that if the jumpers position is above the point of
equilibrium, then the cord will not be stretched, and it will not act on
the jumper with any force. And because we have placed the point of
equilibrium at :math:`x=0`, the force exerted by the cord :math:`S`
equals :math:`0` for :math:`x>0`.

If, instead, we have :math:`x<0`, we can see that the cord is stretched,
and so it will pull the jumper upwards with a spring force. We can model
this force with the help of a principle known as Hooke's law. Hooke's
law states that the force from a spring that is stretched a length of
:math:`x` is given by:

.. math:: F = -kx,

where :math:`k` is a constant dependent on the stiffness of the spring.

Now we can express the force from the cord as a function of the position
:math:`x`

.. math::

   S(x) = \begin{cases} 0 & \mbox{if } x>0 \\
   -kx & \mbox{if } x \leq 0
   \end{cases}.

In addition to :math:`S(x)`, the jumper experiences both gravity mg, and
air resistance :math:`Dv`. From Newtons 2nd law:

.. math:: \sum F = ma,

so then

.. math:: S(x) - mg - Dv = ma.

if we solve this for the acceleration, we get a function dependent on
both the velocity and position of the jumper.

.. math:: a(x,v) = \frac{S(x)}{m} - g - \frac{D}{m}v.

This means that we have to solve for both velocity and position at the
same time, like this

.. raw:: latex

   \begin{align*}
   v_1 &= v_0 + a(x_0, v_0)\Delta t \\
   x_1 &= x_0 + v_0\Delta t + \frac{1}{2}a(x_0, v_0)\Delta t^2 \\
   v_2 &= v_1 + a(x_1, v_1)\Delta t \\
   x_2 &= x_1 + v_1\Delta t + \frac{1}{2}a(x_1, v_1)\Delta t^2 \\
   &\vdots \\
   v_{i+1} &= v_i + a(x_i, v_i)\Delta t \\
   x_{i+1} &= x_i + v_i\Delta t + \frac{1}{2}a(x_i, v_i)\Delta t^2 \\
   \end{align*}

The Code
========

1. Import pylab, we do not need anything else
2. Declare all the parameters we need. Use :math:`m=60`, :math:`v_0=0`,
   :math:`x_0=20`, :math:`D=10`. You can just guess the value of
   :math:`k`, we will adjust it later.
3. Define the 'cord force' :math:`S(x)`. You will need to use
   :math:`\verb+def+` to define a function, and an
   :math:`\verb+if+`-test inside the function to check if :math:`x` is
   above or below zero.
4. Define the acceleration as a function of both position and velocity.
   :math:`\verb+def a(x,v):+`.
5. Define :math:`\Delta t = 0.01` (**Hint:** name the variable
   :math:`\verb+dt+`), :math:`T=60` and :math:`n=T/dt`
6. Declare three arrays, one for the velocity :math:`v` , one for the
   position :math:`x` and one for the time :math:`t`. We want the arrays
   to be empty and have room for n+1 elements, so use the
   :math:`\verb+zeros+` command.
7. Set the first element in the x-array to :math:`x_0`, i.e.
   :math:`\verb+x[0] = x0+`.
8. Create a :math:`\verb+for+` loop that that iterates over $i =
   0,1,2,..,n $ (**Hint:** use :math:`\verb+range+`)
9. Inside the loop, calculate :math:`\verb!t[i+1]!`,
   :math:`\verb!v[i+1]!` and :math:`\verb!x[i+1]!`. Use the following
   formulas

.. raw:: latex

   \begin{align*}
   t_{i+1} &= t_i + \Delta t, \\
   v_{i+1} &= v_i + a(x_i, v_i)\Delta t, \\
   x_{i+1} &= x_i + v_i\Delta t + \frac{1}{2}a(x_i, v_i)\Delta t^2.
   \end{align*}

You should have something similar to

.. sagecellserver:: python

    for i in range(n):
        t[i+1] = t[i] + ...
        v[i+1] = v[i] + ...
        x[i+1] = x[i] + ... 
10.Plot the result to see if everything is correct (**Hint:**
:math:`\verb!plot(t, x)!`).

Exercises
=========

1. Make the plot look nicer. Label the axes, etc.
2. By examining the plot, try to adjust :math:`k` such that the jumper
   barely touches the water. That is, the bottom of the curve reaches
   exactly :math:`-40`.
3. Print out the maximum velocity experienced by the jumper. **Hint:**
   :math:`\verb!max(v)!`. How does this compare to the skydivers maximum
   velocity?

Point of equilibrium
====================

Note that :math:`x=0` is the equilibrium point for the cord when there
is zero mass on it. If a person is hanging on the cord, the point of
equilibrium shifts downwards. This new equilibrium point is the point
where the force from gravity, pulling downwards, and the force from the
elastic, pulling upwards, cancel each other out. After oscillating up
and down for a while, this is the point where the jumper will end up
hanging still.

Exercises
=========

1. Calculate the new equilibrium point when there is a person of mass
   :math:`m` is hanging from the cord equilibrium. **Hint:** Use the
   same approach as we used to find the terminal velocity of the
   parachute jumper

2. Find the equilibrium point by looking at the plot. Compare what you
   see with the calculation you did by hand.

Plotting g-forces
=================

The term 'g-force' is somewhat misleading because it is not really a
'force' you experience, but *acceleration*. When the human body is
accelerated, we feel it as weight pulling at us. Like when you are
sitting in a car that drives through a turn. You feel like you are
beeing pulled to the side. So these accelerations feels like a force
acting on the body, and that is why we call them 'g-forces'.

The letter 'g' in 'g-force' stands for gravitation. This is because we
compare the force we feel with the gravitational force. When you are
standing perfectly still, you feel 1 g from gravity. During a roller
coaster ride you will, as the ride progresses, experience a lot of
different g-forces when you are accelerating up and down the hills,
trough turns and possibly even through loops. You become weightless when
there is a quick dive down from a peak in the roller coaster, that is,
you experience 0 g or free-fall. An advantage with using g-forces is
that they are independent from mass. This means that every person will
feel the exact same g-forces during the same roller coaster.

To calculate the g-forces experienced by the jumper in both cases, we
just need to add an additional array to the loop. For this array, we
calculate the acceleration acting on the jumper, divide by :math:`g` and
add 1. Here is the code:

.. sagecellserver:: python

    gforces = zeros(N+1)
    ...
    
    
    for i in range(N):
        t[i+1] = t[i] + ...
        v[i+1] = v[i] + ...
        x[i+1] = x[i] + ...
        gforces[i] = a(x[i],v[i])/g + 1
Exercise
========

Calculate and plot the g-forces that act on both the skydiver and the
bungee jumper in your program. Compare the plots, are they different
from each other? Try to explain why the two are different.

Deploying the parachute
=======================

Finally the time has come to deploy our simulated parachute. As we
mentioned previously, we only have to change the drag coefficient
:math:`C` to :math:`C_P = 1.8` and the silhouette area :math:`A` to
:math:`A_P = 44`. Earlier we simulated the jump for :math:`T = 60`
seconds. Now we will increase the time to :math:`180` seconds, but let
the first loop still iterate only over the first :math:`60` seconds.
Then we change :math:`C` and :math:`A`, and solve the remaining
:math:`120` seconds.

.. sagecellserver:: python

    dt = 0.01
    T = 180
    n = int(T/dt)
    
    # Simulating the first 60 seconds
    for i in range(0, 60/dt):
        t[i+1] = t[i] + dt
        v[i+1] = v[i] + a(v[i])*dt
        gforces[i] = 1 - a(v[i])/g
    
    # Change C and A
    C = C_p
    A = A_p
    
    # Simulationg the last 120 seconds
    for i in range(60/dt, 180/dt):
        t[i+1] = t[i] + dt
        v[i+1] = v[i] + a(v[i])*dt
        gforces[i] = 1 - a(v[i])/g
Now, we can plot the velocity against time, and the g-forces. What do we
see? One problem that has materialized is that the change in the values
of :math:`C` and :math:`A` happens far to sudden. It is like the
parachute deployed immediately, which would have slowed the jumper
extremely fast, causing almost 100 g! Anything above 10g can be fatal,
and an average person will start to faint above 5g. It does not look
good for our poor parachute jumper!

This is why modern parachutes are made to deploy slower on purpose, so
the velocity decreases slower. Let us attempt to simulate that the
parachute takes 5 seconds to deploy completely, and see how it affects
the g-forces. This time, we create three loops. One without a parachute,
one where the parachute is in the process of deploying, and one after
the parachute is completely deployed.

.. sagecellserver:: python

    dt = 0.01
    T = 180
    n = int(T/dt)
    
    # Simulating the first 60 seconds
    for i in range(0, 60/dt):
        t[i+1] = t[i] + dt
        v[i+1] = v[i] + a(v[i])*dt
        gforces[i] = 1 - a(v[i])/g
    
    # Simulating the next 5 seconds
    for i in range(60/dt, 65/dt):
        C += (C_p-C)/(5/dt)
        A += (A_p-A)/(5/dt)
    
        t[i+1] = t[i] + dt
        v[i+1] = v[i] + a(v[i])*dt
        gforces[i] = 1 - a(v[i])/g
    
    # Simulationg the last 120 seconds
    for i in range(65/dt, 180/dt):
        t[i+1] = t[i] + dt
        v[i+1] = v[i] + a(v[i])*dt
        gforces[i] = 1 - a(v[i])/g
Exercise
========

Update your plot to include deployment of the parachute. First, let the
change from free fall to parachute happen immediately. What g-forces
does the jumper experience? Change your code so that the deployment of
the parachute takes 5 seconds. What are the g-forces now?

