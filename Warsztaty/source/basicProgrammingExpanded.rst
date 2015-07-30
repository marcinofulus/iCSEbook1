
Introduction to programming with Python
=======================================

What is computer programming?
=============================

Programming is simply to create computer programs. We are surrounded by
computer programs (or software) everywhere. For instance Microsoft Word,
Mozilla Firefox and Photoshop. Or the apps you have installed on your
smart phone. These are all examples of programs, but they are very large
programming projects, and they are the result of multiple people working
together to create a complete product that can do many things.

Most programs are not that large, they are small and specialized. The
reason you might not have heard about these kinds of programs, is that
they might never have been shared. A lot of programmers write small
programs for their own use, and then never share them with anybody. Or,
maybe the programs are just hidden from you. Consider, for example, the
television you have at home, or your washing machine or your oven. All
these things have been programmed to perform specialized tasks.
Thousands of programs exists behind the scenes in your daily life. They
help make your life easier, and it is exactly the fact that you do not
have to think about them that makes them so brilliant.

To understand how programming works from a bird eye view you can play a
game called `Lightbot <http://lightbot.com/hocflash.html>`__.

Below is a screenshot from the game. The goal is to program the little
robot and make all the blue fields light up. The little icons at the
bottom of the screen are all the available commands you can use. At the
right side of the screen, in the box named 'main', is the actual program
you are creating.

When you are happy with your program, you can run it by pressing the
green arrow at the top of the screen. You can then watch the robot, to
see if the program does what you wanted. Either the robot succeeds and
lights all the blue fields (then you have cleared the board), or it
fails and nothing happens. Then you just press the orange reset button,
change your code, and try again. The game is pretty self explainatory,
so make sure you follow the instructions carefully! When programming it
is extremely important to be precise.

A computer program is written in a programming language. There are many
different programming languages. Lightbot uses a symbolic language where
you use icons to create a program. In the following tutorial we are
going to write code using Python instead. However, the principles you
learned by playing Lightbot are the same. Below is an illustration of
the workflow we use when we are programming. Do you see how similar the
different steps are to the steps you performed when you played Lightbot?

.. figure:: programmering_en.svg
   :alt: Alt text

   Alt text

Installation (??)
=================

If this is for E+ only maybe something about Sage?

External links
==============

This tutorial is brief. If you are new to programming you will need a
lot of practice. You can find a lot of tutorials online, here are some
good examples:

Learn Python the Hard Way
-------------------------

Learn Python the Hard Way is a very well written and thorough book that
teaches you Python from scratch. It is available for free online at

http://learnpythonthehardway.org/

Code academy
------------

Code Academy is a website with free online courses in lots of different
programming languages. Code Academy is brilliant for beginners because
it teaches programming hands on. Below is a link to their beginner
course in Python

http://www.codecademy.com/tracks/python

Project Euler
-------------

If you want a challenge, I recommend Project Euler. Project Euler is a
website full if mathematical challenges with a twist. The twist is that
they are meant to be solved with programming. The exercises quickly
become more difficult as you go, so start at the beginning!

https://projecteuler.net/problems

Your first program
==================

Our first program consists of just one line:

.. code:: python

    print "Hello world!"

.. parsed-literal::

    Hello world!
    

When we run the code, "Hello world!" is printed to the screen. This is
because we used the key word :math:`\texttt{print}`, which tells the
computer to write what follows to the screen. Notice that we use quotes
at the beginning and end of "Hello world". This is done so that the
computer can distinguish text from code. To make it easier for the
programmer to distinguish between text and code they are shown in
different colors.

The text "Hello world!" is chosen arbitrarely. Try to change the text
between the quotes and see what happens!

Math
====

In Python and most other computer languages the basic mathematical
operators are written as :math:`+, -, *,` and :math:`/`. In python
exponentials are expressed by a double asterisk (:math:`*`\ :math:`*`)
notation. Lets show some examples:

.. code:: python

    print 2 + 3
    print 2 - 3
    print 2*3
    print 2/3
    print 2**3

.. parsed-literal::

    5
    -1
    6
    0
    8
    

When we run the code, the results are just as expected apart from the
division. The reason why 2 divided by 3 is zero will be described in the
section below about types.

We can improve the :math:`\verb+print+` command to make the output is
easier to read:

.. code:: python

    print "2 + 3 = ", 2+3

.. parsed-literal::

    2 + 3 =  5
    

As before, we put quotes around the part that should be interpreted as
text. After the text we add a comma, and then we continue writing the
math. The numbers and mathematical operators will be interpreted as code
when we execute our program.

Variables
=========

Variables are names we give in our program so that the computer
remembers the variable and we can use it later in our program. Here is
an example

.. code:: python

    name = "Jonas"
    age = 23
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

.. code:: python

    print name
    print age

.. parsed-literal::

    Jonas
    23
    

What happens when you run the code below?

.. code:: python

    print 'name'
    print 'age'

.. parsed-literal::

    name
    age
    

Why is not the result printed to the screen 'Jonas' and '23'? It is
because Python interprets the code as *textstrings* and not as
*variables* when you use quotes.

Note that if you try to create two variables with the same name, the
first variable will be overwritten by the second. So what will happen
when you run the code below?

.. code:: python

    name = 'Marius'
    name = 'Lise'
    
    print name

.. parsed-literal::

    Lise
    

Types
=====

By now you learned that variables have a name and a content, but they
also have another property namely a :math:`\texttt{type}`. When Python
creates a variable it identifies the type of the content. In the last
example we created the variable name, which contains a text string and
age, which contains a number. Python remember this information;
:math:`\texttt{name}` is a text string and :math:`\texttt{age}` is a
number.

