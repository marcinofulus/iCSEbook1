
Battleship!
+++++++++++

We are now going to create a game you have probably heard of, called Battleship. You will have to use the basic programming skills you gained in the introductory tutorial. It may be helpful to go back and take a look at certain parts if you get stuck. 

A lot of these exercises are pulled from Code Academy, and so you can
also solve them there by following this link and finding the right
module:

http://www.codecademy.com/en/tracks/python

What is battleship?
-------------------

Battleship is a board game for two people. Both of the players are given
a certain number of ships to place on a grid. First the players place
their ships, then they take turns to guess the coordinates of the
opponents ship. After a player have made a guess, the opponent have to
reveal whether the shot was a hit or a miss. The players have two
boards, one to keep track of their own ships, and one to keep track of
where they have shot the other player. The picture below show an example
of the game board. The white pins signify missed shots, while the red
pins signify hits.

.. figure:: figs/battleship-board-game.jpg
   :alt: battleship board

   battleship board

What are we going to do?
========================

You can create this entire game with the programming you already know,
but to save time we are going to create a simplified version with a
smaller game board and fewer ships. After you have created a simple
version that works well, you can keep expanding it with more features
until you have a more involved game.

Let's get to it!
----------------

Creating the game board.
========================

The first thing we have to do is to create the board itself. The board
represents the ocean, and we want it to be a grid so that we can guess a
square where we think the opponent has placed a ship by giving the x and y coordinates. Let us create a 5x5 board. If
we were to draw it by hand, it would look something like this:


+-+-+-+-+-+
|0|0|0|0|0|
+-+-+-+-+-+
|0|0|0|0|0|
+-+-+-+-+-+
|0|0|0|0|0|
+-+-+-+-+-+
|0|0|0|0|0|
+-+-+-+-+-+
|0|0|0|0|0|
+-+-+-+-+-+

You can create a board like this on your computer by using a list of
lists. We create a list consisting of 5 elements, where each element is
itself a list of 5 elements. This inner list contains only 5 “O”
strings. (Capital o, not zero)

Exercises 1
===========

1. Create a variable board and set it to contain an empty list
2. Append the list :math:`\verb+["O", "O", "O", "O", "O"]+` to board 5
   times. **Hint:** :math:`\verb+board.append(…)+`
3. Print board and make sure that you have exactly 25 “O” elements in
   total.

When you print the board, you do not get a nice grid like the one we
drew by hand. Let us try to fix this. We will want to draw the board
several times during the game, so it is probably a good idea to define a
function that does exactly this. We can start to create the function
like so

.. code:: python

    def print_board(board):
    	...
Remember the indentation! Inside the function we will want to create a
loop which iterates through the board-list and writes every row of the
game on a seperate line

.. code:: python

    for row in board:
    	print row


Exercises 2
===========

1. finish the function :math:`\verb+print_board+`
2. Make sure the function works by calling it with
   :math:`\verb+print_board(board)+`
3. Instead of just typing :math:`\verb+print row+` inside the
   :math:`\verb+for+` loop, we can write print
   :math:`\verb+" ".join(row)+`. This makes the printout even prettier.

Before you move on, you should have a printout that looks like a nice
grid. If you cannot do this, try getting some help from a friend or a
teacher.

Now that you have created the board we will use, and printed it, you
need to learn how to change it. Remember that we can change a list by
indexing. If we have a simple list like this

.. code:: python

    names = ["Lisa", "Mary", "Marcus"]
    print names

    

then we can for example change 'Marcus' to 'Markus' with indexing

.. code:: python

    names[2] = "Markus"
    print names

    

Remember that Python begins counting at 0!

Because our board consists of lists inside lists,
:math:`\verb+board[0]+` returns the list
:math:`\verb+["O", "O", "O", "O", "O"]+`, which we can then index again.
Like this

.. code:: python

    board[0][0] = "X"
Now, we have changed the (0,0) coordinate to "X" instead of "O". Play
around with changing the list until you feel confident you know how it
works.

