// trees link nodes in a parent/child relationship
// there're nodes that depend on or come off other nodes
// root node = first node on the tree
// children nodes = all nodes that come off that root node
// leaf nodes = nodes at the bottom of the tree with no descendants
// height of tree is determined by the number of parent/child connections
// *** The only valid connection between the nodes is from parent to child
// Connection between siblings or from child to parent are not allowed in trees

// BINARY TREES
// Binary trees are a type of tree in which each node has a maximum of two children
// In searching, binary search trees (BSTs) are used
// BSTs are just like binary trees but information within them is ordered in a waty that makes them a suitable data structure for searching
// In BST, values are ordered so that each node that descends to the left side of its parent must have a val less than its parent
// each node that descends to the right side of its parents must have a val greater than its parent

class Node {
	constructor(data) {
		this.data = data;
		this.left = null;
		this.right = null;
	}
}

class BinarySearchTree {
	constructor() {
		this.root = null;
	}

	insert(data) {
		const newNode = new Node(data);
		if (this.root === null) {
			this.root = newNode;
			return this;
		} else {
			this.insertNode(this.root, newNode);
		}
	}

	insertNode(node, newNode) {
		if (newNode.data < node.data) {
			if (node.left === null) {
				node.left = newNode;
			} else {
				this.insertNode(node.left, newNode);
			}
		} else {
			if (node.right === null) {
				node.right = newNode;
			} else {
				this.insertNode(node.right, newNode);
			}
		}
	}
}
