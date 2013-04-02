title card goes here
C Cell cards
1 0    -1
2 0    -2
3 0    -3
4 0    -4
5 0    -5
6 0    -6
7 0     1 2 3 4 5 6 -7
8 0     7

C Surface cards
1 S 5      0      0   0.2  $ small sphere @  0 degrees R=5
2 S 4.330  2.500  0   0.2  $ small sphere @ 30 degrees R=5
3 S 2.500  4.330  0   0.2  $ small sphere @ 60 degrees R=5
4 S 0      5      0   0.2  $ small sphere @ 90 degrees R=5
5 S 3.536 -3.536  0   0.2  $ small sphere @-45 degrees R=5
6 s 0      0      0   0.2
7 so 25

C Data cards
IMP:N 1 6R 0
NPS 10000000
f4:n 1 4i 6
fq4 F E
sdef POS=D1 VEC=FPOS=D2 DIR=0
SI1 L 5 0 0   4.33 2.5 0    2.5 4.33 0    0 5 0     3.536 -3.536 0
SP1 D   1          1            1           1              1
DS2 L -5 0 0  -4.33 -2.5 0  -2.5 -4.33 0  0 -5 0    -3.536 -3.536 0
PRINT 110
