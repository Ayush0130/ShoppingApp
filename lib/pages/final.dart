import 'package:flutter/material.dart';

class Final extends StatelessWidget {
  const Final({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        leading: IconButton(
        onPressed: () {
      Navigator.pop(context);
    },
    icon: Icon(Icons.arrow_back),

    ),
    backgroundColor: Colors.grey,
    title: Text('Bill'),
    centerTitle: true,
    ),
    );
  }
}
