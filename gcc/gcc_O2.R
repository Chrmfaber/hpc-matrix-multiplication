setwd("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/Data")
gcc_O2_kmn <- read.table("DataGccO2/O2kmn.dat", quote="\"", comment.char="")
gcc_O2_kmn$TYPE <-  "kmn"
gcc_O2_knm <- read.table("DataGccO2/O2knm.dat", quote="\"", comment.char="")
gcc_O2_knm$TYPE <-  "knm"
gcc_O2_mkn <- read.table("DataGccO2/O2mkn.dat", quote="\"", comment.char="")
gcc_O2_mkn$TYPE <-  "mkn"
gcc_O2_mnk <- read.table("DataGccO2/O2mnk.dat", quote="\"", comment.char="")
gcc_O2_mnk$TYPE <-  "mnk"
gcc_O2_nkm <- read.table("DataGccO2/O2nkm.dat", quote="\"", comment.char="")
gcc_O2_nkm$TYPE <-  "nkm"
gcc_O2_nmk <- read.table("DataGccO2/O2nmk.dat", quote="\"", comment.char="")
gcc_O2_nmk$TYPE <-  "nmk"
gcc_O2_nat <- read.table("DataGccO2/O2nat.dat", quote="\"", comment.char="")
gcc_O2_nat$TYPE <-  "nat"
gcc_O2_lib <- read.table("DataGccO2/O2lib.dat", quote="\"", comment.char="")
gcc_O2_lib$TYPE <-  "lib"
gcc_O2_blk <- read.table("DataGccO2/O2blk.dat", quote="\"", comment.char="")
gcc_O2_blk$TYPE <-  "blk"

gcc_O2_data_loop <- rbind(gcc_O2_kmn,gcc_O2_knm,gcc_O2_mkn,gcc_O2_mnk,gcc_O2_nkm,gcc_O2_nmk) 
gcc_O2_data_loop <- gcc_O2_data_loop[c(1:2,5)]
gcc_O2_data_lib_nat <- rbind(gcc_O2_lib,gcc_O2_nat)
gcc_O2_data_lib_nat <- gcc_O2_data_lib_nat[c(1:2,5)]
gcc_O2_data_blk <- gcc_O2_blk[c(1:2,5:6)]

library(gdata)
keep(gcc_O2_data_blk,gcc_O2_data_lib_nat,gcc_O2_data_loop,sure=TRUE)

