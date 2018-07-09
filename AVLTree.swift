/*
 public class TreeNode {
 public var val: Int
 public var height: Int
 public var left: TreeNode?
 public var right: TreeNode?
 public init(_ val: Int) {
 self.val = val
 self.height = 1
 self.left = nil
 self.right = nil
 }
 }
 */


// avl insertion

func height(_ N: TreeNode?) -> Int{
    if (N == nil)
    {return 0}
    
    return N!.height
}

func balance(_ N: TreeNode?) -> Int{
    if (N == nil)
    {return 0}
    
    return height(N?.left) - height(N?.right)
}

func leftRotate(_ node: TreeNode?) -> TreeNode?{
    let temp = node?.right
    
    node?.right = temp?.left
    temp?.left = node
    
    node?.height = 1+max(height(node?.left), height(node?.right))
    temp?.height = 1+max(height(temp?.left), height(temp?.right))
    
    return temp
}

func rightRotate(_ node: TreeNode?) -> TreeNode?{
    let temp = node?.left
    
    node?.left = temp?.right
    temp?.right = node
    
    node?.height = 1+max(height(node?.left), height(node?.right))
    temp?.height = 1+max(height(temp?.left), height(temp?.right))
    
    return temp
}

func insertion(_ root: TreeNode?, _ val: Int) -> TreeNode?{
    //create node
    if root == nil{
        return TreeNode(val)
    }
    
    //bst insert
    if val < (root?.val)!{
        root?.left = insertion(root?.left, val)
    }
    else if val > (root?.val)!{
        root?.right = insertion(root?.right, val)
    }
    else{
        return root
    }
    
    //update height
    root?.height = 1 + max(height(root?.left), height(root?.right))
    
    //balancing
    let bal = balance(root)
    
    if bal > 1 && val < (root?.left?.val)!{
        return rightRotate(root)
    }
    if bal < -1 && val > (root?.right?.val)!{
        return leftRotate(root)
    }
    
    if bal > 1 && val > (root?.left?.val)!{
        root?.left = leftRotate(root?.left)
        return rightRotate(root)
    }
    if bal < -1 && val < (root?.right?.val)!{
        root?.right = rightRotate(root?.right)
        return leftRotate(root)
    }
    
    
    return root
}

let tree = Tree()
var t = insertion(nil, 1)
t = insertion(t, 2)
t = insertion(t, 3)
t = insertion(t, 6)
t = insertion(t, 5)
t = insertion(t, -2)
t = insertion(t, -5)
t = insertion(t, -8)
