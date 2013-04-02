NE506 HW3 Parts 3 and 4 - Klebenow
c -----------------------------------------------------------------------------
c Cells
c -----------------------------------------------------------------------------
1 2 -2.76 -1:-2:-3:-4:-5            IMP:n=1 $ Table
2 3 -2.52 -11 12                    IMP:n=1 U=1 $ Plate
3 1 -7.96 -21:-22:-23:-24:-25:-26   IMP:n=1 U=1 $ Fork
4 1 -7.96 -31:-32 33 -34            IMP:n=1 U=1 $ Knife
5 3 -2.52 -41:-42 43:-43 44 -45     IMP:n=1 U=1 $ Wine Glass
6 4 -1 -44 -46                      IMP:n=1 U=1 $ Water filling
9 0 #1 #2 #3 #4 #5 #6               IMP:n=0 U=1 $ Void in universe
10 0 -51 fill=1                     IMP:n=0     $ Place universe
20 LIKE 10 BUT TRCL=1 fill=1        $ Second Place setting
99 0    #1 #10 #20                  IMP:n=0     $ Void
c blank line below

c -----------------------------------------------------------------------------
c Surfaces
c -----------------------------------------------------------------------------
c Table Surface
1 RPP -50 50 -100 100 -5 5
c Table Legs
2 RPP 40 50 90 100 -100 -5      $ Quad 1
3 RPP -50 -40 90 100 -100 -5    $ Quad 2
4 RPP -50 -40 -100 -90 -100 -5  $ Quad 3
5 RPP 40 50 -100 -90 -100 -5    $ Quad 4
c Plate
11 TRC      0 -80 5     0 0 2       13 15   $ Outer surface of plate
12 TRC      0 -80 6     0 0 1       12 14   $ Inner surface of plate
c Fork
21 RPP -21 -19 -95 -80 5 7              $ Handle
22 RPP -22 -18 -80 -79 5.5 6.5          $ Cross-bar
23 RPP -22 -21.5 -79 -75 5.5 6.5        $ Leftmost tine
24 RPP -20.75 -20.25 -79 -75 5.5 6.5    $ Second tine
25 RPP -19.75 -19.25 -79 -75 5.5 6.5    $ Third tine
26 RPP -18.5 -18 -79 -75 5.5 6.5        $ Last tine
c Knife
31 RPP 19 21 -95 -85 5 7                $ Handle
32 RPP 18 21 -85 -75 5 7                $ Block Knife
33 P 21 -80 5   21 -75 5    18 -80 6    $ Lower Cut
34 P 21 -80 7   21 -75 7    18 -80 6    $ Upper Cut
c Wine Glass
41 RCC 15 -55 5     0 0 0.25    2.5     $ Base
42 RCC 15 -55 5.25  0 0 5.8     0.2     $ Stem
43 SPH 15 -55 16    5                   $ Outer Glass surface
44 SPH 15 -55 16    4.85                $ Inner Glass surface
45 PZ 18                                $ Glass truncation
46 PZ 17                                $ Liquid truncation
c Universe box
51 RPP -22 22 -100 -50 5 18
c blank line below

c -----------------------------------------------------------------------------
c General
c -----------------------------------------------------------------------------
c AISI 316 Stainless Steel (Used for cutlery)
c   Fe 61.83-71.96  026056
c   Cr 16-18        024052
c   Ni 10-14        028058
c   Mo 2-3          042098
c       Remaining elements truncated
c   Mn <2
c   Si <1
c   C 0.04-0.1
c   P <0.04
c   S <0.03
M1 026056 -66.895 024052 -17 028058 -12 042098 -2.5
c Marble CaCO3 (Used for table)
M2 020040 1 006012 1 008016 3
c Glass SiO2 (Used for glass and plate)
M3 014028 1 008016 2
c Water H20 (Filling Wine Glass)
M4 001001 2 008016 2
c Tranformation
TR1 0 0 0
     -1 0 0
     0 -1 0
     0 0 1
c -----------------------------------------------------------------------------
c Source cards ---------------------------------
sdef
nps 50
