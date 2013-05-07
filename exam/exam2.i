Starting file for Exam #2 in NE/MP 506
C Cells
C room spaces
1 1 -1e-3  ( 1  -2   3  -4   5  -6 : $ room filled with air @ 1e-3 g/cc
            25 -26  24 -23  32  -5 ) $   including piece next to window
2 1 -1e-3  ( 1  -2  13  -4   7 -15 #20 : $ control room filled with air
            25 -26  24 -23  15 -31 ) $   including piece next to window
3 1 -1e-3    1  -2  22 -21  15  -5   $ doorway
C Floor, celing and walls
11 2 -2.3   11  -1  13 -14  17 -16 $ floor slab
12 2 -2.3    2 -12  13 -14  17 -16 $ ceiling slab
13 2 -2.3    1  -2  13  -3  15 -16 $ left wall (incl. opening to control room)
14 2 -2.3    1  -2   4 -14  17 -16 $ right wal
15 2 -2.3    1  -2   3  -4   6 -16 $ back wall
16 2 -2.3    1  -2  21  -4  15  -5 $ right of door
17 2 -2.3    1  -2   3 -22  15  -5 $ around window
          (-25: 26: 23:-24)        $    excluding window space
18 2 -2.3    1  -2  13  -4  17  -7 $ control room wall
C Window
19 3 -2.5   25 -26  24 -23  31 -32 $ window
C Operator
20 4 -1     -40
C boundary
100 0      -11: 12:-13: 14:-17: 16
C 

C Surfaces
C inner walls of treatment room
1 pz 0         $ floor
2 pz 300       $ ceiling
3 px -200      $ left
4 px  200      $ right
5 py -200      $ shared wall
6 py  200      $ back
C outer walls of whole space
11 pz -30      $ outside floor
12 pz 330      $ outside ceiling
13 px -230     $ outside left
14 px  230     $ outside right
16 py  230     $ outside back
17 py -380     $ outside control room
C inner walls of control room
7 py -350      $ control room wall
15 py -230     $ shared wall
C door jams and window frames
21 px 150      $ right door jam
22 px 50       $ left door jam
23 px  -50     $ right window frame
24 px  -150    $ left window frame
25 pz  100     $ bottom window frame
26 pz  250     $ top window frame
C window pane
31 py  -220    $ control room side
32 py  -210    $ treatment room side
C operator approximation
c 40 rcc -100 -290 0      0 0 185     25 $ original posn
40 rcc 0 -290 0     0 0 185     25 $ between door and window
C 

C Data
mode p
imp:n 1 12r 0 
C source definition
C center of room xy, 1m from floor z
C isotropic direction pointed upwards
C 6MeV
c sdef pos=0 0 100 vec=0 0 1 dir=d1 erg=6 $ Source upwards
sdef pos=0 0 100 vec=0 0 1 dir=d2 erg=6 $ Source downwards
si1 0 1
sp1 0 1
si2 -1 0
sp2 0 1
print 110
C 
nps 1e5
C MATERIALS
C air
m1     7014  72 $ 72% N
       8016  28 $ 28% O
m2     8016 -0.45 
       1001 -0.1 
      11023 -0.02 
      14028 -0.28 
      13027 -0.05 
      19039 -0.02 
      20040 -0.08
C glass
m3    14028  1 $ Si
       8016  2 $ O2
m4     1001  2
       8016  1
C 
C 
C TALLIES
C     Energies for ICRP-21 Photon Flux-to-Dose Conversion Factors
C     (MeV)
C     0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 
C     0.1  0.15  0.2  0.3  0.4  0.5  0.6  0.8  
C     1.0  1.5   2.0  3.0  4.0  5.0  6.0  8.0  
C     10
C     Does response for for ICRP-21 Photon Flux-to-Dose Conversion Factors
C     (rem/hr)/(p/cm^2.s)
C     2.78e-6 1.11e-6 5.88e-7 2.56e-7 1.56e-7 1.20e-7 1.11e-7 1.20e-7
C     1.47e-7 2.38e-7 3.45e-7 5.56e-7 7.69e-7 9.09e-7 1.14e-6 1.47e-6
C     1.79e-6 2.44e-6 3.03e-6 4.00e-6 4.76e-6 5.56e-6 6.25e-6 7.69e-6
C     9.09e-6
C
c energy-dose response function
de   0.01 0.015 0.02 0.03 0.04 0.05 0.06 0.08 
     0.1  0.15  0.2  0.3  0.4  0.5  0.6  0.8  
     1.0  1.5   2.0  3.0  4.0  5.0  6.0  8.0  
     10 
df   2.78e-6 1.11e-6 5.88e-7 2.56e-7 1.56e-7 1.20e-7 1.11e-7 1.20e-7
     1.47e-7 2.38e-7 3.45e-7 5.56e-7 7.69e-7 9.09e-7 1.14e-6 1.47e-6
     1.79e-6 2.44e-6 3.03e-6 4.00e-6 4.76e-6 5.56e-6 6.25e-6 7.69e-6
     9.09e-6 
C Question 4 tally
fc4 Dose given to operator [mrem/h]
f4:p 20 $ Flux through operator
fm4  1e6 $ 1e9[p/s] * 1e-3[mrem/rem]
C Question 5 tallies
c Passes through doorway
fc14 Dose given to operator that passes through doorway [mrem/h]
f14:p 20
cf14 3
fm14  1e6 $ 1e9[p/s] * 1e-3[mrem/rem]
c Passes through window
fc24 Dose given to operator that passes through window [mrem/h]
f24:p 20
cf24 19
fm24  1e6 $ 1e9[p/s] * 1e-3[mrem/rem]
c Scatters back from the back wall of the control room
fc34 Dose given to operator that scatters from back wall [mrem/h]
f34:p 20
cf34 15
fm34  1e6 $ 1e9[p/s] * 1e-3[mrem/rem]


1. Material definitions m1 and m3 added.
    Densities already in cell definitions.
2. Source specified in sdef card.
3. Operator created as cell 20 inside of surface 40, made of m4.
    Note the density has been set to 1 [g/cm^3].
4. Dose given to operator measured in tally 4:
    2.16372E-06 0.0505 [mrem/h]
5. Dose from various particle paths [mrem/h]
    Total:      2.16372E-06 0.0505
    Doorway:    1.17135E-08 0.2069
    Window:     2.10014E-06 0.0518
    Back wall:  8.54735E-10 0.6315
6. Dose with operator in position between doorway and window [mrem/h]
    Total:      9.84078E-07 0.0702
    Doorway:    2.83749E-08 0.1228
    Window:     2.87015E-08 0.1667
    Back wall:  2.43898E-10 0.4524
7. Dose with source directed downwards instead of upwards
    Total:      1.16045E-06 0.0668
    Doorway:    3.39318E-08 0.1197
    Window:     1.65314E-09 0.6138
    Back wall:  8.05610E-10 0.4537
