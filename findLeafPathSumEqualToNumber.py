# Python program to find if there is a root to sum path 

# A binary tree node 
class Node: 

	# Constructor to create a new node 
	def __init__(self, data): 
		self.data = data 
		self.left = None
		self.right = None

""" 
Given a tree and a sum, return true if there is a path from the root 
down to a leaf, such that adding up all the values along the path 
equals the given sum. 

Strategy: subtract the node value from the sum when recurring down, 
and check to see if the sum is 0 when you run out of tree. 
"""
# s is the sum 
def hasPathSum(node, s): 
	
	# Return true if we run out of tree and s = 0 
	if node is None: 
		return (s == 0) 

	else: 
		ans = 0
		
		# Otherwise check both subtrees 
		subSum = s - node.data 
		
		# If we reach a leaf node and sum becomes 0, then 
		# return True 
		if(subSum == 0 and node.left == None and node.right == None): 
			return True

		if node.left is not None: 
			ans = ans or hasPathSum(node.left, subSum) 
		if node.right is not None: 
			ans = ans or hasPathSum(node.right, subSum) 

		return ans 

# Driver program to test above functions 

s = 21
root = Node(10) 
root.left = Node(8) 
root.right = Node(2) 
root.left.right = Node(5) 
root.left.left = Node(3) 
root.right.left = Node(2) 

if hasPathSum(root, s):
    print(f"There is a root-to-leaf path with sum {s}")
else: 
    print(f"There is not root-to-leaf path with sum {s}")