To check which type a variable has, we can use the command
:math:`\texttt{type}`. Here is an example:

.. code:: python

    location = 'Oslo'
    year = 2015
    day = 'April 29'
    temperature = 8.7
    
    print type(location)
    print type(year)
    print type(day)
    print type(temperature)

.. parsed-literal::

    <type 'str'>
    <type 'int'>
    <type 'str'>
    <type 'float'>
    

In this program we first create four variables, then the type of each
variable is printed. The results show that :math:`\verb+locationy+`\ and
:math:`\verb+day+` has the type 'str', which is an abbreviation for
string. The :math:`\verb+variabley+`\ year has the type 'int', which
means that it is an integer. Finally, :math:`\verb+temperaturey+`\ has
the type 'float'. Thus python distinguishes between floats and integer.
In the section about mathematical operators we got zero when we divided
2 by 3. This is because both 2 and 3 have the type 'int' and therefore
also the result will have the type 'int'. If we use float numbers
instead we get the expected answer. Here is an example to show the
difference:

.. code:: python

    a = 2.0
    b = 3.0
    
    c = 2
    d = 3
    
    print a/b
    print c/d
    print type(a/b)
    print type(c/d)
    print type(b/c)

.. parsed-literal::

    0.666666666667
    0
    <type 'float'>
    <type 'int'>
    <type 'float'>
    

In the last line we divide a float by an integer. Note that the result
has the type :math:`\mathit{float}`.

Lists
=====

Until now you have learned that variables has a name, a content, and a
type. Now it is time to introduce a different type of variables:
*lists*. What if we want our program to remember the names of all the
students in a class. We can create one variable for each student, or we
can create one variable containing all the students. The latter is
called a list and here is an example:

.. code:: python

    students = ['Jake', 'John', 'Mary', 'Lucy', 'Alexander']
Here we have used square brackets to define a list, and within the
brackets we have written 5 names separated by a comma. Furthermore,
every name is defined as a string. When you have defined a list you can
print it and check the type:

.. code:: python

    print students
    print type(students)

.. parsed-literal::

    ['Jake', 'John', 'Mary', 'Lucy', 'Alexander']
    <type 'list'>
    

You can also check how many elements there is in your list by typing

.. code:: python

    print len(students)

.. parsed-literal::

    5
    

The list :math:`\texttt{students}` contained text, but in general the
elements in a list can be of any type. Here is a list with numbers:

.. code:: python

    some_numbers = [2, 5.0, 6, 8, 200, 436]
And here we have a mixture of strings and numbers

.. code:: python

    mixed_list = ["some text", 2, 2.3, 9, "more text"]
You can even put a list inside another list

.. code:: python

    lists_in_lists = [[0,1,2], ["Mary", "Lucy", "Jake"]]
After we have defined a list such as students

.. code:: python

    students = ['Jake', 'John', 'Mary', 'Lucy', 'Alexander']
we can access the elements in the list through the index of every
element:

.. code:: python

    print students[0]
    print students[3]

.. parsed-literal::

    Jake
    Lucy
    

Here :math:`\texttt{students[0]}` means the first element in the list,
which is 'Jake', while :math:`\texttt{students[3]}` is the 4th element
in the list, which is 'Lucy'. Note that Python starts counting at zero!
This might seem strange, but it is just a definition we have to get used
to.

If we want to, we can also change the elements within the list. If it
turns out that we made a mistake and 'Alexander' should be 'Alex', we
can overwrite the 5th element in the list as follows

.. code:: python

    students[4] = 'Alex'
    print students

.. parsed-literal::

    ['Jake', 'John', 'Mary', 'Lucy', 'Alex']
    

When we print the list we see that the last element has changed, just as
we wanted.

It is also possible to add elements to the list. For instance if we
forgot one of the students in the class, you can add her by typing

.. code:: python

    students.append('Karen')
    print students

.. parsed-literal::

    ['Jake', 'John', 'Mary', 'Lucy', 'Alex', 'Karen']
    

When we add items to a list they always appear at the end.

In some cases it makes sense to create an empty list and then add
elements afterwards. Here is a list that is initially empty and then
filled with numbers

.. code:: python

    growing_list = []
    growing_list.append(1)
    growing_list.append(2)
    growing_list.append(3)
    print growing_list

.. parsed-literal::

    [1, 2, 3]
    

Error messages
==============

Now that you have written some Python code for the first time, it is
possible you have encountered some errors. If not, you will probably see
some errors soon. So let us look at some error messages and try to
interpret them. When you are programming, you will do lots of mistakes,
and it is important to be able to understand what went wrong.
Interpreting your error messages might be the best way to become good at
programming.

As an example, let us write a print command with an error on purpose.

.. code:: python

    prnt "Hello, World!"

::


      File "<ipython-input-2-ee0577b4928c>", line 1
        prnt "Hello, World!"
                           ^
    SyntaxError: invalid syntax
    


As you can see, you got an error message. The last line of the message
is always the most important line, and in this case it says
:math:`\verb+SyntaxError: invalid syntax+`. This means that the error we
made is a syntax error, which means that Python did not understand what
we wrote. We have written something that does not make sense. In this
example the :math:`\verb+print+` command has a spelling error and Python
does not recognize it.

at the first line, Python attempts to let us know where the error is. It
says 'line 1' at the top, which means the error is at line 1 in our
program. In the example this is obvious, but in a program with several
hundred lines, it is definitely useful to know which line has an error.

