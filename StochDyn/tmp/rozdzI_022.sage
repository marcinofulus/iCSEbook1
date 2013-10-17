@interact(layout={'top':[['E','k','m']],})
def _(title=['elipsa'], E=input_box(2,label=r'$E$', width=10), k=input_box(0.2,label=r'$k$', width=10), m=input_box(1,label=r'$m$', width=10)):
    a = 2*E/k
    b = 2*E/m
    ellipse((0,0),a,b,0,fill=True,alpha=0.3).show()
    
#0 (kilka zmiennych)
var('x v')
#parametry dla wizualizacji
x0 = 1.3
v0 = 0.3
k = 0.2
m = 1
F = -k*x
#1
V = -integral(F,x)
p1 = plot(V, xmin=-x0, xmax=x0)
p1.show(figsize=4, axes_labels=[r'$x$',r'$V(x)=%s$'%V])
#
#prawo zachowania energii
E = m*v0^2 + V(x=x0)
PZE = m*v^2 + V == E
#i jego rozwiązanie
rozw = solve(PZE, v); show(rozw)
v1=rozw[0].rhs()
v2=rozw[1].rhs()
#
#ekstremalne wychylenie 
#prawo zachowania energii dla v=0
rozw = solve(PZE(v=0), x); show(rozw)
xmin = rozw[0].rhs()
xmax = rozw[1].rhs()
#punkt początkowy (tak jak powyżej)
ball = (x0,V(x=x0))
p0  = point(ball,size=30) 
p0 += text(r"  punkt startowy",ball,vertical_alignment='bottom',horizontal_alignment='left',fontsize=8)
#
#ekstrema
ball = (xmax,V(x=xmax))
p0 += point(ball,size=30,color='red') 
p0 += text("ekstremum_",ball,vertical_alignment='bottom',horizontal_alignment='right',color='red',fontsize=8)
p12a = line((ball,(xmax,0)),linestyle='dotted',color='grey')
ball = (xmin,V(x=xmin))
p0 += point(ball,size=30,color='red') 
p0 += text("_ekstremum",ball,vertical_alignment='bottom',horizontal_alignment='left',color='red',fontsize=8)
p12a += line((ball,(xmin,0)),linestyle='dotted',color='grey')
#
#potencjał
p1 = plot(V, xmin=xmin, xmax=xmax)
#
#krzywe fazowe
p12b = line(((xmin,0),(xmin,v2(x=0))),linestyle='dotted',color='grey')
p12b += line(((xmax,0),(xmax,v2(x=0))),linestyle='dotted',color='grey')
p2 =  plot(v1, (x,xmin,xmax), color='red')
p2 += plot(v2, (x,xmin,xmax), color='green')
#
(p0+p1+p12a).show(figsize=4, axes_labels=['$x$','$V(x)$'])
(p12b+p2).show(figsize=4,xmax=xmax)

var('x y z t')
xy_wsp = [('x','x'),('y','y')]+[('z','z')]
N = len(xy_wsp)
J  = matrix(SR,N)


for i,(v,lv) in enumerate(xy_wsp):
   for j,(u,lu) in enumerate(xy_wsp):
        J[i,j] = var("d%sd%s"%(v,u),latex_name=r'\displaystyle\frac{\partial %s_t}{\partial %s_0}'%(lv,lu))
        var("dF%sd%s"%(v,u),latex_name=r'\displaystyle\frac{\partial F_%s}{\partial %s_t}'%(lv,lu))
#
to_fun = dict()
for v in J.list():
    vars()[str(v).capitalize()] = function(str(v).capitalize(),t)
    var("%sd"%str(v))
    to_fun[v]=vars()[str(v).capitalize()]
    to_fun[vars()[str(v)+"d"]]=vars()[str(v).capitalize()].diff()
to_var = dict((v,k) for k,v in to_fun.items())
#
to_rhs = dict()
for i,(v,lv) in enumerate(xy_wsp):
    for j,(u,lu) in enumerate(xy_wsp):      
        to_rhs[vars()["d%sd%sd"%(v,u)]] = sum([vars()["dF%sd%s"%(v,w)]*vars()["d%sd%s"%(w,u)] for w,wl in xy_wsp])
print "Zaczynamy od macierzy Jacobiego:"
show(J)
print "Wszystkie pochodne cząstkowe są reprezentowane przez niezależne zmienne, aby policzyc pochodną wyznacznika, zamieniamy je podstawiając słownik zamieniający zmienne na funkcje:"
show(J.subs(to_fun))
print "Liczymy wyznaczniki pochodną, oraz wracamy do zmiennych symbolicznych:"
J.subs(to_fun).det().diff(t).subs(to_var).show()
#
print "Uzywając słownika to_rhs, podstawiamy prawe strony ODE:"
J.subs(to_fun).det().diff(t).subs(to_var).subs(to_rhs).show()
#
print "Ostatecznie dzielimy otrzymany wzór przez Jacobian:"
#
final = J.subs(to_fun).det().diff(t).subs(to_var).subs(to_rhs)/J.det()
final.simplify_full().show()
