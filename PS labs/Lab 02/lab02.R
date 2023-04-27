#Control statements

#If statements
x<-4
x

if(x>0){
  print("positive number")
}

#If-else statements
x<-5
y<- -2
x
y

if(y>0){
  print("positive number")
}else{
  print("Negative number")
}

#nested if statements
x<-0
x

if(x>0){
  print("positive number")
}else if(x<0){
  print("Negative number")
}else{
  print("Zero")
}

#loops
#While loop(1,2,3,4,5)
i<-1
while(i<6){
  print(i)
  i=i+1
}

#for loop(7,8,9)
for(i in 7:9){
  print(i)
}

for(x in 6:10){
  print(x)
}

getwd()
setwd("C:\\Users\\KAVISHKA\\Desktop\\PS labs\\Lab 02")
getwd()


#import csv file and text file
#Read data in a file
data1<-read.csv("DATA 2.csv")#read the csv file and store data in data1 variable
fix("data1")#data editor mode

data1


data2<-read.table("DATA 2.txt",header = TRUE, sep = ",")
fix("data2")
data2

#Write data in a file

getwd()

index<-c(1,2,3)
name<-c("Nimal","Kamal","Amal")
marks<-c(85,69,54)

dataframe1<-data.frame(index,name,marks)
dataframe1

write.csv(dataframe1,"dataframe.csv")
write.table(dataframe1,"dataframe.txt")

datanew<-read.csv("dataframe.csv")
datanew

#functions
#Creating a function
function_01<-function(a,b){
  y<-a+b
  print(y)
}

function_01(100,50)

quadRoots<-function(a,b,c){
  x1<-(-b+sqrt(b^2-4*a*c))/2*a
  x2<-(-b-sqrt(b^2-4*a*c))/2*a  
  print(x1)
  print(x2)
}

quadRoots(2,3,1)

getwd()

#Q04
#k=20

vec01<-c(1:20)

sum(vec01%%3==0)

#Q06
intvec<-c(25,78,96,35)
max=0
maxindex = 0

for(i in 1:length(intvec)){
  if(max<intvec[i]){
    max<-intvec[i]
    maxindex<-i
  }
}

maxindex

which.max(intvec)

#Q08
A<-0
fun01<-function(p,r,n){
  A<-p*(1+(r/100))^n
  print(A)
}

fun01(5000,11.5,2)

