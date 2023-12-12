


y="abcd"
x="%s"%y # %c는 한 글자, %s 여러글자
print(x)

y=8
x="%o"%y #%o 8진수
print(x)

"""
name=input("이름을 입력하세요.:")
print("%s이름입니다"%name)


score=input("점수입력:")

#radius=(float)(input("반지름은?"))
#area=radius*radius*3.14
#print("%f 원넓이"%area)

name="홍지영"
print(name)

a=10
b=20
print(a,b,a-b,100,sep="")


print("문자열에는 문자 앞 뒤에 쌍따옴표(\")를 \n붙인다")

"""



stockName="삼성전자"
price=50000
number=10

print("%s 주식 %d주 총평가금액은 %d원 입니다" % (  stockName, number, price*number   ))

시가총액="298조"
현재가=50000
per=15.79

print("시가총액",  시가총액 , "\n", "현재가" , 현재가 , "\n", "per", per)


h="Hello"
p="python"

print(h+"!"+" "+p)

phone_number="010-888-9999"
print(phone_number[0:3],phone_number[4:7],phone_number[8:])
print(phone_number[0:3],phone_number[4:7],phone_number[8:], sep=(""))

url = "http://gmail.com"
print(url[-3:-1], url[-1], sep="")


lang = "java python"
lang=lang.replace("j","K")
print(lang)


string="abcdefABCDEFabc"
print(string.replace("c","!"))
print(string)


a="123"
b="456"

print(a+b)

print("Hi!"*5)

print("+"*150)


#s1 = "python"
#s2 = "c++"
#s3 = "java"
#s4= s1+s2+s3
#print=(s4*3)

name1 = "홍길동"
age1 = 25
eyesight1 = 1.2
name2 = "이순신"
age2= 13
eyesight2 = 0.8

total="5,896,124,650"
total=total.replace(","," ")
print(total)

날짜 = '2024/01(E) 1사분기'

print(날짜[0:7])

날짜 = '2024/01(E) 1사분기'
날짜=날짜.split("(")
print(날짜[0])

data = "      공백제거하기   "
data=data.strip()
print(f"공백제거한값은 {data}")

