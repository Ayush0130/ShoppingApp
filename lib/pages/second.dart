import 'package:flutter/material.dart';
import 'package:shopping/pages/final.dart';
import 'package:shopping/pages/items.dart';
import 'package:shopping/pages/first.dart';

class secondpage extends StatefulWidget {
  const secondpage( {
    super.key,
  }
  );

  @override
  State<secondpage> createState() => _secondpageState();
}


class _secondpageState extends State<secondpage> {
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
         Goods(
           name:'Banana',
           price:200,
           index:4,
         ),
          Goods(
            name:'Apple',
            price:250,
            index:5,
          ),
          Goods(
            name:'Oranges',
            price:150,
            index:6,
          ),
          Goods(
            name:'Guava',
            price:100,
            index:7,
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
