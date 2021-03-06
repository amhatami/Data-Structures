class Node<N> {
    var value: N
    var children:[Node] = []
    
    init (value: N) {
        self.value = value
    }
    
    func add(_ child: Node) {
        self.children.append(child)
    }
}

let sports = Node(value: "Sports")

let indoor = Node(value: "Indoor")
let outdoor = Node(value: "Outdoor")

sports.add(indoor)
sports.add(outdoor)

let tableTennis = Node(value: "Table Tennis")
let chess = Node(value: "Chess")

indoor.add(tableTennis)
indoor.add(chess)

let football = Node(value: "Football")
let rugby = Node(value: "Rugby")

outdoor.add(football)
outdoor.add(rugby)
