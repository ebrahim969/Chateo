class MessageModel {
  final String message;
  final String id;
  final String messageTime;

  MessageModel(
      {required this.message, required this.id, required this.messageTime});

  factory MessageModel.fromJson(jsonData) {
    return MessageModel(
        message: jsonData['message'],
        id: jsonData['id'],
        messageTime: jsonData['message_time']);
  }
}
