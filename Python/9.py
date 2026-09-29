class check:

    @staticmethod
    def targ(arr,target):
        for i in arr:
            if(target == i):
                return i
        return 0



arr = [1,2,3,4,5,6,7,8]
target = int(input("Enter the target to be found : "))
c1 = check.targ(arr,target)

if c1 == 0:
    print("The target is not found ")
else:
    print("The target is found : ",c1)