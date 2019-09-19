#!/bin/bash -l
#SBATCH --job-name=plink
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=128000   # memory (MB)
#SBATCH --time=0-2:00       # time (D-HH:MM)
#SBATCH -o slurm.%N.%j.out  # STDOUT
#SBATCH -e slurm.%N.%j.err  # STDERR

# partition
# SBATCH --partition=smp

/data/s4587568/plink \
    --bfile /data/STAT3306/Data/test \
    --maf 0.01 \
    --geno 0.02 \
    --mind 0.05 \
    --hwe 0.0001 \
    --1 \
    --pheno /data/STAT3306/Phenotypes/Height_binary1.phen \
    --make-bed \
    --out Results/data_subset_binary1

