# HashTable Data Structure in 
# Swift & Python & Java

A **hash table** is a special collection that is used to store key-value items. So instead of storing just one value like the stack, array list and queue, the hash table stores 2 values. These 2 values form an element of the hash table.
Hashing is a process used to uniquely identify objects and store each object at some pre-calculated unique index called its “key”  So, the object is stored in the form of a “key-value” pair, and the collection of such items is called a “dictionary.” Each object can be searched using that key. There are different data structures based on hashing, but the most commonly used data structure is the hash table.

Direct Addressing uses the one-to-one mapping between the values and keys when storing in a table. However, there is a problem with this approach when there is a large number of key-value pairs. The table will be huge with so many records and may be impractical or even impossible to be stored, given the memory available on a typical computer. To avoid this issue we use hash tables.


## Terminology
Properties of a Hash Table
• **Hash:** Also known as hashes or a checksum, it is the result of a Hashing algorithm.
• **Hashable:** An object is Hashable if it has a hash value that is the same for the lifetime of the object.
• **Hash table:** A data structure that maps keys to values.
• **Hash Function:** A function that generate hash value .
• **Hashing algorithm:** An algorithm that is used to generate a hash.
• **Set:** An unordered collection of values (where all the values are of the same type).
• **Type:** A representation of the type of data that can be processed (e.g. Integer or String).

## Hash Function
A special function named as the hash function (h) is used to overcome the aforementioned problem in direct addressing. Inside Hash function we use an algorithm to calculate output.

Common Hashing Algorithms
There are some other Hashing Algorithms. **MD5**, **SHA-1**, and **SHA-2** are common hashing algorithms. They map data to a hash in the form of a one-way function that should not be feasible to invert.
An extension of this is to use a hashing algorithm to index data in a hash table.

**Applications of hash tables**
• Used to implement database indexes.
• Used to implement associative arrays.
• Used to implement the “set” data structure.

**Commonly asked Hashing interview questions**
• Find symmetric pairs in an array
• Trace complete path of a journey
• Find if an array is a subset of another array
Check if given arrays are disjoint


## Reference : 
* https://en.wikipedia.org/wiki/Hash_table
