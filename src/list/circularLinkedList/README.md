# Circular Linked List Implementation in Ballerina

This is an example of implementing a circular linked list in Ballerina. It provides a data structure for a circular linked list along with functions to add nodes, print the list, and a helper function to get the last node.

## Data Types

### `ListNode`
Represents a single node in the circular linked list.

```
type ListNode record {
    int data;            // Data stored in the node.
    ListNode next;       // Reference to the next node in the list.
};
```

### `CircularLinkedList`
Represents the circular linked list.

```
type CircularLinkedList record {
    ListNode? head;      // Reference to the head (first node) of the list.
    int size;            // Number of nodes in the list.
};
```

## Functions
### `addNode(list, data)`
Adds a new node to the circular linked list.

Parameters:
- list: The circular linked list to which the node should be added.
- data: The data value to be stored in the new node.
  
```
function addNode(CircularLinkedList list, int data) {
    // Implementation details...
}
printList(list)
```

Traverses and prints the circular linked list.

Parameter:
- list: The circular linked list to be printed.

```
function printList(CircularLinkedList list) {
    // Implementation details...
}
``` 

### `getLastNode(head)`
Helper function to get the last node of the circular linked list.

Parameter:

- head: The head of the circular linked list.

Returns:

The last node in the circular linked list.

```
function getLastNode(ListNode head) returns ListNode {
    // Implementation details...
}
```

### `main()`
Main function to demonstrate the circular linked list.

```
public function main() {
    // Implementation details...
}
```

## Usage Example
Here's an example usage of the circular linked list implementation:

```
// Create a new circular linked list
CircularLinkedList list = {head: null, size: 0};

// Add nodes to the list
addNode(list, 10);
addNode(list, 20);
addNode(list, 30);

// Print the list
printList(list);
```

This example creates a new circular linked list, adds nodes to it using the addNode function, and then prints the list using the printList function.
