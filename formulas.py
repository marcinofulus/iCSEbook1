from __future__ import division
from sympy import *
import numpy as np
import matplotlib.pyplot as plt
x, y, z = symbols('xyz')

Cx=Symbol('Cx')
CHx=Symbol('CHx')
Cz=Symbol('Cz')
v=Symbol('v')
u=Symbol('u')
v_w=Symbol('v_w')
gamma=Symbol('gamma')

u=-Matrix([v*cos(gamma)+v_w,v*sin(gamma)])
ev=Matrix([cos(gamma),sin(gamma)])
up=Matrix([-v*sin(gamma),v*cos(gamma)+v_w])
force1=trigsimp( (up.normalized().dot(ev))*u.norm()**2*Cz )
force2=trigsimp(-u.normalized().dot(ev)*u.norm()**2*Cx)

#fr= fraction (together(  (force1-force2)  ) )
#thelast=simplify (fr[0]/fr[1]**2)

#print  thelast

#trigsimp(expand(u.norm()))

simpleeq =  factor (  ( (force1-force2)/u.norm() ) )

fulleq = factor (  (force1-force2)/u.norm() ) - CHx*v**2/u.norm()

print simpleeq
print fulleq

r = Wild("r")
p = Wild("p")
q = Wild("q")

pattern= p+q/sqrt(r)
repl=fulleq.match( pattern )
pattern2= p**2*r-q**2
eqv=pattern2.subs(repl)


#funv=lambda gval: np.array(map(complex,N( eqv.subs(values).subs({gamma:gval}) ).as_poly(v).nroots()))
# def getreal(x,no=0):
#     xr=x.round(decimals=5)
#     sorted=np.sort(np.real(x[np.logical_and(xr.imag==0,xr.real>=0)]))
#     if no==-1:
#         return sorted.size    
#     else:
#         if sorted.size<=no:
#             return 0.0
#         else:
#             return sorted[no-1]

# def chk_fulleq(x,gamma):
#     for 
        
#         fulleq.subs(values).subs({gamma:0.126,v:funv(0.126)[1]}).evalf()   

def Cx_fun(alpha):
    return alpha**4+0.15
def Cz_fun(alpha):
    return alpha



def Funv(gval,values):
    # calculate all complex roots of eqv
    x=np.array(map(complex,N( eqv.subs(values).subs({gamma:gval}) ).as_poly(v).nroots()))
    # extract only positive and real roots
    xr=x.round(decimals=5)
    sorted=np.sort(np.real(x[np.logical_and(xr.imag==0,xr.real>=0)]))
    # check if root of polynomial eqv fullfill original equation
    fulleq_chk=np.array([N(fulleq.subs(values).subs({gamma:gval,v:sorted[i]})) for i in range(0,sorted.size)],dtype=np.double).round(decimals=5)
    sorted_fulleq= sorted[(np.abs(fulleq_chk)<1e-5).nonzero()]
    # silently assume one or zero physical solution
    if sorted_fulleq.size > 0:
        return sorted_fulleq[0] 
    else:
        return 0.0

# AAW
#gam-atan2( v.*sin(gam),v.*cos(gam)+v_w)
    
xx=np.linspace(0,np.pi-0.001,50)
values={Cz:2.5,Cx:1,CHx:.001,v_w:1.0}
yy=np.array(map(lambda gval:Funv(gval,values),xx),dtype=np.double)
plt.ion()
plt.clf()
plt.polar(xx,yy,'b',-xx,yy,'b',xx,abs(cos(xx))*yy,"g",-xx,abs(cos(xx))*yy,"g",)
plt.polar(xx*2,np.ones_like(xx),'r')
plt.polar(xx[yy>0],xx[yy>0]-np.arctan2(yy[yy>0]*np.sin(xx[yy>0]),yy[yy>0]*np.cos(xx[yy>0])+1.0))

plt.title("Sailing speeds: "+"".join([ "%s=%0.2f " %  (k,vv) for k,vv in values.items()]))

plt.show()

#plt.figure(2)
#plt.plot(xx[yy>0],xx[yy>0]-np.arctan2(yy[yy>0]*np.sin(xx[yy>0]),yy[yy>0]*np.cos(xx[yy>0])+1.0))
#plt.show()


# print "Starting ANIMATION"
# for par in np.linspace(0.0,3,10):
#     values={Cz:8.0,Cx:1.0,CHx:par,v_w:1.0}
#     yy=np.array(map(lambda gval:Funv(gval,values),xx),dtype=np.double)
#     plt.ion()
#     plt.clf()
#     plt.polar(xx,yy,'b',-xx,yy,'b',xx,abs(cos(xx))*yy,"g",-xx,abs(cos(xx))*yy,"g",)
#     plt.polar(xx*2,np.ones_like(xx),'r')
#     plt.title("Sailing speeds: "+"".join([ "%s=%0.2f " %  (k,vv) for k,vv in values.items()]))
#     plt.draw()
