Wykorzystanie danych z GPS do zagadnień kinematyki
==================================================




.. sagecellserver::

    import numpy as np
    import urllib2
    def read_igc_file(igcfile):
        """
        Function reads igc (GPS tracklog) file and returns 4D coordinates. 
        Time spacing in igc files can be nonuniform.
        1  2  2  2  2  2  3  1  3   2  3   1  1    5     5
        B 12 43 21 46 52 730 N 008 19 840  E  A  02169 00000
        1  2  3  4  5  6  7  8  9  10  11 12  13  14   15
        """
        igc=[]
        data = urllib2.urlopen(igcfile)
        for d in data:
            if d[0]=='B':
                #print d
                #print d[15:18]+' '+d[18:20]+' '+d[20:23] + ' '+ d[30:35]

                t=int(d[5:7])+60*(int(d[3:5])+60*int(d[1:3]))

                y=(int(d[7:9])+( int(d[9:11])+0.001*int(d[11:14]))/60);
                x=(int(d[15:18])+(int(d[18:20])+0.001*int(d[20:23]))/60);
                if d[14]=='S':
                    y=-y
                if d[23]=='W':
                    x=-x            
                if int(d[25:30])==0:
                    h=int(d[30:35])
                else:
                    h=int(d[25:30])               
                igc.append([t,x,y,h])
        return np.array(igc)

    def gps2Si(igc):
        """ Calculate position in meters relative to the first point
        """
        lat_avg=(igc[:,2].mean())*(pi.n()/180)
        lon_avg=(igc[:,1].mean())*(pi.n()/180)
        R2=6371000*cos(lat_avg)
        R=6371000
        # obliczamy pozycję w lokalnym układzie współrzędnych, start jest w pocz. ukł. współrz·
        X = R2*np.sin( (igc[:,1]-igc[0,1])*(pi.n()/180) ) #-lon_avg)
        Y =  R*np.sin( (igc[:,2]-igc[0,2])*(pi.n()/180) )  #-lat_avg)
        Z = igc[:,3]
        t = igc[:,0]
        return (t,X,Y,Z)


Spróbujmy wczytać pewien plik:


.. sagecellserver::


    igcfile = "http://xccomp.org/module.php?id=3&igc=e4c330e1&date=20140412"
    igc=read_igc_file(igcfile)
    t,X,Y,Z=gps2Si(igc)

    @interact
    def _(t0=slider(range(0,len(X)),default=len(X)/2)):
        l0=line( zip( X , Y ),color='gray' )
        l=point( ( X[t0] , Y[t0] ),color='red',size=50,figsize=6 )
        show( l0+l)

.. sagecellserver::

    Xa=X[1500:1550]
    Ya=Y[1500:1550]
    pkts=line(zip(Xa,Ya),figsize=5)
    deltar=[ arrow((Xa[i],Ya[i]),(Xa[i+1],Ya[i+1]),width=1 ) for i in range(0,len(Xa)-1,10)]
    rs=[ arrow((0,0),(Xa[i],Ya[i]) ,color='red',width=.5) for i in range(0,len(Xa),10)]
    show( pkts+sum(deltar)+sum(rs) )
