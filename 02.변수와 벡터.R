2+3
2^3
10%%3
log(10)
log(10,base=2)
sqrt(4)
max(10,5,9)
abs(-90)
factorial(5)
sin(60)
tan(45)

pi=3.14
sin(pi/2)

pi<-3.14
pi

name <- '홍길동'
name


sqrt(-3)

25+99
456-123
2*(3+4)
(3+4*6)/7
(7-4)*3
210+35
12356%%7
184%%5
1976/24
16*25+186*5-67*22

pi <- 3.14
pi*10^2
pi*12^2
pi*15^2


log(sqrt(8),base=2)

log(sqrt(12),base=2)
log(sqrt(16),base=2)



x <- c(1,2,3)
x
y <- c("a","b","c")
y

rep(TRUE, times=20)

# (1)
d <- 100:200
d

# (4)
d <- seq(101,200,2)
d

# ()
d <-c(101:200)%%3
d

absent <- c(10,8,14,15,9,10,15,12,9,7,8,7)
absent

names(absent) <- c("JAN","FEB","MAR","APR","MAY","JUN","JUL","AUG","SEP","OCT","NOV","DEC")
absent

absent["MAY"]

absent[c("JUL","SEP")]

sum(absent[c("JAN","FEB","MAR","APR","MAY","JUN")])

mean(absent[c("JUL","AUG","SEP","OCT","NOV","DEC")])

#1
d1 <- 1:50
d1

d2 <- 51:100
d2

#2
length(d2)

#3
d1+d2
d2-d1
d1*d2
d2/d1

#4
sum(d1)
sum(d2)

#5
sum(d1,d2)

#6
max(d2)
min(d2)

#7
mean(d2)
mean(d1)
mean(d2)-mean(d1)

#8
sort(d1, decreasing = TRUE)


#9
sort(d1, decreasing = FALSE)
sort(d2, decreasing = FALSE)

d1[1:10]
d2[1:10]

d3=d1[1:10]+d2[1:10]
d3


#--------------10번 문제

v1 <- 51:90
v1

#1

v1[v1<60]

#2
length(v1[v1<70])

#3

v1[v1>65]

sum(v1[v1>65])

#4

v1[60<v1 & v1<73]

#5

v1[65>v1|v1>80]

#6

v1[v1%%7==3]

#7
v1[v1%%7==0] <- 0
v1

#8

