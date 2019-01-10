setwd("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/Data")
Sun_O1_kmn <- read.table("DataSunO1/SunO1kmn.dat", quote="\"", comment.char="")
Sun_O1_kmn$TYPE <-  "kmn"
Sun_O1_knm <- read.table("DataSunO1/SunO1knm.dat", quote="\"", comment.char="")
Sun_O1_knm$TYPE <-  "knm"
Sun_O1_mkn <- read.table("DataSunO1/SunO1mkn.dat", quote="\"", comment.char="")
Sun_O1_mkn$TYPE <-  "mkn"
Sun_O1_mnk <- read.table("DataSunO1/SunO1mnk.dat", quote="\"", comment.char="")
Sun_O1_mnk$TYPE <-  "mnk"
Sun_O1_nkm <- read.table("DataSunO1/SunO1nkm.dat", quote="\"", comment.char="")
Sun_O1_nkm$TYPE <-  "nkm"
Sun_O1_nmk <- read.table("DataSunO1/SunO1nmk.dat", quote="\"", comment.char="")
Sun_O1_nmk$TYPE <-  "nmk"
Sun_O1_nat <- read.table("DataSunO1/SunO1nat.dat", quote="\"", comment.char="")
Sun_O1_nat$TYPE <-  "nat"
Sun_O1_lib <- read.table("DataSunO1/SunO1lib.dat", quote="\"", comment.char="")
Sun_O1_lib$TYPE <-  "lib"
Sun_O1_blk <- read.table("DataSunO1/SunO1blk.dat", quote="\"", comment.char="")
Sun_O1_blk$TYPE <-  "blk"

Sun_O1_data_loop <- rbind(Sun_O1_kmn,Sun_O1_knm,Sun_O1_mkn,Sun_O1_mnk,Sun_O1_nkm,Sun_O1_nmk) 
Sun_O1_data_loop <- Sun_O1_data_loop[c(1:2,5)]
Sun_O1_data_lib_nat <- rbind(Sun_O1_lib,Sun_O1_nat)
Sun_O1_data_lib_nat <- Sun_O1_data_lib_nat[c(1:2,5)]
Sun_O1_data_blk <- Sun_O1_blk[c(1:2,5:6)]

library(gdata)
keep(Sun_O1_data_blk,Sun_O1_data_lib_nat,Sun_O1_data_loop,sure=TRUE)
