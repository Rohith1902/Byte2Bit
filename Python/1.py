#count
class count:
    def __init__(self):
        pass
    def counteven(self,arr):
        count = 0 
        for i in arr:
            if (i%2 ==0):
                count = count + 1

        return count

obj = count()
arr = [1,2,3,4,5,6,7,8]

a = obj.counteven(arr)


arr = [1,2,3,4,5,6,76,8]
size = len(arr)

print("The number of even elements are : ",a)