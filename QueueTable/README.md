# Queues Data Structure in 

The queue abstract data type is defined by the following structure and operations. A queue is structured, as described above, as an ordered collection of items which are added at one end, called the “rear,” and removed from the other end, called the “front.” Queues maintain a FIFO ordering property. The queue operations are given below.
Queue follows the **First In First Out (FIFO)** rule - the item that goes in first is the item that comes out first.

## Terminology

• Queue operations work as follows:
• two pointers FRONT and REAR
• FRONT track the first element of the queue
• REAR track the last element of the queue
• initially, set value of FRONT and REAR to -1
Enqueue Operation
• check if the queue is full
• for the first element, set the value of FRONT to 0
• increase the REAR index by 1
• add the new element in the position pointed to by REAR
Dequeue Operation
• check if the queue is empty
• return the value pointed by FRONT
• increase the FRONT index by 1
• for the last element, reset the values of FRONT and REAR to –1

## Important Terms:
**FRONT:** track the first element of the queue.
**REAR:** track the last element of the queue.
• initially, set value of FRONT and REAR to -1
• two pointers FRONT and REAR
**Front pointer:** pointer to Front.
**Rear pointer:** pointer to Rear.

## Some Other Terms:
Limitations of Queue
As you can see in the image below, after a bit of enqueuing and dequeuing, the size of the queue has been reduced.

## Limitation of a queue
And we can only add indexes 0 and 1 only when the queue is reset (when all the elements have been dequeued).
After REAR reaches the last index, if we can store extra elements in the empty spaces (0 and 1), we can make use of the empty spaces. This is implemented by a modified queue called the circular queue.

## Basic Operations
A queue is an object (an abstract data structure - ADT) that allows the following operations: 
○ **Enqueue: **Add an element to the end of the queue
○ **Dequeue:** Remove an element from the front of the queue
○ **IsEmpty:** Check if the queue is empty
○ **IsFull:** Check if the queue is full
○ **Peek:** Get the value of the front of the queue without removing it

## Some other Info : 
**Complexity Analysis**
The complexity of enqueue and dequeue operations in a queue using an array is O(1). If you use pop(N) in python code, then the complexity might be O(n) depending on the position of the item to be popped.

**Applications of Queue**
• CPU scheduling, Disk Scheduling
• When data is transferred asynchronously between two processes. The queue is used for synchronization. For 
example: IO Buffers, pipes, file IO, etc
• Handling of interrupts in real-time systems.
• Call Center phone systems use Queues to hold people calling them in order.
