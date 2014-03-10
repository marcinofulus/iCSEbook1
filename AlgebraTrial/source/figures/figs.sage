""" Rysunki do 8 Wykładów """

figlst = [] # inicjacja listy rysunków z nazwami

### Rysunek 0. Dwie proste na płaszczyźnie jako obraz oznaczonego układu 2 równań. ###

var('x1 x2')
eq1 = 2*x1-x2==1; eq2 = x1+x2==5
P0 = point((2,3), color='black',size=15, zorder=5)
p1 = implicit_plot(eq1, (x1, 0, 5), (x2, 0, 5), color='red')
p2 = implicit_plot(eq2, (x1, 0, 5), (x2, 0, 5), color='green')
txt0 = text('$P(2,3)$', (2.65, 3.05), color='black', fontsize=13)
txt1 = text('$2\,x_1-\,x_2=\,1$',(3.85, 4.4), color='black', fontsize=13)
txt2 = text('$x_1+\,x_2=\,5$',   (3.15, 0.6), color='black', fontsize=13)
plt0 = plot(P0 + p1 + p2 + txt0 + txt1 + txt2, aspect_ratio=1, axes=False, figsize=5, frame=True)

figlst.append([plt0,"Rys_0"])

### Rysunek 1. Trzy płaszczyzny jako obraz wierszowy oznaczonego układu 3 równań. ###

var('x1 x2 x3')
eq1 = 2*x1+1*x2+1*x3 == 1
eq2 = 1*x1-1*x2+0*x3 ==-1
eq3 = 1*x1+1*x2+2*x3 == 2
p1 = implicit_plot3d(eq1,(x1,-5,5),(x2,-5,5),(x3,-5,5),color='red')
p2 = implicit_plot3d(eq2,(x1,-5,5),(x2,-5,5),(x3,-5,5),color='green')
p3 = implicit_plot3d(eq3,(x1,-7,7),(x2,-5,5),(x3,-5,5),color='blue')
plt1 = p1 + p2 + p3 + point3d((-1/4,3/4,3/4), size=18, color='white')

figlst.append([plt1,"Rys_1"])

####################################################################################
# 3-wymiarowe wykresy bezpośrednio zapisują się tylko w formacie .png, i to koślawo.
# Lepszy efekt osiąga się wywołując plt1-6 z linii poleceń Sage'a                  #
# (uruchamia się wtedy Jmol) i zapisując odpowiednio powiększony                   #
# i obrócony obraz Jmol w formacie .jpg albo .png.                                 # 
# Inny sposób: uruchomić program w notatniku Sage'a                                #
# (uruchamia się wtedy Jmol), obrócić odpowiednio obraz                            #
# i użyć dostępnego polecenia Get Image.                                           #
####################################################################################

### Rysunek 2. Cztery wektory jako obraz kolumnowy oznaczonego układu 3 równań. ###

var('x1 x2 x3')
eq1 = 2*x1+1*x2+1*x3 == 1
eq2 = 1*x1-1*x2+0*x3 ==-1
eq3 = 1*x1+1*x2+2*x3 == 2
[v1,v2,v3] = [vector([eq.lhs().coeff(x)
              for eq in [eq1,eq2,eq3]])
              for x in [x1,x2,x3]]
w = vector([eq.rhs() for eq in [eq1,eq2,eq3]])
plt2 = arrow((0,0,0),v1, color='red')         +\
       arrow((0,0,0),v2, color='limegreen')   +\
       arrow((0,0,0),v3, color='deepskyblue') +\
       arrow((0,0,0), w, color='darkgrey')

figlst.append([plt2,"Rys_2"])

### Rysunek 3. Trzy płaszczyzny jako obraz wierszowy nieoznaczonego układu 3 równań. ###

var('x1 x2 x3 r')
eq1 = 2*x1+1*x2+1*x3==1
eq2 = 4*x1+2*x2+2*x3==2
eq3 = 1*x1+1*x2+2*x3==3
p1 = implicit_plot3d(eq1,(x1,-5,5),(x2,-5,5),(x3,-5,5),color='red')
p2 = implicit_plot3d(eq2,(x1,-5,5),(x2,-5,5),(x3,-5,5),color='green',opacity=0.87)
p3 = implicit_plot3d(eq3,(x1,-5,5),(x2,-5,5),(x3,-5,5),color='blue')
ln = parametric_plot([r-2, -3*r+5, r], (r, 0, 3.3),color='white', thickness=5)
plt3 = p1+p2+p3+ln

figlst.append([plt3,"Rys_3"])

### Rysunek 4. Cztery wektory jako obraz kolumnowy nieoznaczonego układu 3 równań. ###

var('x1 x2 x3 r')
eq1 = 2*x1+1*x2+1*x3==1
eq2 = 4*x1+2*x2+2*x3==2
eq3 = 1*x1+1*x2+2*x3==3
[v1,v2,v3] = [vector([eq.lhs().coeff(x)
              for eq in [eq1,eq2,eq3]])
              for x in [x1,x2,x3]]
