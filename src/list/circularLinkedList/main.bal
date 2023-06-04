import ballerina/io;

type ListNode record {
    int data;
    ListNode? next;
};

type CircularLinkedList record {
    ListNode? head;
    int size;
};

// Adds a new node to the circular linked list
function addNode(CircularLinkedList list, int data) {
    ListNode newNode = {data: data, next: null};

    if (list.head == null) {
        list.head = newNode;
        newNode.next = list.head;
    } else {
        ListNode lastNode = getLastNode(<ListNode>list.head);
        lastNode.next = newNode;
        newNode.next = list.head;
    }

    list.size = list.size + 1;
}

// Traverses and prints the circular linked list
function printList(CircularLinkedList list) {
    if (list.head == null) {
        io:println("Circular Linked List is empty");
    } else {
        ListNode currentNode = <ListNode>list.head;
        while (currentNode.next != list.head) {
            io:println("Node Data: " + currentNode.data.toBalString());
            currentNode = <ListNode>currentNode.next;
        }
        // Print the last node
        io:println("Node Data: " + currentNode.data.toBalString());
    }
}

// Helper function to get the last node of the circular linked list
function getLastNode(ListNode head) returns ListNode {
    ListNode currentNode = head;
    while (currentNode.next != head) {
        currentNode = <ListNode>currentNode.next;
    }
    return currentNode;
}

// Main function to demonstrate the circular linked list
public function main() {
    CircularLinkedList list = {head: null, size: 0};

    // Add nodes to the circular linked list
    addNode(list, 10);
    addNode(list, 20);
    addNode(list, 30);
    addNode(list, 40);

    // Print the circular linked list
    printList(list);
}

