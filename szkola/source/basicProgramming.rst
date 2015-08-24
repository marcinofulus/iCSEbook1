.. -*- coding: utf-8 -*-


.. **0:08\-0:20**

Introduction to programming with Python
=======================================

What is computer programming?
-----------------------------

Programming simply to create computer programs. We are surrounded by
computer programs (or software) everywhere. For instance Microsoft Word,
Mozilla Firefox and Photoshop. Other examples are all the apps you have
installed on your smart phone. These examples are usually large complex
programs, but most computer programs are much simpler and you will write
your first program very soon if you continue reading.

To understand how programming works from a bird eye view you can play a
game called `Lightbot <http://lightbot.com/hocflash.html>`__. The game
is pretty self explainatory, so make sure you follow the instructions
carefully! When programming it is extremely important to be precise.

**TODO**: Could explain more!

A computer program is written in a programming language. There are many
different programming languages. Lightbot uses a symbolic language where
you use icons to create a program. In the following we are going to
write code using Python instead. However, the principles you learned by
playing Lightbot are the same. Below is an illustration of the workflow
we use when we are programming. Do you see how similar the different
steps are to the steps you performed when you played Lightbot?

.. figure:: figs/programmering_en.svg
   :alt: Alt text

   Alt text

Installation
-----------------

**TODO** Fill in! If this is for E+ only maybe something about Sage?

External links
--------------

This tutorial is brief. If you are new to programming you will need a
lot of practice. You can find a lot of tutorials online. A very
thourough one is `Learning Python the hard
way <http://learnpythonthehardway.org/book/>`__.

**TODO**: Here we could have a list of different!

Your first program
------------------

Our first program only consist of one line:

.. **14:30\-16:00**

.. sagecellserver:: python

    print "Hello world!"

.. end of output

.. **16:00\-17:50**

When we run the code "Hello world!" is printed to the screen. This is
because we used the key word :math:`\texttt{print}`, which tells the
computer to write what follows to the screen. Notice that we use quotes
at the beginning and end of "Hello world". This is done such that the
computer can distinguish text from code. To make it easier for the
programmer to distinguish between text and code they are shown in
different colors.

The text "Hello world!" is chosen arbitrarely. Try to change the text
between the quotes and see what happens!

Math
----

In Python and most other computer languages the basic mathematical
operators are written as :math:`+, -, *,` and :math:`/`. In python
exponentials are expressed by a double asterisk (:math:`*`\ :math:`*`)
notation. Lets show some examples:

.. sagecellserver:: python

    print 2 + 3
    print 2 - 3
    print 2*3
    print 2/3
    print 2**3

.. end of output


When we run the code the results are just as expected apart from the
division. The reason why 2 divided by 3 is zero will be described in the
section below about types.

**TODO:** The following shoud be part of and if/else section.

Other useful operators are greater-than (>), less-than (<),
greater-than-equal (>=), and less-than-equal (<=).

.. sagecellserver:: python

    print 7 > 5
    print 7 >= 7
    print 7 < 5
    print 7 <= 5

.. end of output


If we ask this as a question: Is 7 bigger than 5? You can answer either
yes or no. In other words the assertion may be true or false, which is
what you see on the screen when you run the program. Play around, try
various combinations, and guess the result!

Finally, we can improve the print command such that the output is easier
to read:

.. sagecellserver:: python

    print "2 + 3 = ", 2+3
    print "2 < 3 = ", 2<3

.. end of output


As before we put quotes around the part that should be interpreted as
text, after the text we add a comma and then we continue writing the
math. The numbers and mathematical operators will be interpreted as code
when we execute our program.

Variables
---------

Variables are names we give in our program such that the computer
remember the variable and we can use it later in our program. Here is an
example

.. sagecellserver:: python

    name = "Jonas"
    age = 23

.. end of output

In the first line we create a variable called :math:`\texttt{name}`,
which contains the name Jonas. Think of the variable as an empty box
called :math:`\texttt{name}`. Then we put the name 'Jonas' into the box,
which is stored in the computers memory. Similarly, the next line of
code defines a variable called :math:`\texttt{age}`, which contains the
number 23.

Change the variables such that they contain your name and age, then run
the program. What happened? Nothing, or at least your terminal is empty.
Python has only created the variables. If you would like to see them you
can add a :math:`\texttt{print}` command at the end of the program.

.. sagecellserver:: python

    print name
    print age

.. end of output


What happens when you run the code below?

.. sagecellserver:: python

    print 'name'
    print 'age'

.. end of output


Why is not the result printed to the screen 'Jonas' and '23'? This is
because Python interpret the code as textstrings and not as variables
when you use quotes.

Note that if you try to create two variables with the same name, the
first variable will be overwritten by the second. So what will happen
when you run the code below?

.. sagecellserver:: python

    name = 'Marius'
    name = 'Lise'
    
    print name

.. end of output



Types
-----

By now you learned that variables have a name and a content, but they
also have another property namely a :math:`\texttt{type}`. When Python
creates a variable it identifies the type of the content. In the last
example we created the variable name, which contains a text string and
age which contains a number. Python remember this information;
:math:`\texttt{name}` is a text string and :math:`\texttt{age}` is a
number.

To check which type a variable has we can use the command
:math:`\texttt{type}`. Here is an example:

.. sagecellserver:: python

    location = 'Oslo'
    year = 2015
    day = 'April 29'
    temperature = 8.7
    
    print type(location)
    print type(year)
    print type(day)
    print type(temperature)

