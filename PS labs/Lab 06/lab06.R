setwd("C:\\Users\\KAVISHKA\\Desktop\\PS labs\\Lab 06")
getwd()

#Q1
data1<-read.table("Forest.txt" , header = TRUE,sep = ",")
data1

fix(data1)

attach(data1)

#Q2
#Give the summery of the structure of the dataset
str(data1)

#Q3
#517 observations

#Q4
max(wind)
min(wind)

#Q5
#getting five number summery(min,max,q1,q2,q3)
summary(temp)

#Q6
boxplot(wind, horizontal = TRUE,outline = TRUE,pch=16)

#Q7
#negative skewed distribution

#Q8
median(temp)

#Q9
mean(wind)
summary(wind)
sd(wind)

#Q10
IQR(wind)

#Q11
#two way frequency table for day and variable
freq<-table(day,month)
freq

#Q12
#average is mean
mean(temp[month=="sep"])

#Q13
count<-table(day[month == "jul"])
names(count[count==max(count)])
