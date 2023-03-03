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
    io:println("Hello, World!");
}
