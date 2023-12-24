import 'package:flutter/material.dart';
import 'first.dart';


List selectedproducts=[];
List selectedproductsprice=[];
class Final extends StatelessWidget {
   Final({
     super.key,
   });
   List<String> products=['Cauliflower','Cabbage','Beans','Carrot','Banana','Apple','Oranges','Guava'];
   List price=[500.0,400.0,500.0,500.0,200.0,250.0,150.0,100.0];
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
    title: Text(
        'CheckOut',
    ),
    centerTitle: true,
    ),
      body:ListView.builder(
        itemCount: products.length,
          itemBuilder: (BuildContext context, int index){
       if(value[index] == 1) {
        return ListTile(
         title:
         Text(
           style: TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.bold,
             color: Colors.blue,
             height: 4,
           ),
          products[index],
        ),
      );
    };
          },

      ),
    );
  }
}

class show extends StatelessWidget {
  final int index;
   show({
     required this.index,
     super.key,
   });

  @override
  Widget build(BuildContext context) {
      return ListTile(
        title:
        Text(
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            height: 4,
          ),
          '',
        ),
      );
    }
  }



