class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value);
}

Node<T>? findMiddle<T>(Node<T>? head) {
  if (head == null) return null;

  Node<T>? slow = head;
  Node<T>? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }

  return slow;
}

void main() {
  final head = Node(1)
    ..next = Node(2)
    ..next!.next = Node(3)
    ..next!.next!.next = Node(4)
    ..next!.next!.next!.next = Node(5);

  final middle = findMiddle(head);

  print("Middle node: ${middle?.value}");
}
