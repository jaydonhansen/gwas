#!/bin/bash -l
#SBATCH --job-name=plink
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=64000   # memory (MB)
#SBATCH --time=0-2:00       # time (D-HH:MM)
#SBATCH -o slurm.%N.%j.out  # STDOUT
#SBATCH -e slurm.%N.%j.err  # STDERR

# partition
# SBATCH --partition=smp

/data/s4587568/plink \
    --bfile /data/s4587568/Results/data_subset_binary1 \
    --logistic \
    --1 \
    --covar /data/s4587568/Results/pca_binary1.eigenvec \
    --pheno /data/STAT3306/Phenotypes/Height_binary1.phen \
    --out /data/s4587568/Results/gwas_pheno_bin1_pc

/data/s4587568/plink \
    --bfile /data/s4587568/Results/data_subset_binary2 \
    --logistic \
    --1 \
    --covar /data/s4587568/Results/pca_binary2.eigenvec \
    --pheno /data/STAT3306/Phenotypes/Height_binary2.phen \
    --out /data/s4587568/Results/gwas_pheno_bin2_pc