Exercises 3
===========

1. run the command :math:`\verb+board[0][0] = 'X'+` and then use
   :math:`\verb+print_board(board)+` to see the result. Which element
   did we change?
2. Change the square in the center of the board to be "X"

Now we have created our playing board, created a function
:math:`\verb+print_board+`, which prints it to the screen as a nice
grid, and we have learned how we can change the squares in the board.
Let us see how we can place and shoot our ships.

Placing ships
-------------

Let us begin by placing an enemy ship that only covers one single square
on the grid. The ship should have the possibility of appearing anywhere
on the grid. Because our map is a 5x5 grid, we can give our ship x and y
coordinates between 0 and 4.

We want the ship to have a different, random position each time we play
the game. To do this, you need to draw random coordinates.

Exercises 4
===========

1. Import the function :math:`\verb+randint+` from :math:`\verb+random+`
2. Create a variable :math:`\verb+ship_x+`, and give it a random value
   between 0 and 5
3. Create a variable :math:`\verb+ship_y+`, and give it a random value
   between 0 and 5

Now, the ships coordinates are random and stored in the variables
:math:`\verb+ship_x+` and :math:`\verb+ship_y+`. Later, when we want to
test our program, it will be useful to know exactly where the ship is.
You can see where the ship is by simply printing the coordinates

.. code:: python

    print ship_x
    print ship_y
or you can change the board, so that the ships position is visible

.. code:: python

    board[ship_x][ship_y] = "+"
    print_board(board)
Either way is fine, but it is important that you remember to remove the
printout when you are done writing and testing the program. Otherwise,
the game will be far to easy for the player!

Shoot the ship!
---------------

Now we are ready to let the user try to shoot down the ship. To do this
you need to have the user guess where the ship is, which you can do with
:math:`\verb+raw_input()+`.

Exercises 5
===========

1. Create a variable :math:`\verb+guess_x+` and use
   :math:`\verb+raw_input()+` to store the users answer

2. The function :math:`\verb+raw_input+` will always return a string,
   but we want :math:`\verb+guess_x+` to be an integer. Add some code to
   make :math:`\verb+guess_x+` an int. **Hint:**
   :math:`\verb+guess_x = int(raw_input(…))+`

3. Create a variable :math:`\verb+guess_y+` and do the same as you did
   with the x coordinate

Hit or miss?
============

Now that we have drawn a random position for the ship, and asked the
user where they want to shoot, we are finally ready to see if the shot
was a hit or a miss. This is of course accomplished with an
:math:`\verb+if+` test. To begin with, there are only two options.
Either the user hits or she misses. For a shot to be a hit, both of the
coordinates has to be correct. In other words, :math:`\verb+ship_x+` and
:math:`\verb+guess_x+` has to be equal and :math:`\verb+ship_y+` and
:math:`\verb+guess_y+` has to be equal.

Exercises 6
===========

1. Create an :math:`\verb+if+` test that checks if
   :math:`\verb+ship_x == guess_x+` and
   :math:`\verb+ship_y == guess_y+`. If this is the case, print a
   message to let the user know she hit.
2. Add an :math:`\verb+else+` block where you print a message to let the
   user know she missed.
3. Test your program and hit on purpose. Then try again, but miss
   instead. Does your program work as expected?

In addition to printing a message when the user guesses incorrectly, we
should also change the board so the user can see where she has guessed
previously. Let us use 'X' to show that a field has been shot, but it
was a miss.

Exercises 7
===========

1. In your else block, change the square in your board with coordinates
   :math:`\verb+guess_x+` and :math:`\verb+guess_y+` to 'X'. Then print the board again. **Hint:**

.. code:: python

    if ...:
        print ...
    else:
        print ...
        board[...][...] = ...
        print_board(board)
2. Test your program with a miss to make sure everything is working
   correctly

Multiple shots
==============

