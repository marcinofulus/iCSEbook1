RSA asymmetric cipher.
======================


About this lesson plan
^^^^^^^^^^^^^^^^^^^^^^

This is a lesson plan for indented for realization during  2h lesson activities. 

It has been developed during work in iCSE4school project based on
lesson carried out in 2015-2017 at  The Stefan Batory High School in Chorzów.

It was prepared by  Krzysztof Jarczewski based on his lesson.


.. only:: html

   .. admonition::  Attention!

      In each of the "code" cells you can change any number, text or
      instruction. In order to  return to the original version  refresh
      the webpage.  Sometimes the next code depends on variables defined from the previous one,
      so one has to execute cells in order of apperance.




Definition of congruence relation.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Two integers *a* and *b* are said to be  **congruent modulo** *n*, written: :math:`a = b (mod \hspace{2mm} n)`, when: :math:`(a-b) \cdot k=n,\hspace{2mm} k \in Z.`

Examples:
"""""""""
2 = 2 (mod 8), because 2 - 2 = 0, which is a multiple of 8,

3 = 18 (mod 5), because 3 - 18 = -15, which is a multiple of 5,

100 = 1 (mod 9), because 100 - 1 = 99, which is a multiple of 9,

250 = 206 (mod 22), because 250 - 206 = 44, which is a multiple of 22.

Exercise 1.
"""""""""""
Find *x* if you know: :math:`3x = 1 (mod \hspace{2mm} 4), \hspace{2mm} 5<x<10`.

.. sagecellserver::

    for x in range(5,11):        #You can change this range
        if (3*x - 1) % 4 == 0:   #You can change this equation
            print "x=",x


Exercise 2.
"""""""""""
Find *x* if you know: :math:`3x+2 = 1 (mod \hspace{2mm} 5)`.

.. sagecellserver::

    for x in range(40):
        if (3*x+2 - 1) % 5 == 0:
            print x


We can realise there are infinitely many solutions. What is more, the solutions determine an arithmetic progression.

Exercise 3.
"""""""""""
Find *x* if you know: :math:`3x = 1 (mod \hspace{2mm} 6)`.

.. sagecellserver::

    for x in range(100):
        if (3*x-1) % 6 == 0:
            print x
    print "?"


In the exercise above there is not a number which satisfies the given congruity.


The Chinese remainder theorem.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The following exercise can be solved using the Chinese remainder theorem. One of the most important theorems in number theory and cryptography. This theorem allows to share a secret among several people (valid numeric password).

Exercise 4.
"""""""""""
A bar of chocolate consists of less than 100 pieces. While dividing it into three equal parts, there remains 1 piece of chocolate. While dividing it into 5 parts, what remains are 3 pieces of chocolate but when dividing into 7 equal parts, 2 pieces remain.

We know that the number of chocolate pieces must satisfy the below congruence:

x = 1 mod 3,

x = 3 mod 5,

x = 2 mod 7.

.. sagecellserver::

    for x in range(100):
        if (x-1) % 3 == 0 and (x-3) % 5 == 0 and (x-2) % 7 == 0:
            print x
    

Fermet’s Little Theorem.
^^^^^^^^^^^^^^^^^^^^^^^^

If   *p*   is a prime number and   *a*   is not divisible by   *p*,

*then* :math:`a^{p-1} - 1` is an integer multiple of *p*, or in symbols: :math:`a^{p-1}=1 (mod \hspace{2mm} p)`

Let’s check the correctness of the Fermet’s Little Theorem basing on the Python language.

For a we substitute 35, so p=5 and p=7, the am. theory is not satisfied. We can even state that it must be dividable by p.

This code was written and posted the students in the classroom.

.. sagecellserver::

    for x in range (1, 30):
        p = nth_prime(x)
        print(p, 35^(p-1) % p)


Message Encryption.
^^^^^^^^^^^^^^^^^^^

Cryptography was mentioned in the Antique Times for the first time. So, we can conclude that encryption and writing were invented at the same time. Encryption was used to send military and political messages. During the IT lessons we acquired (or will acquire) the Caesar cipher. It is a simple encryption where letters are substituted. Although the ciphered message is not understandable, but simple to decryption .  Other methods of encryption applied in the Antique Times were much more sophisticated and  more difficult to de cryption .  Until 1960s of the 20th century only symmetric encryptions had been well\-known. They are the encryptions which have just one method of ciphering and deciphering the message.

In the 1970s of the 20th century, the power of computing and the need for data protection led the cryptographers to invent an asymmetric encryption, where two different keys are used – one to encrypt and the other to decrypt the message ( the order of keys is of no importance). One of the keys is available to a person who is to send the secret message. You can even make the key available to the public on your website (available to everyone – a public key). The other key is a secret one (a private key) which is only known to us and cannot be made available to anyone. Only the private key allows us to decipher the message.

Below, you can find a simple asymmetric encryption which can be cracked (if you know the digits: d, n, define number e) it is your task to score extra points. 


How to create asymmetrical encryption mathematically?
"""""""""""""""""""""""""""""""""""""""""""""""""""""

