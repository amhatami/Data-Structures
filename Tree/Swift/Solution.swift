// Create Root Node "sports"
let sports = Node(value: "Sports")

// Create root's childs Node "indoor" "outdoor"
let indoor = Node(value: "Indoor")
let outdoor = Node(value: "Outdoor")

sports.add(indoor)
sports.add(outdoor)

// Create indoor's childs Node "tableTennis" "chess" "volleyball"
let tableTennis = Node(value: "Table Tennis")
let chess = Node(value: "Chess")
let volleyball = Node(value: "volleyball")

indoor.add(tableTennis)
indoor.add(chess)
indoor.add(volleyball)

// Create outdoor's childs Node "Football" "Rugby"
let football = Node(value: "Football")
let rugby = Node(value: "Rugby")

outdoor.add(football)
outdoor.add(rugby)

print("--- Tree ---")
sports.printTree(sports){ ($0.value,$0.children) }

print("--- Depth First ---")
sports.forEachDepthFirst {
            print($0.value)
}

print("--- Level First ---")
sports.forEachLevelFirst {
            print($0.value)
}


/*
 
 --- Tree ---
 Sports
 ┣╸Indoor
 ┃ ┣╸Table Tennis
 ┃ ┣╸Chess
 ┃ ┗╸volleyball
 ┗╸Outdoor
 ┣╸Football
 ┗╸Rugby
 --- Depth First ---
 Sports
 Indoor
 Table Tennis
 Chess
 volleyball
 Outdoor
 Football
 Rugby
 --- Level First ---
 Sports
 Indoor
 Outdoor
 Table Tennis
 Chess
 volleyball
 Football
 Rugby
 
 */

//Time complexity: O(N) or O(N*log(N))
//Space complexity: O(N)

class Node<N> {
            var value: N
            var children:[Node] = []
            
            init (value: N) {
                        self.value = value
                }
            
            func add(_ child: Node) {
                        self.children.append(child)
                }
            
            func printTree<T>(_ node:T, _ nodeInfo:@escaping (T)->(String,[T]) )
            {
                        func lines(_ aNode:T, _ nodeIndent:String="", _ childIndent:String="") -> [String]
                        {
                                    let (label,children) = nodeInfo(aNode)
                                    return [ nodeIndent + label]
                                                + children.enumerated().map{ ($0 < children.count-1, $1) }
                                                            .flatMap{ $0 ? lines($1,"┣╸","┃ ") :lines($1,"┗╸","  ") }
                                                            .map{ childIndent + $0 }
                            }
                        print( lines(node).joined(separator:"\n") )
                }
}

extension Node {
            
                    func forEachDepthFirst(_ visit: (Node) -> Void) {
                                        
                                        visit(self)
                                        children.forEach {
                                                            $0.forEachDepthFirst(visit) // recursion
                                            }
                                        
                        }
                    
                    func forEachLevelFirst(_ visit: (Node) -> Void) {
                                        
                                        visit(self)
                                        var queue = Queue<Node>()
                                        children.forEach {
                                                            queue.enqueue($0)
                                            }
                                        while let node = queue.dequeue() {
                                                            visit(node)
                                                            node.children.forEach {
                                                                                queue.enqueue($0)
                                                                }
                                            }
                        }
            
}





struct Queue<Element> {
            
            var elements: [Element] = []
            
            var isEmpty: Bool {
                        return elements.isEmpty
                }
            
            @discardableResult
            mutating func enqueue(_ element: Element) -> Bool {
                        elements.append(element)
                        return true
                }
            
            mutating func dequeue() -> Element? {
                        return isEmpty ? nil : elements.removeFirst()
                }
            
}

