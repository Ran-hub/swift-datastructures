//
//  BreadthFirstTraversal_BTree.swift
//  

//Definition for a binary tree node.

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

class BreathFirstTraversal{
    func traverse(_ root: TreeNode?){
        var tree = root
        
        // Creating a queue using an array
        var arr: [TreeNode] = [root!]
        
        while(tree != nil){
            print(arr.first!.val)
            arr = Array(arr.dropFirst())
            if tree!.left != nil {arr.append((tree!.left)!)}
            if tree!.right != nil {arr.append((tree!.right!))}
            tree = arr.first
        }
    }
}
