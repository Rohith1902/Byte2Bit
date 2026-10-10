def is_balanced(s) :
    stack = []
    pairs = {
        ')' : '(',
        '}' : '{',
        ']' : '['
    }

    for ch in s :
        if ch in "{[(" :
            stack.append(ch)
        elif ch in ")]}" :
            if not stack :
                return False
            top = stack.pop()
            #print(top)

            if top != pairs[ch] :
                return False
    return len(stack) == 0

print(is_balanced("{[()]}"))  # True
print('==========')
print(is_balanced("{[(])}"))  # False
print('==========')
print(is_balanced("((("))
