setwd("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/Data")
gcc_O1_kmn <- read.table("Data2GccO1/O1kmn.dat", quote="\"", comment.char="")
gcc_O1_kmn$TYPE <-  "kmn"
gcc_O1_knm <- read.table("Data2GccO1/O1knm.dat", quote="\"", comment.char="")
gcc_O1_knm$TYPE <-  "knm"
gcc_O1_mkn <- read.table("Data2GccO1/O1mkn.dat", quote="\"", comment.char="")
gcc_O1_mkn$TYPE <-  "mkn"
gcc_O1_mnk <- read.table("Data2GccO1/O1mnk.dat", quote="\"", comment.char="")
gcc_O1_mnk$TYPE <-  "mnk"
gcc_O1_nkm <- read.table("Data2GccO1/O1nkm.dat", quote="\"", comment.char="")
gcc_O1_nkm$TYPE <-  "nkm"
gcc_O1_nmk <- read.table("Data2GccO1/O1nmk.dat", quote="\"", comment.char="")
gcc_O1_nmk$TYPE <-  "nmk"
gcc_O1_nat <- read.table("Data2GccO1/O1nat.dat", quote="\"", comment.char="")
gcc_O1_nat$TYPE <-  "nat"
gcc_O1_lib <- read.table("Data2GccO1/O1lib.dat", quote="\"", comment.char="")
gcc_O1_lib$TYPE <-  "lib"
gcc_O1_blk <- read.table("Data2GccO1/O1blk.dat", quote="\"", comment.char="")
gcc_O1_blk$TYPE <-  "blk"

gcc_O1_data_loop <- rbind(gcc_O1_kmn,gcc_O1_knm,gcc_O1_mkn,gcc_O1_mnk,gcc_O1_nkm,gcc_O1_nmk) 
gcc_O1_data_loop <- gcc_O1_data_loop[c(1:2,5)]
gcc_O1_data_lib_nat <- rbind(gcc_O1_lib,gcc_O1_nat)
gcc_O1_data_lib_nat <- gcc_O1_data_lib_nat[c(1:2,5)]
gcc_O1_data_blk <- gcc_O1_blk[c(1:2,5)]

library(gdata)
keep(gcc_O1_data_blk,gcc_O1_data_lib_nat,gcc_O1_data_loop,sure=TRUE)
