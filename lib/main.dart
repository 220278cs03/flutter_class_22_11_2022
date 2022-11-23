import 'package:flutter/material.dart';

import 'animationpositioned.dart';
import 'myani.dart';
import 'stful.dart';
import 'animation1.dart';
import 'svetafor.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Rectangle1(),
    );
  }
}
