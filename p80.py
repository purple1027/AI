#kor=input("국어성적을 입력하세요")
#eng=input("영어성적을 입력하세요")
#math=input("수학성적을 입력하세요")


#name=input("당신의 이름은?")
#birth=int(input("당신이 태어난 해는?"))

#age=2023-birth+1
#print("%s님의 나이는 %d세 입니다"%(name,age))


#year=input("년은?")
#month=input("월은?")
#day=input("일은?")

#[print(year,month,day,sep="")]


width=1
height=2
length=width*2+height*2
area=width*height
print(f"사각형넓이 둘레는 {length}")
print(f"사각형넓이 넓이는 {area}")


if area>=100 :
   print("큰 사각형이네요")

else :
   print("작은 사각형이네요")


if 100<=area<=300 :
   print("큰 사각형이네요") 

elif 50<=area<=99 :
   print("중간 사각형이네요") 

elif 0<=area<=49 :
   print("작은 사각형이네요") 
