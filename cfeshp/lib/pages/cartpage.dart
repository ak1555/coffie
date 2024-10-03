// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:lottie/lottie.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final mybox=Hive.box('mybox');
  List itemslist=[ 
    //  {"name":"Green Tea",
    // "price":50,
    // "quantity":1,
    // "image":"greentea.jpg"},

    //  {"name":"BRU Coffee",
    // "price":60,
    // "quantity":1,
    // "image":"bru.jpg"},
    ];

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
            padding: EdgeInsets.only(left: 15,right: 15),
            // color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey[200],
                    border: Border.all()
                  ),
                  child: ClipRRect(borderRadius: BorderRadius.circular(100),
                    child: Image.asset('./images/pro.jpg'),),
                ),
                Container(
                  height: 50,
                  width: 150,
                  child: Row(
                  children: [
                    Icon(Icons.location_on,color: Colors.grey[200],),
                    Text("Kerala",style: TextStyle(color: Colors.grey[200],fontSize: 17),),
                     Text(".",style: TextStyle(color: Colors.grey[200]),),
                     Text("india",style: TextStyle(color: Colors.grey[200],fontSize: 17),),
                  ],
                )),

                Icon(Icons.notification_add_outlined,color: Colors.grey[200],)
              ],
            ),
          ),
          // [[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
  Container(
                height: 190,
                width: double.infinity,
                margin: EdgeInsets.only(left: 15,right: 15),
                decoration: BoxDecoration(
                  // color: const Color.fromARGB(255, 109, 29, 2),
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(children: [
                  Lottie.network("https://lottie.host/7786243e-5488-4a6d-8e21-38f0ad882e11/dhHDkDNLr4.json",height: 130),
                  Container(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Enjoy Premium Brew ",style: TextStyle(color: Colors.white,
                       shadows: [Shadow(color: Colors.white,blurRadius: 2,offset: Offset(1, 1))],
                       letterSpacing: 1,wordSpacing: 1,
                       fontSize: 16,
                       fontFamily:"Edu"
                       ),),

                      Text("With the Coolest of Flavours",style: TextStyle(color: Colors.white,
                       shadows: [Shadow(color: Colors.white,blurRadius: 2,offset: Offset(1, 1))],
                       letterSpacing: 1,wordSpacing: 1,
                       fontSize: 13,
                        fontFamily:"Edu"
                       ))
                    ],
                  ))
                ],),
              ),
          // [[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
          SizedBox(height: 175,),
            // ===================================================================================================================================
            // ]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
            // [[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
          // [[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
//           Container(
//             height: 350,
//             padding: EdgeInsets.only(top: 25,bottom: 25),
//             width: double.infinity,
//             // color: Colors.brown,
//             child: Expanded(
//               // child: GridView.builder(itemCount: itemslist.length,
//               // scrollDirection: Axis.horizontal,
//               //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1), 
//               //   itemBuilder: (context, index) {
//               //    return Container(
//               //     height:250,
//               //     width: 250,
//               //     color: Colors.red,
//               //     );
//               //   },),
//               child: Expanded(
//                 child: ListView.builder(
//                   itemCount: itemslist.length,
//                   itemBuilder: (context, index) {
//                   return Container(
//                     height: 110,
//                     width: double.infinity,
//                     margin: EdgeInsets.only(bottom: 18,left: 5,right: 0),
//                     padding: EdgeInsets.only(left: 10,right: 10),
//                     decoration: BoxDecoration(
//                       boxShadow: [BoxShadow(
//                         color: const Color.fromARGB(255, 109, 86, 78),
//                         blurRadius: 5,spreadRadius: 4,
//                         offset: Offset(0,5)
//                       )],
//                       border: Border.all(width: 1,color: const Color.fromARGB(255, 156, 8, 8)),
//                       borderRadius: BorderRadius.circular(18),
//                       // color:  const Color.fromARGB(255, 247, 230, 216)
//                       color: Colors.grey[50]
//                     ),
//                     child: Row(
//                       children: [
//                       Container(
//                         height: 85,
//                         width: 85,
//                         padding: EdgeInsets.all(1.9),
//                         decoration: BoxDecoration(
//                           boxShadow: [BoxShadow(color: Colors.brown,spreadRadius: 2,blurRadius: 5),],
//                           // color: const Color.fromARGB(255, 143, 118, 109),
//                           color: Colors.grey[100],
//                         border: Border.all(),
//                         borderRadius: BorderRadius.circular(100)),
//                         child:ClipRRect(borderRadius: BorderRadius.circular(100),
//                           child: Image.asset("./images/${itemslist[index]["image"]}",fit: BoxFit.cover,),),
//                       ),
//                       SizedBox(width: 10,),
//                       Container(
//                         height: 110,
//                         width: 110,
//                         // color: Colors.amber,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text("${itemslist[index]["name"].toString()}",
//                             style: TextStyle(
//                               // color: const Color.fromARGB(255, 109, 29, 2),
//                               fontSize: 15,
//                               letterSpacing: 1,
//                               wordSpacing: 1,
//                               shadows: [Shadow(color: Colors.brown.shade200,blurRadius: 2,offset: Offset(1, 1))],
//                               fontWeight: FontWeight.bold
//                             ),),

