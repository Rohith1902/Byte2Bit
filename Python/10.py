class search:
    def binary_search(arr,target):
        #code here
        low = 0
        high = len(arr) - 1

        while(low <= high):
            mid = low + (high - low)//2
            if arr[mid] == target:
                return mid
            elif arr[mid] < target:
                low = mid + 1
            else :
                high = mid - 1

        return -1

arr = [1,2,3,4,5,6,7,8];
target = int(input("Enter the target to be found : "))
s1 = search.binary_search(arr,target)

if s1 == -1:
    print("Nothing found")
elif s1 < len(arr) // 2:
    print("Target found in lower level")
elif s1 > len(arr) // 2:
    print("Target found in higher level")
else:
    print("Target found in mid level")