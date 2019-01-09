O3kmn <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/O3kmn.dat", quote="\"", comment.char="")
O3kmn <- O3kmn[1:2]
O3kmn$TYPE = "kmn"

O3knm <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/O3knm.dat", quote="\"", comment.char="")
O3knm <- O3knm[1:2]
O3knm$TYPE = "knm"

O3nkm <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/O3nkm.dat", quote="\"", comment.char="")
O3nkm <- O3nkm[1:2]
O3nkm$TYPE = "nkm"

O3nmk <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/O3nmk.dat", quote="\"", comment.char="")
O3nmk <- O3nmk[1:2]
O3nmk$TYPE = "nmk"

O3mnk <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/O3mnk.dat", quote="\"", comment.char="")
O3mnk <- O3mnk[1:2]
O3mnk$TYPE = "mnk"

O3mkn <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/O3mkn.dat", quote="\"", comment.char="")
O3mkn <- O3mkn[1:2]
O3mkn$TYPE = "mkn"

O3lib <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/O3lib.dat", quote="\"", comment.char="")
O3lib <- O3lib[1:2]
O3lib$TYPE = "lib"

O3nat <- read.table("~/Google Drive/10.semester/02614 HPC/Assignment 1/GIT/O3nat.dat", quote="\"", comment.char="")
O3nat <- O3nat[1:2]
O3nat$TYPE = "nat"

O3data = rbind(O3knm,O3kmn,O3mkn,O3mnk,O3nkm,O3nmk)
O3data2 = rbind(O3nat,O3lib)