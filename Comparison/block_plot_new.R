blocking_dataFixed <- read.table("~/Google Drive/10.semester/02614 HPC/mkn_3way_order_blocking_smaller_block_sizesblk.dat", quote="\"", comment.char="")
dat <- blocking_dataFixed[c(1:2,5)]
str(dat)
dat$V1 <- as.numeric(dat$V1)
dat$V2 <- as.numeric(dat$V2)

dat <- dat[order(dat$V1),]
dat$V1 <- as.factor(dat$V1)

n=37
size = c(100,200,400,800,1600,3200)
dat$size_knm <- c(rep(size[1],n),rep(size[2],n),rep(size[3],n),rep(size[4],n),rep(size[5],n),rep(size[6],n))
dat$size_knm <- as.factor(dat$size_knm)

x <- c(36,206,906)
ggplot(data=dat, aes(x=V5, y=V2, col = size_knm)) + labs(x="Blocking size", y = "Mflop/s") +
  geom_line()+xlim(0,400)+geom_vline(xintercept = x, color = "black")+
  geom_point()+labs(colour = "Size knm")

ggplot(data=dat, aes(x=V5, y=V2, col = size_knm)) + labs(x="Blocking size", y = "Mflop/s") +
  geom_line()+geom_vline(xintercept = x, color = "black")+
  geom_point()+labs(colour = "Size knm")

