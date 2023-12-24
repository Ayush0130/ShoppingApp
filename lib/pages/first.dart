import 'package:flutter/material.dart';
import 'package:shopping/pages/second.dart';
import 'package:shopping/pages/items.dart';

List value=[0,0,0,0,0,0,0,0];
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  //enum Vegetable{cabbage , cauliflower}
  @override
   int? selectedoption,selectedoption1,selectedoption2;
  double? price=0;
  List selectedProduct=[];
  List selectedProductPrice=[];
  bool is_checked=false;

  Widget build(BuildContext context) {
    String name='baigan';
    double price=200;
    bool v1;
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),

        ),
        backgroundColor: Colors.grey,
        title: Text('Choose Vegetables'),
        centerTitle: true,
      ),
      body:ListView(
        children: [
          Padding(
        padding:EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: ListTile(
        title: Text(
              style:TextStyle(
                fontSize: 25,
              ),
              'Items'
            ),
            trailing: Text(
                style:TextStyle(
                  fontSize: 20,
                ),
              'Price \n (INR)'
            ),
          ),
          ),
          Goods(name: 'Cauliflower',
            price:500,
            index:0,
          ),
          Goods(name: 'Cabbage',
            price:400,
            index:1,
          ),
          Goods(name: 'Beans',
            price:500,
            index:2,
          ),
          Goods(name: 'Carrot',
            price:500,
            index:3,
          ),

        ],
      ),
      floatingActionButton: Row(

        children:[
          SizedBox(
            width:80,
          ),
          ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red, // background (button) color
            foregroundColor: Colors.white, // foreground (text) color
            padding:    EdgeInsets.all(20) ,

          ),
        onPressed: () =>Navigator.popUntil(
          context,
          ModalRoute.withName('/'),
        ),
        child:const Text(
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            'Cancel'
        ),
      ),
          SizedBox(
            width: 80,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // background (button) color
              foregroundColor: Colors.white, // foreground (text) color
              padding:    EdgeInsets.all(20) ,
            ),
            onPressed: ()  => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => secondpage(
                data: selectedProduct,
                data1 :selectedProductPrice,
              )),
            ),
            child:const Text(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                'Next'
            ),
          ),
    ]),
    );
  }
}
