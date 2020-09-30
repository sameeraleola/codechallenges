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
    mutating func push(_ data: Int) {
        head = Node(data: data, link: head)
        if tail == nil {
            tail = head
        }
    }
    
    init() { }
}

// ******** LINKED LIST CLASS ********
class Node<Element> {
    var data: Element
    var link: Node?
    
    init(data : Element, link: Node? = nil) {
        self.data = data
        self.link = link
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

// ******** CUSTOM NODE PRINT FORMAT ********.
extension Node: CustomStringConvertible {
    var description: String {
        guard let next = link else {
            return "\(data)"
        }
        
        return "\(data) -> \(next)"
    }
}

// Create a linked list
// 12->11->12->21->41->43->21

var list = LinkedList<Int>()
var newList = LinkedList<Int>()

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

func removeDuplicatesNode( head : Node<Int>?) -> Node<Int>?{
    var list = LinkedList<Int>()

    var cur = head
    var prev : Node<Int>?
    

    var s = Set<Int>()

    if list.isEmpty { return head }

    while ( cur != nil ) {

        let val:Int = cur!.data

        if( s.contains(val)){
            if cur?.link != nil { // Check for last Node
                prev?.link = cur?.link!
            }else{
                prev?.link = nil // If last node then assign nil value to the prev node's link
            }
        }else{
            s.insert(val)
            prev = cur
        }


        cur = cur?.link
    }

    return cur!
}
    
print(removeDuplicatesNode(head: list.head))



