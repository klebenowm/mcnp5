File to explore the forced collision VR technique
C cells
1 1 -8    -1 2 3
2 1 -4    -4 5 (-2:-3)
3 0      (-2:-3) #2 6
4 0      -6
5 0     1

C surfaces
1 rpp -100 100 -100 100 -10 10
2 rpp -100 5 -5 5 -10 10
3 rpp  -5  5 -100 5  -10 10
4 1 p   1 1 0 2 2 0 2 2 1
5 2 p   1 1 0 2 2 0 2 2 1
6 rpp   -5 5 -100 -95 -10 10

C data
mode n p
imp:n 1 1 1 1 0
m1 26056 1
tr1 0 0.5 0
tr2 0 -0.5 0
sdef POS=-99 0 0 
f4:p 4
fq4 f e
nps 100000


