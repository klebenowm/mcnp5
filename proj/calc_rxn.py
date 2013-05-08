from pyne import transmute as tm
from pyne import nucname as nn
import numpy as np
import sys

# First argument is filename (argv[0] is script name)
filename = sys.argv[1]
# Second argument is nuclide (##AA)
nuc = nn.zzaaam(sys.argv[2])
# Third argument is output filename
out = sys.argv[3]
# Read in mctal file
with open(filename,'r') as f:
    lines = f.readlines()
# Define block as the relevant block of text
block = lines[46:90]
# Initialize data as empty list
data = []
# Cycle over all lines of the data block
for line in block:
    # Split each line into separate elements
    # and append to list of data
    line = line.split()
    for string in line:
        data.append(float(string))
# Pop two values associated with total
data.pop()
data.pop()
print(len(data))
# Only retain flux values at even indices (0-indexed)
phidata = data[0::2]
# Reverse phidata to get flux from high-to-low energy bins
phidata.reverse()
# Convert phidata to a numpy array
phi = np.empty((175,1))
for i in np.arange(len(phidata)):
    phi[i,0] = phidata[i]
# Find 175Gp reaction rate from PyNE
rxnRate = tm._get_destruction(nuc,phi,False)
# Find MCNP5 reaction rate
line = lines[190]
line = line.split()
merr = line.pop()
mcnp = line.pop()
# Write results to a file
s  = 'Results for nuclide: ' + nn.name(nuc) + '\n'
s += '\tPyNE  = ' + str(rxnRate) + '\n'
s += '\tMCNP5 = ' + mcnp + '\n'
s += '\t        ' + merr + '\n'
with open(out,'a') as f:
    f.write(s)
pass
