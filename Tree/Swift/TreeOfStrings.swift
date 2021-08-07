class Node {	
	var value: String
	var children:[Node] = []
	
	init (value: String) {
	    self.value = value
	}
	
	func add(_ child: Node) {
	    self.children.append(child)
	}
    
    func treeLines(_ nodeIndent:String="", _ childIndent:String="") -> [String]
        {
         return [ nodeIndent + value ]
           + children.enumerated().map{ ($0 < children.count-1, $1) }
             .flatMap{ $0 ? $1.treeLines("┣╸","┃ ") : $1.treeLines("┗╸","  ") }
             .map{ childIndent + $0 } 
        }

   func printTree()
        { 
            print(treeLines().joined(separator:"\n")) 
        }
    
	} // class Node 
	
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

    //print "sports" tree    
    sports.printTree()

/*

Sports
┣╸Indoor
┃ ┣╸Table Tennis
┃ ┣╸Chess
┃ ┗╸volleyball
┗╸Outdoor
  ┣╸Football
  ┗╸Rugby

*/
