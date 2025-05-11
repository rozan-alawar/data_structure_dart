class Node {
  int data;
  Node? next;

  Node(this.data, {this.next});
}

class LinkedList {
  Node? head;

  void reverse() {
    Node? prev;
    Node? current = head;
    Node? nextNode;

    while (current != null) {
      nextNode = current.next;
      current.next = prev;
      prev = current;
      current = nextNode;
    }

    head = prev;
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

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();

  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);

  print("Original Linked List:");
  list.printList();

  list.reverse();

  print("\nReversed Linked List:");
  list.printList();
}
