import UIKit

/*
 Remove duplicates from an unsorted linked list
 https://www.geeksforgeeks.org/remove-duplicates-from-an-unsorted-linked-list/
 https://stackoverflow.com/questions/45136115/swift-linked-list-remove-duplicates
 */

// Create a node class
class ListNode {
    var val : Int
    var next : ListNode?

    init(value : Int , next : ListNode? = nil) {
        self.val = value
        self.next = next
    }
}

struct LinkedList<Element> {
    var head : ListNode?
    var tail : ListNode?
}

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var values = Set<Int>()

    var prev : ListNode? = nil
    var currNode = head

    while currNode != nil {
        if (!values.insert(currNode!.val).inserted) {
            prev?.next = currNode?.next
        } else {
            prev = currNode
        }
        currNode = currNode?.next
    }
    
    return head
}

//var values = Set<Int>()
////print(values.insert(3))
////print(values.insert(3))
//print(values.insert(3).inserted)
//print(values.insert(3).inserted)
//print(values.insert(6).inserted)
//print(values)


//public ListNode deleteDuplicates(ListNode head) {
//    Set<Integer> set = new HashSet<>();
//    ListNode pre = null;
//    ListNode fakeHead = head;
//    while(fakeHead != null){
//        if(!set.add(fakeHead.val)){
//            pre.next = fakeHead.next;
//        } else{
//            pre = fakeHead;
//        }
//        fakeHead = fakeHead.next;
//    }
//    return head;
//}
