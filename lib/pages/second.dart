import 'package:flutter/material.dart';
import 'package:shopping/pages/final.dart';

class secondpage extends StatefulWidget {
  final List data;
  final List data1;

  const secondpage( {
    super.key,
    required this.data,
    required this.data1,
  }
  );

  @override
  State<secondpage> createState() => _secondpageState();
}
int? selected,selected1,selected2;
double? price=0;

class _secondpageState extends State<secondpage> {
  List selectedFruit=[];
  List selectedFruitPrice=[];
  //selectedFruit.add(data);
  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),

        ),
        backgroundColor: Colors.grey,
        title: Text('Choose Fruits'),
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
                 'Items',
              ),
              trailing: Text(
                  style:TextStyle(
                    fontSize: 20,

                  ),

                  'Price \n (INR)'
              ),
            ),
          ),
          ListTile(
            title:
            Text(
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  height: 4,

                ),
                'Banana'
            ),
            leading: Radio(
              value :2,
              groupValue: selected,
              onChanged: (value) {
                setState(() {
                  selected = value;
                  //var d = price= (price! + 100)!;
                  selectedFruit.add("Banana");
                  selectedFruitPrice.add(100);
                });
              },
            ),
            trailing: Text(
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                '100.00'
            ),
          ),
          ListTile(

            title:
            Text(
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,

                  color: Colors.blue,
                  height: 4,

                ),
                'Apple'
            ),
            leading: Radio(
              value :2,
              groupValue: selected1,
              onChanged: (value) {
                setState(() {
                  selected1 = value;
                  var d = price= (price! + 200)!;
                  selectedFruit.add("Apple");
                  selectedFruitPrice.add(200);
                  print (selectedFruit);
                  print (selectedFruitPrice);
                  print(price);
                });
              },
            ),
            trailing: Text(
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                '200.00'
            ),

          ),
          ListTile(
            title:
            Text(
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,

                  color: Colors.blue,
                  height: 4,

                ),
                'Oranges'
            ),
            leading: Radio(
              value :2,
              groupValue: selected2,
              onChanged: (value) {
                setState(() {
                  selected2 = value;
                  var d = price= (price! + 150)!;
                  selectedFruit.add("Oranges");
                  selectedFruitPrice.add(150);
                  print (selectedFruit);
                  print (selectedFruitPrice);
                  print(price);
                });
              },
            ),
            trailing: Text(
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                '150.00'
            ),
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
                MaterialPageRoute(builder: (context) => Final()),
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
