Input file for HW #5 Part II
C Cell cards
1 1 -1.85    -1  3         imp:n=1  $ Be Sphere
4 3 -4.5        -3  4      imp:n=1  $ tritiated target
3 0             -3 -4      imp:n=1  $ beam tube
5 2 -1        1 -5  3 6    imp:n=1  $ water jacket
6 0           1 -5   -6 7  imp:n=1  $ detector tube
7 4  -3.7              -7  imp:n=1  $ NaI Detector
100 0         5            imp:n=0

C Surface cards
1 so 25
3 rcc 0 -50 0  0 50.5 0  2
4 py -0.5
5 rpp -50 50 -50 50 -50 50 
6 rcc 0  0  0   0 50 50     4
7 rcc 0 35 35   0   5   5   3.9
104 py 0

C Data cards
mode n p
nps 1e5
C Materials
m1 4009 1   $ simple Be description
m2 1001 2 8016 1 5010 0.05 $ borated water
m3 22048 95 1003 5  $ tritiated titanium target
m4 11023 1 53127 1  $ NaI for detector
C Source
C this problem assumes an isotropic 14 MeV neutron source 
C at the origin
sdef
C Tally cards
c Energy grid for all tallies (1)
E0 1e-10 44ILOG 10 4I 20
c Be sphere current
F1:n 1 $ Surface current
C1 0 1 $ Cosine bins (entering if <0, exiting if >0)
c flux at detector
F4:n 7   $ Cell flux at detector
CF4 1    $ Flag Be sphere
FQ4 E D  $ Order
F14:n 7  $ Cell flux at detector
CF14 5   $ Flag water jacket
FQ14 E D $ Order
c heating in detector
F16:n 7             $ Tally neutrons
SD16 1              $ Specify unit mass
FM16 1.6021777e-4   $ Scale to Watts
F26:p 7             $ Tally photons
SD26 1              $ Specify unit mass
FM26 1.6021777e-4   $ Scale to Watts
c rate of (n,2n) reactions in Be sphere
F34:n 1         $ Tally neutrons in Be sphere
FM34 1e9 1 16     $ Tally multiplier for (n,2n)
c Mesh tally entire water block
FMESH44:n GEOM=xyz ORIGIN=-50 -50 -50
     IMESH=-40 -25 25 40 50 IINTS=2 5 50 5 2
     JMESH=-40 -25 25 40 50 JINTS=2 5 50 5 2
     KMESH=-40 -25 25 40 50 KINTS=2 5 50 5 2
FMESH54:p GEOM=xyz ORIGIN=-50 -50 -50
     IMESH=-40 -25 25 40 50 IINTS=2 5 50 5 2
     JMESH=-40 -25 25 40 50 JINTS=2 5 50 5 2
     KMESH=-40 -25 25 40 50 KINTS=2 5 50 5 2
c neutron and photon doses at (0,49,49)
F45:n 0 49 49 0.1
DE45 2.5e-8 1e-7 5ILOG 1e-1 5e-1 1 2 5 10 20
DF45 3.85e-6 4.17e-6 4.55e-6 4.35e-6 4.17e-6 3.7e-6 3.57e-6
     2.08e-5 7.14e-5 1.18e-4 1.43e-4 1.47e-4 1.47e-4 1.54e-4
FM45 1e9 $ Scale by source strength
F55:p 0 49 49 0.1
DE55 0.01 0.015 0.02 3I 0.06 0.08 0.1 0.15 0.2 3I 0.6 0.8 1. 1.5
      2 3I 6 8 10
DF55 2.78e-6 1.11e-6 5.88e-7 2.56e-7 1.56e-7 1.2e-7 1.11e-7 1.2e-7
     1.47e-7 2.38e-7 3.45e-7 5.56e-7 7.69e-7 9.09e7 1.14e-6 1.47e-6
     1.79e-6 2.44e-6 3.03e-6 4e-6 4.76e-6 5.56e-6 6.25e-6 7.69e-6
     9.09e-6
FM55 1e9
C Assume a physical source strength of 1e9 n/s

C Blank line above makes these comments
1. Establish an energy grid for all tallies with 44 bins spaced
   logarithmically between 1e-10 and 10 MeV and 4 bins spaced 
   linearly between 10 and 20 MeV
2. Plot the energy spectrum of the current leaving the Be sphere and
   compare to the energy spectrum of the current reentering the Be
   sphere.  Arrange your output in a table with energy and direction.
3. Determine what fraction of the flux that reaches the detector has
   streamed directly from the Be sphere.  Plot the flux spectrum that 
   streamed directly in comparison with the total flux spectrum.  
   Arrange your output in a table that makes it easy to make this 
   comparison.
4. Determine the total heating in the NaI detector and what fraction 
   comes from neutrons vs. photons.  Report your answers in W.
5. Determine the rate of (n,2n) reactions occuring in the Be sphere
   Report your answer in reactions/s.
6. Create a mesh tally in the entire water block.
   For the region that includes the Be sphere, use 1 cm mesh.
   For the next 15 cm, use a 3 cm mesh.
   For the remainder of the mesh, use a 5 cm mesh.
   Tally both the photon and neutron fluxes.
   Produce a plot of these mesh tallies in the Y-Z plane
7. Using the ICRP 21 flux-to-dose conversion factors in Appendix H, 
   calculate the neutron and photon doses at the point (0,49,49)
