import 'package:flutter/material.dart';
import 'first.dart';



class Final extends StatelessWidget {
   Final({
     super.key,
   });

   List<String> products=['Cauliflower','Cabbage','Beans','Carrot','Banana','Apple','Oranges','Guava'];

   List price=[500.0,400.0,500.0,500.0,200.0,250.0,150.0,100.0];

   double total=0;

  @override
  Widget build(BuildContext context) {
    String? totalp;
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
      body:Column(
        children:[
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
         Expanded(child: ListView.builder(
        itemCount: products.length,
          itemBuilder: (BuildContext context, int index){
       if(value[index] == 1) {
         String temp=price[index].toString();
         total+=price[index];
         totalp=total.toString();
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
          trailing: Text(
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            temp,
          ),
      );
    };
          },

      ),
         ),

          Expanded(child: Divider(
            color: Colors.black,
            height: 25,
            thickness: 2,
            indent: 5,
            endIndent: 5,
          ),
          ),
        Expanded(
            child:ListTile(
    title:
    Text(
    style: TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 4,
    ),
    'TOTAL:',
    ),
              trailing: Text(
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                 '$totalp',
              ),
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






