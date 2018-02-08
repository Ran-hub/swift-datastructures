//
//  DeletionofNode_BST.swift
//  
class Solution {
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
    
    func deleteNode(_ root: TreeNode?, _ key: Int) -> TreeNode? {
        func check(_ root: TreeNode?) -> TreeNode?{
            var t = root
            if t?.left == nil && t?.right == nil {t = nil}
            else {
                if t?.left == nil {t = t?.right}
                else if t?.right == nil {t = t?.left}
                else{let temp = t?.right
                    t = t?.left
                    insert(t, temp)}
            }
            return t
        }
        if root == nil {return root}
        else if key == root?.val{
            return check(root)
        }
        else if key == root?.left?.val{
            root?.left = check(root?.left)
        }
        else if key == root?.right?.val {
            root?.right = check(root?.right)
        }
        else if key < root!.val {  deleteNode(root?.left, key)}
        else if key > root!.val {  deleteNode(root?.right, key)}
        return root
    }
}
