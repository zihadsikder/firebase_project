import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_project/match_details_screen.dart';
import 'package:flutter/material.dart';

class MatchListScreen extends StatefulWidget {
  const MatchListScreen({super.key});

  @override
  State<MatchListScreen> createState() => _MatchListScreenState();
}

class _MatchListScreenState extends State<MatchListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Match List'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('match').snapshots(),
        builder: (context,snapshot){
          if (!snapshot.hasData){
            return CircularProgressIndicator();
          }
          var matches = snapshot.data?.docs;

          return ListView.builder(
            itemCount: matches?.length,
              itemBuilder: (context, index){
              var match = matches?[index].data() as Map<String, dynamic>;
              return ListTile(
                title: Text(match['Argentina'] + 'vs' + match['Africa']),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MatchDetailsScreen(match: match)));
                },
              );
              }
          );
        }
      ),
    );
  }
}
