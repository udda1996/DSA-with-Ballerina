# Bubble Sort Documentation
This documentation explains a Ballerina program that implements the bubble sort algorithm. The program provides a bubbleSort function and a main function to demonstrate its usage.

## Overview
Bubble sort is a simple sorting algorithm that repeatedly steps through the array, compares adjacent elements, and swaps them if they are in the wrong order. The algorithm continues until the array is sorted. Bubble sort has a worst-case and average-case time complexity of O(n^2), where n is the number of elements in the array.

### Dependencies
The program depends on the ballerina/io module, which provides input/output capabilities. Make sure to import it at the beginning of your Ballerina program:

```
import ballerina/io;
``` 
## Functions
### `bubbleSort`

```
public function bubbleSort(int[] arr) returns int[] {
    // Function implementation
}
```

This function implements the bubble sort algorithm to sort the given array arr. It returns the sorted array.

Parameters:

- arr: The array to be sorted.

Returns: The sorted array.

## Usage
The main function demonstrates the usage of the bubbleSort function:
 ```
public function main() {
    int[] arr = [3, 60, 35, 2, 45, 320, 5, -1];
    int[] sortedArr = bubbleSort(arr);
    io:println(sortedArr);
}
``` 

In this example, the program creates an array [3, 60, 35, 2, 45, 320, 5, -1] and sorts it using the bubbleSort function. The sorted array is then printed using the io:println function.

Make sure to import the ballerina/io module and run the program to see the output.

**Note: Bubble sort is a simple sorting algorithm suitable for small-sized arrays. However, it is not efficient for large arrays. If performance is a concern, consider using more efficient sorting algorithms like quicksort or mergesort.**