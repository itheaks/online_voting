import 'package:flutter/material.dart';
import '../models/candidate.dart';

class VoteScreen extends StatefulWidget {
  @override
  _VoteScreenState createState() => _VoteScreenState();
}

class _VoteScreenState extends State<VoteScreen> {
  List<Candidate> candidates = [
    Candidate('Candidate 1', 29),
    Candidate('Candidate 2', 36),
    Candidate('Candidate 3', 5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vote Screen'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.pink[200]
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Choose your candidate:',
                style: TextStyle(fontSize: 18,
                    decoration: TextDecoration.none),
              ),
              SizedBox(height: 20),
              Column(
                children: candidates
                    .map((candidate) => ListTile(
                  title: Text(candidate.name),
                  trailing: Text('Votes: ${candidate.voteCount}'),
                  onTap: () {
                    // Increment vote count for the selected candidate
                    setState(() {
                      candidate.voteCount++;
                    });
                  },
                ))
                    .toList(),
              ),
              ElevatedButton(
                onPressed: () {
                  // Implement logic to submit vote
                  // For simplicity, we won't save votes permanently
                  Navigator.pop(context); // Navigate back to home screen
                },
                child: Text('Submit Vote'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
