import 'package:flutter/material.dart';

class Goods extends StatefulWidget {
  const Goods({super.key});

  @override
  State<Goods> createState() => _goodsState();
}
class _goodsState extends State<Goods> {
  @override
  Widget build(BuildContext context) {

    return Padding(
        padding:const EdgeInsets.symmetric(vertical:8.0),

        child: Container(
          height :150,
          color:Colors.white60,
          child: Text(
            '$name'
          ),
        ),
    );
  }

}

