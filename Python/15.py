from collections import deque

class Queue:
    def __init__(self):
        self.items = deque()

    def enqueue(self,val):
        self.items.append(val)
    
    def dequeue(self):
        if self.is_empty():
            print("Queue is empty")
            return None
        return self.items.popleft()

    def front(self):
        if self.is_empty():
            print("Queue is empty")
            return None
        return self.items[0]

    def is_empty(self):
        return len(self.items) == 0

    def display(self):
        print(*self.items) 

q = Queue()
q.enqueue(10)
q.enqueue(20)
q.enqueue(30)
q.enqueue(40)
q.display()
print("Front : ",q.front())
print("Dequeed : ",q.dequeue())
print("Dequeed : ",q.dequeue())
print("Front : ",q.front())
q.display()        


    
