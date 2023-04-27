print(100:150)

#Get the current working directory
getwd()

#set the current working directory
setwd("C:/Users/KAVISHKA/Desktop/PS labs/Lab 01")
#setwd("C:\\Users\\KAVISHKA\\Desktop\\PS labs\\Lab 01")
getwd() 

#getting help
?solve #this gives R documentation of solve function
help("data.frame") #this gives R documentation of data frames

#install packages
install.packages("ggplot2")

#Scaler operators
50+20
1000-758 
50/2
20*6
4^2
4**2
51%%2

#logical operators
x=5
y=-4

x<y
x>y
x<=y
x==y
x!=y
x!
x!y  
!x
isTRUE(x==y)

#Assignment Operators
#local enviroment
a=5
a<-5

#global enviroment
a<<-5 #normally used in the functions



#vector
w<-c(1,2,3,4,5)#w is a name to the the vector(any name).c means the vector(key sign that define vector)
w
class(w)#This is a numeric vector

r<-c("a","b","c","d","e")
r
class(r)

#factor
gender<-c(1,0,1,0,0,0,1,1)#This is a vector
gender

Gender<-factor(gender,c(0,1),c("Male","Female"))#this is a factor
Gender

class(Gender)


#List
p<-c(1,2,3,4)#This is a vector
q<-"green"
r<-21

Data<-(list(p,q,r))#this is a list
Data

class(Data)


#Matrix
matrix1<-matrix(c(1,2,3,4),nrow = 2,ncol = 2,byrow = TRUE)
matrix1
class(matrix1)

matrix2<-matrix(c(1,2,3,4),nrow = 2,ncol = 2, byrow = FALSE)
matrix2
class(matrix2)


#Data Frame
height<-c(45,87,63,28)
weight<-c(25,78,56,39)

data_set<-data.frame(height, weight)
data_set$height

setwd("C:\\Users\\KAVISHKA\\Desktop\\PS labs\\Lab 01")
