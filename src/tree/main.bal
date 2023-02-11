import ballerina/io;

type TreeNode record {
    int value;
    TreeNode? left;
    TreeNode? right;
};

function traversePreorder(TreeNode? node)  {
    if (node == null) {  // base case for recurssion
        return;
    }
    io:println(node.value);
    traverseInorder(node.left);
    traverseInorder(node.right);
}

function traverseInorder(TreeNode? node)  {
    if (node == null) {  // base case for recurssion
        return;
    }
    traverseInorder(node.left);
    io:println(node.value);
    traverseInorder(node.right);
}

function traversePostorder(TreeNode? node)  {
    if (node == null) {  // base case for recurssion
        return;
    }
    traverseInorder(node.left);
    traverseInorder(node.right);
     io:println(node.value);
}

function traverseLevelOrder(TreeNode root)  {
    TreeNode[] queue = [];  // queue to store the nodes of the tree
    queue.push(root);

    while (queue.length() > 0) {
        TreeNode node = queue.shift();
        io:println(node.value);

        if (node.left != null) {
            queue.push(<TreeNode>node.left);
        }
        if (node.right != null) {
            queue.push(<TreeNode>node.right);
        }
    }
}

public function main() {
    // initialization of the binary tree
    TreeNode root = {
        value: 10,
        left: {
            value: 7,
            left: {
                value: 3,
                left: null,
                right: null
            },
            right: {
                value: 8,
                left: null,
                right: null
            }
        },
        right: {
            value: 15,
            left: {
                value: 12,
                left: null,
                right: null
            },
            right: {
                value: 17,
                left: null,
                right: null
            }
        }
    };
    io:println("Preorder traversal of the binary tree: ");
    traversePreorder(root);
    io:println("Inorder traversal of the binary tree: ");
    traverseInorder(root);
    io:println("Postorder traversal of the binary tree: ");
    traversePostorder(root);
    io:println("Level order traversal of the binary tree: ");
    traverseLevelOrder(root);
}
