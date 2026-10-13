
def remove_duplicate(arr):
    if len(arr) == 0:
        return 0
    i = 0
    j = 1
    while j<len(arr):
        print(arr[i])
        if (arr[j] != arr[i]):
            i = i+1
            arr[i] = arr[j]
            print("--",arr[i])
        j = j+1
    return i
    



arr = [1,2,3,3,4,5,5,6]
print("The number of real numbers are : ",remove_duplicate(arr))