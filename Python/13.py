class merged:
    @staticmethod
    def merged_sort(arr,lb,ub):
        if(lb<ub):
            mid = (ub + lb)//2
            merged.merged_sort(arr,lb,mid)
            merged.merged_sort(arr,mid+1,ub)

            merged.merge(arr,lb,mid,ub)


    def merge(arr,lb,mid,ub):
        i = lb
        j = mid + 1
        temp = []
        
        while(i<=mid and j<=ub):
            if(arr[i]<= arr[j]):
                temp.append(arr[i])
                i += 1
            else:
                temp.append(arr[j])
                j+=1
        while i <= mid:
            temp.append(arr[i])
            i += 1
        while j <= ub:
            temp.append(arr[j])
            j += 1
        for k in range(len(temp)):
            arr[lb + k] = temp[k]
        
        
arr = [3,5,4,6,2,7,1,8]
for i in range(len(arr)):
    print(arr[i])
print("THE SORTED ARRAY")

merged.merged_sort(arr,0,len(arr)-1)

for i in range(len(arr)):
    print(arr[i])