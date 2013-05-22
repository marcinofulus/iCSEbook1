""" Rysunki do 8 Wykładów """

plst = [] # inicjacja listy rysunków z nazwami

### Rysunek 1. Dwie proste na płaszczyźnie jako obraz oznaczonego układu 2 równań. ###

var('x1 x2')
eq1 = 2*x1-x2==1; eq2 = x1+x2==5
P0 = point((2,3), color='black',size=15, zorder=5)
p1 = implicit_plot(eq1, (x1, 0, 5), (x2, 0, 5), color='red')
p2 = implicit_plot(eq2, (x1, 0, 5), (x2, 0, 5), color='green')
txt0 = text('$P(2,3)$', (2.65, 3.05), color='black', fontsize=13)
txt1 = text('$2\,x_1-\,x_2=\,1$',(3.85, 4.4), color='black', fontsize=13)
txt2 = text('$x_1+\,x_2=\,5$',   (3.15, 0.6), color='black', fontsize=13)
plt1 = plot(P0 + p1 + p2 + txt0 + txt1 + txt2, aspect_ratio=1, axes=False, figsize=5, frame=True)
plst.append([plt1,"Rys_1"])


### Rysunek 2. Trzy płaszczyzny jako obraz oznaczonego układu 3 równań. ###

var('x1 x2 x3')
eq1 = 2*x1+1*x2+1*x3== 1
eq2 = 1*x1-1*x2+0*x3==-1
eq3 = 1*x1+1*x2+2*x3== 2
p1 = implicit_plot3d(eq1,(x1,-5,5),(x2,-5,5),(x3,-5,5),color='red')
p2 = implicit_plot3d(eq2,(x1,-5,5),(x2,-5,5),(x3,-5,5),color='green')
p3 = implicit_plot3d(eq3,(x1,-7,7),(x2,-5,5),(x3,-5,5),color='blue')
plt2 = p1 + p2 + p3 + point3d((-1/4,3/4,3/4), size=18, color='white')
# plst.append([plt2,"Rys_2"])
# 3-wymiarowy wykres plt2 bezpośrednio zapisuje się tylko w formacie .png, i to koślawo.
# Lepszy efekt osiąga się wywołując plt2 z linii poleceń Sage'a i zapisując
# (odpowiednio powiększony) obraz Jmol w formacie .jpg albo .png.
# Właśnie tak powstały pliki Rys_24.png i Rys_24.jpg.

for [p,n] in plst:
    p.save('%s.png'%n)
    p.save('%s.svg'%n)
    p.save('%s.pdf'%n)
    















