
func removeKFromList(l: ListNode<Int>?, k: Int) -> ListNode<Int>? {

    // Check if the list is empty return it
    if l == nil {
        return l
    }
    
    // Point to the head of the linked list
    var head = l
    var currNode = l
    
    // Check if the head should be deleted
    while head?.value == k {
        head = head?.next
    }
    
    // OK, we know we have a list with values and a head that is not the value to be deleted
    // Let's iterate the rest of list and remove any remaining k values.
    while currNode?.next != nil {
        if currNode?.next?.value == k {
            currNode?.next = currNode?.next?.next
        } else {
            currNode = currNode?.next
        }
    }
    
    return head
}