Let us try another error

.. code:: python

    location = "Oslo"
    print place

::


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-3-ce2268faccfb> in <module>()
          1 location = "Oslo"
    ----> 2 print place
    

    NameError: name 'place' is not defined


You did not get a syntax error this time, because Python understands
what you want to say, and you have written correct Python code. Now you
get a :math:`\verb+NameError+` instead. You get a
:math:`\verb+NameError+` because you first declare the variable
:math:`\verb+location+`, and then you attempt to print the variable
:math:`\verb+place+`. But there is no variable named
:math:`\verb+place+`, and so you get a name error – the program attempts
to use a variable that does not exist.

Let us look at one last error

.. code:: python

    students = ["John", "Jake", "Mary", "Marcus"]
    print students[4]

::


    ---------------------------------------------------------------------------

    IndexError                                Traceback (most recent call last)

    <ipython-input-4-da48a51fda53> in <module>()
          1 students = ["John", "Jake", "Mary", "Marcus"]
    ----> 2 print students[4]
    

    IndexError: list index out of range


We got an :math:`\verb+IndexError+`, and it says 'list index out of
range'. The goal of the print command is to print the fourth name in the
list, Marcus. But, we have forgotten that Python starts to count on 0,
so Marcus has the index 3!. This means that we have attempted to access
a part of the list which does not exist, and therefore we get an 'index
out of range' error.

More about printing
===================

So far you have seen how to print both text strings and variables. Now,
we will look at how to combine them. Consider the following program

.. code:: python

    name = "Silje"
    print "Hello", name, "! How are you today?"

.. parsed-literal::

    Hello Silje ! How are you today?
    

In this example we use the print command to print 3 tings consecutively.
Observe that everything we print appears on the same line. This is
because they all belong to the same print command.

If you look closer at the output, you can see that Python have created a
space between each of the things we print. It looks a bit odd that there
is a space between 'Silje' and '!', so let us use another way to combine
a message with a variable.

.. code:: python

    name = "Silje"
    print "Hello %s! How are you today?" % name

.. parsed-literal::

    Hello Silje! How are you today?
    

Now we got the output to look like we wanted! But what exactly is
happening here? We can tell that we want to print a string, but inside
the string it says :math:`\verb+%s+`. When we write :math:`\verb+%s+`
inside a string, we create sort of a 'hole' in the string, which we can
later fill with a variable. We write :math:`\verb+% name+` behind the
string because name is the variable that we want to fill the hole with.
We write :math:`\verb+%s+` because s is short for string, and the
variable we fill with is a string. We can create as many 'holes' in a
string as we want, and we can even use other variables of other types to
fill them.

.. code:: python

    name = "Silje"
    age = 18
    location = "Drammen"
    
    print "My name is %s, I am %i years old and I was born in %s." % (name, age, location)

.. parsed-literal::

    My name is Silje, I am 18 years old and I was born in Drammen.
    

In this example, there are three 'holes' in the message. Two strings,
marked with :math:`\verb+%s+`, and one integer, marked with
:math:`\verb+%i+`. Behind the string we have listed the variables we
want to include in the message. Notice that we have wrapped the
variables in parentheses, and we list them in the order we want them to
appear.

Programs that interacts with the user
=====================================

So far we have created programs that just do something simple and then
terminates by themself. But most programs you know from real life are
created to interact with the user in some way. So, let us ask the user a
series of questions. We can do this with the command
:math:`\verb+raw_input+`. Here is an example:

.. code:: python

    weather = raw_input('Hi! How is the weather today?')
    print "The weather seems to be %s today!" % weather

.. parsed-literal::

    Hi! How is the weather today?good
    The weather seems to be good today!
    

When Python executes this line, the question inside the parentheses is
printed to the terminal, and then the program waits for the person who
ran the program to give an answer.

Try to give the program an answer and press enter to continue the
program. Your answer is stored in the variable :math:`\verb+weather+`.
After you have pushed enter, the program continues. In this case, it
prints a message that includes your answer.

Structuring your code
=====================

One thing to remember when you are coding, is that you should structure
your code to make it as organized as possible. Everything you write
should be easy to read for other people. Code is meant to be understood
by computers, but it is also important that humans understand what the
code does. This is a popular quote among programmers:

    Programs must be written for people to read, and only incidentally
    for machines to execute.

Even if you are certain that you will never share your code with anyone,
you should try to make it understandable and organized. One reason is
that you make it easier for yourself to find and fix bugs in your code.
Another reason is that it becomes a lot easier to go back to your code
later to make changes or to add more features.

So it is a good idea to structure your code and make it easy to read,
but how do you do that? Let us take a look.

Comments
--------

The first thing you can to is to write comments in your code. Comments
are parts of your program that Python does not interpret as code, and
that does not affect your program in any way. The only thing comments
do, is to explain to the reader what is happening. You can use the
**#**-symbol to write comments. Everything on the line behind a # will
be interpreted as a comment. Let us explore some examples

.. code:: python

    # Ask the user for his or her name
    name = raw_input("Hi there, what's your name?")
    
    # Greet the user with a nice message
    print "Nice to meet you %s, I hope you have a great day!" % name

.. parsed-literal::

    Hi there, what's your name?test 
    Nice to meet you test , I hope you have a great day!
    

When you run this program, it does exactly the same as it would have
done without any comments, but the comments helps the reader understand
what is happening.

Another usual place to put comments, is at the beginning of a function
to explain what the function does.

.. code:: python

    def Fahrenheit2Celsius(F):
    	# Converts a temperature from degrees Fahrenheit to degrees Celsius
    	C = (5./9)*(F - 32)
    	return C
