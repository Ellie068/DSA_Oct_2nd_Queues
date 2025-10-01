class QueueList {
  final List<int> _data = [];

  void enqueue(int value) {
    _data.add(value);
  }

  int? dequeue() {
    if (_data.isEmpty) return null;
    return _data.removeAt(0);
  }

  int? peek() {
    if (_data.isEmpty) return null;
    return _data.first;
  }

  bool get isEmpty => _data.isEmpty;

  @override
  String toString() {
    return _data.toString();
  }
}
