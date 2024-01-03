import os

if os.path.exists("./baisc3/new_file.txt"):
    os.remove("./baisc3/new_file.txt")

else:
    print("삭제하려는 파일이 없어요")


#폴더 만들기
if os.path.eixists("./baisc3/mm"):
     print("이미 폴더가 있어요")

else:
    os.mkdir("./baisc3/mm")