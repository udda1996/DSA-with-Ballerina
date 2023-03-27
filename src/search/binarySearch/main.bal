import ballerina/io;

public function binarySearch(int[] arr, int l, int r, int x) returns int {
    if (r >= l) {
        int mid = (l + r) / 2;
        if (arr[mid] == x) {
            return mid;
        }
        if (arr[mid] > x) {
            return binarySearch(arr, l, mid - 1, x);
        }
        return binarySearch(arr, mid + 1, r, x);
    }
    return -1;
}

public function binarySearchIterative(int[] arr, int l, int r, int x) returns int {
    int low = l;
    int high = r;
    while (low <= high) {
        int mid = (low + high) / 2;
        if (arr[mid] == x) {
            return mid;
        }
        if (arr[mid] < x) {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
    }
    return -1;
}

public function main() {
    int[] arr = [2, 3, 4, 10, 40]; // Array must be sorted
    int n = arr.length();
    int x = 10;
    int result = binarySearch(arr, 0, n - 1, x);
    if (result == -1) {
        io:println("Element is not present in array");
    } else {
        io:println("Element is present at index ", result);
    }
}
