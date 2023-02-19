class Task {
  final String message;
  final String type;
  final DateTime time;
  // final double amount;

  Task({
    required this.message,
    required this.time,
    required this.type,
    // required this.amount,
  });

  Map<String, dynamic> tojson() => {
        'id': DateTime.now().toString(),
        'title': message,
        'type': type,
        'time': time.toString(),
      };
}
