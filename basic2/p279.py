
"""
def func():
   x=10
   print(x)

func()


gx=200
def func2():
    gx=gx+300
    print(gx) 

func2()
print(gx)

gx=gx+300
print(gx)


def func3():
    global y
    y =300
    y=y-10
    print(y)

func3()
print(y)

y=y+20
print(y)

"""

#

def func5():
    global x
    x=200
    print(x)


x=100
print(x,"~~")
func5()
print(x,"~~~")


# 
def cir_area():
    global r
    result=r*r*3.14
    return result

def cir_length():
    result=2*3.14*r
    return result

r=10
area=cir_area()
length=cir_length()
print("원의 면적: %.1f, 원주의 길이 %.1f"%(area, length))





