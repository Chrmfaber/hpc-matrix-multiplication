setwd("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/Data")
Sun_O5_kmn <- read.table("DataSunO5/SunO5kmn.dat", quote="\"", comment.char="")
Sun_O5_kmn$TYPE <-  "kmn"
Sun_O5_knm <- read.table("DataSunO5/SunO5knm.dat", quote="\"", comment.char="")
Sun_O5_knm$TYPE <-  "knm"
Sun_O5_mkn <- read.table("DataSunO5/SunO5mkn.dat", quote="\"", comment.char="")
Sun_O5_mkn$TYPE <-  "mkn"
Sun_O5_mnk <- read.table("DataSunO5/SunO5mnk.dat", quote="\"", comment.char="")
Sun_O5_mnk$TYPE <-  "mnk"
Sun_O5_nkm <- read.table("DataSunO5/SunO5nkm.dat", quote="\"", comment.char="")
Sun_O5_nkm$TYPE <-  "nkm"
Sun_O5_nmk <- read.table("DataSunO5/SunO5nmk.dat", quote="\"", comment.char="")
Sun_O5_nmk$TYPE <-  "nmk"
Sun_O5_nat <- read.table("DataSunO5/SunO5nat.dat", quote="\"", comment.char="")
Sun_O5_nat$TYPE <-  "nat"
Sun_O5_lib <- read.table("DataSunO5/SunO5lib.dat", quote="\"", comment.char="")
Sun_O5_lib$TYPE <-  "lib"
Sun_O5_blk <- read.table("DataSunO5/SunO5blk.dat", quote="\"", comment.char="")
Sun_O5_blk$TYPE <-  "blk"

Sun_O5_data_loop <- rbind(Sun_O5_kmn,Sun_O5_knm,Sun_O5_mkn,Sun_O5_mnk,Sun_O5_nkm,Sun_O5_nmk) 
Sun_O5_data_loop <- Sun_O5_data_loop[c(1:2,5)]
Sun_O5_data_lib_nat <- rbind(Sun_O5_lib,Sun_O5_nat)
Sun_O5_data_lib_nat <- Sun_O5_data_lib_nat[c(1:2,5)]
Sun_O5_data_blk <- Sun_O5_blk[c(1:2,5:6)]

library(gdata)
keep(Sun_O5_data_blk,Sun_O5_data_lib_nat,Sun_O5_data_loop,sure=TRUE)
