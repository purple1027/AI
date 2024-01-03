import time

seconds=time.time()
print(seconds)


tm=time.gmtime()
print(tm)

#타임스템프를 가지고 그리니치 표준시 구하기

tm=time.gmtime(seconds)
print(tm)



# localtime (윈도우 운영체제에서 세팅한 나라는) 현재 시간을 얻는데 사용한다

tm=time.localtime(seconds)
print(tm)

string=time.ctime(seconds)
print(string)

tm=time.localtime(time.time())
sf=time.strftime("%Y년 %m월 %d일 %A %I시 %M분 %S초 %p")
print(sf)


print("시작")
time.sleep(1) #잠시 멈추기 기능
print("끝")


