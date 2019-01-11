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

##############################
gcc_O1_best1 <- gcc_O1_data_loop[which(gcc_O1_data_loop$TYPE=="kmn"),]
gcc_O1_best2 <- gcc_O1_data_loop[which(gcc_O1_data_loop$TYPE=="mkn"),]
gcc_O1_best <- rbind(gcc_O1_best1,gcc_O1_best2)
gcc_O1_best$TYPE <- interaction( "gcc:O1", gcc_O1_best$TYPE, sep = ":")

gcc_O2_best1 <- gcc_O2_data_loop[which(gcc_O2_data_loop$TYPE=="kmn"),]
gcc_O2_best2 <- gcc_O2_data_loop[which(gcc_O2_data_loop$TYPE=="mkn"),]
gcc_O2_best <- rbind(gcc_O2_best1,gcc_O2_best2)
gcc_O2_best$TYPE <- interaction( "gcc:O2", gcc_O2_best$TYPE, sep = ":")

gcc_O3_best1 <- gcc_O3_data_loop[which(gcc_O3_data_loop$TYPE=="kmn"),]
gcc_O3_best2 <- gcc_O3_data_loop[which(gcc_O3_data_loop$TYPE=="mkn"),]
gcc_O3_best <- rbind(gcc_O3_best1,gcc_O3_best2)
gcc_O3_best$TYPE <- interaction( "gcc:O3", gcc_O3_best$TYPE, sep = ":")

gcc_noopt_best1 <- gcc_NoOpt_data_loop[which(gcc_NoOpt_data_loop$TYPE=="kmn"),]
gcc_noopt_best2 <- gcc_NoOpt_data_loop[which(gcc_NoOpt_data_loop$TYPE=="mkn"),]
gcc_noopt_best <- rbind(gcc_noopt_best1,gcc_noopt_best2)
gcc_noopt_best$TYPE <- interaction( "gcc:NoOpt", gcc_noopt_best$TYPE, sep = ":")

best_gcc = rbind(gcc_O1_best,gcc_O2_best,gcc_O3_best,gcc_noopt_best)

ggplot(data=best_gcc, aes(x=V1, y=V2, col=TYPE)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "")

#########################

Sun_O1_best1 <- Sun_O1_data_loop[which(Sun_O1_data_loop$TYPE=="kmn"),]
Sun_O1_best2 <- Sun_O1_data_loop[which(Sun_O1_data_loop$TYPE=="mkn"),]
Sun_O1_best <- rbind(Sun_O1_best1,Sun_O1_best2)
Sun_O1_best$TYPE <- interaction( "Sun:O1", Sun_O1_best$TYPE, sep = ":")

Sun_O2_best1 <- Sun_O2_data_loop[which(Sun_O2_data_loop$TYPE=="kmn"),]
Sun_O2_best2 <- Sun_O2_data_loop[which(Sun_O2_data_loop$TYPE=="mkn"),]
Sun_O2_best <- rbind(Sun_O2_best1,Sun_O2_best2)
Sun_O2_best$TYPE <- interaction( "Sun:O2", Sun_O2_best$TYPE, sep = ":")

Sun_O3_best1 <- Sun_O3_data_loop[which(Sun_O3_data_loop$TYPE=="kmn"),]
Sun_O3_best2 <- Sun_O3_data_loop[which(Sun_O3_data_loop$TYPE=="mkn"),]
Sun_O3_best <- rbind(Sun_O3_best1,Sun_O3_best2)
Sun_O3_best$TYPE <- interaction( "Sun:O3", Sun_O3_best$TYPE, sep = ":")

Sun_O4_best1 <- Sun_O4_data_loop[which(Sun_O4_data_loop$TYPE=="kmn"),]
Sun_O4_best2 <- Sun_O4_data_loop[which(Sun_O4_data_loop$TYPE=="mkn"),]
Sun_O4_best <- rbind(Sun_O4_best1,Sun_O4_best2)
Sun_O4_best$TYPE <- interaction( "Sun:O4", Sun_O4_best$TYPE, sep = ":")

Sun_O5_best1 <- Sun_O5_data_loop[which(Sun_O5_data_loop$TYPE=="kmn"),]
Sun_O5_best2 <- Sun_O5_data_loop[which(Sun_O5_data_loop$TYPE=="mkn"),]
Sun_O5_best <- rbind(Sun_O5_best1,Sun_O5_best2)
Sun_O5_best$TYPE <- interaction( "Sun:O5", Sun_O5_best$TYPE, sep = ":")

Sun_noopt_best1 <- Sun_NoOpt_data_loop[which(Sun_NoOpt_data_loop$TYPE=="kmn"),]
Sun_noopt_best2 <- Sun_NoOpt_data_loop[which(Sun_NoOpt_data_loop$TYPE=="mkn"),]
Sun_noopt_best <- rbind(Sun_noopt_best1,Sun_noopt_best2)
Sun_noopt_best$TYPE <- interaction( "Sun:NoOpt", Sun_noopt_best$TYPE, sep = ":")

best_Sun = rbind(Sun_O1_best,Sun_O2_best,Sun_O3_best,Sun_O4_best,Sun_O5_best,Sun_noopt_best)

ggplot(data=best_Sun, aes(x=V1, y=V2, col=TYPE)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "")
