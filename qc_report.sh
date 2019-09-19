#!/bin/bash -l
#SBATCH --job-name=plink
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem-per-cpu=1000   # memory (MB)
#SBATCH --time=0-2:00       # time (D-HH:MM)
#SBATCH -o slurm.%N.%j.out  # STDOUT
#SBATCH -e slurm.%N.%j.err  # STDERR

# partition
# SBATCH --partition=smp

/data/s4587568/plink\
    --bfile /data/STAT3306/Data/test \
    --het \
    --out /data/s4587568/Results/plink
