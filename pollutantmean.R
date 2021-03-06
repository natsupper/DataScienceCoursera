pollutantmean<- function(directory, pollutant, id ) {
  ## 'directory' is the location of the CSV files
  ## 'pollutant' is the name of the pollutant for which we will calculate the mean; 
  ## 'id' is an integer vector indicating the monitor ID numbers
  len<-length(id)
  means<-numeric(len)# create the file that will hold the mean values
  
  for (i in 1:len){  # start looping over the index
    
    filename<-paste(sprintf("%03d",id[i]),".csv",sep="")
    data<-read.csv(file=file.path(directory,filename),header=TRUE) #opening file
    means[i]<-mean(data[,pollutant],na.rm=TRUE)
  }
  #mean_final<-mean(means,na.rm=TRUE)
  means
  #means
  
}


