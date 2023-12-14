#start=int(input("시작수는?"))
#end=int(input("끝 수는?"))
#num=int(input("정수를 입력하세요:"))

#result="%d은(는) %d~%d사이에 없다."%(num,start,end)

#if  start <= num <= end :
 # result="%d은(는) %d~%d사이에 있다." %(num,start,end)

#print(result)




#난수(규칙이 없는 수)를 구하기

#import random
#print(random.random())

#print(random.randrange(1, 7))
c=0
import random
thinkNumber= random.randrange(1,31)

result="정답입니다"
a1=int(input("답은?"))
while a1 != thinkNumber :  #정답을 찾을 때 까지

  if a1< thinkNumber :
    result= "답보다 큰 수 입니다."
    c+=1
  else :
   result="답보다 작은 수 입니다."
   c+=1
  print(f"{result}")
  a1=int(input("답은?"))

result="정답입니다"
print(f"{c}번만에 찾았습니다")
