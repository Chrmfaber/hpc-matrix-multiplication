setwd("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/Data")
Sun_O3_kmn <- read.table("DataSunO3/SunO3kmn.dat", quote="\"", comment.char="")
Sun_O3_kmn$TYPE <-  "kmn"
Sun_O3_knm <- read.table("DataSunO3/SunO3knm.dat", quote="\"", comment.char="")
Sun_O3_knm$TYPE <-  "knm"
Sun_O3_mkn <- read.table("DataSunO3/SunO3mkn.dat", quote="\"", comment.char="")
Sun_O3_mkn$TYPE <-  "mkn"
Sun_O3_mnk <- read.table("DataSunO3/SunO3mnk.dat", quote="\"", comment.char="")
Sun_O3_mnk$TYPE <-  "mnk"
Sun_O3_nkm <- read.table("DataSunO3/SunO3nkm.dat", quote="\"", comment.char="")
Sun_O3_nkm$TYPE <-  "nkm"
Sun_O3_nmk <- read.table("DataSunO3/SunO3nmk.dat", quote="\"", comment.char="")
Sun_O3_nmk$TYPE <-  "nmk"
Sun_O3_nat <- read.table("DataSunO3/SunO3nat.dat", quote="\"", comment.char="")
Sun_O3_nat$TYPE <-  "nat"
Sun_O3_lib <- read.table("DataSunO3/SunO3lib.dat", quote="\"", comment.char="")
Sun_O3_lib$TYPE <-  "lib"
Sun_O3_blk <- read.table("DataSunO3/SunO3blk.dat", quote="\"", comment.char="")
Sun_O3_blk$TYPE <-  "blk"

Sun_O3_data_loop <- rbind(Sun_O3_kmn,Sun_O3_knm,Sun_O3_mkn,Sun_O3_mnk,Sun_O3_nkm,Sun_O3_nmk) 
Sun_O3_data_loop <- Sun_O3_data_loop[c(1:2,5)]
Sun_O3_data_lib_nat <- rbind(Sun_O3_lib,Sun_O3_nat)
Sun_O3_data_lib_nat <- Sun_O3_data_lib_nat[c(1:2,5)]
Sun_O3_data_blk <- Sun_O3_blk[c(1:2,5:6)]

library(gdata)
keep(Sun_O3_data_blk,Sun_O3_data_lib_nat,Sun_O3_data_loop,sure=TRUE)
