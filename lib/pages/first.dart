import 'package:flutter/material.dart';
import 'package:shopping/pages/second.dart';
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
          ListTile(
            title:
            Text(
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                height: 4,
              ),
                'Cauliflower'
            ),
            leading: Radio(
             value :1,
              groupValue: selectedoption,
              onChanged: (value) {
                setState(() {
                  selectedoption = value;
                  var d = price= (price! + 300)!;
                  selectedProduct.add("Cauliflower");
                  selectedProductPrice.add(300);
                });
              },
            ),
            trailing: Text(
             style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
                '300.00'
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
                'Cabbage'
            ),
            leading: Radio(
              value :1,
              groupValue: selectedoption1,
              onChanged: (value) {
                setState(() {
                  selectedoption1 = value;
                  var d = price= (price! + 400)!;
                  selectedProduct.add("Cabbage");
                  selectedProductPrice.add(400);
                  print (selectedProduct);
                  print (selectedProductPrice);
                  print(price);
                });
              },
            ),
            trailing: Text(
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              '400.00'
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
                'Beans'
            ),
            leading: Radio(
              value :1,
              groupValue: selectedoption2,
              onChanged: (value) {
                setState(() {
                  selectedoption2 = value;
                  var d = price= (price! + 500)!;
                  selectedProduct.add("Beans");
                  selectedProductPrice.add(500);
                  print (selectedProduct);
                  print (selectedProductPrice);
                  print(price);
                });
              },
            ),
            trailing: Text(
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                '500.00'
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
