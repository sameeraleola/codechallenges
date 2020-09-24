import UIKit

/*
 Binary Tree Inorder Traversal
 Link: https://leetcode.com/problems/binary-tree-inorder-traversal/
 Completed: 9/24/2020
 
 Example 2:
 Input: root = []
 Output: []
 
 Example 3:
 Input: root = [1]
 Output: [1]
 
 Example 4:
 Input: root = [1,2]
 Output: [2,1]
 
 Example 5:
 Input: root = [1,null,2]
 Output: [1,2]
 
 
 Definition for a binary tree node.
 */
 public class TreeNode {
 public var val: Int
 public var left: TreeNode?
 public var right: TreeNode?
 public init() { self.val = 0; self.left = nil; self.right = nil; }
 public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
     self.val = val
     self.left = left
     self.right = right
 }
}

extension TreeNode {
    func traverseInOrder(visit: (Int) -> Void) {
        left?.traverseInOrder(visit: visit)
        visit(val)
        right?.traverseInOrder(visit: visit)
    }
}

// Create the nodes and populate the tree
// [1,null,2,3]
let one  = TreeNode(1)
let two = TreeNode(2)
let three = TreeNode(3)

one.right = two
two.left = three

func inorderTraversal(_ root: TreeNode?) -> [Int] {
    var nodeValues = [Int]()
    
    one.traverseInOrder {
        nodeValues.append($0)
    }
    
    return nodeValues
}

print(inorderTraversal(one))  // Input: root = [1,null,2,3]  Output: [1,3,2]



