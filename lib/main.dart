import 'package:flutter/material.dart';
import 'package:test_notification/firebase_messaging.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FCM with flutter and node js',
      theme: ThemeData(  
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:Scaffold(
        body: FireBase_Messaging()
      ),
    );
  }
}
