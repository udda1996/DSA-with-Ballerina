import ballerina/io;

type LinkNode record {
    int value;
    LinkNode? next;
};

type LinkedList record {
    LinkNode? head;
    int size;
};

function newLinkedList() returns LinkedList {
    return {head: null, size: 0};
}

function addNode(LinkedList l, int value) returns LinkedList {
    LinkNode newNode = {value: value, next: null};
    if (l.head == null) {
        l.head = newNode;
    } else {
        LinkNode current = <LinkNode>l.head;
        while (current.next != null) {
            current = <LinkNode>current.next;
        }
        current.next = newNode;
    }
    l.size = l.size + 1;
    return l;
}

function printList(LinkedList l) {
    LinkNode? current = l.head;
    while (current != null) {
        io:println(current.value);
        current = current.next;
    }
}


