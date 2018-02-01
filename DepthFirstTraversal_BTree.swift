//
//  DepthFirstTraversal_BTree.swift
//  


//Definition B-Tree
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution{
    var tree: TreeNode?
    
    /* In Order Traversal
     1. Traverse Left subtree
     2. Root
     3. Traverse right subtree
     */
    func inorder(_ root: TreeNode?){
        if root != nil
        {
            inorder(root?.left)
            print(root!.val)
            inorder(root?.right)
        }
    }
    
    /* Pre Order Traversal
     1. Root
     2. Traverse Left subtree
     3. Traverse right subtree
     */
    func preorder(_ root: TreeNode?){
        if root != nil
        {
            print(root!.val)
            preorder(root?.left)
            preorder(root?.right)
        }
    }
   
    /* Post Order Traversal
     1. Traverse Left subtree
     2. Traverse right subtree
     3. Root
     */
    func postorder(_ root: TreeNode?){
        if root != nil
        {
            postorder(root?.left)
            postorder(root?.right)
            print(root!.val)
        }
    }
}
