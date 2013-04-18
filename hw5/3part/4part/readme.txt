First, mcnp was used to determine the fission energy tally for the geometry.
The tally yielded [MW/(n_src/s)]:
                 1.18121E-17 0.0018
To find the source strength, we take the reactor power, 250 kW, and divide
    by this value.
0.25[MW] / 1.18121E-17[MW/(n_src/s)] = 2.116473785E+16 [n_src/s]

Now we can use this source strength as a multiplier to the detector tally
    in order to approximate the neutron dose at that point.
We run mcnp again to find that the dose associated with uncollided neutron
    flux is:
                 4.36349E+04 0.0035
