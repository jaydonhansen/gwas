#!/bin/bash -l
#SBATCH --job-name=r
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=4096   # memory (MB)
#SBATCH --time=0-2:00       # time (D-HH:MM)
#SBATCH -o slurm.%N.%j.out  # STDOUT
#SBATCH -e slurm.%N.%j.err  # STDERR

# partition
# SBATCH --partition=smp

module load R

Rscript /data/s4587568/scripts/lambda-gc.R
