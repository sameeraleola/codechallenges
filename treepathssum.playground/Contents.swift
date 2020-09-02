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
         10               26
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
