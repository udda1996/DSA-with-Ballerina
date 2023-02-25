import ballerina/io;

type ListNode record {
    int value;
    ListNode? next;
};

type LinkedList record {
    ListNode? head;
    int size;
};

function newLinkedList() returns LinkedList {
    return {head: null, size: 0};
}

// Add a new node to the end of the list
function addNode(LinkedList l, int value) returns LinkedList {
    ListNode newNode = {value: value, next: null};
    if (l.head == null) {
        l.head = newNode;
    } else {
        ListNode current = <ListNode>l.head;
        while (current.next != null) {
            current = <ListNode>current.next;
        }
        current.next = newNode;
    }
    l.size = l.size + 1;
    return l;
}


// delete a node from the list
function deleteNode(LinkedList l, ListNode node) returns LinkedList {
    if (l.head == node) {
        l.head = node.next;
    } else {
        ListNode current = <ListNode>l.head;
        while (current.next != node) {
            current = <ListNode>current.next;
        }
        current.next = node.next;
    }
    l.size = l.size - 1;
    return l;
}

// delete the first node
function deleteFirstNode(LinkedList l) returns LinkedList {
    if (l.head != null) {
        l.head = (<ListNode>l.head).next;
        l.size = l.size - 1;
    }
    return l;
}

// delete the last node
function deleteLastNode(LinkedList l) returns LinkedList {
    if (l.head != null) {
        if ((<ListNode>l.head).next == null) {
            l.head = null;
        } else {
            ListNode current = <ListNode>l.head;
            while ((<ListNode>current.next).next != null) {
                current = <ListNode>current.next;
            }
            current.next = null;
        }
        l.size = l.size - 1;
    }
    return l;
}

// reverse the list
function reverseList(LinkedList l) returns LinkedList {
    if (l.head != null) {
        ListNode? current = l.head;
        ListNode? previous = null;
        ListNode? next = null;
        while (current != null) {
            next = current.next;
            current.next = previous;
            previous = current;
            current = next;
        }
        l.head = previous;
    }
    return l;
}
    
// print the list
function printList(LinkedList l) {
    ListNode? current = l.head;
    while (current != null) {
        io:println(current.value);
        current = current.next;
    }
}

public function main() {
    LinkedList l = newLinkedList();
    l = addNode(l, 1);
    l = addNode(l, 2);
    l = addNode(l, 5);
    l = addNode(l, 8);
    l = addNode(l, 10);

    printList(l);
}


