gcc_restrict_mkn_order_blockingblk <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/DataFlagRestrict/DataGccRestrictOfast/gcc_restrict_mkn_order_blockingblk.dat", quote="\"", comment.char="")
gcc_restrict_mkn_order_blockingblk <- gcc_restrict_mkn_order_blockingblk[c(1:2,5)]
gcc_restrict_mkn_order_blockingmkn <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/DataFlagRestrict/DataGccRestrictOfast/gcc_restrict_mkn_order_blockingmkn.dat", quote="\"", comment.char="")
gcc_restrict_mkn_order_blockingmkn <- gcc_restrict_mkn_order_blockingmkn[c(1:2)]

suncc_restrict_mkn_order_blockingblk <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/DataFlagRestrict/DataSunRestrictOfast/suncc_restrict_mkn_order_blockingblk.dat", quote="\"", comment.char="")
suncc_restrict_mkn_order_blockingblk <- suncc_restrict_mkn_order_blockingblk[c(1:2,5)]
suncc_restrict_mkn_order_blockingmkn <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/DataFlagRestrict/DataSunRestrictOfast/suncc_restrict_mkn_order_blockingmkn.dat", quote="\"", comment.char="")
suncc_restrict_mkn_order_blockingmkn <- suncc_restrict_mkn_order_blockingmkn[c(1:2)]

gcc_restrict_256<- gcc_restrict_mkn_order_blockingblk[which(gcc_restrict_mkn_order_blockingblk$V5==256),]
sun_restrict_256<- suncc_restrict_mkn_order_blockingblk[which(suncc_restrict_mkn_order_blockingblk$V5==256),]
