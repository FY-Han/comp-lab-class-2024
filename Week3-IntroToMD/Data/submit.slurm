#!/bin/bash
#SBATCH --nodes=8
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=15:00:00
#SBATCH --mem=4GB
#SBATCH --job-name=fengyang
#SBATCH --output=complabjob_fengyang.out

# Load the default OpenMPI module.
module purge
module load gromacs/openmpi/intel/2020.4

gmx_mpi mdrun -deffnm md_0_1

