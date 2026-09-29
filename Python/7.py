class doubble_sort:
    @staticmethod
    def sorty(arr,length):
        for i in range(0,length):
            for j in range(0,length -i-1 ):
                if j>j+1:
                    temp = arr[j]
                    arr[j] = arr[j + 1]
                    arr[j+1] = arr[j]

        print("Sorted \n\n\n")
    @staticmethod
    def prin(arr):
        for i in arr:
            print("\n",i)

arr = [1,3,2,5,4,7,6,8]

length = len(arr)

d1 = doubble_sort.sorty(arr,length)
d2 = doubble_sort.prin(arr)
