complete <- function(directory, id = 1:332) {
  ## 'directory'  indicating location of the csv 
  ## indicating the monitor ID numbers
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  len<-length(id)
  comp<-data.frame(id=numeric(len),nobs=numeric(len)) # create the file that will hold the mean values
  data<-data.frame
    for(j in 1:len){  # start looping over the index
      
      filename<-paste(sprintf("%03d",id[j]),".csv",sep="")
      data<-read.csv(file=file.path(directory,filename),header=TRUE) #opening file
      monitor<-data[,2:3]# creates a data frame with just the 2 pollutant
      NitSulf<-monitor$sulfate+monitor$nitrate
      Nitsulfate<-complete.cases(NitSulf)
      NoNaSulfate<-complete.cases(monitor$sulfate)
      NoNaNitrate<-complete.cases(monitor$nitrate)
      #comp[j,"Sulf"]<-sum(NoNaSulfate)
      #comp[j,"Nit"]<-sum(NoNaNitrate)
      comp[j,"nobs"]<-sum(Nitsulfate)
      comp[j,"id"]<-id[j]
 
  }
 comp
}