=====================
Materiały dydaktyczne
=====================

Wstęp
=====

Projekt iCSE postawił nauczycielom akademickim zaangażowanym w dydaktykę
na Wydziale Matematyki Fizyki i Chemii następujące bardzo ogólne pytanie:

.. admonition:: Pytanie

   Jak można wykorzystać komputer do Pani/Pana zajęć?


Prawie 50 pracowników Wydziału aktywnie odpowiedziało na to pytanie
opracowywując materiały dydaktyczne wykorzystujące komputer jako aktywne
narzędzie w ramach tematyki, którą zwykli wykładać w sposób tradycyjny.

Podczas letniego stażu do pracy nad materiałami dydaktycznymi zgłosiło 
się 29 studentów, którzy w ramach poszerzania swoich umiejętności rozwiązywali 
klasyczne zagadnienia naukowe również przy pomocy metod algebry numerycznej.

Materiały te, pomimo spójności wynikającej z zastosowanego nadrzędnego języka
programowania i sposobu wizualizacji, zostały opublikowane w czterech różniących 
się od siebie formach:

1. **Notatnik Sage** - materiały opublikowane w tej formie są dostępne online dla 
   każdego, bez konieczności zalogowania się w systemie Sage.
2. **Interaktywna książka sformatowana z pomocą systemu Sphinx** -
   zawiera zarówno statyczny listing kodu jak i gotowe do użycia
   programy do wykonania w systemie sagecell.
3. **Notatnik  ipython** - materiały te można wykorzystywać podobnie jak notatniki Sage.
4. Interaktywne materiały wykonane w oparciu o bibliotekę *jsxgraph*, dostępne online.


Jak korzystać z materiałów?
===========================

Pakiet oprogramowania przygotowany w ramach projektu iCSE pozwala
udostępnić użytkownikom system algebry komputerowej funkcjonujący
zgodnie z modelem SaaS (software-as-a-service) chmury
obliczeniowej. Do korzystania z udostępnionych w ten sposób usług
wymagany jest jedynie system kliencki wyposażony w kompatybilną
przeglądarkę internetową. Wymagania kompatybilności spełnia większość
współczesnych przenośnych i ultraprzenośnych komputerów osobistych
klasy netbook/tablet, a w ograniczonym zakresie również
smartfony. Pozwala to na efektywne wykorzystanie takich urządzeń w
dydaktyce, zarówno podczas zajęć stacjonarnych (wykłady, ćwiczenia)
jak i do samodzielnej pracy studentów, bez konieczności instalacji i
uruchamiania dodatkowego oprogramowania na systemie klienckim. O skali
wdrożenia tej infrastruktury świadczą statystyki pracy serwerów. W
ciągu miesiąca odnotowują one około 2mln poleceń wykonania
pojedynczego obliczenia w Sage, co oznacza, że mamy średnio około
jednego zapytania na sekundę przez cały miesiąc! 

Wszyscy studenci Wydziału biorący udział w zajęciach wykorzystujących
materiały dydaktyczne przygotowane w ramach projektu iCSE posiadają
konta na systemie oferowanym przez Wydział. Dodatkowo, w oparciu o
uczelniany system centralnego uwierzytelniania, takie konta mogą
uzyskać również zainteresowane osoby z Uczelni.  Natomiast osoby z
zewnątrz mogą skorzystać z opublikowanych materiałów pobierając pliki
`sws` zawierające odpowiednie archiwum notatnika systemu Sage. Pobrane
pliki można następnie wczytać do dowolnej (kompatybilnej) instalacji
systemu Sage, zarówno zainstalowanej lokalnie na komputerze jak i
dostępnej online jako usługa sieciowa. Informacje na temat instalacji
własnego systemu Sage można znaleźć na stronie
`<http://sagemath.org>`__. 

Notatnik ipython jest dostępny dla większości współczesnych systemów
operacyjnych, w tym w niemal każdej dystrybucji systemu Linux. Pod
systemem Microsoft Windows istnieje wiele łatwych sposobów instalacji
systemu ipython wraz z podstawowymi bibliotekami potrzebnymi do
zastosowań naukowych. Dobrym punktem wyjścia jest przestudiowanie
strony instalacyjnej pakietu
`Scipy. <http://www.scipy.org/install.html>`__

Interaktywne książki, korzystający z systemu `Sagecell
<https://github.com/sagemath/sagecell>`__, umożliwiają korzystanie z
systemu Sage z poziomu przeglądarki, bez uprzedniej rejestracji czy
logowania, tak jak w tym przykładzie. Wystarczy nacisnąć przyciska
"Wykonaj" i zostanie uruchomiony system Sage na jednym z serwerów i
wykonany na nim kod programu znajdującego się w polu tekstowym:

.. sagecellserver::

    @interact
    def rozwiniecie_okregu(n=slider(range(1,10)+range(10,40,10),default=3),x0=slider(srange(0,1,0.01),default=0)):
        f = sqrt(1-x^2)
        pol=f.taylor(x,x0,n)
        plt1=complex_plot(  abs(f)-1 ,(-2,2),(-2,2),plot_points=100,figsize=2.5)
        plt2=complex_plot(abs(pol)-1 ,(-2,2),(-2,2),plot_points=100,figsize=2.5)
        circ=circle((x0,0),1-x0,zorder=10,color='yellow')
        pkt=point([(x0,0)],zorder=10,color='yellow',size=20)

        p   = plot(f,-1,1, rgbcolor=(0,0,1), thickness=1, fill='axis', fillcolor=(0,0,1), fillalpha=0.1)
        dot = point((x0,f(x=x0)),pointsize=80,color='red',figsize=3,aspect_ratio=1)
        pt = plot(pol, -1.2, 1.2, linestyle='--', color='red', thickness=2,ymin=-.2,ymax=1.2)

        html.table([[plt1+pkt,plt2+circ+pkt,p+dot+pt]])


.. end of output

.. admonition:: Dla zainteresowanych: co jest na wykresach powyżej?

    Szereg Taylora dla funkcji :math:`f(x)= \sqrt{1-x^2}`.
 
    Na lewym wykresie przedstawiona jest kontynuacja analityczna
    :math:`f(z)` na płaszczyznę zespoloną. Środkowy wykres zawiera
    wizualizację szeregu Laurenta dla :math:`f(z)` w punkcie
    :math:`z_0=x_0+0 i` do rzędu :math:`n`. Żółty okrąg oznacza koło w
    którym szereg jest zbieżny. Prawy wykres to rozwinięcie
    :math:`f(x)` w szereg Taylora funkcji do rzędu :math:`n` -
    efektywnie jest to przekrój wykresu środkowego, dla :math:`Im(z)=0`.


Spis przedmiotów
================

.. toctree::
   :maxdepth: 1
 
   icse_final

