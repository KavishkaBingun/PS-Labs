setwd("C:\\Users\\KAVISHKA\\Desktop\\PS labs\\Lab 04")
getwd()

#import the data set
data4<-read.table("DATA 4.txt",header = TRUE,sep = "")
data4

#data editing mode
fix(data4)

#Rename coloumn names
names(data4)<-c("Team","Attendence","Salary","Years")
data4

#accessing variables or coloumns directly without calling whole dataset
attach(data4)

#Boxplot
boxplot(Attendence,main="Boxplot for the attendance",outline = TRUE,xlab="Attendence",horizontal = TRUE)
boxplot(Salary,main="Boxplot for the Salary",outline = TRUE,xlab="Salary",horizontal = TRUE)
boxplot(Years,main="BoxPlot for the Years",outline = TRUE,xlab="Years",horizontal = TRUE)

#histogram
hist(Attendence,main = "Histogram for the attendance",ylab = "Frequency")
abline(h=0)
hist(Salary,main = "Histogram for the Salary",ylab = "Frequency")
abline(h=0)
hist(Years,main = "Histogram for the Years",ylab = "Frequency")
abline(h=0)

#stem-leaf
stem(Attendence)
stem(Salary)
stem(Years)

#mean
mean(Attendence)
mean(Salary)
mean(Years)

#median
median(Attendence)
median(Salary)
median(Years)

#standard deviation
sd(Attendence)
sd(Salary)
sd(Years)

#summery of all quantile values
summary(Attendence)

#quantile values
quantile(Attendence)

#3rd quantile of Attendance
quantile(Attendence)[2]

#IQR value 
IQR(Attendence)
IQR(Salary)
IQR(Years)

#creating a function to that accept argument years and give the mode
get.mode<-function(y){
  counts<-table(y)
  names(counts)[counts==max(counts)]
}

get.mode(Years)

#Q4
get.outliers<-function(z){
  q1<-quantile(z)[2]
  q3<-quantile(z)[4]
  iqr<-q3-q1
  ub<-q3+1.5*iqr
  lb<-q1-1.5*iqr
  print(paste("Upper Bound : " , ub))
  print(paste("Lower Bound : " , lb))
  print(paste("Outliers : " , paste(sort(z[z<lb|z>ub]),collapse = ",")))
}

get.outliers(Years)
get.outliers(Attendence)
get.outliers(Salary)



setwd("C:\\Users\\KAVISHKA\\Desktop\\PS labs\\Lab 04")
