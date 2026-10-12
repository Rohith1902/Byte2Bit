def is_anagram(a,b):
    if len(a) != len (b):
        False

    count = {}
    #silent 
    for ch in a :
        count[ch] = count.get(ch,0) + 1

    '''for key, value in count.items():
        print("----a----")
        print(key, ":", value)'''


    for ch in b :
        count[ch] = count.get(ch,0) - 1

    '''for key, value in count.items():
        print("----b-----")
        print(key, ":", value)'''

    for i in count.values():
        if count != 0:
            return False 

    return True


#print(is_anagram("listen", "silent"))  # True
print(is_anagram("ab", "ab"))        # False
#print(is_anagram("aab", "abb"))        # False
#print(is_anagram("", ""))              # True




     