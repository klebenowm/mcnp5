title goes here
C Cell Cards begin
1 1 -1 -1        IMP:n=1
2 1 -1 -2        IMP:n=1
3 0     1 2 -3   IMP:n=1
4 0     3        IMP:n=0
C Cell Cards end then blank line

C Surface Cards begin
1 sph     25 0 0    10
2 sph    -25 0 0    30
3 rpp    -100 100 -100 100 -100 100
C Surface Cards end then blank line

C Data Cards begin
m1 1001 2 8016 1
c FIRST PART
c 4MeV isotropic neutron source at center of large sphere (-25,0,0)
c sdef POS=D1 ERG=FPOS=D2
c SI1 L -25 0 0   25 0 0
c SP1       1        1
c DS2 L 12 4
sdef x=D1 y=0 z=0 ERG=D2
SI1 H -55 5 15 35
SP1 D 0  1 0  1
SI2 A 1 2 5
SP2   0 1 0
nps 50
PRINT 110
C Data Cards end then recommended blank line

Eveything after this point is ignored by MCNP




