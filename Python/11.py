class selections_sort:
    @staticmethod

    def sort(arr):
        for i in range(len(arr)-1):
            min = i;
            for j in range(i+1,len(arr)):
                if arr[j] < arr[min]:
                    min = j;

            temp = arr[i]
            arr[i] = arr[min]
            arr[min] = temp


        for i in arr:
            print(i)
        print("\n")




arr = [8,7,6,5,4,3,2,1]

for i in arr:
    print(i)
print("--------------S")
s1 = selections_sort.sort(arr)


