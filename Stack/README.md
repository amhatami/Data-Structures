# Frog Jmp

# Stack Data Structure in 
# Swift & Python & Java

**Stack** is an abstract data type with a bounded(predefined) capacity. It is a simple data structure that allows adding and removing elements in a particular order. Every time an element is added, it goes on the top of the stack and the only element that can be removed is the element that is at the top of the stack, just like a pile of objects.
This is exactly how the **LIFO** (Last In First Out) Principle works.

## Terminology

The operations work as follows:
• A pointer called TOP is used to keep track of the top element in the stack.
• When initializing the stack, we set its value to -1 so that we can check if the stack is empty by comparing TOP == -1.
• On pushing an element, we increase the value of TOP and place the new element in the position pointed to by TOP.
• On popping an element, we return the element pointed to by TOP and reduce its value.
• Before pushing, we check if the stack is already full
• Before popping, we check if the stack is already empty
• 

## Important Terms:
**TOP:** topset element.
**Full:** isFull return true.
**Empty:** isEmpty return true.


## Some Other Terms:
There are other uses also like:
• The simplest application of a stack is to reverse a word. You push a given word to stack - letter by letter - and then pop letters from the stack.
• Parsing
• Expression Conversion(Infix to Postfix, Postfix to Prefix etc)


## Basic Operations
Stack operations may involve initializing the stack, using it and then de-initializing it. Apart from these basic stuffs, a stack is used for the following two primary operations −
○ **push() −** Pushing (storing) an element on the stack.
○ **pop() −** Removing (accessing) an element from the stack.
When data is PUSHed onto stack.
To use a stack efficiently, we need to check the status of stack as well. For the same purpose, the following functionality is added to stacks −
○ **peek() −** get the top data element of the stack, without removing it.
○ **isFull() −** check if stack is full.
○ **isEmpty() −** check if stack is empty.
At all times, we maintain a pointer to the last PUSHed data on the stack. As this pointer always represents the top of the stack, hence named top. The top pointer provides top value of the stack without actually removing it.
First we should learn about procedures to support stack functions −


## Some other info
Analysis of Stack Operations
Below mentioned are the time complexities for various operations that can be performed on the Stack data structure.
• **Push** Operation : **O(1)**
• **Pop** Operation : **O(1)**
• **Top** Operation : **O(1)**
• **Search** Operation : **O(n)**
The time complexities for push() and pop() functions are O(1) because we always have to insert or remove the data from the top of the stack, which is a one step process.
Now that we have learned about the Stack in Data Structure, you can also check out

X, Y and D are integers within the range [1..1,000,000,000];
X ≤ Y.


## Reference : 
* https://en.wikipedia.org/wiki/Stack_(abstract_data_type)
