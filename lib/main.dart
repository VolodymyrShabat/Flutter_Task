import 'package:flutter/material.dart';
import 'package:task_trainee/pages/homepage.dart';

void main() {
  runApp(TestApp());
}
class TestApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Random color clicker',
      theme:ThemeData(
        primaryColor: Colors.white,
        textTheme: TextTheme(headline6:TextStyle(color:Colors.white))
        ),
      home:HomePage()
    );
  }
}
