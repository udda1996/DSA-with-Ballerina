# Linear Search Documentation
This documentation explains a Ballerina program that implements the linear search algorithm. The program provides a linearSearch function and a main function to demonstrate its usage.

## Overview
The linear search algorithm is a simple searching algorithm that sequentially checks each element in a collection until it finds the target element or reaches the end of the collection. The linear search algorithm has a time complexity of O(n), where n is the number of elements in the collection.

### Dependencies
The program depends on the ballerina/io module, which provides input/output capabilities. Make sure to import it at the beginning of your Ballerina program:

```
import ballerina/io;
```
## Functions
### `linearSearch`

```
public function linearSearch(int[] arr, int x) returns int {
    // Function implementation
}
```
This function implements the linear search algorithm. It searches for the element x within the given array arr. It returns the index of the element if found, or -1 if not found.

Parameters:

- arr: The array to search in.
- x: The element to search for.

Returns: The index of the element x if found, or -1 if not found.

## Usage
The main function demonstrates the usage of the linearSearch function:

```
public function main() {
    int[] arr = [4, 2, 9, 7, 5, 1];
    int x = 5;
    int index = linearSearch(arr, x);
    if (index == -1) {
        io:println("The element " + x.toString() + " was not found in the array.");
    } else {
        io:println("The element " + x.toString() + " was found at index " + index.toString() + " in the array.");
    }
}
```

In this example, the program creates an array [4, 2, 9, 7, 5, 1] and searches for the element x = 5 using the linearSearch function. If the element is found, it prints the index where it is located. Otherwise, it prints a message indicating that the element was not found in the array.

Make sure to import the ballerina/io module and run the program to see the output.

**Note: The linear search algorithm checks each element in the array sequentially until it finds a match or reaches the end. If the array is unsorted, the linear search algorithm is a suitable choice. However, for large arrays or when performance is a concern, consider using more efficient search algorithms such as binary search for sorted arrays.**