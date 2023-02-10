import ballerina/io;

type TreeNode record {
    int value;
    TreeNode? left;
    TreeNode? right;
};

function traverseInorder(TreeNode? node)  {
    if (node == null) {  // base case for recurssion
        return;
    }
    traverseInorder(node.left);
    io:println(node.value);
    traverseInorder(node.right);
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
    traverseInorder(root);
}
