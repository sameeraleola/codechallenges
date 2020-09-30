import UIKit

/*
 Remove duplicates from an unsorted linked list
 https://www.geeksforgeeks.org/remove-duplicates-from-an-unsorted-linked-list/
 https://stackoverflow.com/questions/45136115/swift-linked-list-remove-duplicates

 public ListNode deleteDuplicates(ListNode head) {
     Set<Integer> set = new HashSet<>();
     ListNode pre = null;
     ListNode fakeHead = head;
     while(fakeHead != null){
         if(!set.add(fakeHead.val)){
             pre.next = fakeHead.next;
         } else{
             pre = fakeHead;
         }
         fakeHead = fakeHead.next;
     }
     return head;
 }
 */


// Create a node class
class Node<Element> {
    var value : Element
    var next : Node?
    
    init(value : Element, next : Node? = nil) {
        self.value = value
        self.next = next
    }
}

// Create a custom node print fomat
extension Node : CustomStringConvertible {
    var description : String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> \(next)"
    }
}

// Create a singly linked list structure
struct LinkedList<Element> {
    var head : Node<Element>?
    var tail : Node<Element>?

    // Linked list method to push values onto the singly linked list
    mutating func push(_ value: Element) {
        head = Node(value : value, next : head)
    }
}

// Create singly linked list methods to print the list
extension LinkedList : CustomStringConvertible {
    var description: String {
        guard let head = head else {
            return "Empty List"
        }
        return String(describing: head)
    }
}

// Create a singly linked list
var list = LinkedList<Int>()

// Populate the list singly linked list
list.push(<#T##value: Int##Int#>)


// Create a
func  compressList(head : Node<Int>? ) -> Node<Int> {
    
    return head
}
