# Binary Search Documentation
This documentation explains a Ballerina program that implements the binary search algorithm. The program provides two functions, binarySearch and binarySearchIterative, along with a main function to demonstrate their usage.

## Overview
The binary search algorithm is an efficient way to search for a specific element in a sorted array. It works by repeatedly dividing the search space in half until the target element is found or determined to be absent. The binary search algorithm has a time complexity of O(log n), where n is the number of elements in the array.

### Dependencies
The program depends on the ballerina/io module, which provides input/output capabilities. Make sure to import it at the beginning of your Ballerina program:

```
import ballerina/io;
```
## Functions

### `binarySearch`

```
public function binarySearch(int[] arr, int l, int r, int x) returns int {
    // Function implementation
}
``` 

This function implements the binary search algorithm recursively. It searches for the element x within the given sorted array arr between indices l and r. It returns the index of the element if found, or -1 if not found.

Parameters:

- arr: The sorted array to search in.
- l: The starting index of the search range.
- r: The ending index of the search range.
- x: The element to search for.

Returns: The index of the element x if found, or -1 if not found.

### `binarySearchIterative`

```
public function binarySearchIterative(int[] arr, int l, int r, int x) returns int {
    // Function implementation
}
```
This function implements the binary search algorithm iteratively. It searches for the element x within the given sorted array arr between indices l and r. It returns the index of the element if found, or -1 if not found.

Parameters:

- arr: The sorted array to search in.
- l: The starting index of the search range.
- r: The ending index of the search range.
- x: The element to search for.

Returns: The index of the element x if found, or -1 if not found.

## Usage

The main function demonstrates the usage of the binarySearch function:

```
public function main() {
    int[] arr = [2, 3, 4, 10, 40]; // Array must be sorted
    int n = arr.length();
    int x = 10;
    int result = binarySearch(arr, 0, n - 1, x);
    if (result == -1) {
        io:println("Element is not present in the array");
    } else {
        io:println("Element is present at index ", result);
    }
}
``` 

In this example, the program creates an array [2, 3, 4, 10, 40], which must be sorted in ascending order. It then searches for the element x = 10 using the binarySearch function. If the element is found, it prints the index where it is located. Otherwise, it prints a message indicating that the element is not present in the array.

Make sure to import the ballerina/io module and run the program to see the output.

**Note: The program assumes that the array is sorted in ascending order. If the array is not sorted, the binary search algorithm will not produce the correct result.**