import 'package:flutter/material.dart';
import 'package:shopping/pages/first.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Shoppers Stop'),
        centerTitle: true,
      ),
      body:Center(
     child:ElevatedButton(
       style: ElevatedButton.styleFrom(
         backgroundColor: Colors.black54, // background (button) color
         foregroundColor: Colors.white, // foreground (text) color
         padding:    EdgeInsets.all(20) ,
       ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FirstPage()),
        ),
        child: const Text(
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
            'Start Shopping'
        ),
     ),
      ),

    );
  }
}
