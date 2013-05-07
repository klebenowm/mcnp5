Run-script for NE506 project - Matthew Klebenow
C Cell cards
1 1 -2.03  -1
2 0 -2 1
3 0 2

c blank line
C Surface cards
1 rcc -10 10 -10 10 0 10
2 rcc -100 100 -100 100 -100 100
 
c blank line
C Data cards
imp:n 1 1 0
c Materials
c        the following is  pseudo-concrete
m1    1001 -.010      6012 -.001      8016 -.529
     13027 -.034     14000 -.337     26000 -.014
c Source Definition
sdef x=d1 y=d2 z=-1 vec=0 0 1 dir=1 erg=d3
si1 -5 5
sp1 0 1
si2 -5 5
sp2 0 1
si3 1e-11 20
sp3 0 1
c Tally Information
f4:n 1
e4 $ VITAMIN-J 175Gp Structure 

c blank line
