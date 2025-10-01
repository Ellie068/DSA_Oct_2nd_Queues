import 'queue_list.dart';
import 'queue_linked_list.dart';

void main() {
  print("=== Queue with List ===");
  final q1 = QueueList();
  q1.enqueue(10);
  q1.enqueue(20);
  q1.enqueue(30);
  print(q1);
  print(q1.dequeue());
  print(q1.peek());
  print(q1);

  print("\n=== Queue with LinkedList ===");
  final q2 = QueueLinkedList();
  q2.enqueue(42);
  q2.enqueue(99);
  q2.enqueue(7);
  print(q2);
  print(q2.dequeue());
  print(q2.peek());
  print(q2);
}
