Sample exercises for volume sources
C Cell Cards begin
1 1 -7.5   -1          IMP:n=1
2 1 -7.5   -2          IMP:n=1
3 2  -1    -3  5  6 7  IMP:n=1
6 1 -7.5   -5          IMP:n=1
7 1 -7.5   -6          IMP:n=1
8 1 -7.5   -7          IMP:n=1
4 0         1  2 3 -4  IMP:n=1
5 0     4        IMP:n=0
C Cell Cards end then blank line

C Surface Cards begin
1 rpp    5  25   -25 25   -25 25
2 rpp  -30  -8   -25 25   -25 25
4 rpp  -45  45   -30 30   -30 30
3 rcc     -8   0  0   13 0 0   20
5 rcc     -5  -5 -5    7 7 7    3
6 rcc   -7.5 -15  0   12 0 0    3
7 sph   -3 15 0   4.5
C Surface Cards end then blank line

C Data Cards begin
m1 26000 1
m2 1001 2 8016 1
nps 50
print 110
C Ex A: Surface source on X=5 surface of Cell 1
c sdef X=5 Y=D1 Z=D2 SUR=1.2 VEC=1 0 0
c SI1 -25 25
c SP1 0 1
c SI2 -25 25
c SP2 0 1
C Ex B: surface source on Cell 8
c sdef SUR=7
C Ex C: surface source on cylindrical surface of Cell 7
c sdef POS=-7.5 -15 0 AXS=1 0 0 EXT=D1 RAD=2.9
c SI1 0 12
c SP1 0 1
C Ex D: surface source on base of cell 6
c sdef SUR=5.3 POS=-5 -5 -5 RAD=D1
c SI1 0 3
C Data Cards end then recommended blank line

Eveything after this point is ignored by MCNP




