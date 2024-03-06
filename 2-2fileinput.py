
import cv2 as cv

import sys

img=cv.imread('soccer.jpg')

if img is None:
    sys.exit('파일을 찾을 수 없습니다.')
    
cv.imshow('Image Display',img) #화면 표시하기

cv.waitKey() #잠깐 멈추게 하는것
cv.destroyAllWindows() # 닫기




#연습문제 3

img1=cv.imread('img1.jpg')
img2=cv.imread('img2.jpg')


if img is None:
    sys.exit('파일을 찾을 수 없습니다.')
    
cv.imshow('Image img1',img1) #화면 표시하기
cv.imshow('Image img2',img1) 
    
    
cv.waitKey() #잠깐 멈추게 하는것
cv.destroyAllWindows() # 닫기