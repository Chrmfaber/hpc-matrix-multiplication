setwd("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/Data")
gcc_O3_kmn <- read.table("DataGccO3/O3kmn.dat", quote="\"", comment.char="")
gcc_O3_kmn$TYPE <-  "kmn"
gcc_O3_knm <- read.table("DataGccO3/O3knm.dat", quote="\"", comment.char="")
gcc_O3_knm$TYPE <-  "knm"
gcc_O3_mkn <- read.table("DataGccO3/O3mkn.dat", quote="\"", comment.char="")
gcc_O3_mkn$TYPE <-  "mkn"
gcc_O3_mnk <- read.table("DataGccO3/O3mnk.dat", quote="\"", comment.char="")
gcc_O3_mnk$TYPE <-  "mnk"
gcc_O3_nkm <- read.table("DataGccO3/O3nkm.dat", quote="\"", comment.char="")
gcc_O3_nkm$TYPE <-  "nkm"
gcc_O3_nmk <- read.table("DataGccO3/O3nmk.dat", quote="\"", comment.char="")
gcc_O3_nmk$TYPE <-  "nmk"
gcc_O3_nat <- read.table("DataGccO3/O3nat.dat", quote="\"", comment.char="")
gcc_O3_nat$TYPE <-  "nat"
gcc_O3_lib <- read.table("DataGccO3/O3lib.dat", quote="\"", comment.char="")
gcc_O3_lib$TYPE <-  "lib"
gcc_O3_blk <- read.table("DataGccO3/O3blk.dat", quote="\"", comment.char="")
gcc_O3_blk$TYPE <-  "blk"

gcc_O3_data_loop <- rbind(gcc_O3_kmn,gcc_O3_knm,gcc_O3_mkn,gcc_O3_mnk,gcc_O3_nkm,gcc_O3_nmk) 
gcc_O3_data_loop <- gcc_O3_data_loop[c(1:2,5)]
gcc_O3_data_lib_nat <- rbind(gcc_O3_lib,gcc_O3_nat)
gcc_O3_data_lib_nat <- gcc_O3_data_lib_nat[c(1:2,5)]
gcc_O3_data_blk <- gcc_O3_blk[c(1:2,5)]

library(gdata)
keep(gcc_O3_data_blk,gcc_O3_data_lib_nat,gcc_O3_data_loop,sure=TRUE)
