var('x,y')
T = srange(0,50,0.01)
sol1=desolve_odeint(vector([y,-x -0.2*y]), [0,1], T, [x,y])##warunek początkowy x=2, y=4
sol2=desolve_odeint(vector([y,-x -0.2*y]), [0,0.85], T, [x,y])##warunek początkowy x=-1, y=0.5
sol3=desolve_odeint(vector([y,-x -0.2*y]), [0,0.7], T, [x,y])##warunek początkowy x=0, y=0.9
p1=plot(x^2, -2, 2,figsize=(6,3), )
g1=list_plot(sol1.tolist(), plotjoined=1, figsize=(6,3),axes_labels=[r'$x$',r'$y$'])
g1 +=list_plot(sol2.tolist(), plotjoined=1, figsize=(6,3),color="red", axes_labels=[r'$x$',r'$y$'])
g1 +=list_plot(sol3.tolist(), plotjoined=1, figsize=(6,3),color="green", axes_labels=[r'$x$',r'$y$'])
html.table([["potencjał kwadratowy","oscylator tłumiony"],[p1,g1]])
html("<p align='center'>wszystkie rozwiązania dążą do punktu (0,0) </p>")

var('x,y')
T1 = srange(0,30,0.01)
so1=desolve_odeint(vector([y,2*x-1.2*x^3 -0.2*y]), [0,1], T1, [x,y])##warunek początkowy x=2, y=4
so2=desolve_odeint(vector([y,2*x-1.2*x^3 -0.2*y]), [0,2], T1, [x,y])##warunek początkowy x=-1, y=0.5
so3=desolve_odeint(vector([y,2*x-1.2*x^3-0.2*y]), [0,3], T1, [x,y])##warunek początkowy x=0, y=0.9
so4=desolve_odeint(vector([y,2*x-1.2*x^3-0.2*y]), [0,4], T1, [x,y])##warunek początkowy x=0, y=0.9
p11=plot(0.3*x^4 - x^2, -2, 2,figsize=(6,3), )
g11=list_plot(so1.tolist(), plotjoined=1, figsize=(6,3),axes_labels=[r'$x$',r'$y$'])
g11 +=list_plot(so2.tolist(), plotjoined=1, figsize=(6,3),color="red", axes_labels=[r'$x$',r'$y$'])
g11 +=list_plot(so3.tolist(), plotjoined=1, figsize=(6,3),color="green", axes_labels=[r'$x$',r'$y$'])
g11 +=list_plot(so4.tolist(), plotjoined=1, figsize=(6,3),color="black", axes_labels=[r'$x$',r'$y$'])
html.table([["potencjał bistabilny","oscylator nieliniowy tłumiony"],[p11,g11]])
html("<p align='center'> rozwiązania dążą albo do punktu $(-x_s,0)$ albo to punktu $(x_s,0)$ </p>")

var('x,y')
T3 = srange(0,50,0.01)
de1=y+x*(0.2-(x^2+y^2))
de2=-x+y*(0.2-(x^2+y^2))
s1=desolve_odeint(vector([de1, de2]), [0.5,0.5], T3, [x,y])##warunek początkowy x=2, y=4
s2=desolve_odeint(vector([de1, de2]), [0.01, 0.01], T3, [x,y])##warunek początkowy x=2, y=4
h1=list_plot(s1.tolist(), plotjoined=1, figsize=(6,3),color="red",axes_labels=[r'$x$',r'$y$'])
h2=list_plot(s2.tolist(), plotjoined=1, figsize=(6,3),axes_labels=[r'$x$',r'$y$'])
show(h1+h2)

a, b, d = 1.3, 0.33, 0.1
F(x,y)=x*(1-x) - a*x*y/(x+d)
G(x,y)= b*y*(1-y/x)
T = srange(0,80,0.01)
sl1=desolve_odeint(vector([F,G]), [0.2,0.3], T, [x,y])
sl2=desolve_odeint(vector([F,G]), [0.2,0.2], T, [x,y])
j1=list_plot(sl1.tolist(), plotjoined=1, color="red", figsize=(6, 3))
j2=list_plot(sl2.tolist(), plotjoined=1,  figsize=(6, 3))
show(j1+j2)

T = srange(0,200,0.01)
sl1=desolve_odeint(vector([F,G]), [0.2,0.3], T, [x,y])
sl2=desolve_odeint(vector([F,G]), [0.2,0.2], T, [x,y])
j1=list_plot(sl1.tolist(), plotjoined=1, color="red", figsize=(6, 3))
j2=list_plot(sl2.tolist(), plotjoined=1,  figsize=(6, 3))
show(j1+j2)


var('x y z')
rho=28
sigma=10
beta=8/3
F1 = sigma*(y-x)
F2 = x*(rho-z) - y
F3 = x*y - beta*z
T = srange(0,100,0.01)
atraktor_lorenza = desolve_odeint(vector([F1,F2,F3]), [0,0.5,1], T, [x,y,z])
p2d = list_plot(zip(atraktor_lorenza[:,0],atraktor_lorenza[:,1]), plotjoined=1, figsize=4)
p3d = list_plot(atraktor_lorenza.tolist(), plotjoined=1, viewer='tachyon', figsize=4)
print "2D rysunek atraktora Lorenza"
p2d.show()
print "3D rysunek atraktora Lorenza"
p3d.show()
