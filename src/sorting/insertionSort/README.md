# Insertion Sort Documentation
This documentation explains a Ballerina program that implements the insertion sort algorithm. The program provides an insertionSort function and a main function to demonstrate its usage.

## Overview
Insertion sort is a simple sorting algorithm that builds the final sorted array one item at a time. It repeatedly takes an element from the unsorted part of the array and inserts it into its correct position in the sorted part of the array. The algorithm maintains a sorted sublist and gradually expands it until the entire array is sorted. Insertion sort has a worst-case and average-case time complexity of O(n^2), where n is the number of elements in the array.

### Dependencies
The program depends on the ballerina/io module, which provides input/output capabilities. Make sure to import it at the beginning of your Ballerina program:

```
import ballerina/io;
``` 

## Functions
### `insertionSort`
```
public function insertionSort(int[] arr) returns int[] {
    // Function implementation
}
```
This function implements the insertion sort algorithm to sort the given array arr. It returns the sorted array.

Parameters:

- arr: The array to be sorted.

Returns: The sorted array.
## Usage
The main function demonstrates the usage of the insertionSort function:

```
public function main() {
    int[] arr = [3, 60, 35, 2, 45, 320, 5];
    int[] sortedArr = insertionSort(arr);
    io:println(sortedArr);
}
```

In this example, the program creates an array [3, 60, 35, 2, 45, 320, 5] and sorts it using the insertionSort function. The sorted array is then printed using the io:println function.

Make sure to import the ballerina/io module and run the program to see the output.

**Note: Insertion sort is an efficient algorithm for small-sized or partially sorted arrays. However, it may not be the best choice for large or highly unsorted arrays. If performance is a concern, consider using more efficient sorting algorithms like quicksort or mergesort.**