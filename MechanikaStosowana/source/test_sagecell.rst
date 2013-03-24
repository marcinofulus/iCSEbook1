This extension defines a directive 'sagecellserver' which allows to embedd sage cell inside sphinx doc. To learn more about sage cell server visit: http://aleph.sagemath.org/static/about.html


Installation
============
   1. Install this extension: 'python setup.py install --user'
   2. Move 'layout.html' to your '_template' directory. Change paths in this file inside <script> tags if necessary
   3. Add 'icsecontrib.sagecellserver' to your extensions in 'config.py'


How to use it
=============

Example of usage:

.. sagecellserver::

    sage: A = matrix([[1,1],[-1,1]])
    sage: D = [vector([0,0]), vector([1,0])]
    sage: @interact
    sage: def f(A = matrix([[1,1],[-1,1]]), D = '[[0,0],[1,0]]', k=(3..17)):
    ...       print "Det = ", A.det()
    ...       D = matrix(eval(D)).rows()
    ...       def Dn(k):
    ...           ans = []
    ...           for d in Tuples(D, k):
    ...               s = sum(A^n*d[n] for n in range(k))
    ...               ans.append(s)
    ...           return ans
    ...       G = points([v.list() for v in Dn(k)],size=50)
    ...       show(G, frame=True, axes=False)


.. end of output

The sage prompts can be removed by adding setting 'prompt_tag' option to False::

  var('R t',domain='real')
  assume(R>0)
  x(t)=R*cos(2*pi*t)
  y(t)=R*sin(2*pi*t)
  r=vector( (x(t),y(t)) ) 
  v=r.diff(t)
  T=v/v.norm().trig_simplify()
  show(r(t))
  show(v)
  show(T)

	.. sagecellserver::
	    :prompt_tag: False

Setting 'prompt_tag' to True has same effect as removing ':prompt_tag:'.
