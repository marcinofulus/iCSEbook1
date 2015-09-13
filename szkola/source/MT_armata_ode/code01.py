var('t')
x0,y0,vx0,vy0 = 0,0,10,10
g = 9.81
t_end = 2*vy0/g
p1 = parametric_plot(\
 [x0+vx0*t,y0+vy0*t-g*t^2/2],\
 (t,0,t_end)  )
p1.show()
