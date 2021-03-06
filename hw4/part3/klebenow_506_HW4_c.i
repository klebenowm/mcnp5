NE506 HW4 Part 3 - Klebenow
c -----------------------------------------------------------------------------
c Cells
c -----------------------------------------------------------------------------
c Spheres 1-5
1 1 -12 -1
2 1 -12 -2
3 1 -12 -3
4 1 -12 -4
5 1 -12 -5
7 2 -4.5 -7 8 $ Titanium seed casing
8 3 -0.0012 -8 1 2 3 4 5 $ Air chamber
9 0 -9 7 $ Void surrounding
10 0 9 $ Graveyard
c blank line below

c -----------------------------------------------------------------------------
c Surfaces
c -----------------------------------------------------------------------------
1 SPH 0 0 0.12  0.03 $ Sphere 1
2 SPH 0 0 0.06  0.03 $ Sphere 2
3 SPH 0 0 0     0.03 $ Sphere 3
4 SPH 0 0 -0.06 0.03 $ Sphere 4
5 SPH 0 0 -0.12 0.03 $ Sphere 5
7 RCC 0 0 -0.25     0 0 0.5     0.04    $ Titanium seed casing
8 RCC 0 0 -0.15     0 0 0.3     0.035   $ Air chamber
9 RPP -1 1 -1 1 -1 1
c blank line below

c -----------------------------------------------------------------------------
c General
c -----------------------------------------------------------------------------
c Material cards---------------------------------
M1 046000 1 $ Palladium
M2 022000 1 $ Titanium
c Air
M3   018000 -0.00674     $ Ar
     006000 -0.0000704   $ C
     001000 -0.00000866  $ H
     002000 -0.0000378   $ He
     036000 -0.000000482 $ Kr
     007000 -0.804       $ N
     010000 -0.000026    $ Ne
     008000 -0.184       $ O
c -----------------------------------------------------------------------------
c Source cards ---------------------------------
sdef PAR=2 POS=D1 RAD=D2 ERG=FPOS=D3
mode p
SI1 L 0 0 0.12  0 0 0.06  0 0 0  0 0 -0.06  0 0 -0.12
SP1     1           2       3       4           5
SI2 0 0.03
SP2 -21 2
DS3 S 11 22 33 44 55
SI11 L 0.03
SP11 1
SP22 -4 0.002 0.01
SI33 L 0.01 0.015 0.02
SP33   1    1     1
SI44 0.02 0.03
SP44 0 1
SI55 A 0 0.01 0.02 0.025
SP55   0 0.5  0    1
print 110
nps 50
IMP:n 1 7R 0
IMP:p 1 7R 0
