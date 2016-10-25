#!/bin/csh 

#csh

#prctl --unaligned=silent mpirun -np 16 ~/Siesta2_Altix/Exec/siesta_16cpu_201 < art2siesta >& siesta2art

#mpiexec siesta < art2siesta >& siesta2art
module load siesta/4.0b
siesta < art2siesta >& siesta2art
