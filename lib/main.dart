import 'package:flutter/material.dart';
import 'package:my_ui_dicoding/screen/ui_home.dart';
import 'screen/ui_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UIHome(),
    );
  }
}
