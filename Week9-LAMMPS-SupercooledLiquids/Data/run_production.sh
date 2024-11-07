#!/bin/bash
#SBATCH --job-name=production_job     # 作业名称
#SBATCH --output=production_output.log # 输出文件
#SBATCH --ntasks=20                    # 总任务数，等于温度点数量
#SBATCH --cpus-per-task=1              # 每个任务的 CPU 数量
#SBATCH --time=1:00:00                 # 运行时间（调短，因为生产模拟较快）

# 加载 LAMMPS
source /scratch/work/courses/CHEM-GA-2671-2024fa/software/lammps-gcc-30Oct2022/setup_lammps.bash

# 温度列表
# temperatures=(1.5 1.0 0.9 0.8 0.7 0.65 0.6 0.55 0.5 0.475)
temperatures=(0.5 0.475)

# 并行运行生产模拟
for temp in "${temperatures[@]}"; do
    config_file="../Inputs/n360/kalj_n360_T${temp}.lmp"
    mpirun lmp -var configfile $config_file -var id 1 -in ../Inputs/production_3d_binary.lmp &
done

# 等待所有并行任务完成
wait
