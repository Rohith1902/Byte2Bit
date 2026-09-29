class insertion_sort:
    @staticmethod
    def check(arr):
        for i in range(1,len(arr)):
            temp = arr[i]
            j = i - 1
            while(j>=0 and arr[j]>temp):
                arr[j+1] = arr[j]
                j -= 1
            arr[j+1] = temp
        for i in arr:
            print(i)

arr = [8,7,6,2,3,4,1,5]
for i in arr:
        print(i)
print("+++++++++++++++++++++++")
I1 = insertion_sort.check(arr)