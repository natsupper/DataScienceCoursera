data<-read.csv("hw1_data.csv",header=TRUE) ##read the data file 
Ozone<-data[,"Ozone"]                     ## get Ozone dta out
OzNoNa<-complete.cases(Ozone)
OzNum<-Ozone[OzNoNa]                         ##Only has the numerical value of Ozone
MeanOz<-mean(OzNum)
Ozone31<-Ozone>31
Temp<-data[,"Temp"]
Temp90<-Temp>90