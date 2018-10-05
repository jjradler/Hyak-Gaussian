%chk=h2_geom003.chk
%nproc=28
%mem=120gb
#p b3lyp/sto-3g opt
gfprint
units=AU

Test calculation for H2 diatomic for batch script development. Equilibrium bond
length 1.4 Bohr radii. Closed shell, 2e- wavefunction --date=2018.10.05

0 1
H   0.00000     0.00000     0.00000
H   0.00000     0.00000     1.20000

