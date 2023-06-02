import ballerina/io;

type ListNode record {
    int data;
    ListNode? next;
};

type Queue record {
    ListNode? front;
    ListNode? rear;
    int length;
};

// creates a new queue
function newQueue() returns Queue {
    Queue q = {
        front: null,
        rear: null,
        length: 0
    };
    return q;
}

// adds an element to queue
function enqueue(Queue q, int data) {
    ListNode node = {data: data, next: null};
    if (q.length == 0) {
        q.front = node;
        q.rear = node;
    } else {
        ListNode rareNode = <ListNode>q.rear;
        rareNode.next = node;
        q.rear = node;
    }
    q.length = q.length + 1;
}

// removes the first element from queue
function dequeue(Queue q) returns int {
    if (q.length == 0) {
        panic error("Queue is empty");
    } else if (q.length == 1) {
        int nodeData = (<ListNode>q.front).data;
        q.length = q.length - 1;
        q.front = null;
        q.rear = null;
        return nodeData;
    }
    int data = (<ListNode>q.front).data;
    q.front = (<ListNode>q.front).next;
    q.length = q.length - 1;
    return data;
}

// main function with tests
public function main() {
    // Create a new queue
    Queue q = newQueue();

    // Enqueue elements
    enqueue(q, 10);
    enqueue(q, 20);
    enqueue(q, 30);

    // Dequeue elements and print
    io:println("Dequeued Element: " + dequeue(q).toBalString());
    io:println("Dequeued Element: " + dequeue(q).toBalString());
    io:println("Dequeued Element: " + dequeue(q).toBalString());
}
