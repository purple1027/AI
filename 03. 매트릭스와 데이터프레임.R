z <- matrix(1:30, nrow=5, ncol=6, byrow=T)
z

z1 <- matrix(101:200, nrow=10, ncol=10)
z1


x <- 1:5
y <- 8:12

x
y

sum.xy <- cbind(x,y)
sum.xy

sum.xy1 <- rbind(x,y)
sum.xy1

a <- 1:5
b <- 101:105
c <- 201:205

sum.abc <- cbind(a,b,c)
sum.abc

sum.abc1 <- rbind(a,b,c)
sum.abc1



a1 <- matrix(12:1, nrow=3, ncol=4, byrow=T)
a1

rownames(a1) <- c('v1','v1','v3')

a1


v1 <- 12:9
v2 <- 8:5
v3 <- 4:1
z1 <- rbind(v1,v2,v3)
z1


z1[2,4]
z1[3,2]

z1[v1]
z1[1,]
z1[,2]

z1[c(1,3),]
z1[,c(2,4)]

z1[,2:4]

score <- matrix(c(90,85,69,78,85,96,49,95,90,80,70,60),nrow=4, ncol=3)
score
rownames(score) <- c('John','Tom','Mark','Jane')
score
colnames(score) <- c('English','Math','Science')
score

score[2,2]
score[3,3]
score[4,3]
score['Jane','science']
score['Jane','Science']


score['Jane',"English"]
score['Tom']
score['Tom',]
score[,'Math']
mean(score[,'Math'])

rownames(score)
colnames(score)

rownames(score)[2]
colnames(score)[3]



#--------------------

test1 <- matrix(12:1, nrow=3, ncol=4, byrow=T)
test1

colnames(test1) <- c('a1','a1','a3','a4')
test1

rownames(test1) <- c('v1','v2','v3')

test1

test1[,4]


v4 <- c(1,3,5,7)
z <- rbind(z,v4)

city <- c('서울','도쿄','워싱턴')
rank <- c(1,3,2)
etc <- c(TRUE, TRUE, FALSE)
city.info <- data.frame(city,rank,etc)
city.info
city.info[2,'city']
city.info[1,'rank']
row.names(city.info)
colnames(city.info)

iris
head(iris, n=10)
tail(iris)

head(iris[,c(1:2)])
head(iris[,'Petal.Width'])

dim(iris)
nrow(iris)
str(iris)
iris[,5]
unique(iris[,5])
table(iris[,"Species"])


#---------------------------

#1
st <- data.frame(state.x77)

#2
st

#3
colnames(st)

#4
rownames(st)

#5
dim(st)

nrow(st)
ncol(st)
#6
dim(st)

#7

rowSums(st)
rowMeans(st)

#8

colSums(st)
colMeans(st)

#9

st['Florida',]

#10

st[ ,'Income']

st

#11

st['Texas','Area']

#12

st['Ohio',c('Population','Income')]

#13

subset(st,Population>=5000)
  
#14

subset(st,Income>=5000 [,c(Population,Income,Area])

#15
st

aa1<- subset(st,Income>=4500)

nrow(aa1)

#16
st
subset(st,Area>=100000 & Frost>=120)

#17

st
subset(st,Population<2000 & Murder<12)

#18

a <- matrix(1:20, nrow=4, ncol=5)
a
b <- matrix(21:40, 4,5)
b
a
2*a

b-5
a+b
b/a

class(iris)
class(state.x77)

class(islands)

is.matrix(iris)
is.data.frame(iris)

data.frame(state.x77)
class(st)

class (iris)

as.im<- as.matrix(iris[, -5])
as.im

class(iris)
class(state.x77)
head(state.x77)
state.x77[,'Area']

iris[ , 5 ]

state.x77[,8]

iris['Species']

iris$Petal.Width

name <- c("TOM","Jane","Nick")
age <- c(20,23,26)
gender <- c("M","F","M")
height <- c(180,160,175)
Student <- c(TRUE,TRUE,FALSE)

human <- data.frame(name,age,gender,height,Student)
human

new<- list(name="mary", age=14, gender="F", height=155, Student=TRUE)
human<- rbind(human, new)
human

str(human)
human


human$age
mean(human$age)


mean(human$age)
mean(human$height)

human
colnames(human [-4])

table(human$gender)


setwd("D:/AI/study folder/R study")
air <- read.csv('airquality.csv')
air

air <- read.csv('D:/AI/study folder/R study/airquality.csv')
air

air3 <- read.csv(file.choose())
air3

iris.setosa <- subset(iris, Species=='setosa')
write.csv(iris.setosa,'irisfilename.csv',)


