Input file for HW #5
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
nps 1000000
C Materials
m1 4009 1   $ simple Be description
m2 1001 2 8016 1 5010 0.05 $ borated water
m3 22048 95 1003 5  $ tritiated titanium target
m4 11023 1 53127 1  $ NaI for detector
C Source
C this problem assumes an isotropic 14 MeV neutron source 
C at the origin
sdef
C Assume a physical source strength of 1e12 n/s

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
   calculate the neutron and photon doses at the point (0,100,100)
