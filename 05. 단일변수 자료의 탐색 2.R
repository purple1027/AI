mydata <- c(60, 62, 64, 65, 68, 69, 120)
quantile(mydata, (0:10)/10)
summary(mydata)

var(mydata)
sd(mydata)
range(mydata)
diff(range(mydata))

hist(mydata)
hist(mydata, main='점수',xlab='점수', ylab = '갯수',border='blue', col = 'red', las=1, breaks=6)

head(cars)
class(cars)
dim(cars)
str(cars)

dist<- cars[,2]
dist

hist(dist)
speed <- cars[,1]

speed

hist(speed, main = '자동차속도')
barplot(speed)

head(iris)
unique(iris$Species)
boxplot(Petal.Length=Species,data=iris)

#1. R에서 제공하는 esoph 데이터셋에 대해 다음 문제를 해결하기 위한 R 코드를 작성하시오.

#(1) esoph 데이터셋의 tobgp 열(column)에는 각 사람이 하루에 섭취하는 담배 소비량이 범주형 자료 형태로 저장되어 있다. esoph 데이터셋의 tobgp열의 값을 잘라내어 tabaco에 저장한 후, tabaco의 값을 출력하시오. 

tabaco <- esoph$tobgp

#(2) tabaco에 있는 값들의 중복을 제거하고 출력하시오. 
unique(tabaco)
tabaco
#(3) tabaco에 있는 값들에 대해 도수분포표를 작성하여 출력하시오. 
table(tabaco)

#(4) tabaco에 있는 값들에 대해 막대그래프를 작성하여 출력하시오. 

barplot(table(tabaco))

result=c('P','P','F','P','F','P','F','P','P','F')
table(result)
barplot(table(result))
pie(table(result))

season=c('여름','겨울','봄','가을','여름','가을','겨울','여름','여름','가을')
table(season)
barplot(table(season))
pie(table(season))




score=c(90,85,73,80,85,65,78,50,68,96)
names(score) <- c('kor','eng','ath','hist','soc','music','bio','earth','phy','art')
score
mean(score)
median(score)
sd(score)
names(score [score==max(score)])
boxplot(score)
boxplot.stats(score)

hist(score,main='학생성적',col='purple')

head(mtcars)
mean(mtcars$wt)
median(mtcars$wt)
mean(mtcars$wt,trim=0.15)     
sd(mtcars$wt)


summary(mtcars$wt)


head(trees)
  
mean(trees$Girth)   
median(trees$Girth)
mean(trees$Girth, trim = 0.15)       
sd(trees$Girth)


hist(trees$Girth)
boxplot(trees$Girth)

mean(trees$Height)
median(trees$Height)
mean(trees$Height, trim=0.15)

hist(trees$Height)
boxplot(trees$Height)


head(Orange)
mean(Orange$age)
median(Orange$age)
mean(Orange$age, trim = 0.15)
sd(Orange$age)
hist(Orange$age)
boxplot(Orange$age~Tree, data=Orange)

idx <- !(Orange$Tree==2)
idx
Orange$circumference[idx]
