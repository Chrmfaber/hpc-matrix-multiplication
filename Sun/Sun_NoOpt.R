setwd("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/Data")
Sun_NoOpt_kmn <- read.table("DataSunNoOpt/SunNoOptkmn.dat", quote="\"", comment.char="")
Sun_NoOpt_kmn$TYPE <-  "kmn"
Sun_NoOpt_knm <- read.table("DataSunNoOpt/SunNoOptknm.dat", quote="\"", comment.char="")
Sun_NoOpt_knm$TYPE <-  "knm"
Sun_NoOpt_mkn <- read.table("DataSunNoOpt/SunNoOptmkn.dat", quote="\"", comment.char="")
Sun_NoOpt_mkn$TYPE <-  "mkn"
Sun_NoOpt_mnk <- read.table("DataSunNoOpt/SunNoOptmnk.dat", quote="\"", comment.char="")
Sun_NoOpt_mnk$TYPE <-  "mnk"
Sun_NoOpt_nkm <- read.table("DataSunNoOpt/SunNoOptnkm.dat", quote="\"", comment.char="")
Sun_NoOpt_nkm$TYPE <-  "nkm"
Sun_NoOpt_nmk <- read.table("DataSunNoOpt/SunNoOptnmk.dat", quote="\"", comment.char="")
Sun_NoOpt_nmk$TYPE <-  "nmk"
Sun_NoOpt_nat <- read.table("DataSunNoOpt/SunNoOptnat.dat", quote="\"", comment.char="")
Sun_NoOpt_nat$TYPE <-  "nat"
Sun_NoOpt_lib <- read.table("DataSunNoOpt/SunNoOptlib.dat", quote="\"", comment.char="")
Sun_NoOpt_lib$TYPE <-  "lib"
Sun_NoOpt_blk <- read.table("DataSunNoOpt/SunNoOptblk.dat", quote="\"", comment.char="")
Sun_NoOpt_blk$TYPE <-  "blk"

Sun_NoOpt_data_loop <- rbind(Sun_NoOpt_kmn,Sun_NoOpt_knm,Sun_NoOpt_mkn,Sun_NoOpt_mnk,Sun_NoOpt_nkm,Sun_NoOpt_nmk) 
Sun_NoOpt_data_loop <- Sun_NoOpt_data_loop[c(1:2,5)]
Sun_NoOpt_data_lib_nat <- rbind(Sun_NoOpt_lib,Sun_NoOpt_nat)
Sun_NoOpt_data_lib_nat <- Sun_NoOpt_data_lib_nat[c(1:2,5)]
Sun_NoOpt_data_blk <- Sun_NoOpt_blk[c(1:2,5)]
Sun_NoOpt_data_blk <- Sun_NoOpt_blk[c(1:2,5:6)]

library(gdata)
keep(Sun_NoOpt_data_blk,Sun_NoOpt_data_lib_nat,Sun_NoOpt_data_loop,sure=TRUE)