Until now, we have given the user only one attempt at hitting the ship.
This is perhaps a bit inadequate. Now we will use a loop to allow the
user to shoot up to 10 times! We choose to use a :math:`\verb+while+`
loop that repeats until the user either wins, or misses 10 times. This
means that we need to keep track of how many times the user have missed.

Exercises 8
===========

1. Create a variable :math:`\verb+misses+`, and set its value to be 0.

2. Indent all the code that you want to repeat. You can do this easily
   by marking all the lines you want indented, and press the tab button.
   **Hint:** We want to repeat that the user guesses coordinates, and
   that we check the guesses and update the board accordingly.

3. Just before the block of code you just indented, start your
   :math:`\verb+while+` loop. **Hint:** :math:`\verb+while misses … :+`

4. Inside the loop you need to increase the variable
   :math:`\verb+misses+` when the user misses. Update your program to
   count every time the user misses. **Hint:**
   :math:`\verb!misses += 1!`

5. At the start of your loop, before you ask the user to guess, print a
   message to tell the user how many shots she has left.

6. Test your program and make sure the loop works as you expect it to.

One unfortunate problem for the user, is that they may shoot an already
used field by accident. Let us change our program so that the user does
not use up an attempt if this is the case. To do this, we need to insert
a new test inside of our :math:`\verb+else+` block, to check if
:math:`\verb+board[guess_x][guess_y]+` is "X". If so, then the user has
already shot this field!

7. At the beginning of your else block, add a new test to check if
   :math:`\verb+board[guess_x][guess_y]+` is "X". If so, then print a
   message to tell the user that they have already shot this field. Move
   the code that already belonged to the :math:`\verb+else+` block to
   another :math:`\verb+else+` block. **Hint:**

.. code:: python

    if guess_x == ship_x ... :
        # User hit the target!
    else:
        if board[guess_x][guess_y]...:
            # User tried firing on a coordinate they already tried!
        else:
            # User misses!
Game over!
----------

Now you have a pretty good game! But there is still a couple of
problems. The game keeps going even after the user has guessed
correctly. And there is no message to inform the user that they have
used up their 10 shots. Let us try to fix both these problems.

First, when the user guesses correctly, we have to make sure that the
loop stops repeating. We can do this with the command
:math:`\verb+break+`. When Python finds a :math:`\verb+break+` command,
it immediately jumps to the first line after the entire loop. In other
words, it breaks the loop.

Exercises 9
===========

1. Add a :math:`\verb+break+` command after the success message is
   printed.

   Now we want to print a message to tell the user that they have lost
   if they did not hit with any of their 10 shots. We can do this with
   yet another :math:`\verb+if+` test. Let us place this
   :math:`\verb+if+` test after the loop. If the loop is finished
   because of a :math:`\verb+break+` command, then :math:`\verb+misses+`
   will be less than 10. But if the loop is finished because the user
   missed 10 times, then :math:`\verb+misses+` equals 10.

2. Add an :math:`\verb+if+` test after the :math:`\verb+while+` loop
   that checks if :math:`\verb+misses+` is 10. If it is, print out a
   message to inform the user that they have lost.

   Now you just have to test your program and fix all the small errors
   that might remain.

3. Test your program until you are satisfied. Then get a friend to try
   it!

Now you have a complete Battleship! game. Good job! What follows is a
list of different ways to expand the game if you want:

-  Create a nice introduction message
-  Add more tests. If, for example, the user shoots outside the board,
   they should get a message!
-  Add more game modes. Perhaps for example several degrees of
   difficulty. The difficulty could be adjusted with a larger board or a
   different amount of shots. Have the user select the game mode from a
   menu in the beginning.
-  Add more ships to the board! The user has to hit all of them to win.
   Be careful not to place ships on top of each other.
-  Add ships that covers more than one field. This is slightly
   challenging, but the result is nice.
-  Give the player one special missile which can only be used once.
   Maybe it hits in a cross shape (5 fields at a time). Or maybe it
   takes out an entire row or column!

