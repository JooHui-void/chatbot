import 'package:flutter/material.dart';



class ChatBox extends StatelessWidget {
  ChatBox({this.message,this.time,this.mine});
  final message, time;
  final mine;

  @override
  Widget build(BuildContext context) {
    final align = mine?MainAxisAlignment.start : MainAxisAlignment.end;
    return Row(
      mainAxisAlignment: align,
      children: <Widget>[
        _Profile(),
        Container(
          margin: EdgeInsets.all(3.0),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            boxShadow:[
              BoxShadow(
                blurRadius: 5,
                spreadRadius: 1.0,
                color: Colors.black.withOpacity(.12)
              )
            ],
            color:mine?Colors.white:Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right:48.0),
                child:Text(message),
              ),
              Positioned(
                bottom: 0.0,
                right:0.0,
                child:Row(
                  children:<Widget>[
                    Padding(
                      padding: EdgeInsets.only(right:48.0),
                      child:Text(message),
                    ),
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize:10.0,

                      ),
                    ),
                    SizedBox(width:3.0),

                  ]
                )
              )
            ],
          ),
        )
      ],
    );
  }

  _Profile(){
    if(!mine){
      return Container();
    }else{
      return Container(
        width : 30.0,
        height : 30.0,
        decoration:new BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image:AssetImage(
              'img/chatbot.png'
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
        ),
      );
    }
  }
}
