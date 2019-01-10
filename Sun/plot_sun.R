library(ggplot2)
setwd("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/Sun")
source('Sun_O1.R')
source('Sun_O2.R')
source('Sun_O3.R')
source('Sun_O4.R')
source('Sun_O5.R')
source('Sun_NoOpt.R')

### BLOCK SIZE
Sun_O1_data_blk$V5 <- as.factor(Sun_O1_data_blk$V5)
Sun_O1_data_blk$size <- interaction( "O1", Sun_O1_data_blk$V5, sep = ":")
ggplot(data=Sun_O1_data_blk, aes(x=V1, y=V2, col=size)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Block size")

Sun_O2_data_blk$V5 <- as.factor(Sun_O2_data_blk$V5)
Sun_O2_data_blk$size <- interaction( "O2", Sun_O2_data_blk$V5, sep = ":")
ggplot(data=Sun_O2_data_blk, aes(x=V1, y=V2, col=size)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Block size")

Sun_O3_data_blk$V5 <- as.factor(Sun_O3_data_blk$V5)
Sun_O3_data_blk$size <- interaction( "O3", Sun_O3_data_blk$V5, sep = ":")
ggplot(data=Sun_O3_data_blk, aes(x=V1, y=V2, col=size)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Block size")

Sun_O4_data_blk$V5 <- as.factor(Sun_O4_data_blk$V5)
Sun_O4_data_blk$size <- interaction( "O4", Sun_O4_data_blk$V5, sep = ":")
ggplot(data=Sun_O4_data_blk, aes(x=V1, y=V2, col=size)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Block size")

Sun_O5_data_blk$V5 <- as.factor(Sun_O5_data_blk$V5)
Sun_O5_data_blk$size <- interaction( "O5", Sun_O5_data_blk$V5, sep = ":")
ggplot(data=Sun_O5_data_blk, aes(x=V1, y=V2, col=size)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Block size")

Sun_NoOpt_data_blk$V5 <- as.factor(Sun_NoOpt_data_blk$V5)
Sun_NoOpt_data_blk$size <- interaction( "NoOpt", Sun_NoOpt_data_blk$V5, sep = ":")
ggplot(data=Sun_NoOpt_data_blk, aes(x=V1, y=V2, col=size)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Block size")

#######################

### LOOPS
Sun_O1_data_loop$loop <- interaction( "O1", Sun_O1_data_loop$TYPE, sep = ":")
ggplot(data=Sun_O1_data_loop, aes(x=V1, y=V2, col=loop)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Loop order")

Sun_O2_data_loop$loop <- interaction( "O2", Sun_O2_data_loop$TYPE, sep = ":")
ggplot(data=Sun_O2_data_loop, aes(x=V1, y=V2, col=loop)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Loop order")

Sun_O3_data_loop$loop <- interaction( "O3", Sun_O3_data_loop$TYPE, sep = ":")
ggplot(data=Sun_O3_data_loop, aes(x=V1, y=V2, col=loop)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Loop order")

Sun_O4_data_loop$loop <- interaction( "O4", Sun_O4_data_loop$TYPE, sep = ":")
ggplot(data=Sun_O4_data_loop, aes(x=V1, y=V2, col=loop)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Loop order")

Sun_O5_data_loop$loop <- interaction( "O5", Sun_O5_data_loop$TYPE, sep = ":")
ggplot(data=Sun_O5_data_loop, aes(x=V1, y=V2, col=loop)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Loop order")

Sun_NoOpt_data_loop$loop <- interaction( "NoOpt", Sun_NoOpt_data_loop$TYPE, sep = ":")
ggplot(data=Sun_NoOpt_data_loop, aes(x=V1, y=V2, col=loop)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Loop order")

##LIB NAT

Sun_O1_data_lib_nat$basic <- interaction( "O1", Sun_O1_data_lib_nat$TYPE, sep = ":")
ggplot(data=Sun_O1_data_lib_nat, aes(x=V1, y=V2, col=basic)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "")

Sun_O2_data_lib_nat$basic <- interaction( "O2", Sun_O2_data_lib_nat$TYPE, sep = ":")
ggplot(data=Sun_O2_data_lib_nat, aes(x=V1, y=V2, col=basic)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "")

Sun_O3_data_lib_nat$basic <- interaction( "O3", Sun_O3_data_lib_nat$TYPE, sep = ":")
ggplot(data=Sun_O3_data_lib_nat, aes(x=V1, y=V2, col=basic)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "")

Sun_NoOpt_data_lib_nat$basic <- interaction( "NoOpt", Sun_NoOpt_data_lib_nat$TYPE, sep = ":")
ggplot(data=Sun_NoOpt_data_lib_nat, aes(x=V1, y=V2, col=basic)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "")
