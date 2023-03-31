import ballerina/io;
import ballerina/test;

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
        heapifyBottomUp(maxPriorityQueue.queue, maxPriorityQueue.queue.length() - 1);
    } else {
        if (maxPriorityQueue.queue[0] < value) {
            maxPriorityQueue.queue[0] = value;
            heapifyBottomUp(maxPriorityQueue.queue, maxPriorityQueue.queue.length() - 1);
        }
    }
}

// Bottom up hepify (swim)
function heapifyBottomUp(int[] queue, int index) {
    int parentIndex = (index - 1) / 2;
    if (queue[parentIndex] < queue[index]) {
        int temp = queue[parentIndex];
        queue[parentIndex] = queue[index];
        queue[index] = temp;
        heapifyBottomUp(queue, parentIndex);
    }
}

function deleteMax(MaxPriorityQueue maxPriorityQueue) returns int {
    int max = maxPriorityQueue.queue[0];
    int tail = maxPriorityQueue.queue.pop();
    maxPriorityQueue.queue[0] = tail;
    heapifyTopDown(maxPriorityQueue.queue, 0);
    return max;
}

function heapifyTopDown(int[] queue, int index) {
    if (queue.length() > 2*index) {
        int maxElement = queue[index];
        int maxIndex = index;
        if (2*index + 1 <= queue.length() - 1 && maxElement < queue[2*index + 1]) {
            maxElement = queue[2*index + 1];
            maxIndex = 2*index + 1;
        }
        if (2*index + 2 <= queue.length() - 1 && maxElement < queue[2*index + 2]) {
            maxElement = queue[2*index + 2];
            maxIndex = 2*index + 2;
        }

        if (index != maxIndex){
            int temp = queue[index];
            queue[index] = queue[maxIndex];
            queue[maxIndex] = temp;

            heapifyTopDown(queue, maxIndex);
        } else {
            return;
        }
    } else {
        return;
    }
    
}

public function main() {
    // create a max priority queue with size 5
    MaxPriorityQueue maxPriorityQueue = createMaxPriorityQueue(6);

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

    // delete the root of thee heap
    int max = deleteMax(maxPriorityQueue);
    test:assertEquals(max, 60, "Max value should be 60");
    test:assertEquals(maxPriorityQueue.queue.length(), 5, "Queue size should be 5");
    test:assertEquals(maxPriorityQueue.queue[0], 50, "Root node should be 50");

    io:println("The new root value is : ", maxPriorityQueue.queue[0]);
}
