import 'package:animated_task/Pages/Login.dart';
import 'package:flutter/material.dart';


import 'Pages/SignUp.dart';
import 'Pages/animated.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SignUp(),
      routes: {
       
        '/sign' :(context) => SignUp(), 
        '/log' :(context) => LogIn(),
        '/Anmi' :(context) => Animated(),
      },
      debugShowCheckedModeBanner: false,
      
    );
  }
}