To create a simple asymmetrical encryption you need various natural numbers: :math:`a, b, a1, b1`.

The bigger the numbers is, the safer the encryption becomes. It is more difficult to decript if you don’t know the proper key.

For our task we take only two-digit and three-digit numbers.

Calculate: :math:`M=a \cdot b-1`, then: :math:`e=a1 \cdot M+a, \hspace{3mm} d=b1\cdot M+b, \hspace{3mm} n=(e \cdot d-1)/M`

The key of the cipher are pairs of numbers: a public key :math:`(d, n)` and a private key :math:`(e, n)`.

Below you can find an example of the  number cither:

.. sagecellserver::

    number=1234567   #You can change this number (message). What will be if number larger then n?
    a=89             #you can change the numbers: a, b, a1, b1
    b=45
    a1=98
    b1=55
    M=a*b-1
    e=a1*M+a
    d=b1*M+b
    n=(e*d-1)/M
    print " public key:", (d, n)
    print "private key:",(e, n)
    # encryption
    encrypted = (number*d) % n
    print "encryption:", encrypted
    # decryption
    decrypted = (encrypted*e) % n
    print "decryption:", decrypted
 

What to do when the number is larger than n?
""""""""""""""""""""""""""""""""""""""""""""

1. We calculate the remainder of division by n ( we receive a “portion” to cipher)

2. We cipher the “portion”

3. We add the ciphered “portion” in the next power of number n to the code.

4. We divide the number by n

5. If the result is larger than 0, repeat the steps from 1 – 4.


.. sagecellserver::

    number=123456567675635352364213879879797996743546789435345241 #Big number(message)
    encrypted = 0
    i=0
    while number>0:                           # 5
        pomoc=number%n                        # 1 
        encrypted = encrypted + ((pomoc*d) % n)*n^i   # 2, 3
        i=i+1
        number=int(number/n)                  # 4
    print encrypted


In the similar way the message is decripted.

Help:

================== ===================== ===
number → encrypted encrypted → decrypted d→e
================== ===================== ===

Try to decription the number (message) below.

.. sagecellserver::

    i=0
    while number>0:                           # 5
        pomoc=number%n                        # 1 
        encrypted = encrypted + ((pomoc*d) % n)*n^i   # 2, 3
        i=i+1
        number=int(number/n)                  # 4
    print encrypted


What we usually want to do is to cipher a text not a number, so we have to substitute letters into numbers. We shall use ASCII code. Each letter, symbol is given a number from 1 to 128.

Below, you can find the algorithm of the encryption (this code was written and posted by the students in the classroom).

.. sagecellserver::

    number=0
    i=0
    tekst="This is the secret message or anything."
    for x in tekst:
        i=i+1
        print x,"->", ord(x)," ",
        if (i%10==0):
            print 
        number=number + ord(x)*128^i
    print
    print "number =", number
  

The full algorithm of encryption.
"""""""""""""""""""""""""""""""""
Following the submission of these algorithms we get full algorithm to encrypt and decrypt text messages.

.. sagecellserver::

    number=0
    i=0
    tekst="This is the secret message or anything." #message
    tekst2=""
    print "message:", tekst
    # change text to number
    for x in tekst:
        i=i+1
        number=number + ord(x)*128^i
    print "number:", number
    print ""
    # encription
    encrypted = 0
    i=0
    while number>0:
        pomoc=number%n
        encrypted = encrypted + ((pomoc*d) % n)*n^i
        i=i+1
        number=int(number/n)
    print "encription:", encrypted


The full algorithm of decryption.
"""""""""""""""""""""""""""""""""
.. sagecellserver::

    tekst2=""
    decrypted = 0
    i=0
    print "encription:", encrypted
    # decription
    while encrypted>0:
        pomoc=encrypted%n
        decrypted = decrypted + ((pomoc*e) % n)*n^i
        i=i+1
        encrypted=int(encrypted/n)
    print "decription: ", decrypted
    ## change number to text
    i=0
    while decrypted>0:
        i=i+1
        decrypted=int(decrypted/128)
        tekst2 = tekst2 + chr(decrypted%128)
    print "message: ", tekst2
 

