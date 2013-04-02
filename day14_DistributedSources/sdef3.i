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
C Ex A: Volume source in Cell 1
c sdef X=D1 Y=D2 Z=D3 CEL=1
c SI1 4.99 25.01
c SP1 0 1
c SI2 -25.01 25.01
c SP2 0 1
c SI3 -25.01 25.01
c SP3 0 1
C Ex B: Volume source in Cell 8
c sdef POS=-3 15 0 RAD=D1
c SI1 0 4.5
C Ex C: Volume source in Cell 7
c sdef POS=-7.5 -15 0 AXS=1 0 0 EXT=D1 RAD=D2
c SI1 0 12
c SP1 0 1
c SI2 0 3
C Ex D: Volume source in Cell 6
c sdef POS=-5 -5 -5 AXS=1 1 1 EXT=D1 RAD=D2
c SI1 0 12.124355652
c SP1 0 1
c SI2 0 3
C Data Cards end then recommended blank line

Eveything after this point is ignored by MCNP
