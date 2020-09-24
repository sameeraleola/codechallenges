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

// https://leetcode.com/problems/binary-tree-inorder-traversal/discuss/835812/Swift-recursion-2-lines
func inorderTraversal2(_ root: TreeNode?) -> [Int] {
    // Unwrap the root first
    guard let root = root else { return [] }
    
    return inorderTraversal2(root.left) + [root.val] + inorderTraversal2(root.right)
}

print(inorderTraversal2(one))  // Input: root = [1,null,2,3]  Output: [1,3,2]

/*
 Iterative solution
 https://leetcode.com/problems/binary-tree-inorder-traversal/discuss/835861/Swift-iteration-concise-solution
 */
func inorderTraversal3(_ root: TreeNode?) -> [Int] {
    var res: [Int] = []
    var stack: [TreeNode] = []
    var curr = root

    while curr != nil || !stack.isEmpty {
        while curr != nil {
            stack.append(curr!)
            curr = curr!.left
        }

        curr = stack.popLast()
        res.append(curr!.val)
        curr = curr?.right
    }

    return res
}

print(inorderTraversal3(one))  // Input: root = [1,null,2,3]  Output: [1,3,2]

/*
 Without an extension
 https://leetcode.com/problems/binary-tree-inorder-traversal/discuss/813104/Swift%3A-SIMPLE-and-SWEET-recursive-and-iterative-100
 */
func inorderTraversal4(_ root: TreeNode?) -> [Int] {
    // Unwrap the root first
    guard let root = root else { return [] }
    var result = [Int]()

    result += inorderTraversal4(root.left)
    result.append(root.val)
    result += inorderTraversal4(root.right)

    return result
}

print(inorderTraversal4(one))  // Input: root = [1,null,2,3]  Output: [1,3,2]


