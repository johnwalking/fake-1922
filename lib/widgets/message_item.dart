import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/messages.dart';
import 'package:intl/intl.dart';

class MessageItem extends StatelessWidget {
  // const MessageItem({ Key? key }) : super(key: key);
  final Message content;
  MessageItem(this.content);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          // messages[i].time.toString(),
          DateFormat.yMMMd().add_jm().format(content.time),
          style: TextStyle(fontSize: 13, color: Colors.grey),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Color.fromRGBO(54, 221, 97, 1.0),
          margin: EdgeInsets.only(
            left: 150,
            bottom: 15,
          ),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: ListTile(
              title: Text(content.message),
            ),
          ),
        ),
      ],
    );
  }
}
