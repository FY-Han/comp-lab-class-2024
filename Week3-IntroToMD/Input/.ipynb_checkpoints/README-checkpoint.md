# Input Files for Molecular Dynamics Simulation

This directory contains input files required for running a molecular dynamics (MD) simulation using GROMACS. The files include system configurations, parameters, and MD protocols used in different stages of the simulation such as energy minimization, equilibration (NVT and NPT), and production MD.

## Files Overview

### Structure File
- **2JOF.pdb**: The initial protein structure file in PDB format. This file contains atomic coordinates of the protein to be used as the starting point for the simulation. It may require processing (e.g., adding water and ions) before running the MD simulation.

### MD Parameter Files (MDP)
These `.mdp` files define the simulation parameters for various stages of the MD workflow:

1. **ions.mdp**:
   - This file is used when adding ions to neutralize the system after solvation. It defines the parameters for this process, typically used in conjunction with `gmx grompp` and `gmx genion`.

2. **minim.mdp**:
   - Parameters for **energy minimization**. This step is performed to remove any steric clashes or unrealistic geometry before the system is subjected to equilibration. It ensures that the system starts from a physically stable configuration.

3. **nvt.mdp**:
   - Parameters for **constant volume and temperature equilibration (NVT ensemble)**. This file contains the settings used to equilibrate the system at a constant temperature, ensuring that the temperature of the system reaches equilibrium before moving to the NPT step.

4. **npt.mdp**:
   - Parameters for **constant pressure and temperature equilibration (NPT ensemble)**. After NVT equilibration, this file is used to equilibrate the system at constant pressure and temperature. This step ensures the system reaches the correct density before the production run.
