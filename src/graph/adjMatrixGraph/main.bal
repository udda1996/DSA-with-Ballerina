import ballerina/io;

public type Graph record {
    int[][] adjMatrix;
};

public function newGraph(int numVertices) returns Graph {
    Graph graph = {adjMatrix: []};
    foreach int i in 0 ..< numVertices {
        graph.adjMatrix[i] = [];
        foreach int j in 0 ..< numVertices {
            graph.adjMatrix[i][j] = 0;
        }
    }
    return graph;
}

public function addEdge(Graph graph, int u, int v, int weight) {
    graph.adjMatrix[u][v] = weight;
    graph.adjMatrix[v][u] = weight;
}


public function main() {
    int numVertices = 5;
    Graph graph = newGraph(numVertices);
    addEdge(graph, 0, 1, 1);
    addEdge(graph, 1, 2, 2);
    addEdge(graph, 2, 3, 3);
    addEdge(graph, 3, 4, 4);
    addEdge(graph, 4, 0, 5);

    io:println("Adjacency Matrix Representation:");
    foreach int[] row in graph.adjMatrix {
        io:println(row);
    }
}
