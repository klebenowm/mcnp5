from pyne import transmute
import numpy
import sys

# First argument is filename (argv[0] is script name)
filename = sys.argv[1]
# Read in mctal file
with open(filename,'r') as f:
    lines = f.readlines()
# Define block as the relevant block of text
block = lines[45:89]
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
