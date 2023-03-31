import ballerina/io;

public function bubbleSort(int[] arr) returns int[] {
    int n = arr.length();
    int temp = 0;
    boolean swapped = false;
    foreach int i in 0...n-2 {
        foreach int j in 1...n-1-i {
            if (arr[j - 1] > arr[j]) {
                //swap elements
                temp = arr[j - 1];
                arr[j - 1] = arr[j];
                arr[j] = temp;
                swapped = true;
            }
        }
        if (!swapped) {
            break;
        }
    }
    return arr;
}

public function main() {
    int[] arr = [3, 60, 35, 2, 45, 320, 5, -1];
    int[] sortedArr = bubbleSort(arr);
    io:println(sortedArr);
}
