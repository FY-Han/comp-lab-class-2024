# Inputs Folder

This folder contains all the necessary input files for the parallel tempering MD simulations.

- **adp.gro**: The initial structure of alanine dipeptide.
- **adp_T300.gro**: The final structure of the simulation at T=300 K.
- **adp_T300.mdp**: The MD parameter file for T=300 K simulation.
- **adp_T300.cpt**: The checkpoint file for the T=300 K simulation.
- **adp_T300.log**: The log file for the T=300 K simulation.
- **adp_T300.tpr**: The run input file for T=300 K simulation.
- **adp_T300.trr**: The trajectory file for T=300 K simulation.
- **adp.top**: The topology file for alanine dipeptide.
- **mdout.mdp**: The parameter file generated after preprocessing for the simulation.
- **T300/**, **T400/**, **T600/**: Subdirectories containing the input files for the replica simulations at different temperatures (T = 300 K, 400 K, and 600 K).

These files were used to perform the parallel tempering MD simulations using GROMACS. The directory also contains temporary log files from previous runs.


