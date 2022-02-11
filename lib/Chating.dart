import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

const Name = "채팅봇";
void main()=> runApp(MyApp());

// class MessageRight extends StatelessWidget {
//   const Message({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'채팅봇',
      home:Page(),

    );
  }
}
class Page extends StatefulWidget {
  const Page({Key? key}) : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  // final List<Message> _message = <Message>[];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

