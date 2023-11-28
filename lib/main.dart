import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyVotingApp());
}

class MyVotingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Voting System',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: LoginScreen(),
    );
  }
}
