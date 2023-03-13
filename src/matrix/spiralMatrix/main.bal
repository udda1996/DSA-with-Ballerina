import ballerina/io;

function spiralOrder(int[][] matrix) returns int[] {
    int[] result = [];
    int rowStart = 0;
    int rowEnd = matrix.length() - 1;
    int colStart = 0;
    int colEnd = matrix[0].length() - 1;
    
    while (rowStart <= rowEnd && colStart <= colEnd) {
        int i = colStart;
        while (i <= colEnd) {
            result.push(matrix[rowStart][i]);
            i = i + 1;
        }
        rowStart = rowStart + 1;
        
        i = rowStart;
        while (i <= rowEnd) {
            result.push(matrix[i][colEnd]);
            i = i + 1;
        }
        colEnd = colEnd - 1;
        
        if (rowStart <= rowEnd) {
            i = colEnd;
            while (i >= colStart) {
                result.push(matrix[rowEnd][i]);
                i = i - 1;
            }
        }
        rowEnd = rowEnd - 1;
        
        if (colStart <= colEnd) {
            i = rowEnd;
            while (i >= rowStart) {
                result.push(matrix[i][colStart]);
                i = i - 1;
            }
        }
        colStart = colStart + 1;
    }
    
    return result;
};

public function main() {
    int[][] matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
    int[] result = spiralOrder(matrix);
    io:println(result);
}
