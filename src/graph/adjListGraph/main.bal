import ballerina/io;

public type Graph record {
    int[][] adjList;
};

public function newGraph(int numVertices) returns Graph {
    Graph graph = {adjList: []};
    foreach int i in 0 ..< numVertices {
        graph.adjList[i] = [];
    }
    return graph;
}

public function addEdge(Graph graph, int u, int v) {
    graph.adjList[u].push(v);
    graph.adjList[v].push(u);
}


public function main() {
    int numVertices = 5;
    Graph graph = newGraph(numVertices);
    addEdge(graph, 0, 1);
    addEdge(graph, 1, 2);
    addEdge(graph, 2, 3);
    addEdge(graph, 3, 4);
    addEdge(graph, 4, 0);
    
    io:println("Adjacency List Representation:");
    foreach int vertex in 0 ..< numVertices {
        io:println(vertex.toString() + " -> " + graph.adjList[vertex].toString());
    }
}
