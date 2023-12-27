"""

def func():
 
 x=200

func()
print(x) 

def func():
  x=200
  print(x)30

x=100
func()
print(x)

def func():
  global x
  x=200
  print(x)

x=100
func()
print(x)
"""
"""
s=    int(input("킬로미터를 입력하세요"))
def name( ss ):
    mile=ss*0.621371
    return mile
result = name( s )

print( "%d 키로미터는 %.2f 마일이다."%( s,result))

"""

"""
print("1. 더하기")
print("2. 빼기")
print("3. 곱하기")
print("4. 나누기")

a=int(input("원하는 연산을 선택하세요(1/2/3/4)"))
b=int(input("첫 번째 숫자를 입력하세요"))
c=int(input("두 번째 숫자를 입력하세요"))

def add(a,b):
  return a+b

def minus(a,b):
  return a-b

def ss(a,b):
  return a*b

def dd(a,b):
  return a/b

if a == 1 :
  r=add(b,c)

elif a == 2 :
  r=minus(b,c)

elif a == 3 :
  r=ss(b,c)

elif a == 4 :
  r=dd(b,c)  

print(b,c,r)

"""

"""
def alphaCount( word , aOne  ) :
    count = 0
    for  i in word : # "I am a Student"
        if i == aOne :
            count += 1
    return count

word = input( "영어문장을 입력하세요 ")  
aOne = input("알파벳 하나를 입력하세요 ")
count = alphaCount( word, aOne )
print( f"{word}에 포함된 {aOne}의 개수는 {count}이다.")

"""
"""
# 7-7

def tup1Sum(tup1) :
  sm=0
  for i in tup1:
     sm=sm+i  
  return sm
 
tup1=(10,20,30,40,50)
ss=tup1Sum(tup1)

print("튜플의 합계:%d"(ss))


def reverseFun(strVar):
   for i in range( len(strVar)-1, -1, -1):
     print(strVar [i], end="")



strVar=input("문자열을 입력하세요")
reverseFun(strVar)

"""

"""
#7-9

def b(s):
   s=s.replace(" ","-")
   return s

s=input("문자열을 입력하세요")

s=b(s)
print(s)
"""

#심화문제





