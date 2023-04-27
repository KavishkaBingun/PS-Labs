setwd("C:\\Users\\KAVISHKA\\Desktop\\PS labs\\Lab 05")
getwd()

#import the dataset
data<-read.table("Data.txt",header = TRUE,sep = ",")
data
fix(data)

#rename the table header
names(data)<-c("X1","X2")

attach(data)

#Q01
hist(X2,main = "Histogram for no. of share holders")
abline(h=0)

#Q02
#n=no of classes(bars)
#length = n+1
histogram<-hist(X2,main ="Histogram for no. of share holders",breaks = seq(130,270,length=8),right = FALSE)

#Q03
#step 1 - identify the break points
breaks<-round(histogram$breaks)
breaks

#step 2 - identify the frequencies of each table
freaq<-histogram$counts
freaq

#step 3 - identify the mid points of each class
mid<-histogram$mids
mid

#creating empty vector
classes<-c()
#taking class intervels
for(i in 1:length(breaks)-1){
  classes[i]<-paste("[",breaks[i],",",breaks[i+1],"]")
}

cbind(Classes=classes,Frequency=freaq)

#Q04
#Draw in the same plot
lines(histogram$mids,freaq)

#Draw in a new plot
plot(mid,freaq,type = "l",main = "Frequency polygon for no. of share holders",xlab = "Share holders",ylab = "Freaquency",ylim = c(0,max(freaq)))
plot(mid,freaq,type = "o",main = "Frequency polygon for no. of share holders",xlab = "Share holders",ylab = "Freaquency",ylim = c(0,max(freaq)))
plot(mid,freaq,type = "p",main = "Frequency polygon for no. of share holders",xlab = "Share holders",ylab = "Freaquency",ylim = c(0,max(freaq)))

#Q05
#cumulative frequency
cum.freaq<-cumsum(freaq)
cum.freaq

#cumulative frequency polygon
#creating a empty vector
new<-c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freaq[i-1]
  }
  
}

plot(breaks,new,type = "o",main = "Cumulative frequency polygon for no. of share holders",xlab = "Share holders",ylab = "Cumulative frequency",ylim = c(0,max(cum.freaq)))

cbind(Upper=breaks,CumFreaquency=new)
