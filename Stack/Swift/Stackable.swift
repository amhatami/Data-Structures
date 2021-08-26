print("Hello Stack!")
print("Last In First Out (LIFO)")
var stack = Stack<Int>()
print("push(1)")
stack.push(1)
print("push(2)")
stack.push(2)
print("push(3)")
stack.push(3)
print(stack)
print("peek()")
print(stack.peek())
print("pop()")
print(stack.pop())
print(stack)
print("stack == Stack<Int>()")
print(stack == Stack<Int>())
print(stack)
stack = [3,2,1,5,6,3,8]
print(stack)
print("pop()")
print(stack.pop())
print(stack)


/*
Hello Stack!
Last In First Out (LIFO)
push(1)
push(2)
push(3)
[1, 2, 3]
peek()
Optional(3)
pop()
Optional(3)
[1, 2]
stack == Stack<Int>()
false
[1, 2]
[3, 2, 1, 5, 6, 3, 8]
pop()
Optional(8)
[3, 2, 1, 5, 6, 3]
*/
 

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
