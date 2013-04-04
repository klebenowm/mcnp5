Day 19: Part 2
C =====================================================================
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
C Tally Cards
F2:n 2.5 $ Neutrons crossing the box top
SD2 400
C $ Angular distribution in 10 cosine bins
C Data Cards end then recommended blank line

Eveything after this point is ignored by MCNP




