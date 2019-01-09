import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '湖南文理学院ACM编程助手',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: new AppBar(
          title: const Text('ACM编程助手'),
        ),
        body: Center(
          child: Text('欢迎使用湖南文理学院ACM编程助手!'),
        ),
      )
    );
  }
}
