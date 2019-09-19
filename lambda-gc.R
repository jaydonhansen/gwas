d_quant <- read.table('/data/s4587568/Results/gwas_pheno_1_pc.assoc.linear', head=T)
d_quant_subset <- d_quant[which(d_quant$TEST == "ADD"),]
lambda_gc <- qchisq(1 - median(d_quant_subset$P), 1) / qchisq(0.5, 1)

d_bin1 <- read.table('/data/s4587568/Results/gwas_pheno_bin1_pc.assoc.logistic', head=T)
d_bin1_subset <- d_bin1[which(d_bin1$TEST == "ADD"),]
lambda_gc_bin1 <- qchisq(1 - median(d_bin1_subset$P), 1) / qchisq(0.5, 1)

d_bin2 <- read.table('/data/s4587568/Results/gwas_pheno_bin2_pc.assoc.logistic', head=T)
d_bin2_subset <- d_bin2[which(d_bin2$TEST == "ADD"),]
lambda_gc_bin2 <- qchisq(1 - median(d_bin2_subset$P), 1) / qchisq(0.5, 1)

lambda_gc
lambda_gc_bin1
lambda_gc_bin2
