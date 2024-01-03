import csv

"""
file_name="./basic3/weater.csv"
f=open(file_name,"r")

lines=csv.reader(f)
print(lines)

for line in lines:
    print(line)
f.close()

"""
"""
file_name="./basic3/weater.csv"
f=open(file_name,"r")
lines=csv.reader(f)
print(next(lines))
print(next(lines))
print(next(lines))
print(next(lines))
f.close()
"""



file_name="./basic3/weater.csv"
f=open(file_name,"r")

lines=csv.reader(f)
print(lines)

for line in lines:
    if line[1] == "2023-12-27 0:00":
        result==line[2]  
        print(result)       
f.close()




