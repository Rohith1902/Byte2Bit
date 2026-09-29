class new():
    @staticmethod
    def sec(arr):
        fir = max(arr)
        sec = 0
        for i in arr:
            if(i>sec and i<fir):
                sec = i;
        return sec



arr = [1,2,3,4,5,6,7,8,9]
second = new.sec(arr)
print("The second largest number is ",second)