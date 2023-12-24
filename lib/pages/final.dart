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
              onPressed: ()  => Navigator.popUntil(
                context,
                ModalRoute.withName('/'),
              ),
              child:const Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  'Submit'
              ),
            ),
          ]),
    );
  }
}





