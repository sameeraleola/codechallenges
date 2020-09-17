import UIKit
/*
 https://leetcode.com/problems/remove-nth-node-from-end-of-list/
 https://www.hackerrank.com/challenges/delete-a-node-from-a-linked-list/problem
 https://itnext.io/linkedlist-in-swift-code-a-linkedlist-data-structure-in-swift-playgrounds-97fe2ed9b8f1
 https://www.hackerrank.com/challenges/ctci-fibonacci-numbers/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=recursion-backtracking
 https://leetcode.com/explore/learn/card/recursion-i/250/principle-of-recursion/
 https://www.raywenderlich.com/947-swift-algorithm-club-swift-linked-list-data-structure
 https://www.youtube.com/watch?v=cd7Yio-D7qM&ab_channel=LambdaSchool
 https://www.enekoalonso.com/projects/99-swift-problems/#arithmetic
 */

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

var currNode : ListNode? = head
var ptr = "->"

while (currNode != nil) {
    print("\(currNode?.val ?? -1)->", terminator: "")
    currNode = currNode?.next
}
print("nil")

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
//func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> Int? {
    var head = list
    currNode = head
    var nodeCount = 0
    var atNode = 0

    // Count the nodes
    while (currNode != nil) {
        nodeCount += 1
        currNode = currNode?.next
    }
    currNode = head
    nodeCount -= 1
    
    // Determine which node to update for the delete
    let targetNode = nodeCount - n
    print(targetNode)
    
    while (atNode < nodeCount) {
        if n == 0 && (atNode == targetNode - 1) {
            currNode?.next = currNode?.next?.next
            break
        } else {
            currNode = currNode?.next
        }
        atNode += 1
    }
    
    currNode = head
    while (currNode != nil) {
        print("\(currNode?.val ?? -1)->", terminator: "")
        currNode = currNode?.next
    }
    print("nil")
    
    return head
}

removeNthFromEnd(list, 0)



