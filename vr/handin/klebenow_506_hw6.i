variance reduction problem - Matthew Klebenow NE506
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
ctme 10
imp:n 1 1 1 1 0
ext:n 0.9Y 0 0 0 0 $ Exponential transform upward
fcl:n 0 0 1 0 0 $ Force collision in cell 3
dxt:n 0 2005 0 101 102 $ DXTRAN sphere around tally 4
PD5 0 0 1 0 0 $ Only accept detector tallies from cell 3
wwp:n 4j -1
c wwg 1 0
MESH geom=cyl ref=0 0.001 0 origin=0 -1 0
     axs=0 1 0 vec=1 0 0
     IMESH=100 200
     IINTS=4 2
     JMESH=180 1999 2011
     JINTS=4 2 4
     KMESH=0.5 1
     KINTS=2 2
