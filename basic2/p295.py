"""

x='A'
print(ord(x))

x=15
print(bin(x))
print(hex(x))

x=round(7.65678)
print(x)


x=max(10,9,-20)
print(x)

x=min([1,5,0,7])
print(x)

x=max((10,8,7,20))
print(x)

x=min({10,98,67,10})
print(x)

x=min({11:"a",0:"b",-1:"C"})
print(x)

x=min(['a','A','c'])
print(x)

#소수 여부 판별하기

def is_prime(n):
  prime=True
  if n>1:
     for i in range(2,n):
       if n&i==0:
         prime=False
         break
       
  return is_prime



number=int(input("수를 입력하세요") )
if is_prime(number):
    print("소수이다")
else:
    print("소수가 아니다")


"""


"""
#세제곱 합계 구하기


def square_sum(n):
  sm=0
  for i in range(1, n+1):
     sm=sm+i*i*i
  return sm     


n=int(input("n의 값을 입력하세요"))
print(square_sum(n))



"""


"""
#8-1

def square_sum(n):
   sm=0
   for i in range(1,n+1):
     sm=sm+(i*i*i) 
     print("%d*%d*%d""%(i,i,i), end="")
   
   if i==n:
      print("=",end="")
   else:
      print("+", end="")
   print(sm)

N=int(input("N의 값을 입력하세요:"))
square_sum(N)         
  
"""
"""
#회문

def is_palindrome(s):
 for i in range(9, int(len(s)/2)):
     if s[i]!=s[len(s)-i-1]:
         return False



 string="rotator"
 if is_palindrome(string):
    print("회문")
 else :
    print("회문이 아니다")
"""
"""
#문장 단어 반대로 하기

def reverse_sentence():
  words=sentence.split(" ")
  result=""
  for word in words:
    result=word+" "+result
  return result

sentence="Nice to meet you"
print(reverse_sentence(sentence))
"""
"""

def check_word(s,w):
  if(s.find(w)==-1):
      print("존재하지 않는다")
  else:
      print("존재한다")

string="A good book is a great friend"
word="friend"
check_word(string, word)


#print(string.find("is"))
#print(string.find("as"))

"""


"""
def count_word(s):
    arr=s.split(" ")
    return len(arr)

string=input("문장을 입력하세요:")

string="I am a student"
num_word= count_word(string)
print("단어의 개수:",num_word)


"""

"""

def del_word(s, w):
    arr=s.split(" ")
    arr.remove(w)
    result=" ".join(arr)


string="Don't cry beford you are the hurt"
word="the"
new_str=del_word(string,word)
print("변경된 문자열",new_str)

"""

"""
def binary_search(n,x):
   start=0
   end=len(n)-1
   while start<=end:
     mid=(start+end)/2
     if x==n[mid] : 
        return mid
     elif x>n[mid]:
        start=mid+1
     else:
        end=mid-1

   return-1

data=[7,16,23,35,40,52,68,78,82]
search_num=52
index=binary_search(data, search_num)
print(index)

"""



