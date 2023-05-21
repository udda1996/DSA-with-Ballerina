# Selection Sort Documentation
This documentation explains a Ballerina program that implements the selection sort algorithm. The program provides a selectionSort function and a main function to demonstrate its usage.

## Overview
Selection sort is a simple sorting algorithm that divides the input into two parts: the sorted part and the unsorted part. It repeatedly selects the smallest (or largest) element from the unsorted part and swaps it with the first element of the unsorted part. The sorted part gradually grows from left to right. Selection sort has a worst-case and average-case time complexity of O(n^2), where n is the number of elements in the array.

### Dependencies
The program depends on the ballerina/io module, which provides input/output capabilities. Make sure to import it at the beginning of your Ballerina program:

```
import ballerina/io;
```

## Functions
### `selectionSort`

```
public function selectionSort(int[] arr) returns int[] {
    // Function implementation
}
```

This function implements the selection sort algorithm to sort the given array arr. It returns the sorted array.

Parameters:

- arr: The array to be sorted.

Returns: The sorted array.

## Usage
The main function demonstrates the usage of the selectionSort function:

```
public function main() {
    int[] arr = [5, 2, 8, 7, 1];
    int[] sortedArr = selectionSort(arr);
    io:println(sortedArr);
}
```

In this example, the program creates an array [5, 2, 8, 7, 1] and sorts it using the selectionSort function. The sorted array is then printed using the io:println function.

Make sure to import the ballerina/io module and run the program to see the output.

**Note: Selection sort is an efficient algorithm for small-sized arrays or when the number of swaps needs to be minimized. However, it is not the most efficient sorting algorithm for large arrays. If performance is a concern, consider using more efficient sorting algorithms like quicksort or mergesort.**