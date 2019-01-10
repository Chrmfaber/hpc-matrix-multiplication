setwd("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/Data")
Sun_O4_kmn <- read.table("DataSunO4/SunO4kmn.dat", quote="\"", comment.char="")
Sun_O4_kmn$TYPE <-  "kmn"
Sun_O4_knm <- read.table("DataSunO4/SunO4knm.dat", quote="\"", comment.char="")
Sun_O4_knm$TYPE <-  "knm"
Sun_O4_mkn <- read.table("DataSunO4/SunO4mkn.dat", quote="\"", comment.char="")
Sun_O4_mkn$TYPE <-  "mkn"
Sun_O4_mnk <- read.table("DataSunO4/SunO4mnk.dat", quote="\"", comment.char="")
Sun_O4_mnk$TYPE <-  "mnk"
Sun_O4_nkm <- read.table("DataSunO4/SunO4nkm.dat", quote="\"", comment.char="")
Sun_O4_nkm$TYPE <-  "nkm"
Sun_O4_nmk <- read.table("DataSunO4/SunO4nmk.dat", quote="\"", comment.char="")
Sun_O4_nmk$TYPE <-  "nmk"
Sun_O4_nat <- read.table("DataSunO4/SunO4nat.dat", quote="\"", comment.char="")
Sun_O4_nat$TYPE <-  "nat"
Sun_O4_lib <- read.table("DataSunO4/SunO4lib.dat", quote="\"", comment.char="")
Sun_O4_lib$TYPE <-  "lib"
Sun_O4_blk <- read.table("DataSunO4/SunO4blk.dat", quote="\"", comment.char="")
Sun_O4_blk$TYPE <-  "blk"

Sun_O4_data_loop <- rbind(Sun_O4_kmn,Sun_O4_knm,Sun_O4_mkn,Sun_O4_mnk,Sun_O4_nkm,Sun_O4_nmk) 
Sun_O4_data_loop <- Sun_O4_data_loop[c(1:2,5)]
Sun_O4_data_lib_nat <- rbind(Sun_O4_lib,Sun_O4_nat)
Sun_O4_data_lib_nat <- Sun_O4_data_lib_nat[c(1:2,5)]
Sun_O4_data_blk <- Sun_O4_blk[c(1:2,5:6)]

library(gdata)
keep(Sun_O4_data_blk,Sun_O4_data_lib_nat,Sun_O4_data_loop,sure=TRUE)
