Why SageMath?
=============


Choosing the best ICT tool for a math or physics lesson
-------------------------------------------------------



For many years, attempts have been made to use ICT tools and
programming in science classes. Often the software solution has been
is selected by professionals in one specialized field.  Sometimes the
choice is lobbied by the manufacturer of the given system. As a
result, this leads to uncoordinated activities limited to individual
subjects. A student learns in lessons informatics tools and languages
not useful during other subjects. The lessons of physics and math are
enriched with dedicated software that is not used in computer
science. This is in inherently wrong procedure - we use the
specialized tools to individual tasks. But, what if there is a general
purpose tool and language which can be practically without a
compromise used in a range of tasks in school education?

Let's consider what features a computer system should have to break the
stereotype above? Let's find a solution at once having the following
characteristics:

#. WIDE: The system should be based on popular and open language
   wide-ranging programming.
   
   Wide-ranging programming languages can be used make computer games
   as well as scientific applications or education. On the other hand,
   there are many so-called `domain-specific languages
   <https://en.wikipedia.org/wiki/Domain-specific_language>`_ created
   for a single application. Such languages do a great job, but they
   are not good at all other tasks. An example is the Matlab language,
   which despite its own popularity is not the solution adopted in
   teaching computer science. Languages like Python allow practically
   perform all tasks which are specific to Matlab, but their
   specificity allows admit them to teach computer science (see
   `<https://docs.scipy.org/doc/numpy-dev/user/numpy-for-matlab-users.html>`_). Important
   feature of the system is avoiding `vendor lock-in
   <https://en.wikipedia.org/wiki/Vendor_lock-in>`_, which is often
   the case when using domain specyfic languages.
   
#. INTERACT: Programming language should allow for interactive work.

   Such a claim virtually eliminates compiled languages (C/C++). In
   order to use the computer system interactively, the most adequate
   seem to be languages with dynamic typing and introspection. This
   requirement is met by the most of domain specific languages
   provided by Computer Algebra Systems, but also many general-purpose
   languages such as Python.
   
#. FREE - The system should be widely available.

   Unrestricted access to the system is best exploited by the open
   software. In addition, the open software give the possibility of
   the insight into every algorithm used. It is important both in
   science and education. Availability is also related to the
   technical aspects of the installation software. Opportunity to work
   in "cloud" with only internet browser is very desirable feature of
   such a system.
   
#. POWER - The capabilities of the system should allow to deploy it
   uncompromisingly for all scientific subjects.

   Such a requirement eliminates languages that are not enough
   widespread, and do not have large enought set of implemetned tools
   and libraries. Python is an interesting example, because it is
   known for its ease of creating interfaces various libraries written
   in other languages. This feature is heavily exploited by the
   SageMath system which contains hundreds of scientific libraries
   linked by common interface in Python.

   
#. PROF - The system should allow a smooth transition from school
   computer lab to professional use in scientific research and 
   industrial.

   There is no reason to teach at a "small" system school at school,
   and then study or work using the "big"-one. The best way to go
   would be to the even in primary school the same language and
   system, which is used by scientists, but of course limit this usage
   a small part of it. It saves a lot of time and effort halpe to make
   good habits right from the earliest period of study.  It should be
   emphasized that often the cost of software licenses for proprietary
   systems are urging to use simpler and smaller one in schools. This
   problem does not exist when we relay on open software.

+--------------+--------+--------+------+----------+--------+
|System        |WIDE    |INTERACT|FREE  |POWER     |PROF    |
|              |        |        |      |          |        |
+--------------+--------+--------+------+----------+--------+
|SageMath      |  YES   |  YES   | YES  |  YES     |    YES |
+--------------+--------+--------+------+----------+--------+
|Python/Scipy  |  YES   |  YES   |YES   |  YES     |    YES |
+--------------+--------+--------+------+----------+--------+
|Mathematica   | YES    |  YES   |NO    |   YES    |    YES |
+--------------+--------+--------+------+----------+--------+
|C/C++         |    YES |  NO    |YES   | YES/NO   |    YES |
+--------------+--------+--------+------+----------+--------+
|Geogebra      |    NO  |  YES   |  YES |   NO     |    NO  |
+--------------+--------+--------+------+----------+--------+
|Java          |    YES |  NO    | YES  | YES/NO   |    YES |
+--------------+--------+--------+------+----------+--------+

The above analysis shows that solutions based on Python meet all
requirements. Moreover, Python is a language of increasing importance
in computer science. Both the standard Python interpreter and the SageMath
algebra system can provide similar capabilities. Definitely in the Maths
or Physics class, SageMath will offer a shorter path to solution as a
computer algebra system. But before we discuss these systems let's
answer the question of what is a computer algebra system?


