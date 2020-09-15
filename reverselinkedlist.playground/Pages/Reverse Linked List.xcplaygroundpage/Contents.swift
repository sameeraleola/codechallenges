import UIKit

/*
 Reverse a Singly Linked List
 https://www.youtube.com/watch?v=gNu-F_LnC0I&ab_channel=LetsBuildThatApp
 
  The linked list: 1 -> 2 -> 3 -> 4 -> nil
 */

// Define the data struture that supports the list
class Node {
    let value : Int
    var next : Node?
    
    init( value : Int, next : Node? ) {
        self.value = value
        self.next = next
    }
}

// Create a singly linked list instance and populate putting the last node in first
let four = Node(value : 4, next : nil)
let three = Node(value : 3, next : four)
let two = Node(value : 2, next : three)
let one = Node(value : 1, next : two)

// Print function that prints the entire list the entire list
func printList(head : Node?, message : String) {
    // Point to the first node in the list
    var currNode = head
    
    // Loop through the list and print the value of each node
    print(message + " ", terminator : "")
    while currNode != nil {
        print("\(currNode?.value ?? -1) -> ", terminator : "")
        currNode = currNode?.next
    }
    print("nil")
}

// The function to reverse the linked list
func reverseList(head : Node?) -> Node? {
    var currNode = head // Point to the head
    var prev : Node? // To capture the pointer to the previous node
    var next : Node? // To capture the pointer to the next node
    
    while currNode != nil {
        print("\n**Begin**\nThe currNode = \(currNode?.value ?? -1)")
        print("The currNode.next node points to = \(currNode?.next?.value ?? -1)\n-------------------------- \n")
        next = currNode?.next
        currNode?.next = prev
         print("The next node is = \(currNode?.next?.value ?? -1)")
        print("The new previous node for the current node = \(currNode?.next?.value ?? -1)")
        prev = currNode
        print("The new previous node = \(currNode?.value ?? -1)")
        currNode = next
    }
    return prev
}


printList(head : one, message : "The starting list:" )
let myList = reverseList(head : one)
printList(head : myList, message : "The reversed list:" )
