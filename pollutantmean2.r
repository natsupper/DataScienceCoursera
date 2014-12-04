pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is the location of the CSV files
  ## 'pollutant' is the name of the pollutant for which we will calculate the mean; 
  ## 'id' is an integer vector indicating the monitor ID numbers
  len<-length(id)
  means<-numeric(len)
    for (i in id){
      filename<-paste(sprintf("%03d",i),".csv",sep="")
      data<-read.csv(file=file.path(directory,filename),header=TRUE)
      
    }
  #mean_final<-mean(means)
  #mean_final
  means
  
}
            
           