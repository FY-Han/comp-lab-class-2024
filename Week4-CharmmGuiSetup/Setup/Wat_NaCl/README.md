# Wat_NaCl

## Overview

This directory contains the setup and simulation files for a molecular dynamics (MD) simulation of a water and NaCl ion system. The files here were generated to set up and simulate the behavior of water molecules with dissolved NaCl ions using GROMACS. The setup involves generating a water box, adding ions, setting periodic boundary conditions (PBC), and running the equilibration and production MD simulations.

The MD simulations are carried out in the `gromacs/` subdirectory, which contains all input files, output logs, trajectory files, and energy data from the simulation runs.

## Directory Contents

### CHARMM-GUI Setup Files

The initial setup for the water and NaCl system was performed using CHARMM-GUI. These files are essential for setting up the system for GROMACS simulations:

- **Waterbox Setup (`step2.1_*`)**:  
  - `step2.1_waterbox.inp`, `step2.1_waterbox.pdb`, `step2.1_waterbox.crd`, etc.: Files related to the initial creation and solvation of the water box.
  
- **Ions Addition (`step2.2_*`)**:  
  - `step2.2_ions.inp`, `step2.2_ions.pdb`, `step2.2_ions.crd`, etc.: Files related to the addition of NaCl ions to the solvated water box.

- **Solvator and PBC Setup**:  
  - `step2_solvator.*`, `step3_pbcsetup.*`: Files used for applying periodic boundary conditions (PBC) to the system.

- **Topologies and Parameters**:  
  - `toppar/`: This directory contains topology and parameter files required for the MD simulations.

### Python and STR Scripts

These are utility scripts and configuration files used during the setup process:

- **`addCrystPdb.py`**: Python script for adding crystallographic information to the PDB file.
- **`checkfft.py`**: Script for checking FFT configurations.
- **`.str Files`**: These are structure files used during the setup for various steps like FFT checking, PBC setup, and solvation.

### GROMACS Simulation (`gromacs/`)

The `gromacs/` directory contains all the necessary files for performing the GROMACS MD simulations. This includes input files, outputs, and data generated during minimization, equilibration, and production runs.

#### Key Files

- **Input Files**:
  - `step3_input.gro`, `step3_input.pdb`, `step3_input.psf`: Input structure files used for GROMACS simulations.
  - `step4.0_minimization.mdp`, `step4.1_equilibration.mdp`, `step5_production.mdp`: GROMACS parameter files for the different simulation stages (minimization, equilibration, production).

- **Output Files**:
  - **Minimization**: `step4.0_minimization.*` (log, trajectory, energy files)
  - **Equilibration**: `step4.1_equilibration.*` (log, trajectory, energy files)
  - **Production**: `step5_*.xtc`, `step5_*.cpt`, `step5_*.edr`, `step5_*.log`: These files represent the production run's outputs, including trajectory (`.xtc`), checkpoint (`.cpt`), energy (`.edr`), and log files.
  
- **Additional Files**:
  - `concatenated.xtc`, `unwrapped.xtc`: Trajectory files for the production run, concatenated and unwrapped for analysis.
  - `index.ndx`: Index file used for defining groups during analysis.
  - `topol.top`: The topology file for the system.
  - `run_setup.sbatch`: The SLURM batch script used to submit the GROMACS job to the HPC cluster.
  - Various `.xvg` files: Analysis output files generated by GROMACS for properties like energy, radius of gyration, and more.

### Purpose of Each Step

1. **Waterbox Creation and Solvation**:  
   In this stage, a water box was created and NaCl ions were added to the system. This solvated system serves as the environment for the MD simulation.

2. **Minimization (`step4.0_minimization`)**:  
   This step is performed to minimize the system's potential energy by removing any steric clashes or high-energy contacts.

3. **Equilibration (`step4.1_equilibration`)**:  
   During this phase, the system is equilibrated to stabilize temperature and pressure under constant conditions. This prepares the system for the production MD run.

4. **Production (`step5_production`)**:  
   The main molecular dynamics simulation is carried out in this phase. The trajectory files produced in this step are used for subsequent analysis.

## Workflow Overview

1. **Setup**: The `Wat_NaCl/` directory contains the initial files generated from CHARMM-GUI, which were used to prepare the water and NaCl system for GROMACS simulations.

2. **Running the Simulations**: The GROMACS simulations were run in the `gromacs/` subdirectory. The job was submitted using the `run_setup.sbatch` script via the SLURM workload manager.

3. **Post-Processing**: After the simulations, the trajectory files were processed using `trjconv` and analyzed. The results are available as `.xvg` files and `.xtc` trajectories for further analysis using visualization tools like VMD.

## How to Use

1. **Setup**: Use the CHARMM-GUI generated files in this directory to set up your water and NaCl system. Ensure that GROMACS is installed and configured properly.

2. **Running the Simulations**: Submit the SLURM job using the `run_setup.sbatch` script in the `gromacs/` folder.

3. **Post-Processing and Analysis**: Once the simulations are complete, use the trajectory files (`concatenated.xtc`, `unwrapped.xtc`) for analysis and visualization.

## Notes

- Ensure that the HPC cluster you are using has sufficient resources for GROMACS simulations, especially if working with larger systems.
- The trajectory files have been processed to remove periodic boundary artifacts for better visualization and analysis.

## Contact

For further information or questions, please reach out to the project lead.
