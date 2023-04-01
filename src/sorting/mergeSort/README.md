# Merge Sort Documentation

## Description
The `mergeSort` function is an implementation of the merge sort algorithm that sorts an input array of integers in ascending order. It achieves this by recursively dividing the input array into two halves until the array length is one. It then merges the two halves back together in sorted order using the `merge` function.

The `merge` function takes two input arrays and merges them into a single sorted array in ascending order.

## Functions
### `public function mergeSort(int[] arr) returns int[]`
The `mergeSort` function takes an input array of integers and returns a sorted array in ascending order using the merge sort algorithm.

#### Arguments
* `arr`: The input array of integers to be sorted.

#### Returns
* A sorted array of integers in ascending order.

### `public function merge(int[] left, int[] right) returns int[]`
The `merge` function takes two input arrays of integers and merges them into a single sorted array in ascending order.

#### Arguments
* `left`: The first input array of integers to be merged.
* `right`: The second input array of integers to be merged.

#### Returns
* A sorted array of integers in ascending order that is a merge of the two input arrays. 

## Usage
To use the `mergeSort` function, you can call it with an input array of integers. For example:
