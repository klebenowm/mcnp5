title goes here
C Cell Cards begin
1 1 -7.5   -1          IMP:n=1
2 1 -7.5   -2          IMP:n=1
3 2  -1    -3          IMP:n=1
4 0         1  2 3 -4  IMP:n=1
5 0     4        IMP:n=0
C Cell Cards end then blank line

C Surface Cards begin
1 rpp    5  25   -25 25   -25 25
2 rpp  -30  -8   -25 25   -25 25
3 rcc    -8 0 0   13 0 0   20
4 rpp    -45 45 -30 30 -30 30
C Surface Cards end then blank line

C Data Cards begin
m1 26000 1
m2 1001 2 8016 1
C Data Cards end then recommended blank line
sdef x=D1 y=D2 z=D3 ERG=D4
SI1 L 5.01 -7.99
SP1 D 1     1
SI2 H -25 25
SP2 D 0  1
SI3 A -25 25
SP3 D  0  1
c 1/4 2, 1/4 12, rest uniform 5-10
SI4 S D5 D6
SP4 D  1  1
SI5 L 2 12
SP5 D 1  1
SI6 A 5 10
SP6 D 0 1
nps 50
PRINT 110
c Eveything after this point is ignored by MCNP




