#!/bin/bash -l
#SBATCH --job-name=plink
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=28
#SBATCH --mem-per-cpu=4096   # memory (MB)
#SBATCH --time=0-2:00       # time (D-HH:MM)
#SBATCH -o slurm.%N.%j.out  # STDOUT
#SBATCH -e slurm.%N.%j.err  # STDERR

# partition
# SBATCH --partition=smp

/data/s4587568/plink \
    --bfile /data/s4587568/Results/data_subset_binary1 \
    --pca 10 \
    --out /data/s4587568/Results/pca_binary1

/data/s4587568/plink \
    --bfile /data/s4587568/Results/data_subset_binary2 \
    --pca 10 \
    --out /data/s4587568/Results/pca_binary2
