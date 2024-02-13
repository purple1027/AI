#단순선형 회귀분석
#주행속도와 제동거리 사이의 회귀식 구하기

head(cars)
class(cars)
str(cars)
dim(cars)
plot(dist~speed, data=cars)

# 산점도에서 선형관계가 분명하다
# 주행속도가 증가할수록 제동거리도 증가한다.


model<- lm(dist~speed,cars)
model
abline(model)

coef(model)[1] 
coef(model)[2] 

# 속도가 30일때 제동거리는?

y <- 3.932409 *30-17.579
y


#속도가 50일때 제동거리는?

y2 <- 3.932409 *50-17.579
y2


#속도가 70일때 제동거리는

y3 <- 3.932409 *70-17.579
y3



#오차는 꼭 있다..인정하기...
#예상 제동거리, 실제 제동거리, 오차 구하기

head(cars)

speed <- cars[,1]
speed
w <- coef(model)[2]
b <- coef(model)[1] 

pred <- w*speed+b
pred


#예상 제동거리, 실제 제동거리, 오차 구하기를 데이터 프레임으로 만들기

compare <- data.frame(pred, cars[,2],pred- cars[,2])
compare

colnames(compare) <- c('예상제동거리','실제 제동거리','오차')
compare



# 문제 1: Loblolly 데이터셋에서 age를 이용해 height를 예측하는 단순선형 회귀모델을 만드시오. 
# 그리고 age가 10, 15, 20일 때 height를 예측하여 보시오.


head(Loblolly)
dim(Loblolly)
str(Loblolly)

# 종속변수는? (y) height / 독립변수 (x) age


plot(height~age,data=Loblolly, col='blue')
a<- lm(height~age,Loblolly )
abline(a)

b1<- coef(a)[1]

w1<- coef(a)[2]

w1*10+b1
w1*15+b1
w1*20+b1
 

# 2번 문제

head(airquality)


plot(Temp~Wind, data=airquality)
a1<- lm(Temp~Wind, airquality)
abline(a1)

b2 <- coef(a1)[1]
w2 <- coef(a1)[2]

w2*10+b2
w2*15+b2
w2*20+b2


# 문제 3

plot(pressure~temperature, data=pressure)
a2 <-lm (pressure~temperature, pressure)
abline(a2)

b3 <- coef(a2)[1]
w3 <- coef(a2)[2]

w3*65+b3
w3*95+b3
w3*155+b3
w3*350+b3