.. end of output 

In this program we first create four variables then the type of each
variable is printed. The results show that location and day has the type
'str', which is an abbreviation for string. The variable year has the
type 'int', which means that it is an integer. Finally, temperature has
the type 'float'. Thus python distinguishes between floats and integer.
In the section about mathematical operators we got zero when we divided
2 by 3. This is because both 2 and 3 have the type 'int' and therefore
also the result will have the type 'int'. If we use float numbers
instead we get the expected answer. Here is an example to show the
difference:

.. sagecellserver:: python

    a = 2.0
    b = 3.0
    
    c = 2
    d = 3
    
    print a/b
    print c/d
    print type(a/b)
    print type(c/d)
    print type(b/c)

.. end of output


In the last line we divide a float by an integer. Note that the result
has the type :math:`\mathit{float}`.

Lists
-----

Until now you have learned that variables has a name, a content, and a
type. Now it is time to introduce a different type of variables: lists.
If we want our program to remember the names of all the students in a
class. We can create one variable for each student or we can create one
variable containing all the students. The latter is called a list and
here is an example:

.. sagecellserver:: python

    students = ['Jake', 'John', 'Mary', 'Lucy', 'Alexander']

.. end of output

Here we have used square brackets to define a list, and within the
brackets we have written 5 names separated by a comma. Further, every
name is defined as a string. When you have defined a list you can print
it and check the type:

.. sagecellserver:: python

    print students
    print type(students)

.. end of output

You can also check how many elements there is in your list by typing

.. sagecellserver:: python

    print len(students)
.. end of output

.. sagecellserver:: python

    lists_in_lists = [[0,1,2], ["Mary", "Lucy", "Jake"]]
.. end of output

After we have defined a list such as students

.. sagecellserver:: python

    students = ['Jake', 'John', 'Mary', 'Lucy', 'Alexander']

.. end of output

We can access the elements in the list through the index of every
element:

.. sagecellserver:: python

    print students[0]
    print students[3]

.. end of output


Here :math:`\texttt{students[0]}` means the first element in the list,
which is 'Jake', while :math:`\texttt{students[3]}` is the 4th element
in the list, which is 'Lucy'. Note that Python starts counting at zero!
This might seem strange, but it is just a definition we have to get used
to.

If we want to we can also change the elements within the list. If it
turns out that we made a mistake and 'Alexander' should be 'Alex'. We
can overwrite the 5th element in the list as follows

.. sagecellserver:: python

    students[4] = 'Alex'
    print students

.. end of output


When we print the list we see that the last element is changed, just as
we wanted.

It is also possible to add elements to the list. For instance if we
forgot one of the students in the class you can add her by typing

.. sagecellserver:: python

    students.append('Karen')
    print students

.. end of output

When we add items to a list they always appear at the end.

In some cases it makes sense to create and empty list and then add
elements afterwards. Here is a list, which is initially empty and then
filled with numbers

.. sagecellserver:: python

    growing_list = []
    growing_list.append(1)
    growing_list.append(2)
    growing_list.append(3)
    print growing_list

.. end of output


Arrays
------

Loops
-----

A loop is a piece of code which repeat itself. If we want our program to
perform the same task many times in a row we need a loop. There are to
types of loops, namely for-loops and while-loops. Here we are only
considering :math:`\texttt{for}`-loops.

A for-loop repeats a piece of code for every element in a list. Again we
use the list with students. Now we want to print the names and how many
characters each name has:

.. sagecellserver:: python

    students = ["Mary", "James", "Siri" , "Alexander", "Elizabeth"]
    
    for name in students:
        print "The name", name, "has", len(name), "characters" 

.. end of output

The code is executed for every name in the list, i.e., since the list
has 5 elements the code is exectuted 5 times.

The first line :math:`\texttt{for name in students:}` creates a loop
over all elements in the list :math:`\texttt{students}`. In each pass of
the loop, the variable :math:`\texttt{name}` refers to an element in the
list, starting with :math:`\texttt{students[0]}`, proceeding with
:math:`\texttt{students[1]}`, :math:`\texttt{students[2]}`, and so on
until we reach the last element in the list.

The :math:`\texttt{for}` loop specification ends with a colon, and after
the colon comes a block of statements that does something useful with
current element. Note that the block must be intended, this is an
important feature in Python. This might be difficult to remember, but
you will get used to it.

Here is antother example where we are adding the number from 1 to 10:

.. sagecellserver:: python

    s = 0
    for i in [1,2,3,4,5,6,7,8,9,10]:
        s += i
    
    print s

.. end of output


If we want to loop over the numbers 1 to 1000 instead it will take long
to write down the list of numbers. Fortunately, there is a function
called :math:`\texttt{range}` in Python, which can do this job for you.
Range takes two arguments (:math:`\texttt{range(start, stop)}`) and
returns a list of numbers (integers) from start to stop. Here is to
examples:

.. sagecellserver:: python

    print range(1, 10)
    print range(2,8)

.. end of output

Note that the last number is not included! We may also add a third
argument, this argument tells us how large the step between the numbers
should be. Here is a few examples:

.. sagecellserver:: python

    print range(1, 10, 1)
    print range(1, 10, 2)
    print range(1, 10, 3)

.. end of output


:math:`\texttt{range}` is very useful in our :math:`\texttt{for}` loop

.. sagecellserver:: python

    s = 0
    for i in range(1, 1000,1):
        s += i
    print s

.. end of output


Plotting
--------

Handling errors
---------------

