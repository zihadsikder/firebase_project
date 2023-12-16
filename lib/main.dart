import 'package:firebase_project/match_list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Firebase Flutter App',
     theme: ThemeData(
       primaryColor: Colors.blue,
     ),
       home: const MatchListScreen(),
   );
  }
}