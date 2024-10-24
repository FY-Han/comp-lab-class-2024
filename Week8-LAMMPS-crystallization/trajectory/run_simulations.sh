#!/bin/bash

for density in $(seq 0.5 0.1 1.1)
do
  echo "Running simulation for density = $density"

  logfile="log_density_${density}.log"

  mpirun lmp -var density $density -in ../Inputs/2dWCA.in -log $logfile

  echo "Simulation for density = $density completed"
done