w = vector([eq.rhs() for eq in [eq1,eq2,eq3]])
plt4 = arrow((0,0,0),v1, color='red')          +\
        arrow((0,0,0),v2, color='limegreen')   +\
        arrow((0,0,0),v3, color='deepskyblue') +\
        arrow((0,0,0), w, color='darkgrey')

figlst.append([plt4,"Rys_4"])

### Rysunek 5. Trzy płaszczyzny jako obraz wierszowy sprzecznego układu 3 równań. ###

var('x1 x2 x3')
eq1 = 2*x1+1*x2+1*x3==0
eq2 = 4*x1+2*x2+2*x3==5
eq3 = 1*x1+1*x2+2*x3==1
p1 = implicit_plot3d(eq1,(x1,-5,5),(x2,-5,5),(x3,-5,5), color='red')
p2 = implicit_plot3d(eq2,(x1,-5,5),(x2,-5,5),(x3,-5,5), color='green')
p3 = implicit_plot3d(eq3,(x1,-5,5),(x2,-5,5),(x3,-5,5), color='blue')
plt5 = p1+p2+p3

figlst.append([plt5,"Rys_5"])

### Rysunek 6. Cztery wektory jako obraz kolumnowy sprzecznego układu 3 równań. ###

var('x1 x2 x3')
eq1 = 2*x1+1*x2+1*x3==0
eq2 = 4*x1+2*x2+2*x3==5
eq3 = 1*x1+1*x2+2*x3==1
[v1,v2,v3] = [vector([eq.lhs().coeff(x)
              for eq in [eq1,eq2,eq3]])
              for x in [x1,x2,x3]]
w = vector([eq.rhs() for eq in [eq1,eq2,eq3]])
plt6 = arrow((0,0,0),v1, color='red')          +\
        arrow((0,0,0),v2, color='limegreen')   +\
        arrow((0,0,0),v3, color='deepskyblue') +\
        arrow((0,0,0), w, color='darkgrey')

figlst.append([plt6,"Rys_6"])

### Rysunek 7. Schemat injekcji przestrzeni V w przestrzeń W. ###

vs = [(0,i) for i in range(-2,3)]
ws = [(2,i) for i in range(-2,4)]
pts0 = points(vs,color='red',pointsize=21,zorder=5)
pts2 = points(ws,color='red',pointsize=21,zorder=5)
plt7 = pts0+pts2
for i in range(5): plt7 += line([vs[i],ws[i]])
txt0 = text("$\\theta_V$",(-0.40,0),color='black',fontsize=17)
txt2 = text("$\\theta_W$",(+2.45,0),color='black',fontsize=17)
txt_F = text("$F\,$:",(-0.75,-3),color='black',fontsize=16)
txt_V = text("$V$",(0,-3),color='black',fontsize=16) 
arrow = text("$\\longrightarrow$",(1,-3),color='black',fontsize=17)
txt_W = text("$W$",(2,-3),color='black',fontsize=16)
plt7 += txt0+txt2+txt_F+txt_V+arrow+txt_W
show(plt7,aspect_ratio=0.75,axes=False,figsize=6,xmin=-1)
figlst.append([plt7,"Rys_7"])

### Rysunek 8. Dwie ortonormalne bazy w przestrzeni wektorów na płaszczyźnie. ###

e1 = vector([1,0]); e2 = vector([0,1])
f1 = 1/sqrt(2)*(e1-e2); f2 = 1/sqrt(2)*(e1+e2)

P0 = point((0,0), color='white', faceted=True, size=20, zorder=8)

plt = arrow((0,0),e1,color='green',zorder=5) +\
      arrow((0,0),e2,color='green',zorder=5) +\
      arrow((0,0),f1,color='red',  zorder=5) +\
      arrow((0,0),f2,color='red',  zorder=5)
            
txt_e1 = text('$\\vec{e}_1$',(0.9,0.15),color='black', fontsize=18)
txt_e2 = text('$\\vec{e}_2$',(0.15,0.9),color='black', fontsize=18)

txt_f1 = text('$\\vec{f}_1$',(0.8,-0.65),color='black', fontsize=18)
txt_f2 = text('$\\vec{f}_2$',(0.8,+0.65),color='black', fontsize=18)

plt8 = P0 + plt + txt_e1+txt_e2 + txt_f1+txt_f2
            
show(plt8, aspect_ratio=1, axes_labels=['x','y'], figsize=7, 
          ticks=[[0.5,1.0,1.5],[-0.5,0.5,1.0]],
          xmin=-0.25, xmax=1.5, ymin=-0.75, ymax=1.25)

figlst.append([plt8,"Rys_8"])


for [p,n] in figlst:
    #p.save('%s.jpg'%n)
    #p.save('%s.png'%n)
    #p.save('%s.pdf'%n)
    #p.save('%s.eps'%n)















