a=4.0
x=0.123
y=0.123+0.000001
pkts = []
for i in range(25):
   x = a*x*(1-x)
   y = a*y*(1-y)
   print x,y
