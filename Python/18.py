#find duplicates using a hash map

def find_duplicates(arr):
    count = {}

    for i in arr :
        if i in count :
            count[i]+= 1
        else :
            count[i] = 1
    
    duplicates = []
    for key, value in count.items():
        print(key, value)

    for i in count :
        if count[id] > 1:
            duplicates.append(i)

    return duplicates

arr = [4, 2, 7, 2, 9, 4, 4]

print(find_duplicates(arr))
        