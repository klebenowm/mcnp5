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
M1 1001 2 8016 1 92235 0.0065 92238 0.0935
M2 1001 2 8016 1 5010 0.005
M3 5010 1

C The above blank line ensures that the following will be treated as comments
1. Determine the U-235 enrichment that will make this system critical.
   Give an answer to the nearest 0.1%
2. Show that this is subcritical with the central control rod fully inserted.
3. Create a Cartesian mesh tally with a 3 cm mesh over the entire
   system.  Provide the following plots:
   * across the core at axial heights of 30 cm, 55 cm, 75 cm
   * on the y-z plane

