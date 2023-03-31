import ballerina/io;

public function insertionSort (int[] arr) returns int[] {
    int n = arr.length();
    int i = 1;
    while (i < n) {
        int j = i;
        while (j > 0 && arr[j] < arr[j - 1]) {
            int temp = arr[j];
            arr[j] = arr[j - 1];
            arr[j - 1] = temp;
            j = j - 1;
        }
        i = i + 1;
    }
    return arr;
}

public function main() {
    int[] arr = [3, 60, 35, 2, 45, 320, 5];
    int[] sortedArr = insertionSort(arr);
    io:println(sortedArr);
}