//                             SizedBox(height: 10,),
//                           ],
//                         )),
//                         Container(
//                           height: 110,
//                           width: 100,
//                           // color: const Color.fromARGB(255, 77, 69, 45),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 height: 35,
//                                 width: 125,
//                                 margin: EdgeInsets.only(left: 15,right: 15,top: 6,bottom: 0),
//                                 // decoration: BoxDecoration(
//                                 //   color: Colors.white,
//                                 //   border: Border.all(width: 0.4),
//                                 //   borderRadius: BorderRadius.circular(50)
//                                 // ),
//                                 // ======================row
//                                 // child: Row(
//                                 //   mainAxisAlignment: MainAxisAlignment.center,
//                                 //   children: [
//                                 //     IconButton(alignment: Alignment.topCenter,
//                                 //       onPressed: () {
//                                 //         setState(() {
//                                 //          if( items_list[index]["quantity"]>1){
//                                 //            items_list[index]["quantity"] --;
//                                 //          }
//                                 //         });
                                      
//                                 //     }, icon: Icon(Icons.minimize)),

//                                 //     SizedBox(width: 1,),

//                                 //     Text(items_list[index]["quantity"].toString(),
//                                 //     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),

//                                 //     SizedBox(width: 1,),

//                                 //       IconButton(onPressed: () {
//                                 //       setState(() {
//                                 //       items_list[index]["quantity"] ++;
//                                 //         print(items_list[index]["quantity"]);
//                                 //       });
//                                 //     }, icon: Icon(Icons.add)),
//                                 //   ],
//                                 // ),
//                                 child:  Row(
//                               children: [
//                                 SizedBox(width: 15,),
//                                 Container(
//                                   height: 20,
//                                   width: 20,
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(100),
//                                     child: Image.asset("./images/rupees.jpg"),)),
//                                 Text(itemslist[index]["price"].toString(),
//                                 style: TextStyle(fontWeight: FontWeight.bold),),
//                                 // SizedBox(width: 33,),
//                                 // Icon(Icons.coffee_maker_outlined,color: const Color.fromARGB(255, 150, 50, 13),size: 18,)
//                               ],
//                             ),
//                                 // ======================row
//                               ),
//                               SizedBox(height: 8,),
//                               TextButton(
//                                 style: TextButton.styleFrom(
//                                   foregroundColor: const Color.fromARGB(255, 109, 29, 2),
//                                   backgroundColor: const Color.fromARGB(255, 247, 184, 49),
                                  
//                                   // foregroundColor: Colors.white
//                                 ),
//                                 onPressed: () {
// // if(mybox.get(1)!=null){
// //   takeToList();
// //   if(choose_list[index]["id"]!=items_list[index]["id"]){
// //     print(items_list[index]["id"]);
// //   }
// // }
// // checkid(itemslist[index]["id"],itemslist[index]);


