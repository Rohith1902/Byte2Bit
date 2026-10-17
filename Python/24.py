
def first_unique(a):
    count = {}
    for i in a:
        if i in count:
            count[i] += 1
        else :
            count[i] = 1
    

    for i in range(len(a)):
        if count[a[i]] == 1:
            return i
    return -1






a = "lletcod"
b = "ammba"
c = "Verilog"
print(first_unique(a))
print(first_unique(b))
print(first_unique(c))