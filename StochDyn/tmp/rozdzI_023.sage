var('x')
pa1=plot(0.005*exp(-x), (x,0,1), figsize=(6,3),color="red")
pa2=plot(0.005*exp(x), (x,0, 1), figsize=(6,3))
pa3=plot(-0.005*exp(-x), (x,0,1), figsize=(6,3),color="red")
pa4=plot(-0.005*exp(x), (x,0, 1), figsize=(6,3))
show(pa1+pa2+pa3+pa4)

var('x,y,z,u,Z,Y,t')
T0 = srange(0,1.5,0.01)
f11=4*x-x^3
f12=4*y-y^3
f13=4*z-z^3
f15=4*u-u^3
f16=0
sol5=desolve_odeint( vector([f11, f12, f13, 0, 0,f15]), [4,0.2,-0.2,2,-2,-4],T0,[x,y,z,Z,Y,u])
line( zip ( T0,sol5[:,0]) ,figsize=(7, 4)) +\
 line( zip ( T0,sol5[:,1]) ,color='red')+\
 line( zip ( T0,sol5[:,2]) ,color='green') +\
 line( zip ( T0,sol5[:,4]) ,color='gray') +\
 line( zip ( T0,sol5[:,5]) ,color='black')+\
 line( zip ( T0,sol5[:,3]) ,color='violet')
 
#kilka zmiennych 
reset()
var('x y z sigma rho beta alpha')
#i kilka zalozen
assume(sigma>0)
assume(rho>0)
assume(beta>0) 
#definiujemy rownania rozniczkowe
F1 = sigma*(y-x)
F2 = x*(rho-z) - y
F3 = x*y - beta*z
html.table([['$F_1$','$F_2$','$F_3$'],[F1,F1,F3]])
print "stany stacjonarne"
rozw = solve([F1==0,F2==0,F3==0],[x,y,z])
P1 = rozw[2]
P2 = rozw[0]
P3 = rozw[1]
html.table([['$P_1$','$P_2$','$P_3$'],[P1,P2,P3]])
print 'Macierz Jakobiego'
J = matrix([
[diff(F1,x),diff(F1,y),diff(F1,z)],
[diff(F2,x),diff(F2,y),diff(F2,z)],
[diff(F3,x),diff(F3,y),diff(F3,z)]
])
show(J)
#
@interact
def _(punkt=['P1','P2','P3']):
    P = dict(zip(['P1','P2','P3'],[P1,P2,P3]))[punkt]
    J = matrix([
    [
    diff(F1,x)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs()),
    diff(F1,y)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs()),
    diff(F1,z)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs())
    ],
    [
    diff(F2,x)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs()),
    diff(F2,y)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs()),
    diff(F2,z)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs())
    ],
    [
    diff(F3,x)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs()),
    diff(F3,y)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs()),
    diff(F3,z)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs())
    ]
    ])
    print "macierz Jakobiego w punkcie %s" % P
    show(J)
    #zagadnienie własne macierzy
    dJ = det(J - alpha*matrix(3,3,1)) == 0
    rozwdJ1 = solve(dJ,alpha)
    show(rozwdJ1)
    b = 1
    s = 2
    r = 3
    i = 0
    for a in rozwdJ1:
        print "sprawdzamy"
        print "wartość własna alpha_%d"%(i+1)
        buf = real(a.rhs()(rho=r,beta=b,sigma=s))
        show(n(buf))
        if buf < 0:
            print "jest < 0"
        else:
            print "jest > 0"
            i += 1
    if i == 0:
        print "\n"
        print "Wynika z tego, że dla"
        print "beta=%s, sigma=%s, rho=%s"%(b,s,r)
        print "%s jest punktem stabilnym"%P
    else:
        print "\n"
        print "Wynika z tego, że dla"
        print "beta=%s, sigma=%s, rho=%s"%(b,s,r)
        print "%s nie jest punktem stabilnym"%P
