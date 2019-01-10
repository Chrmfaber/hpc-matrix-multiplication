setwd("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/Data")
Sun_O2_kmn <- read.table("DataSunO2/SunO2kmn.dat", quote="\"", comment.char="")
Sun_O2_kmn$TYPE <-  "kmn"
Sun_O2_knm <- read.table("DataSunO2/SunO2knm.dat", quote="\"", comment.char="")
Sun_O2_knm$TYPE <-  "knm"
Sun_O2_mkn <- read.table("DataSunO2/SunO2mkn.dat", quote="\"", comment.char="")
Sun_O2_mkn$TYPE <-  "mkn"
Sun_O2_mnk <- read.table("DataSunO2/SunO2mnk.dat", quote="\"", comment.char="")
Sun_O2_mnk$TYPE <-  "mnk"
Sun_O2_nkm <- read.table("DataSunO2/SunO2nkm.dat", quote="\"", comment.char="")
Sun_O2_nkm$TYPE <-  "nkm"
Sun_O2_nmk <- read.table("DataSunO2/SunO2nmk.dat", quote="\"", comment.char="")
Sun_O2_nmk$TYPE <-  "nmk"
Sun_O2_nat <- read.table("DataSunO2/SunO2nat.dat", quote="\"", comment.char="")
Sun_O2_nat$TYPE <-  "nat"
Sun_O2_lib <- read.table("DataSunO2/SunO2lib.dat", quote="\"", comment.char="")
Sun_O2_lib$TYPE <-  "lib"
Sun_O2_blk <- read.table("DataSunO2/SunO2blk.dat", quote="\"", comment.char="")
Sun_O2_blk$TYPE <-  "blk"

Sun_O2_data_loop <- rbind(Sun_O2_kmn,Sun_O2_knm,Sun_O2_mkn,Sun_O2_mnk,Sun_O2_nkm,Sun_O2_nmk) 
Sun_O2_data_loop <- Sun_O2_data_loop[c(1:2,5)]
Sun_O2_data_lib_nat <- rbind(Sun_O2_lib,Sun_O2_nat)
Sun_O2_data_lib_nat <- Sun_O2_data_lib_nat[c(1:2,5)]
Sun_O2_data_blk <- Sun_O2_blk[c(1:2,5:6)]

library(gdata)
keep(Sun_O2_data_blk,Sun_O2_data_lib_nat,Sun_O2_data_loop,sure=TRUE)