// //  if(mybox.get(1)!=null){
// //       setState(() {
// //         choose_list=mybox.get(1);
// //       });
// //       int j = choose_list.length;
// //       int count=0;
// //       for(int i=0;i<=j;i++){
// //         if(items_list[index]==choose_list[count]){
// //           showDialog(context: context, builder: (context) {
// //                                       return AlertDialog(
// //                                         title: Text("OOPS!!!"),
// //                                         content: Text("Item Already In Cart"),
// //                                       );
// //                                     },);
                                  
// //           // break;
// //         }else{
// //           setState(() {
// //             choose_list.add(items_list[index]);
// //           });
// //               mybox.put(1, choose_list);
// //         }
// //         count++;
// //       }
// //       print(choose_list);
// //     }else{
// //       setState(() {
// //             choose_list.add(items_list[index]);
// //           });
// //               mybox.put(1, choose_list);
// //               print("null listed+ add");
// // print(choose_list);
// //     }

// // [[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
// //  if(mybox.get(1)!=null){
// //       setState(() {
// //         choose_list=mybox.get(1);
// //       });
// //       int j = choose_list.length;
// //       int count=0;
// //       for(int i=0;i<=j;i++){
// //         if(items_list[index]==choose_list[count]){
// //           showDialog(context: context, builder: (context) {
// //                     return AlertDialog(
// //                     title: Text("OOPS!!!"),
// //                     content: Text("Item Already In Cart"),
// //                     );
// //                    },);    
// //           // break;
// //           // continue;
// //           break;
// //         }else{
// //           setState(() {
// //             choose_list.add(items_list[index]);
// //           });
// //               mybox.put(1, choose_list);
// //         }
// //         count++;
// //       }
// //       print(choose_list);
// //       print("data");
// //     }else{
// //       setState(() {
// //             choose_list.add(items_list[index]);
// //           });
// //               mybox.put(1, choose_list);
// //               print("null listed+ add");
// // print(choose_list);
// // print("object");
// //     }


// // [[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]

//                                 //  if(mybox.get(1)!=null){
//                                 //   print("bleach");
//                                 //   takeToList();
//                                 //   if(items_list[index]["id"]==choose_list[index]["id"]){
//                                 //     showDialog(context: context, builder: (context) {
//                                 //       return AlertDialog(
//                                 //         title: Text("OOPS!!!"),
//                                 //         content: Text("Item Already In Cart"),
//                                 //       );
//                                 //     },);
//                                 //   }
//                                 //   else{
//                                 //     print("naruto");
//                                 //     setState(() {   
//                                 // choose_list.add(items_list[index]);
//                                 // });
//                                 //   addtocart();
//                                 //   }
//                                 //  }else{
                                  
//                                 //     setState(() {   
//                                 // choose_list.add(items_list[index]);
//                                 // });
//                                 // addtocart();
//                                 //  }
//                                 // print(choose_list);
                                
//                               }, child: Text("To cart",style: TextStyle(fontWeight: FontWeight.bold),)),
//                             ],
//                           ),
//                         )
//                     ],),
//                   );
//                 },),
//               ),
//             ),
//           ),
          // ===================================================================================================================================
          SizedBox(height: 15,),

          Container(
            height: 209,
            width: double.infinity,
            padding: EdgeInsets.only(left: 45,right: 15),
            decoration: BoxDecoration(
              color: Colors.brown.shade100,
              borderRadius: BorderRadius.vertical(top: Radius.circular(60))
            ),
            child: Column(
              children: [
                SizedBox(height: 35,),
                Text("Discover  the best organic asian tea.",style: TextStyle(
                  color:  const Color.fromARGB(255, 109, 29, 2),
                  fontWeight: FontWeight.bold,
                  // fontFamily: "Pro",
                  fontSize: 20
                  )),
                  SizedBox(height: 15,),

                Text("straight from motherland",style: TextStyle(
                  fontFamily: "Pro",
                  color: Colors.brown
                ),),

                  SizedBox(height: 15,),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.only(left: 25,right: 25,top: 15,bottom: 15),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  onPressed: () {
                  
                }, child: Text("Shop Now",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                  ),))
              ],
            ),
          )
        ],
      )
    );
  }
}