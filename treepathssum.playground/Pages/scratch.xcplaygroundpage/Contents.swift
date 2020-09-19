//: [Previous](@previous)

import UIKit

/*
Tree Path Sum
 https://www.programcreek.com/2013/01/leetcode-path-sum/
 https://app.codesignal.com/challenge/prdMm5qccz5eiQ8Gx?solutionId=fvx43242EogBerG2s
 
 //
 // Binary trees are already defined with this interface:
 // public class Tree<T> {
 //     public var value: T
 //     public var left: Tree<T>?
 //     public var right: Tree<T>?
 //     public init(_ x: T) {
 //         self.value = x
 //         self.left = nil
 //         self.right = nil
 //     }
 // }
 func hasPathWithGivenSum(t: Tree<Int>?, s: Int) -> Any {
     (t?.s ?? []).contains(s)
 }

 extension Tree where T == Int {
     var s: [Int] { left == nil && right == nil ? [value] : ((left?.s ?? []) + (right?.s ?? [])).map { $0 + value } }
 }
 
 ----
 
 func hasPathWithGivenSum(t: Tree<Int>?, s: Int) -> Any {
     A(0, t, s)
 }

 func A(_ i: Int, _ t: Tree<Int>?, _ s: Int) -> Bool {
     if let t = t {
         let a = t.value + i, l = t.left, r = t.right
         return l ?? r == nil
             ? a == s
             : A(a, l, s) || A(a, r, s)
     }
     return 1>2
 }
 
 ----
 
 func hasPathWithGivenSum(t: Tree<Int>?, s: Int) -> Bool {
     if let r = t {
         var x: [(tr: Tree<Int>, sum: Int)] = [(tr: r, sum: r.value)]
         while x.count != 0 {
             let c = x[0]
             x.remove(at: 0)
             if c.sum == s && c.tr.left == nil && c.tr.right == nil{
                 return true
             }
             if let lT = c.tr.left {
                 x.append((lT, sum: c.sum + lT.value))
             }
             if let rT = c.tr.right {
                 x.append((rT, sum: c.sum + rT.value))
             }
         }
     }
     return false
 }
 
 The tree:           The sum:
         xx               xx
       /    \
      x      x
     / \    / \
   x    x  x   x

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

func hasPathWithGivenSum(t: Tree<Int>?, s: Int) -> (Any, Any, Any, Any) {
    ((t?.left?.value), (t?.right?.value), (t?.s), (t?.s ?? []))
      
}

extension Tree where T == Int {
    var s: [Int] { left == nil && right == nil ? [value] : ((left?.s ?? []) + (right?.s ?? [])).map { $0 + value } }}

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



//: [Next](@next)
