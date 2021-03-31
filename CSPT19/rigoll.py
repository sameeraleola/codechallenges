class ListNode:
    def __init__(self, x):
        self.value = x
        self.next = None
        
def insertValueIntoSortedLinkedList(current_list, value):
    new_node = ListNode(value)
    new_node.next = current_list
    return new_node

def insertTail(current_tail, value):
    new_node = ListNode(value)
    current_tail.next = new_node
    return new_node

def printList(current_list):
    current = current_list
    linkedList = 'Link List: '
    while current is not None:
        linkedList = linkedList + str(current.value)
        current = current.next
        if current != None:
            linkedList = linkedList + '-->' 
        
    return(linkedList)

def rigoPrint(start_node):
    current = start_node
    while current != None:
        print('print-list-->', current.value)
        current = current.next

head = ListNode(6)
tail = head

head = insertValueIntoSortedLinkedList(head, 4)
head = insertValueIntoSortedLinkedList(head, 3)
head = insertValueIntoSortedLinkedList(head, 2)
head = insertValueIntoSortedLinkedList(head, 1)

tail = insertTail(tail, 5)

print('tail==>', tail.value)
print(printList(head))
print(rigoPrint(head))
