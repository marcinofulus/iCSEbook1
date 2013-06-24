Repozytorium iCSEbook 
=====================

Materiały dydaktyczne z iCSE. 


Wstęp
=====

Jest to próba połączenia wyników prac nad informatyzacją nauczania
przedmiotów ścisłych. Treść jest zebrana z licznych notatników Sage.


Jak uzyskać możliwośc dodawania zmian?
=====================================

Należy skontaktować się z szefem projektu http://icse.us.edu.pl


Jak skompilować materiały?
==========================

Należy zainstalować pakiet python-sphinx oraz wtyczke: 

       https://github.com/kriskda/sphinx-sagecell.git

Jakie trzeba spełnić techniczne warunki by edytować te materiały?
=================================================================

Pierwsza możliwośc to wykonać pull request-a

Druga, dla bliskich współpracowników,  to uzyskać dostęp do repo:

Należy wysłać swój klucz publiczny wygenerowany lokalnie za pomocą:

       ssh-keygen -t rsa -C "your_email@example.com"

przesłać właścicielowi tego repozytorium.  

Należy ponadto skonfigurować lokalnego git-a tak by commity były podpisane prawdziwymi danymi:

       git config --global user.name "Your Name"
       git config --global user.email you@example.com


Zalecenia stylu
===============

 * w każdym pliku jeden główny header 
 * używamy ``hint`` ``note`` i ``warning`` i ogólnego ``admonition`` (do Definicja, przyklad, streszczenie)
 * układy równań najlepiej wpisywać poprzez :math:`\qquad\qquad
\begin{cases}
\begin{array}{ccc}
\ 2\,x_1  {\,} &- {\,}  x_2  {\;} &= {\;}  1 \\ 
x_1  {\,} &+ {\,} x_2  {\;} &= {\;}  5
\end{array}
\end{cases}`
