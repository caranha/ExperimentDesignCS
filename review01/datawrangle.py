import csv
import random

lines = csv.reader(open("grades.csv"))
indexes = [4,5,7,8,10,11,13,14,15]
output = []

print("total, pages, question, design, CI, errors, conclusion, reproduction, clarity")
for l in lines:
  output.append([l[i][:4] for i in indexes])
  
random.shuffle(output)

for l in output:
  print(', '.join(l))