RSA asymmetric cipher.
^^^^^^^^^^^^^^^^^^^^^^

**RSA**  is one of the first and most popular algorithm cryptosystems with a public key. It was designed in 1977 by Ron Rivest,  Adi Szamir and Leonard Adleman (RSA name derives from the first letters of the creators’ surnames).

The security of the RSA cryptosystem  is based on the decomposition of large  complex numbers (more than two-digit numbers) into prime numbers (factoring problem).

Example below.
""""""""""""""
.. sagecellserver::

    @interact 
    def _(n=slider( range(34,101,2))):
        t=2^((n-34)/2)
        print n,"-digits prime numbers, factoring time:", t, "minutes"
        if t>100 and t<60*24:
            print n,"-digits prime numbers, factoring time:", int(t/60), "hours"
        elif t>60*24 and t<60*24*365:
            print n,"-digits prime numbers, factoring time:", int(t/60/24), "days"
        elif t>60*24*365:
            print n,"-digits prime numbers, factoring time:", int(t/60/24/365), "year"

Notice how time-consuming the calculation of the distribution of prime factors.

Generating RSA cryptosystem.
""""""""""""""""""""""""""""

1. Choose two large prime numbers: :math:`p, q` (in practice you use numbers which are more than a hundred digit, but we use three-digit numbers).

2. Compute:  :math:`n=p \cdot q, \hspace{2mm} f=(p-1)(q-1)`.

3. Choose an integer *d* such that: :math:`1  < d < f` and :math:`gcd(d,\hspace{2mm} f) = 1` (You can choose a prime number).

4. Determine :math:`e` as: :math:`de=1 \hspace{1mm} (mod \hspace{1mm} f)`.

Public key: :math:`(d, n)`

Private key: :math:`(e, n)`

It is enough to copy the algorithm of cither from previous lessons and substitute them.

.. sagecellserver::

    los=int(100*random())
    p=nth_prime(30+los)
    los=int(100*random())
    q=nth_prime(30+los)
    n=p*q
    f=(p-1)*(q-1)
    los=int(f*random())
    e=next_prime(los)
    print "p =",p, ", q =",q, ", e =",e, ", n =", n, ", f =", f

Determine :math:`e` as: :math:`(d \cdot e) \hspace{1mm} mod f=1`.

We can use expanded Euclidean algorithm, to find e number.
My students changed the existing program on the Internet, but not always, does it generate the correct number. Can you improve this code!

.. sagecellserver::

    a = e
    p0 = 0
    p1 = 1
    a0 = a
    n0 = f
    q  = int(n0/a0) 
    r  = n0 % a0
    while (r > 0):
        t = p0 - q * p1
        if (t >= 0):
            t = t % n
        else:
            t = n - ((-t) % n)
        p0 = p1
        p1 = t
        n0 = a0
        a0 = r
        q  = int(n0/a0)
        r  = n0 % a0
    d = p1
    print "verification : (d*e)%f =", (d*e)%f
    print " public key:", d, n
    print "private key:", e, n
 

The full algorithm of encryption RSA.
"""""""""""""""""""""""""""""""""""""
It is enough to copy the algorithm of coding from the previous lessons and substitute  pomoc*d them pomoc^d.

.. sagecellserver::

    number=0
    i=0
    tekst="This is secret message or anything." #message
    tekst2=""
    print "message:", tekst
    # change text to number
    for x in tekst:
        i=i+1
        number=number + ord(x)*128^i
    print "number:", number
    print ""
    # encription
    encrypted = 0
    i=0
    while number>0:
        pomoc=number%n
        encrypted = encrypted + ((pomoc^d) % n)*n^i
        i=i+1
        number=int(number/n)
    print "encription:", encrypted


The full algorithm of decryption RSA.
"""""""""""""""""""""""""""""""""""""

It is enough to copy the algorithm of coding from the previous lessons
and substitute pomoc*e them pomoc^e.

.. sagecellserver::

    tekst2=""
    decrypted = 0
    i=0
    print "encription:", encrypted
    # decription
    while encrypted>0:
        pomoc=encrypted%n
        decrypted = decrypted + ((pomoc^e) % n)*n^i
        i=i+1
        encrypted=int(encrypted/n)
    print "decription: ", decrypted
    ## change number to text
    i=0
    while decrypted>0:
        i=i+1
        decrypted=int(decrypted/128)
        tekst2 = tekst2 + chr(decrypted%128)
    print "message: ", tekst2
 
