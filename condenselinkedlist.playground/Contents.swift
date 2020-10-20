import Foundation

class Node<Value> {     // We want to be able to store any data type within our linked list so we will specify a generic data type.
    var value: Value
    var next: Node?
    
    init(value :Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        guard let next = next else {
            return "\(value)"
        }
        
        return "\(value) -> " + String(describing: next) + " "
    }
}

// 3. Create nodes.
let node1 = Node(value: 1)
let node1_2 = Node(value: 1)
let node2 = Node(value: 2)
let node2_2 = Node(value: 2)
let node3 = Node(value: 3)
let node4 = Node(value: 4)
let node4_2 = Node(value: 4)
let node5 = Node(value: 5)
let node6 = Node(value: 6)
let node7 = Node(value: 7)

node1.next  = node6
node6.next = node1_2
node1_2.next = node4
node4.next = node2
node2.next = node4_2
node4.next = nil


print(head)




