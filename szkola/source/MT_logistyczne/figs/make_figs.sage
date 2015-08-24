def get_fig(x = 0.4,a=0.5):
       pkts = []
       for i in range(25):
           pkts.append( (i,x) )
           x = a*x*(1-x)


       p=line(pkts,figsize=(4,2),ymin=-0.05,ymax=1.05,\
        #ticks=[2,None],\
         axes_labels=[r"$i$",r"$x_i$"],\
         #tick_formatter="latex",\
         thickness=0.5,\
         marker='o',
         markerfacecolor='red'    )
       return p
a_lst = [0.5,1.5,3.2,4.0]
for i,a_ in enumerate(a_lst):
    get_fig(x = 0.4,a=a_).save("xi%d.pdf"%i)

