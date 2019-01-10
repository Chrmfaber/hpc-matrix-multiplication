setwd("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/Data")
gcc_NoOpt_kmn <- read.table("Data2GccNoOpt/O3kmn.dat", quote="\"", comment.char="")
gcc_NoOpt_kmn$TYPE <-  "kmn"
gcc_NoOpt_knm <- read.table("Data2GccNoOpt/O3knm.dat", quote="\"", comment.char="")
gcc_NoOpt_knm$TYPE <-  "knm"
gcc_NoOpt_mkn <- read.table("Data2GccNoOpt/O3mkn.dat", quote="\"", comment.char="")
gcc_NoOpt_mkn$TYPE <-  "mkn"
gcc_NoOpt_mnk <- read.table("Data2GccNoOpt/O3mnk.dat", quote="\"", comment.char="")
gcc_NoOpt_mnk$TYPE <-  "mnk"
gcc_NoOpt_nkm <- read.table("Data2GccNoOpt/O3nkm.dat", quote="\"", comment.char="")
gcc_NoOpt_nkm$TYPE <-  "nkm"
gcc_NoOpt_nmk <- read.table("Data2GccNoOpt/O3nmk.dat", quote="\"", comment.char="")
gcc_NoOpt_nmk$TYPE <-  "nmk"
gcc_NoOpt_nat <- read.table("Data2GccNoOpt/O3nat.dat", quote="\"", comment.char="")
gcc_NoOpt_nat$TYPE <-  "nat"
gcc_NoOpt_lib <- read.table("Data2GccNoOpt/O3lib.dat", quote="\"", comment.char="")
gcc_NoOpt_lib$TYPE <-  "lib"
gcc_NoOpt_blk <- read.table("Data2GccNoOpt/O3blk.dat", quote="\"", comment.char="")
gcc_NoOpt_blk$TYPE <-  "blk"

gcc_NoOpt_data_loop <- rbind(gcc_NoOpt_kmn,gcc_NoOpt_knm,gcc_NoOpt_mkn,gcc_NoOpt_mnk,gcc_NoOpt_nkm,gcc_NoOpt_nmk) 
gcc_NoOpt_data_loop <- gcc_NoOpt_data_loop[c(1:2,5)]
gcc_NoOpt_data_lib_nat <- rbind(gcc_NoOpt_lib,gcc_NoOpt_nat)
gcc_NoOpt_data_lib_nat <- gcc_NoOpt_data_lib_nat[c(1:2,5)]
gcc_NoOpt_data_blk <- gcc_NoOpt_blk[c(1:2,5:6)]

library(gdata)
keep(gcc_NoOpt_data_blk,gcc_NoOpt_data_lib_nat,gcc_NoOpt_data_loop,sure=TRUE)
