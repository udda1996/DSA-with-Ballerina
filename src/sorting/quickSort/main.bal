import ballerina/io;

function quickSort(int[] arr) returns int[] {
    if  arr.length() <= 1 {
        return arr;
    }
    int pivot = arr[arr.length() / 2];
    int[] left = [];
    int[] right = [];
    int[] equal = [];
    foreach int i in arr {
        if (i < pivot) {
            left.push(i);
        } else if (i > pivot) {
            right.push(i);
        } else {
            equal.push(i);
        }
    }
    int [] sortedLeft = quickSort(left);
    int [] sortedRight = quickSort(right);
    int [] sorted = [];
    foreach int i in sortedLeft {
        sorted.push(i);
    }
    foreach int i in equal {
        sorted.push(i);
    }
    foreach int i in sortedRight {
        sorted.push(i);
    }

    return sorted;
}


public function main() {
    int[] arr = [3, 6, 1, 8, 2, 4];
    io:println("Before sorting: " , arr);
    arr = quickSort(arr);
    io:println("After sorting: " , arr);
}
