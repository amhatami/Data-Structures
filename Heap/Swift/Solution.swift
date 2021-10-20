print("Hello Heap!")

var maxHeap = Heap<Int>(sort: > )
maxHeap.insert(31)
maxHeap.insert(12)
maxHeap.insert(1)
maxHeap.insert(45)
maxHeap.insert(6)
maxHeap.insert(20)
maxHeap.insert(50)
maxHeap.insert(9)

print("maxHeap=======")
print(maxHeap)


var minHeap = Heap<Int>(sort: < )
minHeap.insert(31)
minHeap.insert(12)
minHeap.insert(1)
minHeap.insert(45)
minHeap.insert(6)
minHeap.insert(20)
minHeap.insert(50)
minHeap.insert(9)

print("minHeap=======")
print(minHeap)


// Heapify time Complexity : O(log(n))
// Build-heap time Complexity : O(n)
// GetMin time Complexity : O(1)  <= MinHeap
// GetMax time Complexity : O(1)  <= MaxHeap
// extractMin time Complexity : O(log(n))
// decreaseKey time Complexity : O(log(n))
// insert time Complexity : O(log(n))
// delete time Complexity : O(log(n))
// Heap Space Complexity : O(1)
// n is the number of capacity or nodes inside heap


public struct Heap<T> {
    
    var nodes = [T]()
    
    /// Determines how to compare two modes
    private var orderCriteria: (T , T)-> Bool
    
    /// Creats Emplty Heap
    /// for compareable data types, > makes a max-Heap , < makes a min-Heap
    public init(sort: @escaping(T,T)-> Bool){
        self.orderCriteria=sort
    }
    
    public init(array:[T], sort: @escaping(T,T)->Bool) {
        self.orderCriteria = sort
        configureHeap(from: array)
    }
    
    private mutating func configureHeap(from array : [T]){
        nodes = array
        for i in stride(from: (nodes.count / 2-1 ), through: 0 , by: -1) {
            shiftDown(i)
        }
    }
    
    public var isEmplty: Bool {
        return nodes.isEmpty
    }
    
    public var count: Int {
        return nodes.count
    }
    
    /// Return the index of the parent of the element at index i
    /// the element at index 0 is the root and no parent
    @inline(__always) internal func parentIndex(ofIndex i : Int) -> Int{
        return( i - 1 ) / 2
    }
    
    @inline(__always) internal func leftChildIndex(ofIndex i : Int) -> Int{
        return 2*1 + 1
    }
    
    @inline(__always) internal func rightChildIndex(ofIndex i : Int) -> Int{
        return 2*1 + 2
    }
    
    public func peek() -> T? {
        return nodes.first
    }
    
    /// Adds a new value to the Heap
    /// with complexity O(lon(n))
    public mutating func insert(_ value: T){
        nodes.append(value)
        shiftUp(nodes.count - 1)
    }
    
    /// Adds a sequece of values to the heap
    /// with complexity O(lon(n))
    public mutating func insert<S: Sequence>(_ sequence: S)  where S.Iterator.Element == T {
        for value in sequence {
            insert(value)
        }
    }
    
    
    /// Removes the root node from the Heap
    /// with complexity O(lon(n))
    @discardableResult public mutating func remove() -> T? {
        guard !nodes.isEmpty else { return nil }
        
        if nodes.count == 1 {
            return nodes.removeLast()
        } else {
            // use the last node to replace the firstone
            // then fix the heap by shifting / sifting
            let value = nodes[0]
            nodes[0] = nodes.removeLast()
            shiftDown(0)
            return value
        }
    }
    
    @discardableResult public mutating func remove(at index: Int) -> T? {
        guard index < nodes.count else { return nil }
        
        let size = nodes.count - 1
        if index != size {
            nodes.swapAt(index, size)
            shiftDown(from: index, until: size)
            shiftUp(index)
        }
        
        return nodes.removeLast()
    }
    
    /// func Takes a child node and looks at it's parent
    /// if a parent is not larger (max-Heap) / not smaller (minHeap)
    /// keep exchange them
    internal mutating func shiftUp(_ index : Int) {
        var childIndex = index
        let child = nodes[childIndex]
        var parentIndex = self.parentIndex(ofIndex: childIndex)
        
        while childIndex > 0 && orderCriteria(child, nodes[parentIndex]) {
            nodes[childIndex] = nodes[parentIndex]
            childIndex = parentIndex
            parentIndex = self.parentIndex(ofIndex: childIndex)
        }
        
        nodes[childIndex] = child
    }
    
    /// looks at a parent node and makes sure it's still
    /// larger (max-Heap) / smaller (min-Heap) than it's children
    internal mutating func shiftDown(from index: Int, until endIndex: Int) {
        let leftChildIndex = self.leftChildIndex(ofIndex: index)
        let rightChildIndex = leftChildIndex + 1
        
        var first = index
        if leftChildIndex < endIndex && orderCriteria(nodes[leftChildIndex], nodes[first]) {
            first = leftChildIndex
        }
        if rightChildIndex < endIndex && orderCriteria(nodes[rightChildIndex], nodes[first]) {
            first = rightChildIndex
        }
        
        if first == index { return }
        
        nodes.swapAt(index, first)
        shiftDown(from: first, until: endIndex)
    }
    
    
    internal mutating func shiftDown(_ index: Int) {
        shiftDown(from: index, until: nodes.count)
    }
    
}


// MARK : Searching
extension Heap where T: Equatable {
    
    /** Get the index of a node in the heap. Performance: O(n). */
    public func index(of node: T) -> Int? {
        return nodes.index(where: { $0 == node })
    }
    
    /** Removes the first occurrence of a node from the heap. Performance: O(n). */
    @discardableResult public mutating func remove(node: T) -> T? {
        if let index = index(of: node) {
            return remove(at: index)
        }
        return nil
    }
    
}
