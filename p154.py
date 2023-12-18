

   """

count=0

for i in range(200,800,1) :
  if i%5 !=0 :
    print("%d"%i,end="")
    count=count+1


  if count%10==0:
    print()


   """



for i in range(9, 0, -1):
  for j in range(0, i, 1):
    print(i, end=" ")
  print()


