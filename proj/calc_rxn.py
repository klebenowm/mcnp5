from pyne import transmute as tm
from pyne import nucname as nn
import numpy as np
import sys

# First argument is filename (argv[0] is script name)
filename = sys.argv[1]
# Second argument is nuclide (##AA)
nuc = nn.zzaaam(sys.argv[2])
# Third argument is MCNP5 reaction rate
mcnp = sys.argv[3]
# Fourth argument is output filename
out = sys.argv[4]
# Read in mctal file
with open(filename,'r') as f:
    lines = f.readlines()
# Define block as the relevant block of text
block = lines[44:86]
# Initialize phidata as empty list
phidata = []
# Cycle over all lines of the data block
for line in block:
    # Split each line into separate elements
    # and append to list of phidata
    line = line.split()
    phidata.append(line)
# Only retain flux values at even indices (0-indexed)
phidata = [x for x in phidata if x%2 == 0]
# Reverse phidata to get flux from high-to-low energy bins
phidata = phidata.reverse()
# Convert phidata to a numpy array
phi = np.zeros((175,1))
for i in np.arange(len(phidata)):
    phi[i,0] = phidata[i]
# Find 175Gp reaction rate from PyNE
rxnRate = tm._get_destruction(nuc,phi,False)
# Write results to a file
s  = 'Results for nuclide: ' + nn.name(nuc) + '\n'
s += '\tMCNP5 = ' + mcnp + '\n'
s += '\tPyNE  = ' + str(rxnRate) + '\n'
with open(out,'a') as f:
    f.write(s)
return
