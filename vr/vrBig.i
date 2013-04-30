variance reduction problem
1 1 -2.03  -1
2 0        -2
3 1 -.0203 -3
4 0        -4 3
5 0         1 2 4

1 rcc 0 0 0       0 180 0    100
2 rcc 0 180 0     0 1820 0   100
3 rcc 0 2000 0    0 10 0     100
4 rcc 0 2000 0    0 10 0     201
 
c        the following is  pseudo-concrete
m1    1001 -.010      6012 -.001      8016 -.529
     13027 -.034     14000 -.337     26000 -.014
sdef   pos=0 1.e-6 0 cel=1 wgt=1  erg=d1
si1    2 2.00000001 14 14.00000001
sp1   0 .5 .5 1
f1:n  1.2
f4:n  3
f5:n  200 2005 0 0
c nps   10000 $ From original file
ctme 1 $ Run one minute computer time
imp:n 1 3m 3m 3m 0
ext:n 0.6Y 0 0.6X 0 0
c wwp:n 4j 0.25
c wwg 1 0
c MESH geom=cyl ref=0 0.001 0 origin=0 -1 0
c      axs=0 1 0 vec=1 0 0
c      IMESH=50 100 201 IINTS=2 2 1
c      JMESH=181 1990 2001 JINTS=4 4 4
c      KMESH=0.5 1 KINTS=2 2
