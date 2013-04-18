Simple aqueous reactor model
C Cell cards
1  1 -1   -1 2 3 4 5 6
2  2 -1   -2 -102
12 0      -2  102
3  2 -1   -3 -103
13 0      -3  103
4  2 -1   -4 -104
14 0      -4  104
5  2 -1   -5 -105
15 0      -5  105
6  3 -4   -6  106
16 0      -6 -106
100 0  1 

C Surf cards
1 RCC   0   0 0 0 0 100 50
2 RCC  25   0 0 0 0 100  4
3 RCC   0  25 0 0 0 100  4
4 RCC -25   0 0 0 0 100  4
5 RCC   0 -25 0 0 0 100  4
6 RCC   0   0 0 0 0 100  4
102 pz 20
103 pz 40
104 pz 60
105 pz 80
106 pz 51

C Data cards
kcode 10000 0.945 25 75
ksrc  5 5 50
imp:n 1 10r 0
C Materials
M1 1001 2 8016 1 92235 0.00649 92238 0.09351
M2 1001 2 8016 1 5010 0.005
M3 5010 1
C Tallies
c 3 cm mesh
FMESH4:n GEOM=xyz ORIGIN=-51 -51 -1
     IMESH=51  IINTS=34
     JMESH=51  JINTS=34
     KMESH=101 KINTS=34
c Fission tally for source strength
F7:n (1 2 12 3 13 4 14 5 15 6 16)
SD7 1
FM7 1.6e-19
c Detector tally
F5:n 0 550 100 0.1
c Neutron dose multipliers
DE5 2.5e-8 1e-7 5ILOG 1e-1 5e-1 1 2 5 10 20
DF5 3.85e-6 4.17e-6 4.55e-6 4.35e-6 4.17e-6 3.7e-6 3.57e-6
     2.08e-5 7.14e-5 1.18e-4 1.43e-4 1.47e-4 1.47e-4 1.54e-4
FM5 2.116473785E+16

C The above blank line ensures that the following will be treated as comments
1. Determine the U-235 enrichment that will make this system critical.
   Give an answer to the nearest 0.1%
2. Show that this is subcritical with the central control rod fully inserted.
3. Create a Cartesian mesh tally with a 3 cm mesh over the entire
   system.  Provide the following plots:
   * across the core at axial heights of 30 cm, 55 cm, 75 cm
   * on the y-z plane
