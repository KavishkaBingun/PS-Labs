setwd("C:\Users\KAVISHKA\Desktop\PS labs\Lab 03")




 getwd()
 setwd("C:\\Users\\KAVISHKA\\Desktop\\PS labs\\Lab 03")



data2<-read.table("DATA 3.txt",header = TRUE)
fix(data2)

names(data2)<-c("age","gender","accomodation")
fix(data2)


getwd()

datatable<-read.table("DATA 3.txt")
fix(datatable)

data$gender<-factor(data$gender,c(1,2),c("Male","Female"))

#creating frequency table
gender.freq<-table(gender)
acc.freq<-table(accomodation)
gender.freq
acc.freq

#pie charts
pie(gender.freq,"pie chart for gender")
pie(acc.freq,"pie chart for accomodation")

#barplot
barplot(gender.freq,main="Bar plot for gender",ylab="frequency")
abline(h=0)

#boxplot
boxplot(Age,main="Box plot for age",ylab="Age",outpch=8)

#Two-Way frequency table
gender_acc.freq<-table(gender,accomodation)
gender_acc.freq

#Stack bar charts
barplot(gender_acc.freq,main="bar chart for gender and accomadation",legend=rownames)
abline(h=0)