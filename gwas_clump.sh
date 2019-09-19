#!/bin/bash -l
#SBATCH --job-name=plink
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=64000   # memory (MB)
#SBATCH --time=0-2:00       # time (D-HH:MM)
#SBATCH -o slurm.%N.%j.out  # STDOUT
#SBATCH -e slurm.%N.%j.err  # STDERR

# partition
# SBATCH --partition=smp

/data/s4587568/plink \
    --bfile /data/s4587568/Results/data_subset \
    --clump /data/s4587568/Results/gwas_pheno_1_pc.assoc.linear \
    --clump-p1 0.5 --clump-p2 0.5 \
    --clump-r2 0.20 --clump-kb 500 \
    --out /data/s4587568/Results/gwas_pheno_1_clump
