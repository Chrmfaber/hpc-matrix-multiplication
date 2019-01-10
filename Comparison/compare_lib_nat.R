library(ggplot2)
setwd("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/gcc")
source('gcc_O3.R')

gcc_O3_data_lib = gcc_O3_data_lib_nat[which(gcc_O3_data_lib_nat$TYPE=="lib"),]
gcc_O3_data_nat = gcc_O3_data_lib_nat[which(gcc_O3_data_lib_nat$TYPE=="nat"),]
gcc_O3_data_lib$basic <- interaction( "O3", gcc_O3_data_lib$TYPE, sep = ":")
gcc_O3_data_nat$basic <- interaction( "O3", gcc_O3_data_nat$TYPE, sep = ":")
gcc_O3_data_lib$TYPE <- interaction( "gcc", gcc_O3_data_lib$basic, sep = ":")
gcc_O3_data_nat$TYPE <- interaction( "gcc", gcc_O3_data_nat$basic, sep = ":")

Sun_O5_data_lib = Sun_O5_data_lib_nat[which(Sun_O5_data_lib_nat$TYPE=="lib"),]
Sun_O5_data_nat = Sun_O5_data_lib_nat[which(Sun_O5_data_lib_nat$TYPE=="nat"),]
Sun_O5_data_lib$basic <- interaction( "O5", Sun_O5_data_lib$TYPE, sep = ":")
Sun_O5_data_nat$basic <- interaction( "O5", Sun_O5_data_nat$TYPE, sep = ":")
Sun_O5_data_lib$TYPE <- interaction( "sun", Sun_O5_data_lib$basic, sep = ":")
Sun_O5_data_nat$TYPE <- interaction( "sun", Sun_O5_data_nat$basic, sep = ":")

lib <- rbind(gcc_O3_data_lib,Sun_O5_data_lib)
nat <- rbind(gcc_O3_data_nat,Sun_O5_data_nat)

ggplot(data=nat, aes(x=V1, y=V2, col=TYPE)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+ylim(0,2500)+
  geom_point()+labs(colour = "Type")

ggplot(data=lib, aes(x=V1, y=V2, col=TYPE)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+ylim(0,15000)+
  geom_point()+labs(colour = "Type")
