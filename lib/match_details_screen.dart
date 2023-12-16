import 'package:flutter/material.dart';

class MatchDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> match;

  const MatchDetailsScreen({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Match Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Match: ${match['team1']} vs ${match['team2']}'),
            Text('Goals: ${match['team1Goals']} : ${match['team2Goals']}'),
            Text('Total Time: ${match['totalTime']}'),
          ],
        ),
      ),
    );
  }
}
