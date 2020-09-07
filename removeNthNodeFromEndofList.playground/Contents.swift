import UIKit

//Definition for singly-linked list.
 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

//func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> Int {
    
    var nodeCount = 0
    
    // If the list is empty return
//    guard let currNode = head else { return head }
    guard let currNode = head else { return 0 }

    // Count the nodes
    while let _ = currNode.next {
        nodeCount += 1
    }
    
    // Go to the node to be removed
    
    // Check if we are removing the head
   return nodeCount
}

print(removeNthFromEnd(_ head: ListNode?, _ n: Int)
