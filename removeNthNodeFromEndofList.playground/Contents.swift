import UIKit

//Definition for singly-linked list.
 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

// Build out the singly linked list one node at a time!
var list = ListNode(1)
var head = list
head.next = ListNode(2)
head.next?.self.next = ListNode(3)
head.next?.next?.self.next = ListNode(4)
head.next?.next?.next?.self.next = ListNode(5)
head.next?.next?.next?.next?.self.next = ListNode(6)
head.next?.next?.next?.next?.next?.self.next = ListNode(7)

print(head.val, head.next?.val ?? -1, head.next?.next?.val ?? -1, head.next?.next?.next?.val ?? -1, head.next?.next?.next?.next?.val ?? -1,
      head.next?.next?.next?.next?.next?.val ?? -1, head.next?.next?.next?.next?.next?.next?.val ?? -1)

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    let head = list
    return head
}

print("\(removeNthFromEnd(list, 0)?.val ?? -1)")
////func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> Int {
//
//    var nodeCount = 0
//
//    // If the list is empty return
//    guard let currNode = head else { print("I'm returning"); return head }
//    print(currNode.val)
////    guard let currNode = head else { return 0 }
//
//    // Count the nodes
//    while currNode.next != nil {
//        print("Start counting nodes")
//        nodeCount += 1
//         //= currNode.next
//        print("Counting nodes")
//    }
//
//    // Go to the node to be removed
//
//    // Check if we are removing the head
//    print("nodeCount = \(nodeCount)")
//    return head
//}


