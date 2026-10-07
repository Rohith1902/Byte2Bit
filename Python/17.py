""" Python:
python
  class Node:
      def __init__(self, data):
          self.data = data
          self.next = None

Write insert_front(head, val) the same way, and print_list(head).

"""





class Node :
    def __init__(self,data):
        self.data = data 
        self.next = None

def insert_front(head,val):
    new_node = Node(val)
    new_node.next  = head

    return new_node

def print_list(head):
    current = head
    while current is not None :
        print(current.data,end = " ")
        current = current.next

    print("NULL\n")

    
head = None

head = insert_front(head,30)
head = insert_front(head,20)
head = insert_front(head,10)

print_list(head)



"""Didn't get better clarity"""