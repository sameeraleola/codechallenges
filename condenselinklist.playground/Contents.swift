import UIKit
/*
Condense Linked List
 */

// ******** LINKED LIST CLASS ********
class Node<Int> {
    var value: Int
    var next: Node?
    
    init(value : Int, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

// Create the linked list node structure.
struct LinkedList<Int> {
    var head: Node<Int>?
    var tail:   Node<Int>?

    var isEmpty: Bool {
        return head == nil
    }
    
    // ******** PUSH FUNCTION ********
    mutating func push(_ value: Int) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
}


//func removeDuplicatesNode( head : Node<Int>?) -> Node<Int>?{
//    var list = LinkedList<Int>()
//
//    var cur = head
//    var prev : Node? = nil
//
//    var listVals = Set<Int>()
//
//    while ( cur != nil ) {
//
//        let val:Int = cur!.data
//
//        if( s.contains(val)){
//            if cur?.link != nil { // Check for last Node
//                prev?.link = cur?.link!
//            }else{
//                prev?.link = nil // If last node then assign nil value to the prev node's link
//            }
//        }else{
//            s.add(val)
//            prev = cur
//        }
//
//        print(cur!)
//
//        cur = cur?.link
//    }
//
//    return head!
//}






//
//// Create the linked list class.
//class Node<Value> {     // We want to be able to store any data type within our linked list so we will specify a generic data type.
//    var value: Value
//    var next: Node?     // This is optional because the tail will not contain a pointer to a next node.
//
//    init(value :Value, next: Node? = nil) {
//        self.value = value
//        self.next = next
//    }
//}
//
//// ******** LINKED LIST STRUCTURE ******** //
//struct LinkedList<Value> {
//    var head: Node<Value>?
//    var tail:   Node<Value>?
//
//    var isEmpty: Bool {
//        return head == nil
//    }
//
//    // ******** PUSH METHOD ********
//    mutating func push(_ value: Value) {
//        head = Node(value: value, next: head)
//        if tail == nil {
//            tail = head
//        }
//    }
//}
//
//// ******** INSTANTIATE A LINKED LIST ********
//var list = LinkedList<Int>()
//
//// Populate the linked list with 10 ->1->3
//list.push(3)
//list.push(1)
//list.push(3)
//list.push(6)
//list.push(31)
//list.push(10)
//list.push(6)
//
//// Find the duplicates
//var listVals = Set<Int>()
//
//// Search for duplicates
//// Check if the list is empty
//if list.isEmpty {
//
//}


