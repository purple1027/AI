mydata<- iris[,1:4]
fit<- kmeans(x=mydata,centers = 3)
fit

fit$cluster
head(iris)

iris[107:127,]

fit$centers
fit$totss
fit$size


#군집 시각화

library(cluster)
clusplot(mydata, fit$cluster,color=T, shade = T, labels=2, lines = 1)

# 2번 군집 자료를 보기

subset(mydata, fit$cluster==2)

fit$size

subset(mydata, fit$cluster==3)
