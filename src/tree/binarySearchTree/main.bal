import ballerina/io;
public type TreeNode record {
    int value;
    TreeNode? left;
    TreeNode? right;
};

public type BinarySearchTree record {
    TreeNode? root;
};

// A utility function to insert a new node with given key in BST
public function insert(TreeNode? node, int value) returns TreeNode? {
    if (node == null) {
        TreeNode leaf = {value: value, left: null, right: null};
        return leaf;
    } else if (value < node.value) {
        node.left = insert(node.left, value);
    } else {
        node.right = insert(node.right, value);
    }
    return node;
}

public function insertValue(BinarySearchTree tree, int value) {
    tree.root = insert(tree.root, value);
}

// A utility function to do inorder traversal of BST
public function inOrder(TreeNode? root) {
    if (root == null) {
        return;
    }

    inOrder(root.left);
    io:println(root.value);
    inOrder(root.right);
}

// A utility function to search a given key in BST
public function search(TreeNode? root, int value) returns boolean {
    if (root == null) {
        return false;
    } else if (root.value == value) {
        return true;
    } else if (value < root.value) {
        return search(root.left, value);
    } else {
        return search(root.right, value);
    }
}

public function validate(TreeNode? root, int min, int max) returns boolean {
    if (root == null) {
        return true;
    }
    if (root.value < min || root.value > max) {
        return false;
    }
    return validate(root.left, min, root.value) && validate(root.right, root.value, max);
}

public function main() {
    BinarySearchTree tree = {root: null};
    insertValue(tree, 5);
    insertValue(tree, 6);
    insertValue(tree, 3);
    insertValue(tree, 9);
    insertValue(tree, 1);
    insertValue(tree, 2);
    insertValue(tree, 10);

    io:println("Inorder traversal of the given binary search tree");
    inOrder(tree.root);

    io:println("Search for 10");
    io:println(search(tree.root, 10));
}
