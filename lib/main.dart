import 'package:flutter/material.dart';
import 'package:coffee_info/home.dart';

void main() {
  runApp(Coffee());
}

class Coffee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Info',
      home: Home(),
    );
  }
}
