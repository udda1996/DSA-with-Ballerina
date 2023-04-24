# Documentation for Matrix Search

This code provides an implementation of a matrix search algorithm using the Ballerina programming language. The search algorithm takes a two-dimensional matrix, a size parameter n, and a target integer x as inputs. It returns the position of x in the matrix if found, and "Not Found" otherwise.

## Functions
### search(int[][] matrix, int n, int x)
This function takes a two-dimensional integer array matrix, an integer n, and an integer x as inputs. It performs a search for the target integer x in the matrix using the given size parameter n. The search algorithm starts at the top-right corner of the matrix and moves towards the bottom-left corner, eliminating rows or columns as it searches. If x is found in the matrix, it prints the position of x in the matrix using the io:println function. If x is not found in the matrix, it prints "Not Found".

### main()
This function is the entry point of the program. It creates a matrix of integers using the matrix literal syntax and performs a search for the target integer 29 using the search function. It then prints the result of the search using the io:println function.

## Usage
To use this matrix search implementation, import the ballerina/io module and call the search function as needed to search for a target integer in a two-dimensional matrix. The main function provides an example of how to use the search function to search for a target integer in a matrix and print the result of the search.