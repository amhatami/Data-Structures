print("Hello Queue !!")
print("First In First Out (FIFO)")
var queue  = Queue<Int>()
print("enqueue(1)")
queue.enqueue(1)
print("enqueue(2)")
queue.enqueue(2)
print("enqueue(3)")
queue.enqueue(3)
print(queue)
print("peek()")
print(queue.peek())
print("dequeue()")
print(queue.dequeue())
print(queue)
print("queue == Queue<Int>()")
print(queue == Queue<Int>())
print(queue)
queue = [3,2,1,5,6,3,8]
print(queue)
print("dequeue()")
print(queue.dequeue())
print(queue)



/*
Hello Queue !!
First In First Out (FIFO)
enqueue(1)
enqueue(2)
enqueue(3)
[1, 2, 3]
peek()
Optional(1)
dequeue()
Optional(1)
[2, 3]
queue == Queue<Int>()
false
[2, 3]
[3, 2, 1, 5, 6, 3, 8]
dequeue()
Optional(3)
[2, 1, 5, 6, 3, 8]
*/


//First In First Out (FIFO)
//enqueueing  time complexity = O(1)
//dequeueing  time complexity = O(1)
//peeking  time complexity = O(1)
//searching  time complexity = O(n)
//The space complexity for queue is always O(1)
protocol Queueable {
            //to making protocols generic
            associatedtype Element
            func peek() -> Element?
            //to have the ability to mutate the values of the properties and write it back to the original structure when the method implementation ends
            mutating func enqueue(_ element: Element)
            //@discardableResult attribute = Ignoring return values
            @discardableResult mutating func dequeue() -> Element?
}

extension Queueable {
            var isEmpty: Bool { peek() == nil }
}

struct Queue<Element>: Queueable where Element: Equatable {
            private var storage = [Element]()
            func peek() -> Element? { storage.first }
            mutating func enqueue(_ element: Element) { storage.append(element)  }
            mutating func dequeue() -> Element? { isEmpty ? nil : storage.removeFirst() }
}

//to be able to be compared for value equality
extension Queue: Equatable {
            static func == (lhs: Queue<Element>, rhs: Queue<Element>) -> Bool { lhs.storage == rhs.storage }
}

//to be able generate customized textual representation.
extension Queue: CustomStringConvertible {
            var description: String { "\(storage)" }
            // var description: String {
            // if isEmpty { return "Queue is empty .. "}
            // return " ---- Queue start ----\n"
            //     + elements.map({"\($0)"}).joined(separator: " -> ")
            //     + "\n ---- Queue End ----"
            // }
}

//to be able to be initialized using an array literal
extension Queue: ExpressibleByArrayLiteral {
            init(arrayLiteral elements: Self.Element...) { storage = elements }
}