If you want a comment to take up multiple lines, you can wrap it in
triple quotation marks ("""). A good use of this is at the beginning of
your program, to explain what your program does.

.. code:: python

    """This is a comment 
    that covers 
    three lines in total"""



.. parsed-literal::

    'This is a comment \nthat covers \nthree lines in total'



Whitespace
==========

Another important part of a programs structure, is what we call
whitespace. Whitespace is simply explained everything we can see, which
means spaces, indentation and empty lines. There are some places inside
the code where you can add extra space, and some places you cant. If you
learn where it is okay to add some 'empty space', your program will look
nicer and more readable.

You can for example always add empty lines in a program. Python ignores
empty lines. By creating some space for your program to 'breathe', you
make your code a lot more readable. Consider the following programs:

.. code:: python

    from math import sqrt
    number=raw_input("Please give me a number!")
    root=sqrt(float(number))
    print "The square root of your number is %d" % root

.. parsed-literal::

    Please give me a number!9
    The square root of your number is 3
    

.. code:: python

    from math import sqrt
    
    number = raw_input("Please give me a number!")
    root = sqrt(float(number))
    
    print "The square root of your number is %d" % root

.. parsed-literal::

    Please give me a number!8
    The square root of your number is 2
    

These two programs use exactly the same code, I have just added some
extra spaces and empty lines to the same program. At least for me, the
second program is a lot easier to read and understand than the first.
For programs with several hundred lines of code, a bit of space like
this can make a huge difference in readability.

Random
======

A lot of computer programs have random elements built in. Games are a
good example, but randomness is also important for computer security and
is often used in scientific simulations. You will now learn how to
create random events in your program.

We will use the Python library :math:`\verb+random+` to get the
functions we need. You can import simple functions from the library with
import. So if you, for example, want to use the function
:math:`\verb+randint+` (we will look at exactly what
:math:`\verb+randint+` does in a moment) from the library
:math:`\verb+random+`, you can write

.. code:: python

    from random import randint
If you plan to use a lot of different functions from a library, you can
instead write

.. code:: python

    from random import *
The star means that we import all functions from a library.

Rolling dice
============

Let us see what the function :math:`\verb+randint+` actually does. The
name is short for random integer, and it returns exactly that, a random
integer. The function takes two arguments, :math:`a` and :math:`b` (they
are both integers), and returns an integer between :math:`a` and
:math:`b` (including :math:`a` and :math:`b`). Here is a simple program
that rolls a common six sided die

.. code:: python

    from random import randint
    
    # Rolling a die
    result = randint(1,6)
    print result

.. parsed-literal::

    4
    

When the program runs, :math:`\verb+randint+` returns a number between 1
and 6, and we print the result. If you run the program multiple times,
you will see that the result is random each time.

We can, of course, give different arguments to :math:`\verb+randint+` to
simulate lots of different 'dice'

.. code:: python

    from random import randint
    
    # 20-sided die
    print randint(1,20)
    
    # Coin-flip
    print randint(0,1)
    
    # Two six-sided dice
    print randint(1,6) + randint(1,6)

.. parsed-literal::

    5
    0
    5
    

In this program, we use :math:`\verb+randint+` in three different ways.

Some other functions from random are created to be used with lists.
Shuffle, for example, shuffles the elements in a list.

.. code:: python

    from random import shuffle
    
    numbers = [1, 2, 3, 4, 5]
    shuffle(numbers)
    
    print numbers

.. parsed-literal::

    [5, 2, 4, 1, 3]
    

The function :math:`\verb+choice+` draws a random element from a list.
As an example we can use :math:`\verb+choice+` to simulate a lottery.

.. code:: python

    from random import choice
    
    students = ["Lisa", "Marcus", "Jake", "Mary", "Molly", "Blake", "Kane"]
    winner = choice(students)
    
    print winner

.. parsed-literal::

    Jake
    

Example: deck of cards.
=======================

Let us look at how we can use lists and shuffle to create a deck of
cards, and then manipulate and use the deck. Let us represent each card
in a deck of cards by a string of two letters, where the first letter is
the suit and the second is the symbol. For example six of spade becomes
's6' and queen of clubs becomes 'cQ'.

.. code:: python

    from random import shuffle
    
    # Define our complete deck of cards
    deck=[
    's1', 'c1', 'd1', 'h1', 's2', 'c2', 'd2', 'h2', 's3', 'c3', 'd3', 'h3', 's4',
    'c4', 'd4', 'h4', 's5', 'c5', 'd5', 'h5', 's6', 'c6', 'd6', 'h6', 's7', 'c7',
    'd7', 'h7', 's8', 'c8', 'd8', 'h8', 's9', 'c9', 'd9', 'h9', 'sT', 'cT', 'dT', 
    'hT', 'sJ', 'cJ', 'dJ', 'hJ', 'sQ', 'cQ', 'dQ', 'hQ', 'sK', 'cK', 'dK', 'hK']
    
    # Randomize the order of the cards
    shuffle(deck)
    print deck

.. parsed-literal::

    ['s2', 'hT', 'sJ', 's7', 's6', 'c4', 'h8', 'c9', 'dT', 'dQ', 'h2', 'h1', 'd9', 's1', 'cQ', 'c1', 'd6', 'd2', 'sK', 'hJ', 'c2', 'dK', 'h4', 'c8', 'sT', 's3', 'cT', 'c6', 's4', 's8', 'd1', 'h7', 'cK', 'd4', 'd3', 's9', 's5', 'h9', 'd5', 'sQ', 'cJ', 'd8', 'c5', 'dJ', 'd7', 'h3', 'hQ', 'hK', 'h6', 'h5', 'c3', 'c7']
    

By processing this list, we can shuffle the cards, add cards, distribute
cards to players, etc. This means that we have taken the first step
towards creating a card game!

Here we had to write out the entire deck manually, but soon we will look
at commands that makes it possible to save some work and have the deck
generate it self.

Let me show you some quick ways to manipulate the deck. If you have a
list, you can use :math:`\verb+.pop()+` to remove the last element in
the list. This represents drawing a card from the deck.

.. code:: python

    print len(deck)
    print deck.pop()
    print len(deck)

.. parsed-literal::

    52
    c7
    51
    

To begin with, the variable deck contains all 52 cards in a random
order. Then we draw the last card, print it to the screen and observe
that we now have only 51 cards. This is because :math:`\verb+pop+`
actually removes the card from the list, just like when you draw a card
from a deck. Let us draw a hand of 5 cards. We will use another list to
represent the hand.

.. code:: python

    # Make an empty list for our hand, so we have somewhere to put our cards
    hand = []
    
    # Draw 5 cards from the deck and put them into our hand
    hand.append(deck.pop())
    hand.append(deck.pop())
    hand.append(deck.pop())
    hand.append(deck.pop())
    hand.append(deck.pop())
    
    # Look at our hand
    print hand

.. parsed-literal::

    ['d5', 'hJ', 'c6', 'sK', 'sJ']
    

Again, there are several ways to make this code better and more elegant,
but this shows how we can begin to create a game from scratch on the
computer.

For Loops
=========

A loop is a piece of code which repeat itself. If we want our program to
perform the same task many times in a row we need a loop. There are to
types of loops, namely :math:`\texttt{for}`-loops and
:math:`\texttt{while}`-loops. To begin with, we are only considering
:math:`\texttt{for}`-loops.

A for-loop repeats a piece of code for every element in a list. Again we
use the list with students. Now we want to print the names and how many
characters each name has:

.. code:: python

    students = ["Mary", "James", "Siri" , "Alexander", "Elizabeth"]
    
    for name in students:
        print "The name", name, "has", len(name), "characters" 

.. parsed-literal::

    The name Mary has 4 characters
    The name James has 5 characters
    The name Siri has 4 characters
    The name Alexander has 9 characters
    The name Elizabeth has 9 characters
    

The code is executed for every name in the list, i.e., since the list
has 5 elements the code is exectuted 5 times.

.. figure:: figs\for_loop.svg
   :alt: for loop diagram

   for loop diagram

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

.. code:: python

    s = 0
    for i in [1,2,3,4,5,6,7,8,9,10]:
        s += i
    
    print s

.. parsed-literal::

    55
    

If we want to loop over the numbers 1 to 1000 instead it will take long
to write down the list of numbers. Fortunately, there is a function
called :math:`\texttt{range}` in Python, which can do this job for you.
Range takes two arguments (:math:`\texttt{range(start, stop)}`) and
returns a list of numbers (integers) from start to stop. Here is to
examples:

.. code:: python

    print range(1, 10)
    print range(2,8)

.. parsed-literal::

    [1, 2, 3, 4, 5, 6, 7, 8, 9]
    [2, 3, 4, 5, 6, 7]
    

Note that the last number is not included! We may also add a third
argument, this argument tells us how large the step between the numbers
should be. Here is a few examples:

.. code:: python

    print range(1, 10, 1)
    print range(1, 10, 2)
    print range(1, 10, 3)

.. parsed-literal::

    [1, 2, 3, 4, 5, 6, 7, 8, 9]
    [1, 3, 5, 7, 9]
    [1, 4, 7]
    

:math:`\texttt{range}` is very useful in our :math:`\texttt{for}` loop

.. code:: python

    s = 0
    for i in range(1, 1000,1):
        s += i
    print s

.. parsed-literal::

    499500
    

If/Else
=======

Sometimes you want your program to do different things based on a
*condition*. For example, what if we want to print out a special message
if a number equals 0. To do this, we need something known as an
:math:`\verb+if+` test. Let us look at an example:

.. code:: python

    number = 1
    
    if number == 0:
    	print "The number equals zero!"
    else:
    	print "The number does not equal zero!"
Try to change the number to 0, and see if the message you get changes.

Notice that we use double equal signs, ':math:`\verb+==+`\ '. this is
because we already use a single ':math:`\verb+=+`\ ' to assign
variables, so :math:`\verb+number = 0+` assigns the value 0 to the
variable :math:`\verb+number+`.

As you can tell the basic structure of an if/else test is as follows:

.. code:: python

    if condition:
    	do some things
    else:
    	do some other things
You do not always need an :math:`\verb+else+` block, maybe you just want
to write a message if the number equals 0, and do nothing otherwise.

.. code:: python

    if number == 0:
    	print "The number equals zero!"
You can use if tests to check other things than equality. Some other
useful operators are greater-than (:math:`\verb+>+`), less-than
(:math:`\verb+<+`), greater-than-equal (:math:`\verb+>=+`), and
less-than-equal (:math:`\verb+<=+`). To see if something is
:math:`\verb+True+` or :math:`\verb+False+`, you can simply print the
condition to the screen

.. figure:: figs\if_else.svg
   :alt: if else diagrams

   if else diagrams

.. code:: python

    print 7 > 5
    print 7 >= 7
    print 7 < 5
    print 7 <= 5

.. parsed-literal::

    True
    True
    False
    False
    

Play around, try various combinations, and guess the result!

You can add more conditions with the :math:`\verb+elif+` command

.. code:: python

    number = -1
    if number == 0:
    	print "The number equals zero!"
    elif number > 0:
    	print "The number is positive"
    else:
    	print "The number is negative"

.. parsed-literal::

    The number is negative
    

:math:`\verb+elif+` is short for *else if* and you can have as many
:math:`\verb+elif+` blocks as you want between the :math:`\verb+if+`
block and the :math:`\verb+else+` block. Try to run the above program
with different values for :math:`\verb+number+` and see which messages
you get.

While loops
===========

A :math:`\verb+while+` loop is similar to an :math:`\verb+if+` test
because it also checks a condition. The difference between the two is
that a :math:`\verb+while+` loop will repeat everything in the block
over and over again as long as the condition remains true

.. figure:: figs\while_loop.svg
   :alt: while loop

   while loop

Let us look at an example that shows the difference between
:math:`\verb+if+` and :math:`\verb+while+`. We will create a tiny game
where you roll a die. If you get six, you win. If not, you loose. First
we will create this game with an :math:`\verb+if+` test

.. code:: python

    from random import randint
    
    # Roll a die
    result = randint(1,6)
    if result != 6:
    	print "You rolled a %i, no prize for you this time." % result
    else:
    	print "You rolled a six! Great job!"

.. parsed-literal::

    You rolled a 2, no prize for you this time.
    

When the program runs, we draw a random number between 1 and 6. Then, we
use an :math:`\verb+if+` test to react to the result. If the result is
between 1 and 5, we print the message inside the :math:`\verb+if+`
block. And if the result is 6, we print the message in the
:math:`\verb+else+` block. Each time the program runs, a new random
result will be drawn, but no matter what happens, the die will only be
rolled once, and only one message will print to the screen.

Now, let us create the game with a :math:`\verb+while+`-loop instead.

.. code:: python

    from random import randint
    
    # Roll a die
    result = randint(1,6)
    
    while result != 6:
    	print "You rolled a %i, no prize for you this time." % result
    	result = randint(1,6)
    
    print "You rolled a six! Great job!"

.. parsed-literal::

    You rolled a 3, no prize for you this time.
    You rolled a 3, no prize for you this time.
    You rolled a six! Great job!
    

When this program runs, a random number is drawn, just like before. But
if the number is 6, then the condition :math:`\verb+result != 6+` is
false. This means that we skip all the code inside the loop. Then the
program jumps straight to the last line in the code, which prints out
the success message.

If we instead roll between 1 and 5, then the condition is true. This
means that the code inside the loop will run and print the loser message
before *rolling the die again*. After the code inside the loop has run,
the condition is checked again. If we now rolled between 1 and 5, then
the condition is true again and the loop runs one more time. This
continues until we finally roll a 6 and win. Here is one result I got
from running the program.

.. math::

   \texttt{ You rolled a 1, no prize for you this time. } \\
   \texttt{ You rolled a 4, no prize for you this time. } \\
   \texttt{ You rolled a 5, no prize for you this time. } \\
   \texttt{ You rolled a 5, no prize for you this time. } \\
   \texttt{ You rolled a six! Great job! }

As you can see, I first rolled 1, then 4, then 5, then 5 again and
finally 6. Observe that with the :math:`\verb+while+` test we do not
know how many times we will roll the die, but with the :math:`\verb+if+`
test we rolled the die just once every time.

Let us take a look at another example. This time we will find the number
of times we have to double a number before it becomes greater that 1
million

.. code:: python

    i = 0 # number of doublings
    n = 1 
    
    while n < 1000000:
    	i = i + 1
    	n = n*2
    	print "After %i doublings, the number is: %i" % (i, n)

.. parsed-literal::

    After 1 doublings, the number is: 2
    After 2 doublings, the number is: 4
    After 3 doublings, the number is: 8
    After 4 doublings, the number is: 16
    After 5 doublings, the number is: 32
    After 6 doublings, the number is: 64
    After 7 doublings, the number is: 128
    After 8 doublings, the number is: 256
    After 9 doublings, the number is: 512
    After 10 doublings, the number is: 1024
    After 11 doublings, the number is: 2048
    After 12 doublings, the number is: 4096
    After 13 doublings, the number is: 8192
    After 14 doublings, the number is: 16384
    After 15 doublings, the number is: 32768
    After 16 doublings, the number is: 65536
    After 17 doublings, the number is: 131072
    After 18 doublings, the number is: 262144
    After 19 doublings, the number is: 524288
    After 20 doublings, the number is: 1048576
    

The while loop runs until the number :math:`n` becomes greater than 1
million, and n doubles with each iteration. At the same time, we
increase :math:`\verb+i+` by one at every iteration of the loop, which
allows us to print to the screen how many times the loop has repeated.

Infinite loops
==============

with a :math:`\verb+while+` loop it is simple to create an infinite
loop. Consider the following example **(Do not run this)**

.. code:: python

    from random import randint
    
    result = randint(1,6)
    
    while result != 6:
    	print result
The idea is that we roll a die until we get 6. The problem is that we
forgot to re-roll the die inside the loop! If you run this program like
this, and you roll for example 3, then the program will keep printing
the result over and over again for ever. Because the die is never
re-rolled, the condition will always be true and the program will never
escape the loop.

If you create a program like this by accident and run it, you have to
terminate it your self. Exactly how you do that depends on which
platform and which tools you use, but it is often quite cumbersome. So
be careful and try not to create infinite loops!

Functions
=========

You may be used to the word 'functions' from mathematics. We will now
examine how we can define a function in python. In programming, the
concept of functions is somewhat broader than in mathematics, but we
will soon see that they have a lot in common.

The simplest way to think about a function is to look at it like a
machine that takes some input, like a number, and returns some output
based on the input.

.. figure:: figs\function_blackbox.svg
   :alt: function blackbox

   function blackbox

If we for example consider the following mathematical function:

.. math:: f(x) = x^2 + 3x + 1.

Then for each value of :math:`x` (the input),  we can find the resulting
value of :math:`f(x)` (the output). So you can view the function
:math:`f`  as a rule, or a machine, that processes a number given by us.
We can define this function with python like this:

.. code:: python

    def f(x):
        return x**2 + 3*x + 1    
:math:`\verb+def+` and :math:`\verb+return+` are python commands, which
we will explain in more detail soon. Let us define a function with the
name :math:`f` that takes a number :math:`x` and returns the number
:math:`f(x)`. We can now use the function (also known as 'calling' or
'invoking' the function) like this:

.. code:: python

    print f(2)
    print f(3.5)
    print f(-1) + f(1)

.. parsed-literal::

    11
    23.75
    4
    

As soon as we have defined a function in python, it stays in the memory
until the program terminates. This means that after we have defined a
function, we can use it as many times as we want. The functions we
define are actually just like a new type of variable.

A function in python does not need to be mathematical. We can for
example create a function like this:

.. code:: python

    def greet(name):
        print "Hello " + name + "!"
This function takes a name as input, that is, a string, and prints a
greeting as output. We can call it like this

.. code:: python

    greet("Lucy")

.. parsed-literal::

    Hello Lucy!
    

Notice that this function didn’t use the command :math:`\verb+return+`,
and when we invoked the function we did not write :math:`\verb+print+`
before the function call. This is because the function itself prints, we
defined it to do so. It may be difficult to understand this difference,
so let us look at some more examples.

We define two functions, :math:`f1` and :math:`f2`. We want both of them
to take a number :math:`x` as input, and calculate :math:`2x` (the
double of :math:`x`). The difference is that we want :math:`f1` to
return the result, but we want :math:`f2` to print the result to the
screen. So the code is:

.. code:: python

    def f1(x):
        return 2*x
    
    def f2(x):
        print 2*x
Let us now try to call :math:`f1` and :math:`f2` in different ways and
attempt to understand exactly what is happening. First we write

.. code:: python

    f1(2)



.. parsed-literal::

    4



This doesn't result in an error message, so it seems okay, but there is
no printout. In fact, nothing happens at all! The reason for this is
that when we call :math:`f1` with :math:`2` as input, the function
calculates :math:`2*2 = 4` and returns this value, but we don't do
anything with the value. And so, nothing happens. We could for example
do this instead:

.. code:: python

    a = f1(2)
    print a

.. parsed-literal::

    4
    

Here we store the returned value in a variable :math:`a`, and then we
print :math:`a`. Now we get the result, :math:`4`, printed to the
screen. Great!

Let us now try to write

.. code:: python

    f2(3)

.. parsed-literal::

    6
    

This works perfectly fine, we get the result, directly to the screen. So
far so good! This is because we call the function :math:`f2`, and
:math:`f2` prints the number on the screen. But if we instead try to
store the result in a variable like so

.. code:: python

    a = f2(3)
    print a

.. parsed-literal::

    6
    None
    

we get a slightly cryptic result.

To understand what is happing, we first have to interpret the line
:math:`\verb!a = f2(3)!`. As we have learned before, a line like this
means that we calculate the right side and store it in the variable
:math:`a`. But the right side calls f2 with the number
:math:`\verb+x = 3+`, and :math:`f2` does as we defined, and prints the
result :math:`\verb+2*x = 6+` directly to the screen. Now :math:`f2` is
done, but it didn't return any value! So when :math:`a` is defined as
the result, :math:`a` gets the value 'nothing', or :math:`\verb+None+`
which is what 'nothing' is called in python.

Hopefully, you now have some idea what it means that a function returns
a value with the :math:`\verb+return+` command. Do not panic if you find
all this a bit confusing. Remember, comprehension develops with time
when programming, and you will understand it better after you try for
yourself!

Functions with multiple variables
=================================

Now that you know how to define functions with one variable, it is super
simple to define functions with multiple variables. We can create the
following function

.. math:: f(x,y) = 2x^2 + xy + 3,

like so

.. code:: python

    def f(x,y):
        return 2*x**2 + x*y + 3
    
    print f(3,4)

.. parsed-literal::

    33
    

We can even create functions with no arguments at all. This type of
functions is perhaps more useful when you are programming then when you
are doing mathematics. Consider this function

.. code:: python

    def greet():
        print "Hey there! I hope you have a great day!"
Observe that when we invoke a function like this, we still have to use
parentheses like so

.. code:: python

    greet()

.. parsed-literal::

    Hey there! I hope you have a great day!
    

Another thing worth noticing is that many of the commands we have used
in python so far are defined exactly like we just saw.
:math:`\verb+range+` for example, is a function that we call when we
need to use it. When we write :math:`\verb+range(1,10,2)+`, we call a
function with three arguments.

Arrays
======

Soon we will start to look at plotting in Python. But before we do, we
should first introduce *arrays*. Arrays are a type of list that is
especially useful for mathematics. Unlike lists, which may contain
different types of elements, arrays may only contain numbers. Lists can
also add or remove elements, while arrays always have a fixed size. If
we create an array with a thousand numbers, it will always contain a
thousand numbers. We can, however, change what those numbers are.

Now we will show the two most common ways of creating arrays. First, how
do we create an empty array? Because an array never changes it's size,
we have to define the number of spaces in the array. To do this, we use
the command :math:`\verb+zeros+`:

.. code:: python

    from pylab import *
    
    x = zeros(3) 
    
    print x

.. parsed-literal::

    [ 0.  0.  0.]
    

The variable :math:`x` is now an array with three elements. All the
elements have the value :math:`0`. This may seem like a strange way to
do it, but now we can change specific elements by indexing like this

.. code:: python

    x[0] = 10
    x[1] = 4
    x[2] = 3

.. parsed-literal::

    [ 10.   4.   3.]
    

We call this use of square brackets for 'indexing', and we use it to get
easy access to specific elements from an array or a list. Python counts
from 0, so :math:`\verb+x[0]+` is the first element, :math:`\verb+x[1]+`
is the second element, etc. So if we write :math:`\verb+print x+` we get
the following

.. code:: python

    print x

.. parsed-literal::

    [ 10.   4.   3.]
    

The second way to create an array involves the function
:math:`\verb+linspace+`. Linspace is short for *linear spacing*. It
takes three input numbers: start, stop, and size. Example:

.. code:: python

    x = linspace(0,1,6)
    print x

.. parsed-literal::

    [ 0.   0.2  0.4  0.6  0.8  1. ]
    

As you can tell, x is an array with 6 elements. The first element is 0,
the last element is 1 and the rest are distributed equally. We will see
how useful :math:`\verb+linspace+` can be when we start plotting.

Vectorized functions
====================

A great advantage to arrays is that they are made to be used
mathematics. For example, they behave exactly like vectors. This means
that we can use arrays to calculate dot products and cross products.

.. code:: python

    u = array([1,-4,3])
    v = array([3,2,-1])
    print dot(u,v)
    print cross(u,v)

.. parsed-literal::

    -8
    [-2 10 14]
    

Another useful feature of arrays is that we can give them as input to
functions. Consider for example this function which we looked at before

.. code:: python

    def f(x):
        return x**2 + 3*x + 1
What happens when we call this function with an array?

.. code:: python

    a = array([0,1,2,3,4,5])
    print f(a)

.. parsed-literal::

    [ 1  5 11 19 29 41]
    

Python calculates the result element by element and returns an array
containing all the results.

Plotting
========

We will now take a look at plotting in python, which involves creating
simple figures and graphs. We will plot points in the coordinate system
that you are used to from mathematics. To plot, we use the function
:math:`\verb+plot+` from the Pylab package. The :math:`\verb+plot+`
function takes in two lists, or arrays, of numbers as input. Here is a
simple example

.. code:: python

    %matplotlib inline
    from pylab import plot
    plot([0,0.5,1], [2,4,6], 'x')
    show()


.. image:: output_180_0.png


As you can see, the program draws the points (0,2), (0.5, 4) and (1,6)
in the coordinate system. We have to use the command
:math:`\verb+show()+` to show the figures we have created. We also used
the string *'x'* to tell :math:`\verb+plot+` to use crosses to draw the
points. By default, :math:`\verb+plot+` will just draw lines between the
points.

If we have defined a function, for example

.. math:: f(x) = x^2 + 3x + 1,

which we looked at earlier. Then we can write this

.. code:: python

    def f(x):
        return x**2 + 3*x + 1
    
    x = linspace(-6,6,1000)
    y = f(x)
    
    plot(x,y)
    show()


.. image:: output_184_0.png


Here we create a set of a thousand points, and then we plot them. This
gives us a nice figure of the function :math:`f(x)`

We can also create plots of other known mathematical functions, like
:math:`sin(x)` and :math:`cos(x)`

.. code:: python

    x = linspace(0,2*pi,1000)
    plot(x,sin(x))
    plot(x,cos(x))
    show()


.. image:: output_186_0.png


After we have created the curve with the plot-command, and before we
call :math:`\verb+show()+`, we can prettify the figure. For example by
adding labels to the axes with :math:`\verb+xlabel+` and
:math:`\verb+ylabel+`

.. code:: python

    x = linspace(0,2*pi,1000)
    plot(x,sin(x))
    plot(x,cos(x))
    xlabel('x')
    ylabel('y')
    show()


.. image:: output_188_0.png


.. code:: python

    x = linspace(0,2*pi,1000)
    plot(x,sin(x))
    plot(x,cos(x))
    xlabel('x')
    ylabel('y')
    title('This is a title')
    axis([0,2*pi,-1,1])
    show()


.. image:: output_189_0.png


Axis takes a list like this:
:math:`\verb+[xstart, xstop, ystart, ystop]+`

If we want to save the figure, we can do so with :math:`\verb+savefig+`

.. code:: python

    x = linspace(0,2*pi,1000)
    plot(x,sin(x))
    plot(x,cos(x))
    xlabel('x')
    ylabel('y')
    axis([0,2*pi,-1,1])
    savefig('figure1.png')
    savefig('figure1.pdf')
    show()


.. image:: output_192_0.png


This creates the images 'figure1.png' and 'figure2.pdf' respectivly.

There are a lot more ways to make your plots look prettier, but let us
not dive in too deeply for now. We will explore more things you can do
with plots later, but if you feel impatient, you can take a look at
`matplotlib.org <matplotlib.org>`__. It is the website for the plotting
package that pylab uses, and it contains plenty of examples of different
plots you can create.

