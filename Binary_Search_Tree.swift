//
//  Binary_Search_Tree.swift
//  
//  Definition for a binary tree node.
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

// BST - Binary search tree
class BST{
    
    
    // Searching in a BST
    func search(_ root: TreeNode?, _ key: Int){
        if root == nil {print("notfound")}
        else if root?.val == key { print("found")}
        else if key < root!.val { search(root?.left, key)}
        else if key > root!.val {  search(root?.right, key)}
        
    }
    
    //Insertion in a BST
    func insert(_ root: TreeNode?, _ key: TreeNode?){
        if key!.val < root!.val {
            if root?.left == nil {root?.left = key}
            else{insert(root?.left, key)}}
        else if key!.val > root!.val {
            if root?.right == nil {root?.right = key}
            else {insert(root?.right, key)}}
        else {
            if key!.val < root!.val {root?.left = key}
            else if key!.val > root!.val {root?.right = key}}
    }
}



