#Linear search

class count_targ():
    @staticmethod

    def count(arr,target):
        size = len(arr)
        count = 0
        for i in arr :
            if i == target :
                count += 1
        return count
    
arr =[1,2,3,4,5,5,6,7]

target = int(input("Enter the target to be found : "))
check = count_targ.count(arr,target)

print("The number of time ",target," is counted : ",check)