from pyne import transmute
import numpy

with open('mctal','r') as f:
    lines = f.readlines()
phidata = lines[45:89]
