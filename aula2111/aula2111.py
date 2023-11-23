# BubbleSort ascending
def bubbleSort(arr):
  for i in range(len(arr)):
    for j in range(0, len(arr) - i - 1):
      if arr[j] > arr[j + 1]:
        arr[j], arr[j+1] = arr[j+1], arr[j]
  return arr

# BubbleSort decreasing
def bubble(arr):
    for passnum in range(len(arr)-1,0,-1):
        for i in range(passnum):
            if arr[i]>arr[i+1]:
                arr[i], arr[i+1] = arr[i+1], arr[i]
    return arr


print(bubble([4,8,6,2,10,0]))
print(bubbleSort([4,8,6,2,10,0]))

########################################
print('================================')
########################################
# Binary Search
# Binary Search in python
def binarySearch(arr, esq, dire, item):
    if dire >= esq:
        mid = esq + (dire - esq)//2
        if arr[mid] == item:
            return mid
        elif arr[mid] > item:
            return binarySearch(arr, esq, mid-1, item)
        else:
            return binarySearch(arr, mid + 1, dire, item)
  

arr = [3, 4, 5, 6, 7, 8, 9]
print(str(binarySearch(arr, 0, len(arr)-1, 5)))
