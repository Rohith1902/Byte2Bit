#Moving allo zeros in back of the list No new list


def move_zero(arr):
    #code
    i = 0;
    for j in range(len(arr)):
        if arr[j] != 0:
            arr[i], arr[j] = arr[j], arr[i]
            i += 1

arr = [1,0,2,0,3,4,0,4,3,2,1]
move_zero(arr)

print(arr)


