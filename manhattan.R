library(qqman)
data <- read.table('/data/s4587568/Results/gwas_pheno_1_pc.assoc.linear', head=T)
data_binary1 <- read.table('/data/s4587568/Results/gwas_pheno_bin1_pc.assoc.logistic', head=T)
data_binary2 <- read.table('/data/s4587568/Results/gwas_pheno_bin2_pc.assoc.logistic', head=T)

png('/home/s4587568/manhattan_gwas_no_pc.png', height=1000, width=1000)
    manhattan(data)
dev.off()

png('/home/s4587568/qq_gwas_no_pc.png', height=1000, width=1000)
    qq(data$P)
dev.off()

png('/home/s4587568/manhattan_gwas_binary1.png', height=1000, width=1000)
    manhattan(data_binary1)
dev.off()

png('/home/s4587568/qq_gwas_binary1.png', height=1000, width=1000)
    qq(data_binary1$P)
dev.off()

png('/home/s4587568/manhattan_gwas_binary2.png', height=1000, width=1000)
    manhattan(data_binary1)
dev.off()

png('/home/s4587568/qq_gwas_binary2.png', height=1000, width=1000)
    qq(data_binary2$P)
dev.off()
