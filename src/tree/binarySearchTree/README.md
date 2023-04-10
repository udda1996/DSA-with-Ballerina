# Binary Search Tree Implementation

This is a simple implementation of a Binary Search Tree (BST) in Java. A BST is a tree data structure in which each node has at most two children, and where the value of each node is greater than or equal to the values in the nodes of its left subtree and less than or equal to the values in the nodes of its right subtree.

## Classes

### TreeNode
This class represents a node in the BST. It contains an integer value and pointers to the left and right child nodes.

```java
public type TreeNode record {
    int value;
    TreeNode? left;
    TreeNode? right;
}

### BinarySearchTree
This class represents a BST. It contains a pointer to the root node of the BST.

```java
public type BinarySearchTree record {
    TreeNode? root;
}

## Functions

### insert(TreeNode? bst, int value)
This method inserts a new node into the BST with the given value.

```java
public function insert(TreeNode? node, int value) returns TreeNode? {
    if (node == null) {
        TreeNode leaf = {value: value, left: null, right: null};
        return leaf;
    } else if (value < node.value) {
        node.left = insert(node.left, value);
    } else {
        node.right = insert(node.right, value);
    }
    return node;
}

### insertValue(BinarySearchTree tree, int value)
This method provides a simpler way to insert a value into the BST. It calls the insert method with the root node of the tree.

```java
public function insertValue(BinarySearchTree tree, int value) {
    tree.root = insert(tree.root, value);
}

### inOrder(TreeNode? node)
This method performs an inorder traversal of the BST, printing out the values of the nodes in sorted order.

```java
public function inOrder(TreeNode? root) {
    if (root == null) {
        return;
    }

    inOrder(root.left);
    io:println(root.value);
    inOrder(root.right);
}

### search(TreeNode? root, int value) returns boolean
This method searches the BST for a node with the given value. It returns true if the value is found, and false otherwise.

```java
public function search(TreeNode? root, int value) returns boolean {
    if (root == null) {
        return false;
    } else if (root.value == value) {
        return true;
    } else if (value < root.value) {
        return search(root.left, value);
    } else {
        return search(root.right, value);
    }
}

### validate(TreeNode? root, int min, int max) returns boolean
This method validates the BST by checking that the value of each node is greater than or equal to the values in the nodes of its left subtree and less than or equal to the values in the nodes of its right subtree.

```java
public function validate(TreeNode? root, int min, int max) returns boolean {
    if (root == null) {
        return true;
    }
    if (root.value < min || root.value > max) {
        return false;
    }
    return validate(root.left, min, root.value) && validate(root.right, root.value, max);
}

