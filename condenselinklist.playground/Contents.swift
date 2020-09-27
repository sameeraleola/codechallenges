import UIKit
/*
Condense Linked List
 */
// Create the linked list node structure.
struct LinkedList<Element> {
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
    
    init() { }
}

// ******** LINKED LIST CLASS ********
class Node<Element> {
    var value: Element
    var next: Node?
    
    init(value : Element, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}


// ******** CUSTOM LINKED LIST PRINT FORMAT ******** //
extension LinkedList: CustomStringConvertible {
    var description: String {
        guard let head = head else {
            return "Empy List"
        }
        return String(describing: head)
    }
}

// Create a linked list
// 12->11->12->21->41->43->21

var list = LinkedList<Int>()

list.push(21)
list.push(43)
list.push(41)
list.push(21)
list.push(12)
list.push(11)
list.push(12)

/*
 Create the function that will remove duplicates:
 12->11->21->41->43
 */

func removeDuplicatesNode( head : Node<Int>?)  {
    
    guard let _ = head?.value else { return }
    
//    var values: Set<Int> = [headValue]
    var values = Set<Int>()
    var currNode = head

    while let node = currNode {
        if values.contains(node.value) {
            print("The value \(node.value) is a duplicate")
            currNode = node.next?.next
        } else {
            print("This value \(node.value) has to be added")
            values.insert(node.value)
            currNode = node.next
        }
       print(values)
    }
    
//    print("list.head? = \(list.head?.value ?? -1) :: list.head?.next = \(list.head?.next?.value ?? -1)")
}
    
removeDuplicatesNode(head: list.head)

//func removeDuplicatesNode( head : Node<Int>?) -> Node<Int>?{
//    var list = LinkedList<Int>()
//
//    var cur = head
//    var prev : Node<Int>?
//
//    var listVals = Set<Int>()
//
//    if list.isEmpty { return head }

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


