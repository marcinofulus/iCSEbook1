x0,y0,vx0,vy0 = 0,0,10,10
g = 9.81
t_end = 2*vy0/g
n = 200             
tab = [[x0,y0]] 
delta_t = t_end/n
for i in range(1,n):                    
    x  = x0 + vx0*delta_t 
    y  = y0 + vy0*delta_t
    vx = vx0
    vy = vy0 - g*delta_t
    x0, y0, vx0, vy0 = [ x, y, vx, vy] 
    tab.append([x0,y0])     
p2 = list_plot(tab,figsize=4)
p2.show()
