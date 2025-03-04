class ChatMessage {
  final String id;
  final String senderId;
  final String receiverId;
  final String courseId;
  final String message;
  final DateTime timeStamp;
  final bool isRead;

  ChatMessage({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.courseId,
    required this.message,
    required this.timeStamp,
    this.isRead = false,
  });

  factory ChatMessage.fromJson(Map<String, dynamic> json) => ChatMessage(
        id: json['id'],
        senderId: json['SenderId'],
        receiverId: json['receiverId'],
        courseId: json['courseId'],
        message: json['messaged'],
        timeStamp: DateTime.parse(json['timeStamp']),
        isRead: json['isRead'] ?? false,
      );
  Map<String, dynamic> toJson() => {
        'id': id,
        'senderId': senderId,
        'receiverId': receiverId,
        'courseId': courseId,
        'message': message,
        'timeStamp': timeStamp.toIso8601String(),
        'isRead': isRead,
      };
}
