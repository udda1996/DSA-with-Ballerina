# Graph Implementation
This code provides an implementation of a graph data structure using the Ballerina programming language. The graph is represented using an adjacency matrix.

## Types
The only type defined in the code is the Graph record type. It has a single field, adjMatrix, which is a two-dimensional array of integers.

## Functions
### `newGraph(int numVertices) returns Graph`
This function takes an integer numVertices as input and returns a new Graph with numVertices vertices and no edges. It initializes the adjMatrix field of the Graph to a two-dimensional array of zeros.

### `addEdge(Graph graph, int u, int v, int weight)`
This function takes a Graph instance graph, two integers u and v, and an integer weight as input. It adds an edge between vertices u and v with weight weight by setting the corresponding entries in the adjacency matrix to weight.

### `main()`
This function is the entry point of the program. It creates a Graph instance with 5 vertices using the newGraph function and adds weighted edges to create a simple cycle. It then prints the adjacency matrix representation of the graph using the io:println function.

## Usage
To use this graph implementation, import the ballerina/io module and call the newGraph and addEdge functions as needed to create and modify the graph. The main function provides an example of how to use these functions to create a simple cycle with weighted edges and print the adjacency matrix representation of the resulting graph.