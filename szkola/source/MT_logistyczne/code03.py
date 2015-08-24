import numpy as np
Nx = 300
Na = 500
x = np.linspace(0,1,Nx)
x = x + np.zeros((Na,Nx))
x = np.transpose(x)
a=np.linspace(1,4,Na)
a=a+np.zeros((Nx,Na))
for i in range(100):
    x=a*x*(1-x)
pt = [[a_,x_] for a_,x_ in \
 zip(a.flatten(),x.flatten())]
point(pt,size=1,figsize=(7,5))
