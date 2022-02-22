import 'package:flutter/material.dart';
import 'package:chatbot/Chating.dart';
import 'package:chatbot/Profile.dart';
import 'package:chatbot/Login.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'메인',
      home:HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _index = 0;
  var _pages = <Widget>[
    Login(),
    Chating(),
    Login(),

  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child:Scaffold(
        appBar:AppBar(
          title: Text('app'),

        ),
        bottomNavigationBar: TabBar(
          tabs: <Widget>[
            Tab(
                icon:Icon(Icons.home)
            ),
            Tab(
                icon:Icon(Icons.forum)
            ),
            Tab(
                icon:Icon(Icons.settings)
            ),
          ],
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
        ),
        body:TabBarView(
          children: _pages,
        ),
      ),
      );


  }
}

