import UIKit

// Solution 1
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */


//* Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class Solution1 {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        guard let head = head else { return nil }

        // Get count of nodes
        var node: ListNode? = head
        var nodesCount = 0
        while node != nil {
            nodesCount += 1
            node = node?.next
        }
        
        // Remove node
        guard n <= nodesCount else { return nil }
        
        let nodeIndex = nodesCount - n
        guard nodeIndex != 0 else { return head.next } // remove header
        
        let prevNodeIndex = nodeIndex - 1
        node = head
        for _ in 0..<prevNodeIndex {
            node = node?.next
        }
        
        node?.next = node?.next?.next
        
        return head
    }
}

// Solution 2
class Solution2 {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        if head == nil || head?.next == nil {
            return nil
        }
        
        var p = head, q = head
        var count = 0
        
        while count != n {
            q = q?.next
            count += 1
        }
        if q == nil {
            // remove the first node
            p = p?.next
            return p
        }
        else {
            while q?.next != nil {
                p = p?.next
                q = q?.next
            }
            p?.next = p?.next?.next
        }
        return head
    }
}

/*
Python solution 3
def remove(node, index):
    if node.next == None:
        return 1
    else:
        x = remove(node.next, index + 1) + 1
        if x == n + 1:
            node.next = node.next.next
        return x

x = remove(head, 1)

if x == n:
    head = head.next
         
return head
*/
