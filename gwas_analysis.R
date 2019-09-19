quantitative <- read.table('/data/s4587568/Results/gwas_pheno_1_pc.assoc.linear', head=T)
binary1 <- read.table('/data/s4587568/Results/gwas_pheno_bin1_pc.assoc.logistic', head=T)
binary2 <- read.table('/data/s4587568/Results/gwas_pheno_bin2_pc.assoc.logistic', head=T)

print("Dims of quantitative:")
dim(quantitative)
print("Number of significant SNPs for quantitative:")
length(which(quantitative$"P" < 5e-8 & quantitative$"TEST" == "ADD"))

print("Dims of binary 1:")
dim(binary1)
print("Number of significant SNPs for binary 1:")
length(which(binary1$"P" < 5e-8 & binary1$"TEST" == "ADD"))

print("Dims of binary 2:")
dim(binary2)
print("Number of significant SNPs for binary 2:")
length(which(binary2$"P" < 5e-8 & binary2$"TEST" == "ADD"))

quanti_sig <- subset(quantitative, quantitative$"P" < 5e-8 & quantitative$"TEST" == "ADD")
write.table(quanti_sig, file="/data/s4587568/Results/quantitative_significant.txt", col.names=T)

bin1_sig <- subset(binary1, binary1$"P" < 5e-8 & binary1$"TEST" == "ADD")
write.table(bin1_sig, file="/data/s4587568/Results/binary1_significant.txt", col.names=T)

bin2_sig <- subset(binary2, binary2$"P" < 5e-8 & binary2$"TEST" == "ADD")
write.table(bin2_sig, file="/data/s4587568/Results/binary2_significant.txt", col.names=T)
