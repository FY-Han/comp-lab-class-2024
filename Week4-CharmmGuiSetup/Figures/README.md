# README

## Project Overview

This project involves analyzing the trajectory data of a molecular dynamics (MD) simulation. The analysis focuses on key structural properties such as the end-to-end distance, mean squared displacement (MSD), and the radius of gyration over time.

The data visualizations generated from the analysis are included as `.png` files, and they help to interpret the conformational dynamics of the system throughout the simulation.

## Files in this Directory

### 1. `end_to_end_distance_vs_time.png`

- **Description:**  
  This plot shows the end-to-end distance (the distance between the N-terminus and C-terminus of the molecule) as a function of time. It gives insight into the conformational flexibility of the molecule during the simulation.
  
- **Interpretation:**  
  Changes in this distance over time can indicate folding, unfolding, or stable conformations of the molecule.

### 2. `msd_vs_time.png`

- **Description:**  
  This plot illustrates the mean squared displacement (MSD) of the molecules as a function of time. MSD is commonly used to analyze the diffusion of molecules or atoms during the simulation.
  
- **Interpretation:**  
  The slope of the MSD plot is indicative of the diffusivity of the system. A linear relationship with time suggests diffusive behavior, while deviations can indicate confinement or binding events.

### 3. `radius_of_gyration_vs_time.png`

- **Description:**  
  This plot tracks the radius of gyration (Rg) of the molecule as a function of time. The radius of gyration measures the compactness of the molecular structure.
  
- **Interpretation:**  
  A lower Rg value suggests a more compact structure, whereas a higher Rg indicates a more extended conformation. This plot helps to identify folding or unfolding events and general structural stability.

## How the Data was Generated

The molecular dynamics simulation was performed using GROMACS, and the trajectory data was analyzed using Python with the MDAnalysis or MDTraj libraries. The following structural parameters were computed over the course of the simulation:

1. **End-to-End Distance**  
2. **Radius of Gyration**  
3. **Mean Squared Displacement (MSD)**

The trajectory data was pre-processed to remove solvent and correct for periodic boundary conditions before performing these analyses.

## Tools Used

- **GROMACS:** For running the molecular dynamics simulations and trajectory post-processing.
- **MDAnalysis/MDTraj:** Python libraries used to analyze the trajectory data and compute the structural properties.
- **Matplotlib:** Used to generate the plots from the data.

## Visualization Notes

- The plots are saved as `.png` files, suitable for direct inclusion in reports or presentations.
- Ensure that the plots are interpreted in conjunction with the simulation setup and any specific conditions applied during the simulation.

## Contact

For any further inquiries about this project, please contact the author or refer to the project documentation.

