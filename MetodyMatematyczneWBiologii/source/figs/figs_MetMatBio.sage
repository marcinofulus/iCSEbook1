plst = []

############ Rysunek 1
p  = plot(sin(x),(x,1,11),figsize=4)
plst.append( [p,"moj_sinus"] ) 
####################

############ Rysunek 2 plik 
p  = plot(sin(2*x+x^2),(x,1,11),figsize=4)
plst.append( [p,"inny_sinus"] ) 
####################


for p,n in plst:
    p.save('%s.png'%n)
    p.save('%s.svg'%n)
    p.save('%s.pdf'%n)