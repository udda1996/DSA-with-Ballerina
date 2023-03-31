import ballerina/io;

public function selectionSort(int[] arr) returns int[] {
    int n = arr.length();
    int temp = 0;
    foreach int i in  0...n-2 {
        int min = i;
        foreach int j in (i + 1)...(n - 1) {
            if (arr[j] < arr[min]) {
                min = j;
            }
        }
        temp = arr[i];
        arr[i] = arr[min];
        arr[min] = temp;
    }
    return arr;
}

public function main() {
    int[] arr = [5, 2, 8, 7, 1];
    int[] sortedArr = selectionSort(arr);
    io:println(sortedArr);
}
