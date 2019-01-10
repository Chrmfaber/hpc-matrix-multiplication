library(ggplot2)
setwd("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/gcc")
source('gcc_O1.R')
source('gcc_O2.R')
source('gcc_O3.R')
source('gcc_NoOpt.R')

### BLOCK SIZE
gcc_O1_data_blk$V5 <- as.factor(gcc_O1_data_blk$V5)
gcc_O1_data_blk$size <- interaction( "O1", gcc_O1_data_blk$V5, sep = ":")
ggplot(data=gcc_O1_data_blk, aes(x=V1, y=V2, col=size)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Block size")

gcc_O2_data_blk$V5 <- as.factor(gcc_O2_data_blk$V5)
gcc_O2_data_blk$size <- interaction( "O2", gcc_O2_data_blk$V5, sep = ":")
ggplot(data=gcc_O2_data_blk, aes(x=V1, y=V2, col=size)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Block size")

gcc_O3_data_blk$V5 <- as.factor(gcc_O3_data_blk$V5)
gcc_O3_data_blk$size <- interaction( "O3", gcc_O3_data_blk$V5, sep = ":")
ggplot(data=gcc_O3_data_blk, aes(x=V1, y=V2, col=size)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Block size")

gcc_NoOpt_data_blk$V5 <- as.factor(gcc_NoOpt_data_blk$V5)
gcc_NoOpt_data_blk$size <- interaction( "NoOpt", gcc_NoOpt_data_blk$V5, sep = ":")
ggplot(data=gcc_NoOpt_data_blk, aes(x=V1, y=V2, col=size)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Block size")

#######################

### LOOPS
gcc_O1_data_loop$loop <- interaction( "O1", gcc_O1_data_loop$TYPE, sep = ":")
ggplot(data=gcc_O1_data_loop, aes(x=V1, y=V2, col=loop)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Loop order")

gcc_O2_data_loop$loop <- interaction( "O2", gcc_O2_data_loop$TYPE, sep = ":")
ggplot(data=gcc_O2_data_loop, aes(x=V1, y=V2, col=loop)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Loop order")

gcc_O3_data_loop$loop <- interaction( "O3", gcc_O3_data_loop$TYPE, sep = ":")
ggplot(data=gcc_O3_data_loop, aes(x=V1, y=V2, col=loop)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Loop order")

gcc_NoOpt_data_loop$loop <- interaction( "NoOpt", gcc_NoOpt_data_loop$TYPE, sep = ":")
ggplot(data=gcc_NoOpt_data_loop, aes(x=V1, y=V2, col=loop)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Loop order")

