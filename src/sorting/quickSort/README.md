# Algorithm

If the length of the input array is less than or equal to 1, return the array as it is already sorted.
Choose a pivot element from the array (in this implementation, it chooses the element at the middle index).
Create three new arrays: one for elements less than the pivot, one for elements greater than the pivot, and one for elements equal to the pivot.
Iterate through the original array and add each element to the appropriate new array.
Recursively call the quickSort function on the left and right arrays (excluding the pivot element, which is already in the equal array).
Concatenate the resulting arrays with the equal array to produce the final sorted array.


# Notes

This implementation of the quick sort algorithm uses the middle element of the array as the pivot. Other implementations may choose a different pivot strategy, such as selecting a random element or the first/last element.
This function modifies the original array in place. If you want to preserve the original array, you should create a copy of it before calling the function.
Copy code

## Functions

### `quickSort(int[])`

The quickSort function first checks if the length of the input array is less than or equal to 1. If this is the case, the function returns the array as it is already sorted. Otherwise, the function chooses a pivot element from the array (in this implementation, it chooses the element at the middle index), creates three new arrays for elements less than the pivot, greater than the pivot, and equal to the pivot, and iterates through the original array to add each element to the appropriate new array.

The function then recursively calls itself on the left and right arrays (excluding the pivot element, which is already in the equal array) and concatenates the resulting arrays with the equal array to produce the final sorted array.
