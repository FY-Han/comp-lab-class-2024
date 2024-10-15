source /scratch/work/courses/CHEM-GA-2671-2024fa/software/gromacs-2019.6-plumedSept2020/bin/GMXRC.bash.modules

for sigma in 0.2 0.35 0.7
do
	gmx_mpi mdrun -v -s topolA.tpr -nsteps 5000000 -plumed plumed_metad_phi_A_sigma$sigma.dat
	plumed sum_hills --hills HILLS_sigma$sigma --outfile metad_hill_A_all_sigma$sigma.dat
done

for height in 1.0 1.5
do
	gmx_mpi mdrun -v -s topolA.tpr -nsteps 5000000 -plumed plumed_metad_phi_A_height$height.dat
	plumed sum_hills --hills HILLS_height$height --outfile metad_hill_A_all_height$height.dat
done

for biasf in 1 2 5 15
do
	gmx_mpi mdrun -v -s topolA.tpr -nsteps 5000000 -plumed plumed_metad_phi_A_biasf$biasf.dat
	plumed sum_hills --hills HILLS_bf$biasf --outfile metad_hill_A_all_biasf$biasf.dat
done
