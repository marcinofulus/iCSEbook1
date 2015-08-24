var('t')
x0,y0,vx0,vy0 = 0,0,10,10
g = 9.81
t_end = 2*vy0/g
plt = parametric_plot([x0+vx0*t,y0+vy0*t-g*t^2/2],(t,0,t_end),\
          axes_labels=[r"$x$",r"$y$"],\
          figsize=3.5 
 )
plt.save("rzut1.pdf")

x0,y0 = 0,0
g = 9.81/1000 
v = 600/1000
plt = sum([parametric_plot([x0+v*cos(alpha)*t,y0+v*sin(alpha)*t-g*t^2/2],(t,0,2*v*sin(alpha)/g),\
    figsize=3.5,\
    axes_labels=[r"$x[km]$",r"$y[km]$"]
 ) for alpha in srange(0.01,3.14/2,0.1)])
h = v^2/(2*g)
plt = plt + plot(h-x^2/(4*h),(x0,0,v^2/g),fill=True,fillalpha=0.2,fillcolor='yellow',color='yellow',alpha=0.4)

plt.save("pplot.pdf")
print "OK"

x0,y0,vx0,vy0 = 0,0,10,10
g = 9.81
t_end = 2*vy0/g

m = 200             
tab = [[x0,y0]] 
delta_t = t_end/m
for i in range(1,m):                    
    x  = x0 + vx0*delta_t 
    y  = y0 + vy0*delta_t
    vx = vx0
    vy = vy0 - g*delta_t
    x0, y0, vx0, vy0 = [ x, y, vx, vy] 
    tab.append([x0,y0])     
p2 = list_plot(tab[::10],color='red',size=30,ymax=5.2)
var('t')
x0,y0,vx0,vy0 = 0,0,10,10
p1 = parametric_plot(\
 [x0+vx0*t,y0+vy0*t-g*t^2/2],\
 (t,0,t_end) ,\
    figsize=3.5,\
    axes_labels=[r"$x$",r"$y$"]
 )
(p1+p2).save("porownanie.pdf")