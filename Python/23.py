def most_frequent(arr):
    #code
    dic = {}
    for i in arr:
        if i in dic:
            dic[i] += 1
        else :
            dic[i] = 1
    most = arr[0]
    highest = 0

    for i in arr:
        if dic[i] > highest :
            highest = dic[i]
            most = i
    return most



        



print("The most repeated number in the list is : ",most_frequent([3, 1, 3, 2, 1, 3]))