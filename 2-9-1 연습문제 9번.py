
import cv2 as cv
import sys


img=cv.imread('soccer.jpg')

if img is None :
    sys.exit('파일을 찾을 수 없습니다')
    

BrushSiz=5
LColor,RColor=(255,0,0),(0,0,255)

def painting(event,x,y,flags,param):
    if event==cv.EVENT_LBUTTONDOWN:
        cv.circle(img,(x,y), BrushSiz, LColor, -1)
    
    elif event==cv.EVENT_RBUTTONDOWN:
        cv.circle(img,(x,y), BrushSiz, RColor, -1)
        
    
    elif event==cv.EVENT_MOUSEMOVE and flags==cv.EVENT_FLAG_LBUTTON:
        cv.circle(img,(x,y), BrushSiz, LColor, -1)
        
    elif event==cv.EVENT_MOUSEMOVE and flags==cv.EVENT_FLAG_RBUTTON:
        cv.circle(img,(x,y), BrushSiz, RColor, -1)
        
    cv.imshow('painting',img)


cv.namedWindow('painting') 
cv.imshow('painting',img)
cv.setMouseCallback('painting', painting)   


while True:
    if cv.waitKey(1)==ord('q'):
        cv.destroyAllWindows()
        break
    elif cv.waitKey(1)==ord('+'):
        BrushSiz=min(20,BrushSiz+1)
    elif cv.waitKey(1)==ord('-'):
        BrushSiz=max(1,BrushSiz-1)
        
        
        
        
        
        
        
        
        
        
        
        
        