class Node {
  int data;
  Node? next;

  Node(this.data, {this.next});
}

class LinkedList {
  Node? head;

  void removeAllOccurrences(int value) {
    while (head != null && head?.data == value) {
      head = head?.next;
    }

    Node? current = head;

    while (current?.next != null) {
      if (current?.next?.data == value) {
        current?.next = current.next?.next;
      } else {
        current = current?.next;
      }
    }
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
  list.add(2);
  list.add(4);
  list.add(2);

  print("Original Linked List:");
  list.printList();

  list.removeAllOccurrences(2);

  print("\nLinked List after Removing All Occurrences of 2:");
  list.printList();
}
