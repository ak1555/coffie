import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final mybox=Hive.box('mybox');
  List itemslist=[];

  void print_list(){
    if(mybox.get(1)!=null){
    setState(() {
      // itemslist= json.decode(mybox.get(1));
      itemslist=mybox.get(1);
      print(itemslist);
    });
      }else{
        print("nop");
      }
        }


        @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print_list();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color:  const Color.fromARGB(255, 109, 29, 2),
      padding: EdgeInsets.only(left: 0,right: 0,top: 15),
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.blue,
          ),
          SizedBox(height: 15,),

          Container(
            height: 350,
            width: double.infinity,
            color: Colors.brown,
          ),
          SizedBox(height: 15,),

          Container(
            height: 209,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.brown.shade100,
            ),
          )
        ],
      )
      // ListView.builder(
      //             itemCount: itemslist.length,
      //             itemBuilder: (context, index) {
      //             return Container(
      //               height: 130,
      //               width: double.infinity,
      //               margin: EdgeInsets.only(top: 18),
      //               padding: EdgeInsets.only(left: 15,right: 15),
      //               decoration: BoxDecoration(
      //                 boxShadow: [BoxShadow(
      //                   color: Colors.brown.shade200,
      //                   blurRadius: 5,spreadRadius: 4,
      //                   offset: Offset(0,5)
      //                 )],
      //                 border: Border.all(width: 1,color: const Color.fromARGB(255, 156, 8, 8)),
      //                 borderRadius: BorderRadius.circular(15),
      //                 color:  Colors.white
      //               ),
      //               child: Row(children: [
      //                 Container(
      //                   height: 110,
      //                   width: 125,
      //                   decoration: BoxDecoration(
      //                     color: const Color.fromARGB(255, 143, 118, 109),
      //                   border: Border.all(),
      //                   borderRadius: BorderRadius.circular(10)),
      //                   child:ClipRRect(borderRadius: BorderRadius.circular(10),
      //                     child: Image.asset("./images/${itemslist[index]["image"]}",fit: BoxFit.cover,),),
      //                 ),
      //                 SizedBox(width: 10,),
      //                 Container(
      //                   height: 110,
      //                   width: 150,
      //                   // color: Colors.amber,
      //                   child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                     children: [
      //                       Text("${itemslist[index]["name"]}",
      //                       style: TextStyle(
      //                         // color: const Color.fromARGB(255, 109, 29, 2),
      //                         fontSize: 20,
      //                         letterSpacing: 1,
      //                         wordSpacing: 1,
      //                         shadows: [Shadow(color: Colors.brown.shade200,blurRadius: 2,offset: Offset(1, 1))],
      //                         fontWeight: FontWeight.bold
      //                       ),),

      //                       SizedBox(height: 10,),
      //                       Row(
      //                         children: [
      //                           SizedBox(width: 15,),
      //                           Container(
      //                             height: 30,
      //                             width: 30,
      //                             child: ClipRRect(
      //                               borderRadius: BorderRadius.circular(100),
      //                               child: Image.asset("./images/rupees.jpg"),)),
      //                           Text(itemslist[index]["price"].toString(),
      //                           style: TextStyle(fontWeight: FontWeight.bold),),
      //                           SizedBox(width: 63,),
      //                           Icon(Icons.coffee_maker_outlined,color: const Color.fromARGB(255, 150, 50, 13),size: 18,)
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //                   Container(
      //                     height: 110,
      //                     width: 150,
      //                     // color: const Color.fromARGB(255, 77, 69, 45),
      //                     child: Column(
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: [
      //                         Row(
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           children: [
      //                             IconButton(alignment: Alignment.topCenter,
      //                               onPressed: () {
      //                                 setState(() {
      //                                  if( itemslist[index]["quantity"]>1){
      //                                    itemslist[index]["quantity"] --;
      //                                  }
      //                                 });
                                    
      //                             }, icon: Icon(Icons.minimize)),
      //                             SizedBox(width: 8,),
      //                             Text(itemslist[index]["quantity"].toString(),
      //                             style: TextStyle(fontWeight: FontWeight.bold),),
      //                             SizedBox(width: 8,),
      //                               IconButton(onPressed: () {
      //                                 print(itemslist[index]["image"]);
      //                               // setState(() {
      //                               // items_list[index]["quantity"] ++;
      //                               //   print(items_list[index]["quantity"]);
      //                               // });
      //                             }, icon: Icon(Icons.add)),
      //                           ],
      //                         ),
      //                         SizedBox(height: 8,),
      //                         TextButton(
      //                           style: TextButton.styleFrom(
      //                             foregroundColor: const Color.fromARGB(255, 109, 29, 2),
      //                             backgroundColor: const Color.fromARGB(255, 143, 85, 37),
                                  
      //                             // foregroundColor: Colors.white
      //                           ),
      //                           onPressed: () {
      //                           //   setState(() {
      //                           // choose_list.add(items_list[index]);
      //                           // });
      //                           // print(choose_list);
      //                           // addtocart();
      //                         }, child: Text("My Cart",style: TextStyle(fontWeight: FontWeight.bold,
      //                         color: Colors.white),)),
      //                       ],
      //                     ),
      //                   )
      //               ],),
      //             );
      //           },),
    );
  }
}