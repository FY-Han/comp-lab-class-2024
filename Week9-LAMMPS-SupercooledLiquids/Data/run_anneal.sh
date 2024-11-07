#!/bin/bash
#SBATCH --job-name=anneal_job      # 作业名称
#SBATCH --output=anneal_output.log # 输出文件
#SBATCH --ntasks=20                # 总任务数
#SBATCH --cpus-per-task=1          # 每个任务的 CPU 数量
#SBATCH --time=2:00:00             # 最长运行时间

# 加载 LAMMPS
source /scratch/work/courses/CHEM-GA-2671-2024fa/software/lammps-gcc-30Oct2022/setup_lammps.bash

# 创建系统
mpirun lmp -var configfile ../Inputs/n360/kalj_n360_create.lmp -var id 1 -in ../Inputs/create_3d_binary.lmp

# 温度列表
temperatures=(1.5 1.0 0.9 0.8 0.7 0.65 0.6 0.55 0.5 0.475)

# 退火循环
for temp in "${temperatures[@]}"; do
    config_file="../Inputs/n360/kalj_n360_T${temp}.lmp"
    mpirun lmp -var configfile $config_file -var id 1 -in ../Inputs/anneal_3d_binary.lmp
done

