setwd("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/gcc")
source('gcc_O3.R')

gcc_O3_best1 <- gcc_O3_data_loop[which(gcc_O3_data_loop$TYPE=="kmn"),]
gcc_O3_best2 <- gcc_O3_data_loop[which(gcc_O3_data_loop$TYPE=="mkn"),]
gcc_O3_best <- rbind(gcc_O3_best1,gcc_O3_best2)
gcc_O3_best$TYPE <- interaction( "gcc:O3", gcc_O3_best$TYPE, sep = ":")

Sun_O5_best1 <- Sun_O5_data_loop[which(Sun_O5_data_loop$TYPE=="kmn"),]
Sun_O5_best2 <- Sun_O5_data_loop[which(Sun_O5_data_loop$TYPE=="mkn"),]
Sun_O5_best <- rbind(Sun_O5_best1,Sun_O5_best2)
Sun_O5_best$TYPE <- interaction( "sun:O5", Sun_O5_best$TYPE, sep = ":")

best = rbind(Sun_O5_best,gcc_O3_best)

ggplot(data=best, aes(x=V1, y=V2, col=TYPE)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "")
