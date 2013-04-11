A set of loosely coupled barrels
C Cell cards
1 1  -1    -1
2 like 1 but trcl=2 mat=2
3 like 1 but trcl=3 mat=2
4 like 1 but trcl=4 mat=2
5 like 1 but trcl=5 mat=2
6 0      -2 #1 #2 #3 #4 #5
7 0       2

C Surface cards
1 rcc 0 0  0    0 0 100   35
2 rcc 0 0 -5    0 0 110   500

C Data cards
imp:n 1 5r 0
tr2  81.5    0 0 
tr3 -81.5    0 0
tr4    0  81.5 0
tr5    0 -81.5 0
M1 1001 2 8016 1 92235 0.01 92238 0.09
M2 1001 2 8016 1
kcode 10000 1 50 125
ksrc    0 0 50 $ 81.5 0 50   -81.5 0 50   0 81.5 50   0 -81.5 50
fmesh14:n GEOM=cyl ORIGIN=0 0 -5 AXS=0 0 110
          VEC=1 0 0 
          IMESH=500 IINTS=250
          JMESH=110 JINTS=55
          KMESH=1   KINTS=32

    