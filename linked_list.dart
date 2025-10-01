class Node {
  Node(this.value, [this.next]);

  int value;
  Node? next;

  @override
  String toString() {
    final result = StringBuffer();
    result.write(value);
    var nextNode = next;
    while (nextNode != null) {
      result.write(' -> ');
      result.write(nextNode.value);
      nextNode = nextNode.next;
    }
    return result.toString();
  }
}

class LinkedList {
  Node? head;
  Node? tail;

  void addLast(int value) {
    final newNode = Node(value);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail?.next = newNode;
      tail = newNode;
    }
  }

  void addFirst(int value) {
    final newNode = Node(value, head);
    head = newNode;
    if (tail == null) {
      tail = newNode;
    }
  }

  int? removeFirst() {
    if (head == null) return null;
    final removedValue = head!.value;
    head = head!.next;
    if (head == null) {
      tail = null;
    }
    return removedValue;
  }

  void removeLast() {
    if (head == null) return;
    if (head!.next == null) {
      head = null;
      tail = null;
      return;
    }

    Node current = head!;
    while (current.next!.next != null) {
      current = current.next!;
    }
    current.next = null;
    tail = current;
  }

  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) {
      return 'Empty';
    }
    return head.toString();
  }
}
