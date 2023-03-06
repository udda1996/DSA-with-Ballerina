import ballerina/io;

type MaxPriorityQueue record {
    int[] queue;
    int size;
};

function createMaxPriorityQueue(int size) returns MaxPriorityQueue {
    MaxPriorityQueue maxPriorityQueue = {queue: [], size: size};
    return maxPriorityQueue;
}

function insert(MaxPriorityQueue maxPriorityQueue, int value) {
    if (maxPriorityQueue.queue.length() < maxPriorityQueue.size) {
        maxPriorityQueue.queue[maxPriorityQueue.queue.length()] = value;
        heapify(maxPriorityQueue.queue, maxPriorityQueue.queue.length() - 1);
    } else {
        if (maxPriorityQueue.queue[0] < value) {
            maxPriorityQueue.queue[0] = value;
            heapify(maxPriorityQueue.queue, maxPriorityQueue.queue.length() - 1);
        }
    }
}

function heapify(int[] queue, int index) {
    int parentIndex = (index - 1) / 2;
    if (queue[parentIndex] < queue[index]) {
        int temp = queue[parentIndex];
        queue[parentIndex] = queue[index];
        queue[index] = temp;
        heapify(queue, parentIndex);
    }
}

public function main() {
    // create a max priority queue with size 5
    MaxPriorityQueue maxPriorityQueue = createMaxPriorityQueue(5);

    // insert values into the queue
    insert(maxPriorityQueue, 10);
    insert(maxPriorityQueue, 20);
    insert(maxPriorityQueue, 30);
    insert(maxPriorityQueue, 40);
    insert(maxPriorityQueue, 50);

    // insert a value that is greater than the current maximum
    insert(maxPriorityQueue, 60);

    // print the elements in the queue
    io:println("Elements in the max priority queue:");
    foreach int i in maxPriorityQueue.queue {
        io:println(i);
    }
}
