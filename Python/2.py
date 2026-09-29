
#reverse

class rev :
    def reversing(self,arr,rvrr,size):
        for i in range(size -1 ,-1,-1) :
            rvrr.append(arr[i])
        return 0
    def read (self,rvrr):
        for i in rvrr:
            print(i)

obj = rev()

arr = [1,2,3,4,5,6,7,8]
rvrr = []
size = len(arr)

obj.reversing(arr,rvrr,size)
obj.read(rvrr)

