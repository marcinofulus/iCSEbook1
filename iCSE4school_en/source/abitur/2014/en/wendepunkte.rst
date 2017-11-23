Inflection points
=================

.. admonition:: Problem

  The graph of a function :math:`g : x\mapsto g(x)` defined in :math:`\mathbb R`
  possesses two turning points for :math:`-5\leq x\leq 5`. Decide which of the
  graphs I, II, and III corresponds to the second derivative :math:`g''` of
  :math:`g`. Justify your choice.
  
  .. image:: ../figs/wendepunkte.png
     :align: center

**Solution**

The second derivative of a function allows to deduce the curvature. For a
function :math:`g` possessing two turning points in the interval described here,
the second derivative :math:`g''` must exhibit two zeros with changes of sign,
i.e. transitions from a curvature to the left (:math:`g''>0`) to a curvature
to the right (:math:`g''<0`) or vice versa. Only graph I fulfills this
requirement.

With Sage, we will now try to construct possible forms of :math:`g` based on the
given second derivatives. The second derivatives have the form of polynomials
of second (I), third (II), and fourth (III) order. In terms of their zeros,
we can construct polynomials with similar behavior:

.. math::

   \begin{aligned}
   g''_I(x) &= (x+4)(x-4)=x^2-16\\
   g''_{II}(x) &= (x+4)(x+1{,}5)(x-4)-50\\
   g''_{III}(x)& = -(x+3)^2(x-3)^2\\
   \end{aligned}

In the following function graphs, the zeros corresponding to turning points
are marked by red points.

.. sagecellserver::

      def turning_points(f):
          df = f.diff()
          return [r[0] for r in f.roots() if r[0] in RR and df(r[0]) !=0]

      dd_i(x) = x^2 - 16
      p = plot(dd_i(x), x, (-6, 6), figsize=(4, 2.8))
      tps = point([(x, 0) for x in turning_points(dd_i)], size=30, color='red')
      show(p+tps)

.. end of output

.. sagecellserver::

      dd_ii(x) = (x+4) * (x+1.5) * (x-4) - 50
      p = plot(dd_ii(x), x, (-6, 6), figsize=(4, 2.8))
      tps = point([(x, 0) for x in turning_points(dd_ii)], size=30, color='red')
      show(p+tps)

.. end of output

.. sagecellserver::

      dd_iii(x) = -(x+3)^2 * (x-3)^2
      p = plot(dd_iii(x), x, (-6, 6), figsize=(4, 2.8))
      tps = point([(x, 0) for x in turning_points(dd_iii)], size=30, color='red')
      show(p+tps)

.. end of output

Finally, we confirm our considerations by integrating the functions twice.
Red points in the graphs mark the turning points.

.. sagecellserver::

      d_i(x) = integrate(dd_i(x), x)
      g_i(x) = integrate(d_i(x), x)
      p = plot(g_i(x), x, (-8, 8), figsize=(4, 2.8))
      tps = point([(x, g_i(x))  for x in turning_points(dd_i)], size=30, color='red')
      show(p+tps)

.. end of output


.. sagecellserver::

      d_ii(x) = integrate(dd_ii(x), x)
      g_ii(x) = integrate(d_ii(x), x)
      p = plot(g_ii(x), x, (-6, 8), figsize=(4, 2.8))
      tps = point([(x, g_ii(x))  for x in turning_points(dd_ii)], size=30, color='red')
      show(p+tps)

.. end of output

.. sagecellserver::

      d_iii(x) = integrate(dd_iii(x), x)
      g_iii(x) = integrate(d_iii(x), x)
      p = plot(g_iii(x), x, (-6, 6), figsize=(4, 2.8))
      tps = point([(x, g_iii(x))  for x in turning_points(dd_iii)], size=30, color='red')
      show(p+tps)

.. end of output

