//Last In First Out (LIFO)
//pushing  time complexity = O(1)
//poping  time complexity = O(1)
//peeking  time complexity = O(1)
//Searching  time complexity = O(n)
//The space complexity for stack is always O(n)
protocol Stackable {
            //to making protocols generic
            associatedtype Element
            func peek() -> Element?
            //to have the ability to mutate the values of the properties and write it back to the original structure when the method implementation ends
            mutating func push(_ element: Element)
            //@discardableResult attribute = Ignoring return values
            @discardableResult mutating func pop() -> Element?
}

extension Stackable {
            var isEmpty: Bool { peek() == nil }
}


struct Stack<Element>: Stackable where Element: Equatable {
            private var storage = [Element]()
            func peek() -> Element? { storage.last }
            mutating func push(_ element: Element) { storage.append(element)  }
            mutating func pop() -> Element? { storage.popLast() }
}

//to be able to be compared for value equality
extension Stack: Equatable {
            static func == (lhs: Stack<Element>, rhs: Stack<Element>) -> Bool { lhs.storage == rhs.storage }
}

//to be able generate customized textual representation.
extension Stack: CustomStringConvertible {
            var description: String { "\(storage)" }
}

//to be able to be initialized using an array literal
extension Stack: ExpressibleByArrayLiteral {
            init(arrayLiteral elements: Self.Element...) { storage = elements }
}
