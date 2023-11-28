import 'package:flutter/material.dart';
import 'vote_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.pink[200],
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/vote.jpg',
                  fit: BoxFit.cover,
                  height: 200,
                  width: 300,
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome to Online Voting System',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VoteScreen()),
                    );
                  },
                  child: Text('Start Voting'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
