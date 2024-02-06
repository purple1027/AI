fav.color <- c(1,2,1,3,2,1,2,3,1)

ds2<- table(fav.color)
colors <-c('green','red','blue')

barplot(ds2,main="좋아하는 색깔",col = colors)

pie(ds2,main="좋아하는 색깔",col = colors)

weight <- c(60, 62, 64, 65, 68, 69)
weight.heavy <- c(weight,120)
weight
weight.heavy 
mean(weight)
mean(weight.heavy)
median(weight)
median(weight.heavy)
mean(weight, trim=0.2)
mean(weight.heavy,trim=0.2)


