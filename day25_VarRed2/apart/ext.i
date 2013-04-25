Input file for testing exponential transform
C cells
1 1 -1   -1   imp:n=1
2 0       1   imp:n=0

C surfaces
1 rcc 0 0 0 150 0 0 30

C data
sdef pos=1e-6 0 0 vec=1 0 0 dir=1
m1 1001 2 8016 1
f1:n  1.2
c1 0 9i 1 t
fq1 c f
nps 1200000
ext:n 0.65x 0 $ Added to stretch in x direction
wwp:n 4j 0.25

What does this file describe?
    A large cylinder going from x=0 to x=150 with radius 30.
    Source is located at the bottom of the cylinder (x=0).
    The cylinder is filled with water.
    Tally 1 measures current across the top (x=150).
    There''s a cosine bin.
    The tables are ordered.
