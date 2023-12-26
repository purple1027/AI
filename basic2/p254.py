# 함수
# 용도는? 역할을 담당하는 것
# 사용법은? 만들기-호출해서 사용하기

def hello():
  print("Hi!")

def goodMorning():
  print("Good Morning")


goodMorning()

hello()

#사용자 정의 함수 = 프로그래머가 만들어주는 함수

def hi(name):
  print(f"안녕! {name}야")

hi("현희")
hi("길동")
hi("민수")

def height(name,height):
  print(f"나는 {name}야, 나는 키가 {height}야")

height("현희",160) 
height("길동",180) 
height("민수",170) 

def average(*args):
    num_args=len(args)
    sum=0
    for i in args :
       sum=sum+i
    avg=sum/num_args
    print(f"평균은 {avg}")


average(95,96,87)  
average(95,96,87,97,72)


#함수를 만들어보세요

def printAll(*str1) :

# 갯수를 구하세요
   
   s=" "
   for i in str1:
       s=s+i
   print(s)



printAll("a","b")
printAll("a","b","c")
printAll("a","b","c","d")


def func(food):
    food. append("귤")
    print(food)


#fruits=[사과, 오렌지, 바나나, 사과]

function(fruits)


#튜플 - 리스트와 동일한데 수정이 안됨. 변경하면 안되는 것 이곳에 저장하기

def tD(tDP):
    for i in tDP : 
      print(i)

tupleData=("삼성","LG","세스코")

tD(tupleData)


# 딕셔너리 자바 =맵

def dicF(dicData) :
  dicData[4]='d'
  print(dicData)

dictData={1:"a",2:"b",3:"c"}
dicF(dicData)


def returnSum(n1,n2,n3):
  s=n1+n2+n3
  return s
 
ss=returnSum(10,20,30)
return(ss)

#반지름 10을 이용행서 원의 넓이를 구하는 함수를 만드세요.

circleArea=returnArea(100,30)


