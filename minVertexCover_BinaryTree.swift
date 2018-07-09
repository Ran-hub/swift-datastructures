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


//Binary Tree
var dict: [Int:Int] = [:]
func vertexCover(_ root: TreeNode?) -> Int{
    
    if root == nil || root?.left == nil && root?.right == nil{
        return 0
    }
    if dict.keys.contains((root?.val)!){
        return dict[(root?.val)!]!
    }
    
    var inclu = 1 + vertexCover(root?.left) + vertexCover(root?.right)
    
    var exclu = 0
    if root?.left != nil{
        exclu += (1+vertexCover(root?.left?.left)+vertexCover(root?.left?.right))
    }
    if root?.right != nil{
        exclu += (1+vertexCover(root?.right?.left)+vertexCover(root?.right?.right))
    }
    
    dict[(root?.val)!] = min(inclu, exclu)
    return dict[(root?.val)!]!
}

