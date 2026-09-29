class count():
    @staticmethod
    def check(arr):
        left = 0
        right = len(arr) - 1
        while(left<right):
            if(arr[left]!=arr[right]):
                return False

            left += 1
            right -= 1
        return True



arr = [1,2,3,4,3,2,1]

palin = count.check(arr)
if(palin == True):
    print("Yes this is palindrome ")
else:
    print("No this not palindrome ")