import UIKit

/*
 Traverse the list and reverse the pointers
 Input list: nil->1->2->3->4->5->nil
 Output list: nil->5->4->3->2->1->nil
 */

// 1.  Loop through the linked list using a while head != null
// 2.  Make the head = head.next
// 3.  Create a variable to store the previous node.

 public class ListNode<T> {
     public var value: T
     public var next: ListNode<T>?
    
     public init(_ x: T) {
         self.value = x
         self.next = nil
     }
 }

// Build out the singly linked list one node at a time!

let list = ListNode(1)

func reverseList(a: ListNode<Int>?) -> ListNode<Int>? {
    // Set up the singly linked list
    let head : ListNode<Int> = list

    head.next = ListNode(5)
    head.next.self?.next = ListNode(3)
    head.next?.next.self?.next = ListNode(9)
    head.next?.next?.next.self?.next = ListNode(0)
    
    var prev : ListNode<Int>?
    
    while true {
        guard let next_node = head.next else { return head }
        head.next = prev
        prev = head
        return head
    }
    

    return head
}

print(reverseList(a: list)?.value ?? -1)

