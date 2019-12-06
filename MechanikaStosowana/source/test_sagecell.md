This extension defines a directive 'sagecellserver' which allows to
embedd sage cell inside sphinx doc. To learn more about sage cell server
visit: <http://aleph.sagemath.org/static/about.html>

Installation
============

> 1.  Install this extension: 'python setup.py install --user'
> 2.  Move 'layout.html' to your '\_template' directory. Change paths in
>     this file inside &lt;script&gt; tags if necessary
> 3.  Add 'icsecontrib.sagecellserver' to your extensions in 'config.py'

How to use it
=============

Example of usage:

The sage prompts can be removed by adding setting 'prompt\_tag' option
to False:

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

Setting 'prompt\_tag' to True has same effect as removing
':prompt\_tag:'.
