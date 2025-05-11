class Node {
  int data;
  Node? next;

  Node(this.data, {this.next});
}

class LinkedList {
  Node? head;

  void printInReverse(Node? node) {
    if (node == null) {
      return;
    }
    printInReverse(node.next);
    print(node.data);
  }

  void add(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? temp = head;
      while (temp?.next != null) {
        temp = temp?.next;
      }
      temp?.next = newNode;
    }
  }
}

void main() {
  LinkedList list = LinkedList();

  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);

  list.printInReverse(list.head);
}
