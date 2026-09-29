class calc:
    def sum(self,arr):
        count = 0
        for i in range(len(arr)):
            count += arr[i]
        return count
    def avg(self,arr):
        averag = sum(arr)/len(arr)
        return averag


arr = [1,2,3,4,5,6,7,8]

c1 = calc()
print("The sum of the array is ",c1.sum(arr)," and the average is ",c1.avg(arr))
