import 'package:flutter/material.dart';
import 'package:shopping/pages/home.dart';

void main() {
  runApp(MaterialApp(home: Myapp()));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

