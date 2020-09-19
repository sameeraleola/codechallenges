import UIKit

/*
Tree Path Sum
 https://www.programcreek.com/2013/01/leetcode-path-sum/
 https://app.codesignal.com/challenge/prdMm5qccz5eiQ8Gx?solutionId=fvx43242EogBerG2s
 
 The tree:           The sum:
         10               21
       /    \
      16      5
     /       /  \
   -3       6   11
 
 
 
 */

// Define the binary tree class
 public class Tree<T> {
     public var value: T
     public var left: Tree<T>?
     public var right: Tree<T>?
     public init(_ x: T) {
         self.value = x
         self.left = nil
         self.right = nil
     }
 }

func hasPathWithGivenSum(t: Tree<Int>?, s: Int) -> Bool {
    var sumFound = true
    
    
    
    return sumFound
}

// 1. Create the nodes that will be stored in the binary tree
let ten = Tree(10)



let nine = Tree(9)
let eight = Tree(8)
let seven = Tree(7)
let six = Tree(6)
let five = Tree(5)
let four = Tree(4)
let three = Tree(3)
let two = Tree(2)
let one = Tree(1)
let zero = Tree(0)

let sixteen = Tree(16)
let eleven = Tree(11)
let minusfour = Tree(-4)
let minusthree = Tree(-3)
let minustwo = Tree(-2)

// 2.  Build the tree.
// --- left side
four.left = one
one.left = minustwo
two.left = nil
two.right = three
three.left = nil
three.right = nil
// --- right side
four.right = three
three.left = one
three.right = two
two.left = minustwo
//two.right = minusthree
two.right = minusfour


print(hasPathWithGivenSum(t: four, s: 5))
