import 'package:flutter/material.dart';

import 'first.dart';

class Goods extends StatefulWidget {
  final String name;
  final double price;
  final int index;
  const Goods({
    super.key,
    required this.name,
    required this.price,
    required this.index,
  } );

  @override
  State<Goods> createState() => _goodsState();
}
class _goodsState extends State<Goods> {
  bool? is_checked=false;

  @override
  Widget build(BuildContext context) {
    String temp=widget.price.toString();

    return ListTile(
      title:
      Text(
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            height: 4,
          ),
          widget.name,
      ),

      leading: Checkbox(
          activeColor: Color(0xff06bbfb),
          shape:CircleBorder(),
          //hoverColor: Colors.blue

          value: is_checked,
          onChanged:(bool? val){
            setState(() {
              is_checked=val!;
              if(is_checked == true){
                value[widget.index]=1;
              }else{
                value[widget.index]=0;
              };
            });

      }
      ),
      trailing: Text(
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          temp,
      ),
    );
  }
}

