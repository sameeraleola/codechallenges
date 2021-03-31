class ListNode:
    def __init__(self, x):
        self.value = x
        self.next = None

def createNode(l, value) -> ListNode:
    # Create a node
    new_node = ListNode(value)
    
    if not l:
        return new_node 
    
    
    
    l.next = new_node
    
    # return l
    
def printList(l):
    current = l
    linkedList = 'Link List: '
    while current is not None:
        linkedList = linkedList + str(current.value)
        current = current.next
        if current != None:
            linkedList = linkedList + '-->' 
        
    return(linkedList)
    
# head = ListNode(6)
# print(head.value)

head = createNode(None, 6)
createNode(head, 4)
createNode(head, 3)
createNode(head, 2)
createNode(head, 1)
print(printList(head))