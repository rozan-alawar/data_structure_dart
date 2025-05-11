bool isBalancedParentheses(String s) {
  List<String> stack = [];

  for (var char in s.split('')) {
    if (char == '(') {
      stack.add(char);
    } else if (char == ')') {
      if (stack.isNotEmpty) {
        stack.removeLast();
      } else {
        return false;
      }
    }
  }

  return stack.isEmpty;
}

void main() {
  String inputStr = "(())";
  print(isBalancedParentheses(inputStr));
}
