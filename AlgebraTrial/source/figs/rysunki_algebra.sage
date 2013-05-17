plst = []

############ Rysunek 1
var('x1,x2')

eq1 = 2*x1-x2==1; eq2 = x1+x2==5

p1 = implicit_plot(eq1, (x1, 0, 5), (x2, 0, 5), color='red')
p2 = implicit_plot(eq2, (x1, 0, 5), (x2, 0, 5), color='green')
P0 = point((2,3), color='black',size=15, zorder=5, aspect_ratio=1, figsize=5)

txt0 = text('$P(2,3)$', (2.65, 3.05), color='black', fontsize=13)
txt1 = text('$2x_1-\,x_2=\,1$', (3.85, 4.4), color='black', fontsize=13)
txt2 = text('$x_1+\,x_2=\,5$', (3.15, 0.6), color='black', fontsize=13)

p  = P0+p1+p2+txt0+txt1+txt2
plst.append( [p,"uklad_rownan"] ) 
####################

for p,n in plst:
    p.save('%s.png'%n)
    p.save('%s.svg'%n)
    p.save('%s.pdf'%n)
