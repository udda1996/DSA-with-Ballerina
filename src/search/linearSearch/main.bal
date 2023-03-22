import ballerina/io;

public function linearSearch(int[] arr, int x) returns int {
    foreach int num in arr {
        if(num == x) {
            return <int>arr.indexOf(num);
        }
    }
    return -1;
}

public function main() {
    int[] arr = [4, 2, 9, 7, 5, 1];
    int x = 5;
    int index = linearSearch(arr, x);
    if (index == -1) {
        io:println("The element " + x.toString() + " was not found in the array.");
    } else {
        io:println("The element " + x.toString() + " was found at index " + index.toString() + " in the array.");
    }
}

