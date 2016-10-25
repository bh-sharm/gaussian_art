#!/bin/csh 


#bharat added STARTS
setenv ENERGY_CALC DFT     #choose: DFT or SWP (Stillinger-Weber) or GAU
# bharat added ENDS


setenv Temperature -0.4    # Temperature in kcal/mol, if negative always reject the event
setenv EVENT_TYPE  NEW     # Either 'NEW', 'REFINE_SADDLE' when further converging a saddle point
                           # Or "REFINE_AND_RELAX", to refine at the saddle
			   # and check the final minimum

setenv LABEL_SIESTA SIGA_INT
setenv NATOMS     8      # Number of atoms in the problem bharat 217 > 2

setenv Prefactor_Push_Over_Saddle 0.3

setenv type1      C       # Name of the atomic types - used for writing out xmol-type file
setenv type2      H    
#setenv type3       H      

######  ART ##############################################################################################

setenv Max_Number_Events                  2   # Maximum number of events bharat 10>1
setenv Type_of_Events                  global  # Initial move for events - global or local
setenv Radius_Initial_Deformation          3   #Cutoff for local-move (in angstroems)
setenv Central_Atom                        2   # Number of the atom # around which the initial move takes place

setenv Eigenvalue_Threshold             -1.0   # Eigenvalue threshold for leaving basin
setenv Exit_Force_Threshold              2.0   # Threshold for convergence at saddle point

setenv Increment_Size                   0.06   # Overall scale for the increment moves in activation
setenv Initial_Step_Size                0.8    # Size of initial displacement, in A

setenv sym_break_dist                    0.3   # Breaks the symmetry of the
                                               # crystal by randomly displacing all atoms by this distance

setenv Max_Perp_Moves_Basin                2   # Maximum number of perpendicular steps leaving basin
setenv Min_Number_KSteps                   2   # Min. number of ksteps before calling lanczos 
setenv Basin_Factor                      3.0   # Factor multiplying Increment_Size for leaving the basin

setenv Number_Lanczos_Vectors             16   # Number of vectors included in lanczos procedure
setenv Max_Perp_Moves_Activ                8   # Maximum number of perpendicular steps during activation
setenv Force_Threshold_Perp_Rel          0.5   # Threshold for perpendicular relaxation
setenv Max_Iter_Basin                    200   # Maximum number of iteraction for leaving the basin (kter)
setenv Max_Iter_Activation              1   # Maximum number of iteraction during activation (iter) bharat 1000>1

################## Direction inversion in iterative subspace
setenv Use_DIIS                       .true.   # Use DIIS for the final convergence to saddle
setenv DIIS_Force_Threshold            0.25    # Force threshold for convergence
setenv DIIS_Memory                       5     # Number of vectors kepts in memory for algorithm
setenv DIIS_MaxIter                    200     # Maximum number of iteractions for the DIIS scheme
setenv DIIS_Check_Eigenvector         .true.   # Check that the final state is indeed a saddle
setenv DIIS_Step_Size                 0.005     # Step size for the position

############### Input              #######################################################################
setenv FILECOUNTER      filecounter            # File tracking  the file (event) number - facultative
setenv REFCONFIG        refconfig.dat              # Reference configuration (actual local minimum)

############### Output             #######################################################################
setenv LOGFILE             log.file            # General output for message
setenv EVENTSLIST       events.list            # list of events with success or failure
setenv RESTART          restart.dat            # current data for restarting event

############### Run the simulation #######################################################################

 echo this is test1
#./siestart_old
#/global/scratch/sharmabh/art/ART/art_dft_v3.1-distr-2/art_dft_v3.1-distr/source/artdft
/global/scratch/sharmabh/art/ART/art_dft_v3.1-distr-2/art_dft_v3.1-distr/source/gaussian_art/artdft

 echo this is test2
