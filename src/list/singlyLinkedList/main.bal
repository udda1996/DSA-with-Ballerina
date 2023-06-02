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

// Add a new node to the beginning of the list
function addFirstNode(LinkedList l, int value) returns LinkedList {
    ListNode newNode = {value: value, next: l.head};
    l.head = newNode;
    l.size = l.size + 1;
    return l;
}

// Add a new node to the end of the list
function addLastNode(LinkedList l, int value) returns LinkedList {
    return addNode(l, value);
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

// find a value in the list
function findNode(LinkedList l, int value) returns boolean {
    ListNode? current = l.head;
    while (current != null) {
        if (current.value == value) {
            return true;
        }
        current = current.next;
    }
    return false;
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

// get the middle node of the list
function getMiddleNode(LinkedList l) returns ListNode? {
    if (l.head != null) {
        ListNode? slow = l.head;
        ListNode? fast = l.head;
        while (fast != null && fast.next != null) {
            slow = (<ListNode>slow).next;
            fast = (<ListNode>fast.next).next;
        }
        return slow;
    }
    return null;
}
    
// get the nth node from the end of the list
function getNthFromLast(LinkedList l, int n) returns ListNode? {
    if (l.head != null) {
        ListNode? mainPtr = l.head;
        ListNode? refPtr = l.head;
        int count = 0;
        while (count < n) {
            if (refPtr == null) {
                return null;
            }
            refPtr = (<ListNode>refPtr).next;
            count = count + 1;
        }
        while (refPtr != null) {
            mainPtr = (<ListNode>mainPtr).next;
            refPtr = (<ListNode>refPtr).next;
        }
        return mainPtr;
    }
    return null;
}

// remove duplicates from the list
function removeDuplicatesFromSorted(LinkedList l) returns LinkedList {
    if (l.head != null) {
        ListNode? current = l.head;
        while (current != null && current.next != null) {
            if (current.value == (<ListNode>current.next).value) {
                current.next = (<ListNode>current.next).next;
            } else {
                current = current.next;
            }
        }
    }
    return l;
}

// insert a node in a sorted list
function insertInSortedList(LinkedList l, int value) returns LinkedList {
    ListNode newNode = {value: value, next: null};
    if (l.head == null) {
        l.head = newNode;
    } else {
        ListNode? current = l.head;
        ListNode? previous = null;
        while (current != null && current.value < value) {
            previous = current;
            current = current.next;
        }
        if (previous == null) {
            newNode.next = l.head;
            l.head = newNode;
        } else {
            newNode.next = current;
            previous.next = newNode;
        }
    }
    l.size = l.size + 1;
    return l;
}

// check if the list contains a loop
function containsLoop(LinkedList l) returns boolean {
    if (l.head != null) {
        ListNode? slow = l.head;
        ListNode? fast = l.head;
        while (fast != null && fast.next != null) {
            slow = (<ListNode>slow).next;
            fast = (<ListNode>fast.next).next;
            if (slow == fast) {
                return true;
            }
        }
    }
    return false;
}

// find the start node of the loop. Uses Floyd's cycle-finding algorithm
function startNodeInALoop(LinkedList l) returns ListNode? {
    if (l.head != null) {
        ListNode? slow = l.head;
        ListNode? fast = l.head;
        while (fast != null && fast.next != null) {
            slow = (<ListNode>slow).next;
            fast = (<ListNode>fast.next).next;
            if (slow == fast) {
                break;
            }
        }
        if (slow == fast) {
            slow = l.head;
            while (slow != fast) {
                slow = (<ListNode>slow).next;
                fast = (<ListNode>fast).next;
            }
            return slow;
        }
    }
    return null;
}

// remove the loop in the list
function removeLoop(LinkedList l) returns LinkedList {
    if (l.head != null) {
        ListNode? slow = l.head;
        ListNode? fast = l.head;
        while (fast != null && fast.next != null) {
            slow = (<ListNode>slow).next;
            fast = (<ListNode>fast.next).next;
            if (slow == fast) {
                break;
            }
        }
        if (slow == fast) {
            ListNode? temp = l.head;
            while ((<ListNode>temp).next != (<ListNode>fast).next) {
                temp = (<ListNode>temp).next;
                fast = (<ListNode>fast).next;
            }
            ListNode lastNode = <ListNode>fast;
            lastNode.next = null;
        }
    }
    return l;
}

// merge two sorted lists
function mergeLists(LinkedList l1, LinkedList l2) returns LinkedList {
    LinkedList mergedList = newLinkedList();
    ListNode? current1 = l1.head;
    ListNode? current2 = l2.head;
    while (current1 != null && current2 != null) {
        if (current1.value < current2.value) {
            mergedList = addNode(mergedList, current1.value);
            current1 = current1.next;
        } else {
            mergedList = addNode(mergedList, current2.value);
            current2 = current2.next;
        }
    }
    while (current1 != null) {
        mergedList = addNode(mergedList, current1.value);
        current1 = current1.next;
    }
    while (current2 != null) {
        mergedList = addNode(mergedList, current2.value);
        current2 = current2.next;
    }
    return mergedList;
}

// add two linked lists
function addTwoLinkedLists(LinkedList l1, LinkedList l2) returns LinkedList {
    LinkedList sumList = newLinkedList();
    ListNode? current1 = l1.head;
    ListNode? current2 = l2.head;
    int carry = 0;
    while (current1 != null || current2 != null) {
        int sum = carry;
        if (current1 != null) {
            sum = sum + current1.value;
            current1 = current1.next;
        }
        if (current2 != null) {
            sum = sum + current2.value;
            current2 = current2.next;
        }
        carry = sum / 10;
        sum = sum % 10;
        sumList = addNode(sumList, sum);
    }
    if (carry > 0) {
        sumList = addNode(sumList, carry);
    }
    return sumList;
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


