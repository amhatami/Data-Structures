// Time Complexity: O(1),
// Space Complexity: O(1),

print("Hello Stack!")

var stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)
print(stack)
print(stack.peek())
print(stack.pop())
print(stack)
print(stack == Stack<Int>())
print(stack)
stack = [3,2,1,5,6,3,8]
print(stack)
print(stack.pop())
print(stack)


//Hello Stack!
//[1, 2, 3]
//Optional(3)
//Optional(3)
//[1, 2]
//false
//[1, 2]
//[3, 2, 1, 5, 6, 3, 8]
//Optional(8)
//[3, 2, 1, 5, 6, 3]


protocol Stackable {
    associatedtype Element
    func peek() -> Element?
    mutating func push(_ element: Element)
    @discardableResult mutating func pop() -> Element?
}

extension Stackable {
    var isEmpty: Bool { peek() == nil }
}


struct Stack<Element>: Stackable where Element: Equatable {
    private var storage = [Element]()
    func peek() -> Element? { storage.last }
    mutating func push(_ element: Element) { storage.append(element)  }
    mutating func pop() -> Element? { storage.popLast() }
}

extension Stack: Equatable {
    static func == (lhs: Stack<Element>, rhs: Stack<Element>) -> Bool { lhs.storage == rhs.storage }
}

extension Stack: CustomStringConvertible {
    var description: String { "\(storage)" }
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Self.Element...) { storage = elements }
}
