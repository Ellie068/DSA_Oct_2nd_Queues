import 'linked_list.dart';

class QueueLinkedList {
  final LinkedList _list = LinkedList();

  void enqueue(int value) {
    _list.addLast(value);
  }

  int? dequeue() {
    return _list.removeFirst();
  }

  int? peek() {
    return _list.head?.value;
  }

  bool get isEmpty => _list.isEmpty;

  @override
  String toString() {
    return _list.toString();
  }
}
