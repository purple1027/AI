age=int(input("나이는?"))
ticket=2000

if age>=65 :
  ticket=0

  print("나이:%d세"%age)
  print("입장료:%d원"%ticket)


if age>=61 :
  price=0 

elif 40<=age<=60 :
  price=1000

elif  30<=age<=39:
  price=1500

elif  20<=age<=39:
  price=2000

elif  10<=age<=19:
  price=2500



print(f"당신의 나이는(age)입니다")
print(f"입장료는 (ticket)입니다")




