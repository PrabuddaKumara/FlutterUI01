import 'package:dem/view/main-tab/main-tab-view.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: MainTabView(),
    );
  }
}