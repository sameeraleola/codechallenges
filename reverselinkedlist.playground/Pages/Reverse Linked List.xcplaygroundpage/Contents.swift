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
        print("**Begin**\nThe currNode = \(currNode?.value ?? "")")
        print("The currNode.next node points to = \(currNode?.next?.value ??  "")\n-------------------------- \n")
        next = currNode?.next
        currNode?.next = prev
        prev = currNode
        currNode = next
    }
    let linkedListString = "\(string)"
//    print("The linked list string = " +linkedListString.reversed))
//    print(linkedListString.reversed())
    for char in linkedListString.reversed() {
        reversedString = reversedString + String(char)
    }
    print(linkedListString + "\n" + reversedString)
    
    if linkedListString == reversedString {
        print("True")
    } else {
        print("False")
    }
//    print(linkedListString == reversedString ? true : false)
    return prev
}



printList(head : h, message : "The starting list:" )
printList(head : reverseList(head : h), message : "The reversed list:" )
