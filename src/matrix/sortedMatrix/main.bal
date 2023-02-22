import ballerina/io;

public function search(int[][] matrix, int n, int x) {
    int i = 0;
    int j = n - 1;
    while (i < n && j >= 0) {
        if (matrix[i][j] == x) {
            io:println("Found at ", i, " ", j);
        }
        if (matrix[i][j] > x) {
            j = j - 1;
        } else {
            i = i + 1;
        }
    }
    io:println("Not Found");
}

public function main() {
    int[][] matrix = [[10, 20, 30, 40], [15, 25, 35, 45], [27, 29, 37, 48], [32, 33, 39, 50]];
    search(matrix, 4, 29);
}