What is a Computer Algebra System?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Computer Algebra System (CAS) is a computer program that supports
symbolic calculations. Consider, for example, the following code in
Python:


.. sagecellserver::
   :linked: false

   a = 23.0
   b = 3.0
   print ( (a/34+1/b)**2 )

 

This program will print an approximate value for the expression after
Substituting the variables: math:`a = 23, b = 3`: 1.0197. If we do not
perform the first two substitutions the interpreter will signal  an error.

The situation is different in case of CAS system. Here only we inform
the system that the variables: math: `a, b` will be symbols and we can
Expand the algebraic expression containing these symbols. For example,
executing:


.. sagecellserver::
   
   var('a,b')
   show( expand( (a/34+1/b)**2)  )



.. only:: latex

   we will obtain:        
   :math:`\frac{1}{1156} \, a^{2} + \frac{a}{17 \, b} + \frac{1}{b^2}`


.. only:: html

   We will get an algebraic expression.


Modern computer algebra systems are not limited to the manipulation of
mathematical formulas. As a rule, they are equipped with a numerical
computing system and a rich set of visualization tools. As of today
most of the possibilities of CAS systems are similar and the main
differences are the programming language and the license for the
software.

The proposed approach is based on SageMath, which is a free and open
source software. This eliminates the cost of licenses. In addition,
SageMath uses the popular Python language, which students can learn
during IT lessons.
        

What is SageMath? (from Python to SageMath)
-------------------------------------------

Python
^^^^^^

Python has been developing since the nineties in the last
century. However, its ubiquitous popularity has started in last
decade. In the United States most programming projects is writen in
this language. Python has extensive standard libraries and is
characterized by the clear and concise syntax. Importantly Python
supports different programming methods: procedural, object oriented
and functional. Thanks to these advantages, Norway is the first
country systematically introduced that programming language into
schools.

Ecosystem Scipy 
^^^^^^^^^^^^^^^

Python is a language widely used for scientific research and
education. The most known  set of tools is called
`scipy ecosystem <https://www.scipy.org/>`_. It contains:

   - NumPy, the basic package for numerical calculation similar in the
     philosophy and functionality to well known Matlab software
   - the SciPy library of numerical methods
   - Matplotlib, a graphing package
   - SymPy, symbolic computation library (CAS)

         
SageMath
^^^^^^^^

SageMath is a complete Computer Algebra System. First version of
SageMath was released on February 24, 2005 as free and open source
software in accordance with the terms of the GNU General Public
License. One can say that Sage is an "overlay" on Python, which
integrates many specialized mathematical packages and hundreds of
thousands unique line of code to add new features. Capabilities and
the flexibility of SageMath is immeasurable, so it is worthwhile to
implement the above programming language also in school. It is not
without significance that this is an open source software and as such
free. Teachers and students can access the platform at any time and
place, if they only have access to the internet.


Ecosystem Scipy vs SageMath
^^^^^^^^^^^^^^^^^^^^^^^^^^^


The SageMath computer algebra system is a huge collection of tools and
it includes, among other things, tools from the Scipy ecosystem. The
essential difference is, however, a common interface for all
tools. Way using SageMath is optimized for interactive work and
convenience of mathematicians. Running  SageMath  one  has a
Python 2.7 interpreter available with two key differences:

#. Each command is processed by the so-called preparser before
    will be sent to Python interpreter. Preparser changes input in the following way:

    - replaces the power of `2^3` to the Python syntax `2**3`
    - literals like e.g.: `1` and `1.0` are transformed to
      constructors: `Integer(1)` and `RealNumber(1.0)` respectively

#. About 2000 useful functions are automatically loaded
   like `plot`,`simplify`, etc., and a    symbolic variable `x`  is predefined.

Therefore, for example, to solve a square equation in SageMath, it is
enough write `solve(x^2 + 2*x + 1 == 0, x)` and we will get the
answer. The same can be accomplished in "pure" Python but one needed
to load the appropriate modules and define the variable and only then
proceed to the proper computations.

These advantages of SageMath have prompted us to apply this system in
physics, mathematics and chemistry classes. However, it should be
noted that usingf SageMath is **actually Programming in Python** and
if the students get this skill during IT lessons then there will be
only a small threshold to be overcomed for effective application of
SageMath system for e.g. mathematics or physics. As a result, the
solution is based on the SageMath system will provide a very efficient
tool with very small overhead and will reuse potential students skills
in Python programming.



