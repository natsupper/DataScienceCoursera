
above<-function(x,n=10){
use<-x > n
x[use]
}

Columnmean<-function(y,removeNA=TRUE) {
          nc<-ncol(y) ## find out # of columns in DF
          means<- numeric(nc) ## init the vector that ##will store the mean of each column
          for (i in 1:nc) {
                    means[i]<-mean(y[,i],na.rm=removeNA)
          }
          means
}

make.power<-function(n){
        pow<-function(x){
          x^n
        }
        pow
}


read<- function(directory,id){
  filename<-paste(sprintf("%03d",id),".csv",sep="")
  data<-read.csv(file=file.path(directory,filename),header=TRUE)
  data
}
cube<-make.power(3)
square<-make.power(2)

                                