import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:chatbot/Login.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'splash',
      home:AnimatedSplashScreen(
        splash:Container(
          child:Column(
            children: <Widget>[
              Text(
                'hello',
              )
            ],
          )
        ),
        nextScreen: Login(),
        splashTransition: SplashTransition.fadeTransition,
        duration:3000,
        // backgroundColor: Colors.white,
      )

    );
  }
}



