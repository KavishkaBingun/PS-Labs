setwd("C:\\Users\\KAVISHKA\\Desktop\\PS labs\\Lab 07")
getwd()
nicotine<-read.table("Data - Lab 7.txt",header = TRUE,)
nicotine
fix(nicotine)
#Sampling distribution
#changing the data structure in horizontal way
nico<-nicotine[[1]]
nico

#Q01
mean(nico)#mean
var(nico)#variance
sd(nico)#standard deviation

#Q02
#Creating random sample with 5 data
s<-sample(nico,5)
s
#getting 30 samples of 5 data
samples<-c()
n<-c()

for(i in 1:30){
  s<-sample(nico,5)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
  
}

colnames(samples)<-n
samples

#sample mean
s.means<-colMeans(samples)
s.means

#sample variance
s.vars<-apply(samples, 2, var)
s.vars 

#Q03
mean(s.means)
var(s.means)

#Q04
mean(nico)
mean(s.means)
#these two values are approximately equal

#Q05
var(nico)
var(s.means)
#two values are not equal. because sample size is too small

#Probability distribution
##01##
#Q01
#binomial distribution

X ~ Bin(44,0,92)

#Q02
#take dbinom because in question asking direct value
dbinom(40,44,0.92)
?dbinom

#Q03
#take pbinom because it asking less thab or equal/grater than or equal
pbinom(35,44,0.92)

#Q04
#take pbinom because it asking at least 38
1 - pbinom(37,44,0.92)

#Q05
#Asking about range
pbinom(42,44,0.92) - pbinom(39,44,0.92)

##02##
#q01
dpois(6,4.5)

#q02



##03##
#q01
pexp(3,rate = 1/2)
  

#q02
pexp(4,rate = 1/2, lower.tail = FALSE)


#Q4
pexp(4,rate = 1/2) - pexp(2,rate = 1/2)


##04##
#q1
1-pnorm(37.9,36.8,0.4)
?pnorm

#q2
pnorm(36.9,36.8,0.4)-pnorm(36.4,36.8,0.4)
