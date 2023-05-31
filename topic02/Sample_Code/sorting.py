import time
import random

def bubblesort(A):
  for i in range(len(A)):
    for j in range(i,len(A)):
      if A[j] < A[i]:
        A[i], A[j] = A[j], A[i]
  return A
  
def mergesort(A, start = None, end = None):
  if start == None:
    mergesort(A, start = 0, end = len(A))
  else:
    if (end - start < 2):
      return A
    mergesort(A, start, (start+end) // 2)
    mergesort(A, (start+end) // 2, end)
    pre = [A[x] for x in range(start, (start+end) // 2)]
    pos = [A[x] for x in range((start+end) // 2, end)] 
    
    for i in range(start, end):
      if len(pre) == 0:
        A[i] = pos.pop(0)
      elif len(pos) == 0:
        A[i] = pre.pop(0)
      elif pre[0] < pos[0]:
        A[i] = pre.pop(0)
      else:
        A[i] = pos.pop(0)
  
  return A
  
# Number of observations / Sample size
# (runs of bubblesort and mergesort)
repetitions = 20

# Size of the array
array_size = 10000

print("algo, time")
for r in range(repetitions):
  # bubble sort
  arr = [x for x in range(array_size)]
  random.shuffle(arr)
  starttime = time.time()
  bubblesort(arr)
  endtime = time.time()
  print("bubble, {:.4f}".format(endtime-starttime))

  # merge sort
  arr = [x for x in range(array_size)]
  random.shuffle(arr)
  starttime = time.time()
  mergesort(arr)
  endtime = time.time()
  print("merge, {:.4f}".format(endtime-starttime))

  


