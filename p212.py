numbers=[ [10,20,30], [40,50,60], [60,70,80], ['a',[100,90]]]

print(numbers[0][0])
print(numbers[1][2])
print(numbers[2][2])

print(numbers[3][1][0])

board=[ [1,"작성자1","내용1"],[2,"작성자2","내용2"],[3,"작성자3","내용3"]]

"""       
for i in range(0,len(boards))
  for j in range(0, len(boards[i])):
     print(board[i][j], end=" ")
     print
"""
"""
jumsu=[[10,20], [30,40,50], [60]]
for i in range(0,len(jumsu)):
  for j in range(0,len(jumsu[i]))
    print(jumsu[i][j], end=" ")

"""

jumsu=[[10,20], [30,40,50], [60]]
print(sum(jumsu[0]))
print(sum(jumsu[1]))

sm=sum(jumsu[0])+sum(jumsu[1])+sum(jumsu[2])
print(sm)

sm=0
for i in range(0, len(jumsu)):
  sm+=sum(jumsu[i])

print(sm)

# 217쪽

strings=[["원두커피", "라떼", "콜라"],["우동","국수","피자","파스타"]]

print(strings[1][1])

strings[1].remove("피자")
strings[1].remove("파스타")




seats = [[ 0,0,0,0,0,0,0,0,0,0],\
         [ 0,0,0,0,0,0,0,0,0,0],\
         [ 0,0,0,0,0,0,0,0,0,0],\
         [ 0,0,0,0,0,0,0,0,0,0],\
         [ 0,0,0,0,0,0,0,0,0,0],\
         [ 0,0,0,0,0,0,0,0,0,0],\
         [ 0,0,0,0,0,0,0,0,0,0],\
         [ 0,0,0,0,0,0,0,0,0,0]]

for i in  range( 0, len( seats )):
    print("%d행"%i, end=" ")
    for j in  range( 0, len( seats[i] )):
        if seats[i][j] == 0:
            print("%3s" % "□", end="")
    print()
row = int(input("좌석예약하기 행을 입력하기"))
colum =  int(input("좌석예약하기 열을 입력하기"))
seats[ row ][colum ] = 1

for i in  range( 0, len( seats )):
    print("%d행"%i, end=" ")
    for j in  range( 0, len( seats[i] )):
        if seats[i][j] == 0:
            print("%3s" % "□", end="")
        else :
            print("%3s" % "■", end="")    
    print()
