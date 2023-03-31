import ballerina/io;

public function mergeSort(int[] arr) returns int[] {
    if (arr.length() == 1) {
        return arr;
    }

    int[] left;
    int[] right;
    int[] result;
    int mid = arr.length() / 2;
    
    left = arr.slice(0, mid);
    right = arr.slice(mid, arr.length());
    left = mergeSort(left);
    right = mergeSort(right);
    result = merge(left, right);
    return result;
}

public function merge(int[] left, int[] right) returns int[] {
    int[] result = [];
    int i = 0;
    int j = 0;
    int k = 0;
    while (i < left.length() && j < right.length()) {
        if (left[i] < right[j]) {
            result[k] = left[i];
            i = i + 1;
            k = k + 1;
        } else {
            result[result.length()] = right[j];
            j = j + 1;
            k = k + 1;
        }
    }
    while (i < left.length()) {
        result[k] = left[i];
        i = i + 1;
        k = k + 1;
    }
    while (j < right.length()) {
        result[k] = right[j];
        j = j + 1;
        k = k + 1;
    }
    return result;
}
public function main() {
    int[] arr = [5, 4, 3, 2, 1, -1, 10, 13,20];
    int[] result = mergeSort(arr);
    io:println(result);
}
