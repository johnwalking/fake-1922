import 'package:flutter/foundation.dart';

class Message with ChangeNotifier {
  final String id;
  final String message;
  final DateTime time;
  Message(this.id, this.message, this.time);
}

class Messages with ChangeNotifier {
  List<Message> messages = [
    Message(
        '1', '場所代碼：2619 8024 1124 236 本簡訊是簡訊實聯制發送，限防疫目的使用。', DateTime.now()),
    Message('2', '場所代碼：2195 8966 4272 359  場域名稱：路易莎咖啡復興辛亥門市 限防疫目的使用。',
        DateTime.now()),
    Message('3', '場所代碼：2952 2488 5872 723 本次簡訊實聯限防疫目的使用。', DateTime.now()),
    Message(
        '4', '場所代碼：2372 0212 3524 955 場域名稱：木柵撞球運動館 限防疫目的使用', DateTime.now()),
    Message(
        '5', '場所代碼：2372 0212 3524 955 場域名稱：木柵撞球運動館 限防疫目的使用', DateTime.now()), 
  ];

  List<Message> get contents {
    return messages;
  }

  void add(String id, String content) {
    messages.add(
      Message(id, content, DateTime.now()),
    );
    notifyListeners();
  }
}
