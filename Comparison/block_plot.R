library(ggplot2)
blocking_dataFixed <- read.csv("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/blocking_dataFixedCopy.csv", header=FALSE, sep=";")
dat <- blocking_dataFixed[c(1:2,5)]

dat$V1 <- gsub('\\.','', dat$V1)
dat$V2 <- gsub('\\,','.', dat$V2)

dat$V1 <- as.numeric(dat$V1)
dat$V2 <- as.numeric(dat$V2)

dat <- dat[order(dat$V1),]

n=21
size = c(10,50,100,200,400,600,800,1000,1200,1400,1600,1800,2000,2500,3000,3500,4000)
dat$size_knm <- c(rep(size[1],n),rep(size[2],n),rep(size[3],n),rep(size[4],n),rep(size[5],n),rep(size[6],n),rep(size[7],n),rep(size[8],n),rep(size[9],n),rep(size[10],n),rep(size[11],n),rep(size[12],n),rep(size[13],n),rep(size[14],n),rep(size[15],n),rep(size[16],n),rep(size[17],n))
dat$size_knm <- as.factor(dat$size_knm)

ggplot(data=dat, aes(x=V5, y=V2, col = size_knm)) + labs(x="Blocking size", y = "Mflop/s") +
  geom_line()+
  geom_point()+labs(colour = "Size knm")


interaction.plot(dat$V1, dat$V5, dat$V2)
