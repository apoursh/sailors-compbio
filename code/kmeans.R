rm(list=ls())
library(ggplot2)
library(data.table)

#leukemia!
data=data.frame(read.table("leukemia_ALL_AML_matrix.txt",header=F,sep='\t'))
labels=data.frame(read.table("leukemia_ALL_AML_labels.txt",header=F,sep='\t'))
kc=kmeans(data,2)
table(labels$V1,kc$cluster)
plot(data[c("V2", "V3")], col=kc$cluster)
points(kc$centers[,c("V2", "V3")], col=1:2, pch=8, cex=2)

#browser() 


#lung cancer! 
data=data.frame(read.table("lung_normal_4tumors_matrix.txt",header=F,sep='\t'))
labels=data.frame(read.table("lung_normal_4tumors_labels.txt",header=F,sep='\t'))
kc=kmeans(data,5)
table(labels$V1,kc$cluster)
plot(data[c("V1", "V2")], col=kc$cluster)
points(kc$centers[,c("V1", "V2")], col=1:5, pch=8, cex=2)

#browser() 

#prostate
data=data.frame(read.table("prostate_normal_tumor_matrix.txt",header=F,sep='\t'))
labels=data.frame(read.table("prostate_normal_tumor_labels.txt",header=F,sep='\t'))
kc=kmeans(data,2)
table(labels$V1,kc$cluster)
plot(data[c("V1", "V2")], col=kc$cluster)
points(kc$centers[,c("V1", "V2")], col=1:2, pch=8, cex=2)

#browser() 

#Renal # THIS MIGHT BE TOO BIG OF A DATASET!!! 
data=data.frame(read.table("Renal_cell_carcinoma_Matrix.txt",header=F,sep='\t'))
labels=data.frame(read.table("Renal_cell_carcinoma_label-11.txt",header=F,sep='\t'))
kc=kmeans(data,2)
table(labels$V1,kc$cluster)
plot(data[c("V1", "V2")], col=kc$cluster)
points(kc$centers[,c("V1", "V2")], col=1:2, pch=8, cex=2)

#browser() 

#SRBCT # POOR PERFORMANCE!! 
data=data.frame(read.table("SRBCT_matrix.txt",header=F,sep='\t'))
labels=data.frame(read.table("SRBCT_labels.txt",header=F,sep='\t'))
kc=kmeans(data,4)
table(labels$V1,kc$cluster)
plot(data[c("V1", "V2")], col=kc$cluster)
points(kc$centers[,c("V1", "V2")], col=1:4, pch=8, cex=2)
