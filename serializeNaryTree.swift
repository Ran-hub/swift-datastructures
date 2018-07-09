

class Node {
    var val: String?
    var child: [Node]?  // An array of pointers for N children
    
    init(_ s: String){
        self.val = s
    }
}


func serialize(_ node: Node?, _ stack: inout [String]){
    stack.append("{")
    stack.append((node?.val)!)
    if node?.child == nil{
        stack.append("}")
    }
    else
    {
        for n in (node?.child)!{
            serialize(n, &stack)
        }
        stack.append("}")
    }
}


let node = Node("A")
let b = Node("A")
let c = Node("A")
let d = Node("A")
node.child = [b]
b.child = [c]
c.child = [d]
d.child = [Node("A")]
var stack = [String]()
serialize(node, &stack)
print(stack.reduce("", {$0 + $1}))












