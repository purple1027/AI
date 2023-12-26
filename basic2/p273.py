def inch_to_cm(inch):
  cm=inch*2.54
  return cm

num=25
result=inch_to_cm(num)
print("%d inch => %.2f cm"%(num,result))




#275p 

def tri_area(w,h):
   result=w*h*0.5
   return result


width=10
height=15
print("삼각형의 너비:",width)
print("삼각형의 높이:",height)
print("삼각형의 면적:",tri_area(width,height))

#276

def sum_besu(n):
  
  sum=0
  for i in range(1,101):
    if i%n==0:
       sum=sum+i

  return sum
besu=3
total=sum_besu(besu)
print("1~100 사이 %d의 배수의 합계:%d" %(besu,total))




