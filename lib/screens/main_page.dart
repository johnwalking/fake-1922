import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/messages.dart';
import 'package:intl/intl.dart';
import '../widgets/message_item.dart';
import './camera_screen.dart';

class MainPage extends StatelessWidget {
  static const routeName = '/main-page';
  @override
  Widget build(BuildContext context) {
    final messages = Provider.of<Messages>(context).contents;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '1922',
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
        leading: Icon(Icons.arrow_back_ios, color: Colors.blue),
        backgroundColor: Color.fromARGB(255, 239, 233, 233),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (ctx, i) => MessageItem(messages[i]),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(54, 221, 97, 1.0),
        child: Icon(
          Icons.camera_alt_outlined,
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(QRViewExample.routeName);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
