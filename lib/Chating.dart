import 'package:chatbot/WIdget/ChatBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:chatbot/ChatData.dart'
const Name = "채팅봇";
void main()=> runApp(Chating());

// class MessageRight extends StatelessWidget {
//   const Message({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

class Chating extends StatelessWidget {
  const Chating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'채팅봇',
      home:ChatScreen(),

    );
  }
}
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  TextEditingController _tec = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: <Widget>[
          Flexible(
            child:Stack(
              children: <Widget>[
                Positioned(
                  top: 0.0,
                  child: Container(
                    color: Colors.lightBlueAccent,
                  ),
                ),

              ],
            ),
          ),
          _bottomBar(),
        ],
      ),
    );
  }

  Widget _bottomBar(){
    return IconTheme(
      data:IconThemeData(
        color:Colors.lightBlueAccent,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal:4.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child:TextField(
                controller:_tec,
                style:TextStyle(color:Colors.white),
                decoration: InputDecoration(
                  border:InputBorder.none,
                ),
              ),
            ),
            Container(
              margin:EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: (){
                  final chatData = ChatData(
                    message:_tec.text,

                    time: _gettime(),

                  );

                },
              ),
            ),

          ],
        ),
      ),

    );
  }
  _gettime(){
    final f = new DateFormat('hh:mm');
    return f.format(new DateTime.now());
  }
  _makeItem(){

  }

}




