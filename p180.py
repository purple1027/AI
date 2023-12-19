
fac=1
for i in range(1,11 ):
  fac = fac*1
print(fac)  


#심화문제


count=0
for i in range(1,1001):
  

    if count==10 :
      print()
      count==0 
    if i%3!=0 :    
      print(i, end=" ")
      count+=1

  
i=1
count=0

while i <=1000:
    if count ==10 :
       print()
       count=0
    if i %3 !=0:
       print (i, end="")
       count+=1
    i += 1

"""
con="y"
while con =="y":
  jumsu=int(input("성적을 입력하세요"))
  if 90<=jumsu<=100: 
     result="수"
  elif  80<=jumsu<=89: 
     result="우" 
  elif  70<=jumsu<=79: 
     result="미"
  elif  60<=jumsu<=69: 
     result="양"
  elif  0<=jumsu<=59: 
     result="가"   
  
  print(f"등급:{result}")

  con=input(input("계속하시겠습니까? (중단:q, 계속:y)"))

"""

start = int( input("시작 수를 입력해주세요:") )   
end = int(input("끝 수를 입력해주세요 :"))    
x=True #소수인 경우는 True로 아닌 경우 False로    
for i in range( start, end+1) : # start 30 end 80
    x = True
    for j in range( 2, i) : # 2~29까지 나누어 본다
        if i % j == 0 :
            x = False
            break # 한단계 반복문 밖으로 나간다. 즉 for j에서 밖으로 
    if x :
        print( i, end=" ")












