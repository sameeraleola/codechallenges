import UIKit

/*
 Reverse a Singly Linked List
 https://www.youtube.com/watch?v=gNu-F_LnC0I&ab_channel=LetsBuildThatApp
 
  The linked list: 1 -> 2 -> 3 -> 4 -> nil
 */

// Define the data struture that supports the list
class Node {
    let value : String
    var next : Node?
    
    init( value : String, next : Node? ) {
        self.value = value
        self.next = next
    }
}

// Create a singly linked list instance and populate putting the last node in first

let lr = Node(value : "r", next: nil)
let a2 = Node(value : "a", next: lr)
let o = Node(value : "c", next: a2)
let lTwo = Node(value : "e", next : o)
let lOne = Node(value : "c", next : lTwo)
let e = Node(value : "a", next : lOne)
let h = Node(value : "R", next : e)



// Print function that prints the entire list the entire list
func printList(head : Node?, message : String) {
    // Point to the first node in the list
    var currNode = head
    
    // Loop through the list and print the value of each node
    print(message + " ", terminator : "")
    while currNode != nil {
        print("\(currNode?.value ?? "") -> ", terminator : "")
        currNode = currNode?.next
    }
}

// The function to reverse the linked list
func reverseList(head : Node?) -> Node? {
    var currNode = head // Point to the head
    var prev : Node? // To capture the pointer to the previous node
    var next : Node? // To capture the pointer to the next node
    var string = ""
    var reversedString = ""
    
    while currNode != nil {
        string = string + (currNode?.value ?? "")
        next = currNode?.next
        currNode?.next = prev
        prev = currNode
        currNode = next
    }
    return prev
}



printList(head : h, message : "The starting list:" )
print("\n")
printList(head : reverseList(head : h), message : "The reversed list:" )
