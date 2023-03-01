type ListNode record {
    int data;
    ListNode? next;
};

type Queue record {
    ListNode? front;
    ListNode? rear;
    int length;
};

function newQueue() returns Queue {
    Queue q = {
        front: null,
        rear: null,
        length: 0
    };
    return q;
}

function enqueue(Queue q, int data) {
    ListNode node = {data: data, next: null};
    if (q.length == 0) {
        q.front = node;
        q.rear = node;
    } else {
        q.rear.next = node;
        q.rear = node;
    }
    q.length = q.length + 1;
}

function dequeue(Queue q) returns int {
    if (q.length == 0) {
        panic error("Queue is empty");
    } else if (q.length == 1) {
        q.length = q.length - 1;
        q.front = null;
        q.rear = null;
        return (<ListNode>q.front).data;
    }
    int data = (<ListNode>q.front).data;
    q.front = (<ListNode>q.front).next;
    q.length = q.length - 1;
    return data;
}