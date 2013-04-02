title goes here
C Cell Cards begin
1 1 -10     -1
2 2 -1       1 -2
3 0          2 -3
4 0          3
C Cell Cards end then blank line

C Surface Cards begin
1 rcc    0 0 0   0 0 10   10
2 rpp    -20  20    -20 20    0 20
3 sph   0 0 0  40
C Surface Cards end then blank line

C Data Cards begin
C need to define cell volumes because MCNP can''t
vol 3141.59  28858.41 2J
IMP:n 1 1 1 0
C both a neutron and photon problem
mode n p
C What is this source doing?
sdef axs 0 0 1 rad d1 vec 0 0 1 dir 1 sur 1.3
si1  15
C Material 1 is U-238
m1  92238  1
C Material 2 is water
m2  1001   2  8016  1
C include delayed neutrons
totnu
print 110 170
nps 10000
C Tally Specifications
c neutron surface flux
F12:n 1.2 $ Cyl top crossing
F22:n 2.5 $ Box top crossing
SD22 400
F32:n 2.1 2.2 2.3 2.4 2.5 1.3 T $ Leaving the box
SD32 400 400 400 400 400 400 2400
c photon fluence
F14:p 2     $ In box
F102:p 2.5  $ Box top
SD102 400
c photon point
F5:p 0 0 30 $ Point (0,0,30)
C Data Cards end then recommended blank line

Eveything after this point is ignored by MCNP
