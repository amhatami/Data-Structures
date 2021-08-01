# Tree Data Structure in Swift & Python 

 A tree is a data structure that simulates the hierarchical relationship between objects. The structure is just like natural tree with a root value and subtrees of children with a parent node. 

# Terminology 

 
## Properties of a Tree 

A tree can contain no nodes or it can contain one special node called the root with zero or more subtrees. 

Every edge of the tree is directly or indirectly originated from the root. 

Every child has only one parent, but one parent can have many children. 

 
## Important Terms: 

**Root:** The root of is the entry point to the tree data structure. 

**Node:** Node is a block of data in the tree structure. Root itself is also a node. 

**Leaf:** Leaf is a node with no children. 

**Level:** Level of a node represents the generation of a node. Root is at level 0, while its next child is at level 1. 


## Some Other Terms: 

The *height*  

of a node is the length of the longest downward path to a leaf from that node.  

The depth  

of a node is the length of the path to its root (i.e., its root path). 

 

The height of the leaf nodes have height zero, 

The height of the root is the height of the tree. 

The root node has depth zero, 

a tree with only a single node (hence both a root and leaf) has depth and height zero. 

an empty tree (tree with no nodes, if such are allowed) has height −1. 

 

An internal node  

(also known as an inner node, inode for short, or branch node) is any node of a tree that has child nodes. 

An external node  

(also known as an outer node, leaf node, or terminal node) is any node that does not have child nodes. 

A subtree  

of a tree T is a tree consisting of a node in T and all of its descendants in T . Nodes thus correspond to subtrees (each node corresponds to the subtree of itself and all its descendants) – the subtree corresponding to the root node is the entire tree, and each node is the root node of the subtree it determines; the subtree corresponding to any other node is called a proper subtree 

Neighbor 

Parent or child. 

Ancestor 

A node reachable by repeated proceeding from child to parent. 

Descendant 

A node reachable by repeated proceeding from parent to child. Also known as subchild. 

Branch node 

Internal node 

A node with at least one child. 

Degree 

For a given node, its number of children. A leaf has necessarily degree zero. 

Degree of tree 

The degree of a tree is the maximum degree of a node in the tree. 

Distance 

The number of edges along the shortest path between two nodes. 

Level 

The level of a node is the number of edges along the unique path between it and the root node. 

Width 

The number of nodes in a level. 

Breadth 

The number of leaves. 

Forest 

A set of n ≥ 0 disjoint trees. 

Ordered tree 

A rooted tree in which an ordering is specified for the children of each vertex. 

Size of a tree 

Number of nodes in the tree. 

 
