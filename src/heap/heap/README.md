# Max Priority Queue Implementation in Ballerina
This is a Ballerina program that implements a max priority queue using an array as the underlying data structure. A priority queue is a data structure that stores a collection of elements and supports two main operations: insertion and deletion of the element with the highest priority. In a max priority queue, the element with the highest priority is the largest element.

## Implementation Details
The program defines a Ballerina record type MaxPriorityQueue that has two fields: queue and size. The queue field is an array that holds the elements of the priority queue, and the size field specifies the maximum size of the queue.

The program implements the following functions:

### `createMaxPriorityQueue(int size) returns MaxPriorityQueue`
This function creates a new empty MaxPriorityQueue with a given capacity (i.e., size). The function takes an integer argument size and returns a MaxPriorityQueue record with an empty queue (i.e., a Ballerina array of integers) and a size property that is set to the given value of size.

### `insert(MaxPriorityQueue maxPriorityQueue, int value)`
This function inserts a new value into the queue property of a given MaxPriorityQueue. If the queue is not full (i.e., its length is less than size), the new value is added to the end of the queue and the heapifyBottomUp() function is called to ensure the heap property is maintained. If the queue is full, the new value is only added if it is larger than the current minimum value in the queue, which is always stored at the root of the heap. If the new value is added, the heapifyBottomUp() function is called to ensure the heap property is maintained.

### `heapifyBottomUp(int[] queue, int index)`
This function takes an array of integers queue and an integer index that represents the index of a node that may violate the heap property (i.e., its value may be larger than its parent). The function applies a bottom-up heapify operation to restore the heap property. The function swaps the value of the node at the given index with the value of its parent node if the parent's value is smaller than the node's value, and then recursively calls itself on the parent node's index to continue the bottom-up heapify operation until the root node is reached or the heap property is restored.

### `deleteMax(MaxPriorityQueue maxPriorityQueue) returns int`
This function removes the maximum value (i.e., the root of the heap) from a given MaxPriorityQueue and returns it. The function replaces the root value with the last value in the queue, removes the last value from the queue, and then applies a top-down heapify operation to restore the heap property. The heapifyTopDown() function is called on the root node's index to continue the top-down heapify operation until the heap property is restored.

### `heapifyTopDown(int[] queue, int index)`
This function takes an array of integers queue and an integer index that represents the index of a node that may violate the heap property (i.e., its value may be smaller than one or both of its children). The function applies a top-down heapify operation to restore the heap property. The function compares the values of the node and its two children (if they exist), finds the largest value, and swaps it with the node's value if the largest value is greater than the node's value. The function then recursively calls itself on the index of the child node that was swapped with the node's value to continue the top-down heapify operation until a leaf node is reached or the heap property is restored.

### `main()`
This function is the entry point of the Ballerina program. It creates a new MaxPriorityQueue with a capacity of 6, inserts five values into the queue, inserts a new value that is larger than the current maximum, deletes the root of the heap (which is the maximum value), and then prints the remaining elements in the queue. Finally, the function runs three test assertions using the test module to ensure that the correct maximum value was removed and that the queue was resized and heapified correctly.

## How to Run the Program
To run the program, you need to have Ballerina installed on your system. You can download Ballerina from the [official website](https://ballerina.io/downloads/).

1. Open a terminal and navigate to the project directory(heap).
2. Run the command bal run to execute the program.
3. The program output should display the elements in the priority queue and the new root element after deleting the maximum element.