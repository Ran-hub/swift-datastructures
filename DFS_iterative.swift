
class Node {
    var val: Int
    var child: [Node]?
    
    init(_ val: Int){
        self.val = val
    }
}


func DFS (_ root: Node?){
    if root == nil {return}
    
    var stack = [Node]()
    stack.append((root)!)
    print((root?.val)!)
    
    
    
    while !stack.isEmpty {
        let newRoot = stack.last
        if newRoot == nil || newRoot!.child == nil || newRoot!.child!.isEmpty  {
            stack.popLast()
            continue
        }
        
        stack.append((newRoot?.child?.removeFirst())!)
        print((stack.last?.val)!)
    }
    
    
}

let node = Node(1)
let c1 = [Node(6),Node(7)]
let c2 = Node(4); c2.child = c1
let c3 = Node(3); c3.child = [c2, Node(5)]
let c4 = Node(10); c4.child = [Node(20),Node(30),Node(40)]
node.child = [Node(2),c3,Node(8),Node(9),c4]

DFS(node)
// 1 2 3 {4 {6 7} 5} 8

