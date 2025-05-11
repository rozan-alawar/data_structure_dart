void reverseList(List<int> items) {
  final stack = <int>[];

  for (var item in items) {
    stack.add(item);
  }

  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}

void main() {
  reverseList([1, 2, 3, 4, 5]);
}
