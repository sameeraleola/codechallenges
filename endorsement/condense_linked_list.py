# Singly-linked lists are already defined with this interface:
# class ListNode(object):
#   def __init__(self, x):
#     self.value = x
#     self.next = None

def condense_linked_list(node):
    curr = node # O(1)
    prev = None # O(1)
    
    values_dict = dict()  # O(1)
    
    while curr: # O(n)
        if curr.value in values_dict: # O(1)
            prev.next = curr.next # O(1)
            curr = None # O(1)
        else:
            values_dict[curr.value] = 1 # O(1)
            prev = curr # O(1)
        curr = prev.next # O(1)
        
    return node # O(1)

# Time complexity = O(n)
