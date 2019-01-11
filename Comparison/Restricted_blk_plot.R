gcc_RestrictFlags_mkn_order_blockingblk <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/DataFlagsRestrictBoth/gcc_RestrictFlags_mkn_order_blockingblk.dat", quote="\"", comment.char="")
gcc_RestrictFlags_mkn_order_blockingblk <- gcc_RestrictFlags_mkn_order_blockingblk[c(1:2,5)]

suncc_restrict_mkn_order_blockingblk <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/DataFlagRestrict/DataSunRestrictOfast/suncc_restrict_mkn_order_blockingblk.dat", quote="\"", comment.char="")
suncc_restrict_mkn_order_blockingblk <- suncc_restrict_mkn_order_blockingblk[c(1:2,5)]
suncc_restrict_mkn_order_blockingmkn <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/DataFlagRestrict/DataSunRestrictOfast/suncc_restrict_mkn_order_blockingmkn.dat", quote="\"", comment.char="")
suncc_restrict_mkn_order_blockingmkn <- suncc_restrict_mkn_order_blockingmkn[c(1:2)]

gcc_restrict_256<- gcc_RestrictFlags_mkn_order_blockingblk[which(gcc_RestrictFlags_mkn_order_blockingblk$V5==256),]
gcc_restrict_256$TYPE <- "gcc:block256"
sun_restrict_256<- suncc_restrict_mkn_order_blockingblk[which(suncc_restrict_mkn_order_blockingblk$V5==256),]
sun_restrict_256$TYPE <- "sun:block256"

gcc_restrict_mkn_order_blockingmkn <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/DataFlagRestrict/DataGccRestrictOfast/gcc_restrict_mkn_order_blockingmkn.dat", quote="\"", comment.char="")
gcc_restrict <- gcc_restrict_mkn_order_blockingmkn[c(1:2)]
gcc_restrict$TYPE <- "gcc"
gcc_restrict$V5 <- c(rep(0,17))

suncc_restrict_mkn_order_blockingmkn <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/DataFlagRestrict/DataSunRestrictOfast/suncc_restrict_mkn_order_blockingmkn.dat", quote="\"", comment.char="")
suncc_restrict <- suncc_restrict_mkn_order_blockingmkn[c(1:2)]
suncc_restrict$TYPE <- "sun"
suncc_restrict$V5 <- c(rep(0,17))

gcc_RestrictFlags_lib_order_blockinglib <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/DataLibFastest/gcc_RestrictFlags_lib_order_blockinglib.dat", quote="\"", comment.char="")
gcc_restrict_lib <- gcc_RestrictFlags_lib_order_blockinglib[c(1:2)]
gcc_restrict_lib$TYPE <- "lib"
gcc_restrict_lib$V5 <- c(rep(0,17))

res = rbind(sun_restrict_256,gcc_restrict_256,gcc_restrict,suncc_restrict,gcc_restrict_lib)

ggplot(data=res, aes(x=V1, y=V2, col=TYPE)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+ylim(0,15000)+
  geom_point()+labs(colour = "")
