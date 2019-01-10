library(ggplot2)
blocking_dataFixed <- read.csv("C:/Users/ChristianMathias/Desktop/Git/HPC/hpc-matrix-multiplication/blocking_dataFixed.csv", header=FALSE, sep=";")
dat <- blocking_dataFixed
dat$V1 <- as.numeric(dat$V1)
dat$V2 <- as.numeric(dat$V2)
dat$V5 <- as.factor(dat$V5)
str(dat)

dat$size <- interaction( "O1", dat$V5, sep = ":")
ggplot(data=dat, aes(x=V1, y=V2, col=size)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Block size")



dat$loop <- interaction( "O1", dat$V5, sep = ":")
ggplot(data=dat, aes(x=V1, y=V2, col=loop)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Loop order")


interaction.plot(dat$V1, dat$V5, dat$V2)
