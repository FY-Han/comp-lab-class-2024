#!/bin/bash
#SBATCH --job-name=proton_simulation          # Job name
#SBATCH --output=proton_simulation_%j.log    # Standard output and error log

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=24
#SBATCH --cpus-per-task=1
#SBATCH --time=6:00:00
#SBATCH --mem=8GB

# Load necessary modules
module load cp2k/openmpi/intel/20201212

# Run the job using mpirun
mpirun -np 24 cp2k.popt -i proton.inp -o proton_simulation.log

