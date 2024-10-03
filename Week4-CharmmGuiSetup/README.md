# Week4-CharmmGuiSetup

This project folder contains files and subdirectories related to a molecular dynamics simulation and analysis performed during Week 4 of the course. The setup, simulation, and analysis were carried out using GROMACS and other associated tools, with system configurations prepared via CHARMM-GUI.

## Folder Structure

- `Assignment.md`:  
  This file contains the assignment details for the project, including objectives and instructions for setting up and running the simulation, as well as performing the analysis.

- `Analysis/`:  
  This directory contains scripts and notebooks for analyzing the molecular dynamics simulation data.
  
  - `plot.ipynb`:  
    A Jupyter notebook used for plotting and analyzing the trajectory data from the molecular dynamics simulation. It computes key structural metrics such as end-to-end distance, mean squared displacement (MSD), and radius of gyration.
  
  - `README.md`:  
    A readme file describing the contents and purpose of the files in the `Analysis/` directory.

- `Figures/`:  
  This directory contains the output plots generated from the analysis.
  
  - `end_to_end_distance_vs_time.png`:  
    A plot showing how the end-to-end distance of the molecule changes over time during the simulation.
  
  - `msd_vs_time.png`:  
    A plot displaying the mean squared displacement (MSD) versus time, used to analyze the diffusion behavior of the molecule.
  
  - `radius_of_gyration_vs_time.png`:  
    A plot illustrating the radius of gyration as a function of time, providing insight into the compactness of the molecule during the simulation.
  
  - `README.md`:  
    A readme file describing each plot in the `Figures/` directory and its significance to the analysis.

- `Scripts/`:  
  This directory contains bash or other scripts used for setting up and running the molecular dynamics simulations or post-processing the data.
  
  - `README.bash`:  
    A readme file explaining the purpose of the scripts and how to use them for setting up and executing the simulations.

- `Setup/`:  
  This directory contains the input files generated via CHARMM-GUI for the molecular dynamics simulation setup.
  
  - `1v1d_gmx_opc/`:  
    This subdirectory contains GROMACS-compatible files for simulating the 1v1d protein system with the OPC water model. These files are used for energy minimization, equilibration, and production MD simulations.
  
  - `Wat_NaCl/`:  
    This subdirectory contains configuration files for setting up a water and NaCl ion system, potentially used for solvating the protein or running a control simulation.

## General Workflow

1. **Setup**:  
   CHARMM-GUI was used to generate the necessary input files for GROMACS simulations. These files are located in the `Setup/` directory and were used to initiate the simulation runs.

2. **Simulation**:  
   The simulation was executed using GROMACS, with the setup files specifying the system's initial configuration, force fields, and simulation parameters.

3. **Analysis**:  
   After the simulation, trajectory data was analyzed using the Python scripts and notebooks in the `Analysis/` directory. The results are visualized as plots and saved in the `Figures/` directory.

4. **Scripting**:  
   The `Scripts/` directory contains scripts used for automating parts of the setup, simulation, and analysis processes. Refer to the `README.bash` file in the `Scripts/` directory for details on how to use them.

## Notes

Ensure that you have the required Python libraries installed to run the Jupyter notebook in the `Analysis/` directory. Additionally, GROMACS must be installed and configured on your system to run the simulations using the setup files provided in the `Setup/` directory.

## Contact

For any questions regarding this project, please refer to the assignment in `Assignment.md` or contact the project supervisor.

