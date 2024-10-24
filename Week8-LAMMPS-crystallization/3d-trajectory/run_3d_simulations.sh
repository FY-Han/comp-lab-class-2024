#!/bin/bash

for density in $(seq 0.8 0.1 1.5)
do
  echo "Running 3D simulation for density = $density"

  logfile="log_3d_density_${density}.log"

  mpirun lmp -var density $density -in ../Inputs/3dWCA.in -log $logfile

  echo "Simulation for density = $density completed"
done

