# Queue Implementation using Linked List in Ballerina
This code demonstrates an implementation of a Queue data structure using a linked list in Ballerina.

## About
A Queue is a data structure that follows the First-In-First-Out (FIFO) principle. It operates like a line of people waiting for a service where the first person who enters is the first person to be served.

The Queue implemented in this code uses a linked list where each element is a node with a data field and a pointer to the next node. The front pointer points to the first node in the Queue, and the rear pointer points to the last node in the Queue.

## Functions
#### `newQueue()`
This function creates a new Queue with a front pointer and a rear pointer both initialized to null. The length of the Queue is also initialized to 0. It returns the new Queue.

### `enqueue(Queue q, int data)`
This function adds an element with the given data to the end of the Queue q. It creates a new node with the given data and adds it to the rear of the Queue. If the Queue is empty, it sets both front and rear pointers to the new node. It also increments the length of the Queue by 1.

### `dequeue(Queue q)`
This function removes the first element from the Queue q. It returns the data of the removed node. If the Queue is empty, it throws a panic error. If the Queue has only one node, it sets both front and rear pointers to null. It also decrements the length of the Queue by 1.

## Data structures
### ListNode
This structure represents a node in the linked list. It has two fields:

- data (int): the data stored in the node.
- next (ListNode?): a pointer to the next node in the linked list. It can be null if the node is the last one.

### Queue
This structure represents a Queue implemented using a linked list. It has three fields:

- front (ListNode?): a pointer to the first node in the Queue. It can be null if the Queue is empty.
- rear (ListNode?): a pointer to the last node in the Queue. It can be null if the Queue is empty.
- length (int): the number of elements in the Queue. It is initialized to 0 when the Queue is created.