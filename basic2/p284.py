
r=0 #전역변수
def printsum(sList):
    int=0 #지역변수
    
    global r #전역변수 r이라는 뜻
    r=0
    
    for s in sList:
       # r+=s
      
    return r

sList=[1,3,5,6,2]
print(printsum(sList))
print(r)




