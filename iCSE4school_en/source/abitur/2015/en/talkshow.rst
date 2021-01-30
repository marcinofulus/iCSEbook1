Talkshow
========

.. admonition:: Problem

  A talkshow host invites three politicians, a newswoman and two members of a
  citizens' action committee. During the discussion round, the participants
  will be sitting in a semi-circle with the host in the middle and each 
  participant taken as an individual.

  a) Give an expression which allows to determine the number of possible seating
     arrangements if no other constraints need to be taken into account.

  b) The station has decided that the newswoman will take a seat next to the
     host and that to the other side of the host, a politician shall be seated.
     Determine the number of possible seating arrangements accounting for these
     constraints.

**Solution of part a**

If we want to generate all possible seating arrangements, we start with the
first seat for which we the choice among six person. For the second seat,
five person are left and so on. In total, we obtain

.. math::

   6!=6\cdot5\cdot4\cdot3\cdot2\cdot1=720

possibilities.

If we indicate the host by H, the politicans by 1, 2, and 3, the newswoman
by N and the members of the citizens' action committee by C and c, we can
list all seating arrangements:

.. sagecellserver::

     for n, a in enumerate(Arrangements(["1", "2", "3", "N", "C", "c"], 6)):
         if not n % 8:
             print("%3i" % (n/8+1),)
         print("%sH%s" % ("".join(a[:3]), "".join(a[3:])),)
         if not (n+1) % 8:
             print

.. end of output

Our list indeed comprises :math:`8\cdot90=720` different seating
arrangements.

**Solution of part b**

We can attribute the seats by proceeding as follows: The newswoman is placed on
one of the two seats next to the host (2 possibilities) and one of the three
politicians is seated on the other side of the host (3 possibilities). It remains
to place four persons on four seats which, in analogy to our reasoning in part a,
yields :math:`4\cdot3\cdot2\cdot1=24` possiblities. In total, we obtain 
:math:`2\cdot3\cdot24` different seating arrangements which we can list:

.. sagecellserver::

     persons = set(["1", "2", "3", "C", "c"])
     n = 0
     for jleft in (True, False):
         for pmiddle in ("1", "2", "3"): 
             for others in Arrangements(persons-set([pmiddle]), 4):
                 if jleft:
                     a = "".join(others[:2])+"NH"+pmiddle+"".join(others[2:])
                 else:
                     a = "".join(others[:2])+pmiddle+"HN"+"".join(others[2:])
                 if not n % 8:
                     print("%3i" % (n/8+1),)
                 print(a,)
                 if not (n+1) % 8:
                     print()
                 n = n+1

We obtain :math:`18\cdot8=144` seating arrangements as expected.
