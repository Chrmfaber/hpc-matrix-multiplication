library(ggplot2)
setwd("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/gcc/")
source('gcc_O1.R')
source('gcc_O2.R')
source('gcc_O3.R')
source('gcc_NoOpt.R')

# Line plot with multiple groups
ggplot(data=O3data, aes(x=V1, y=V2, col=TYPE)) + labs(x="Memory usage (kbytes)", y = "Mflop/s") +
  geom_line()+
  geom_point()
