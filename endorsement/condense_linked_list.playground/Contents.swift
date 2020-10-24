import UIKit

// Create node class
class Node<Int> {
    var value: Int
    var next: Node?
    
    init(value: Int, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

// Create the nodes
let node1 = Node(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 3)
let node4 = Node(value: 4)
let node5 = Node(value: 5)
let node5_2 = Node(value: 5)
let node6 = Node(value: 6)
let node7 = Node(value: 7)
let node7_2 = Node(value: 7)


// Create the linked list
node5.next = node2
node2.next = node1
node1.next = node5_2
node5_2.next = node4
node4.next = node7
node7.next = node3
node3.next = node7_2
node7_2.next = nil

func condense_linked_list(node: Node<Int>?) -> Node<Int> {

    var curr = node
    var prev: Node<Int>?
    
    var valuesDict: [Int: Int] = [:]
    
    while let nextNode = curr {
        if (valuesDict[nextNode.value] != nil) {
            prev?.next = nextNode.next
        } else {
            valuesDict[nextNode.value] = 1
            prev = nextNode
        }
        curr = prev?.next
    }
    
    print("The valuesDict contains \(valuesDict)")
    return node!
}

condense_linked_list(node: node5)
