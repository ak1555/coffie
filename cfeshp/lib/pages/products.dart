// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:lottie/lottie.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final mybox = Hive.box('mybox');
  List items_list=[
    {
      "id":111,
      "name":"Green Tea",
    "price":50,
    "quantity":1,
    "image":"greentea.jpg"},

     {"id":222,
      "name":"BRU Coffee",
    "price":60,
    "quantity":1,
    "image":"bru.jpg"},

     {"id":333,
      "name":"Horlicks Coffee",
    "price":75,
    "quantity":1,
    "image":"horlicks.jpg"}
  ];

  List choose_list=[];

  void takeToList(){
    if(mybox.get(1)!=null){
      setState(() {
        choose_list=mybox.get(1);
      });
    }else{
      print("empty hive");
    }
  }

  void addtocart(){
    mybox.put(1, choose_list);
  }

  void checkid(int a){
    if(mybox.get(1)!=null){
      setState(() {
        choose_list=mybox.get(1);
      });
      int j = choose_list.length;
      int count=0;
      for(int i=0;i<=j;i++){
        if(a==choose_list[count][0]){
          print("same");
        }else{

              mybox.put(1, choose_list);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.brown.shade100,
      // appBar: AppBar(
      //    backgroundColor:Colors.brown.shade100,
      //   title: Center(child: Text("COFFIEE CART",style: TextStyle(color: Colors.black),),),
      // ),
      body: Container(
        height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
            colors:[Colors.brown.shade300,
            Colors.brown.shade100,
            Colors.brown.shade100])
         ),
         child: Column(
          children: [
            Container(
              height: 100,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text("COFFIEE CART",style: TextStyle(
              color: const Color.fromARGB(255, 255, 103, 1),
              fontFamily: "Pro",
              fontWeight: FontWeight.bold,
              fontSize: 29,shadows: [Shadow( color: Colors.white,blurRadius: 5,offset: Offset(1, 2))],
              letterSpacing: 1,height: 2.5),
              ),
              ),
              Container(
                height: 190,
                width: double.infinity,
                margin: EdgeInsets.only(left: 15,right: 15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 109, 29, 2),
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
              SizedBox(height:10,),
              Container(
                // color: Colors.amber,
                margin: EdgeInsets.only(left: 8,right: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(65))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    Container(
                      height: 49,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 30,right: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 0.4),
                        color: Colors.white
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 15,),
                        Icon(Icons.search),
                        SizedBox(width: 15,),
                        Expanded(child: TextField(
                          enabled: false,
                          decoration: InputDecoration(
                        hintText: "Search For You Coffeee."
                          )
                        )),
                        SizedBox(width: 50,)
                      ],),
                    ),
                     SizedBox(height:5,),
                 
              Container(
                height: 324,
                width: double.infinity,
                padding: EdgeInsets.only(left: 5,right: 5),
                child: ListView.builder(
                  itemCount: items_list.length,
                  itemBuilder: (context, index) {
                  return Container(
                    height: 110,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 18,left: 5,right: 0),
                    padding: EdgeInsets.only(left: 10,right: 10),
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: const Color.fromARGB(255, 109, 86, 78),
                        blurRadius: 5,spreadRadius: 4,
                        offset: Offset(0,5)
                      )],
                      border: Border.all(width: 1,color: const Color.fromARGB(255, 156, 8, 8)),
                      borderRadius: BorderRadius.circular(18),
                      // color:  const Color.fromARGB(255, 247, 230, 216)
                      color: Colors.grey[50]
                    ),
                    child: Row(
                      children: [
                      Container(
                        height: 85,
                        width: 85,
                        padding: EdgeInsets.all(1.9),
                        decoration: BoxDecoration(
                          boxShadow: [BoxShadow(color: Colors.brown,spreadRadius: 2,blurRadius: 5),],
                          // color: const Color.fromARGB(255, 143, 118, 109),
                          color: Colors.grey[100],
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(100)),
                        child:ClipRRect(borderRadius: BorderRadius.circular(100),
                          child: Image.asset("./images/${items_list[index]["image"]}",fit: BoxFit.cover,),),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 110,
                        width: 110,
                        // color: Colors.amber,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${items_list[index]["name"].toString()}",
                            style: TextStyle(
                              // color: const Color.fromARGB(255, 109, 29, 2),
                              fontSize: 15,
                              letterSpacing: 1,
                              wordSpacing: 1,
                              shadows: [Shadow(color: Colors.brown.shade200,blurRadius: 2,offset: Offset(1, 1))],
                              fontWeight: FontWeight.bold
                            ),),

                            SizedBox(height: 10,),
                            // ======================row
                            // Row(
                            //   children: [
                            //     SizedBox(width: 15,),
                            //     Container(
                            //       height: 20,
                            //       width: 20,
                            //       child: ClipRRect(
                            //         borderRadius: BorderRadius.circular(100),
                            //         child: Image.asset("./images/rupees.jpg"),)),
                            //     Text(items_list[index]["price"].toString(),
                            //     style: TextStyle(fontWeight: FontWeight.bold),),
                            //     SizedBox(width: 33,),
                            //     Icon(Icons.coffee_maker_outlined,color: const Color.fromARGB(255, 150, 50, 13),size: 18,)
                            //   ],
                            // )
                            // Container(
                            //   height: 45,
                            //   width: 155,
                            //   decoration: BoxDecoration(
                            //       color: Colors.white,
                            //       border: Border.all(width: 0.4),
                            //       borderRadius: BorderRadius.circular(50)
                            //     ),
                            //   child: Row(
                            //         mainAxisAlignment: MainAxisAlignment.center,
                            //         children: [
                            //           IconButton(alignment: Alignment.topCenter,
                            //             onPressed: () {
                            //               setState(() {
                            //                if( items_list[index]["quantity"]>1){
                            //                  items_list[index]["quantity"] --;
                            //                }
                            //               });
                                        
                            //           }, icon: Icon(Icons.exposure_minus_1_outlined)),
                              
                            //           // SizedBox(width: 1,),
                              
                            //           Text(items_list[index]["quantity"].toString(),
                            //           style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              
                            //           // SizedBox(width: 1,),
                              
                            //             IconButton(onPressed: () {
                            //             setState(() {
                            //             items_list[index]["quantity"] ++;
                            //               print(items_list[index]["quantity"]);
                            //             });
                            //           }, icon: Icon(Icons.exposure_plus_1)),
                            //         ],
                            //       ),
                            // ),
                            // ======================row
                          ],
                        )),
                        Container(
                          height: 110,
                          width: 100,
                          // color: const Color.fromARGB(255, 77, 69, 45),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 35,
                                width: 125,
                                margin: EdgeInsets.only(left: 15,right: 15,top: 6,bottom: 0),
                                // decoration: BoxDecoration(
                                //   color: Colors.white,
                                //   border: Border.all(width: 0.4),
                                //   borderRadius: BorderRadius.circular(50)
                                // ),
                                // ======================row
                                // child: Row(
                                //   mainAxisAlignment: MainAxisAlignment.center,
                                //   children: [
                                //     IconButton(alignment: Alignment.topCenter,
                                //       onPressed: () {
                                //         setState(() {
                                //          if( items_list[index]["quantity"]>1){
                                //            items_list[index]["quantity"] --;
                                //          }
                                //         });
                                      
                                //     }, icon: Icon(Icons.minimize)),

                                //     SizedBox(width: 1,),

                                //     Text(items_list[index]["quantity"].toString(),
                                //     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),

                                //     SizedBox(width: 1,),

                                //       IconButton(onPressed: () {
                                //       setState(() {
                                //       items_list[index]["quantity"] ++;
                                //         print(items_list[index]["quantity"]);
                                //       });
                                //     }, icon: Icon(Icons.add)),
                                //   ],
                                // ),
                                child:  Row(
                              children: [
                                SizedBox(width: 15,),
                                Container(
                                  height: 20,
                                  width: 20,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset("./images/rupees.jpg"),)),
                                Text(items_list[index]["price"].toString(),
                                style: TextStyle(fontWeight: FontWeight.bold),),
                                // SizedBox(width: 33,),
                                // Icon(Icons.coffee_maker_outlined,color: const Color.fromARGB(255, 150, 50, 13),size: 18,)
                              ],
                            ),
                                // ======================row
                              ),
                              SizedBox(height: 8,),
                              TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: const Color.fromARGB(255, 109, 29, 2),
                                  backgroundColor: const Color.fromARGB(255, 247, 184, 49),
                                  
                                  // foregroundColor: Colors.white
                                ),
                                onPressed: () {
// if(mybox.get(1)!=null){
//   takeToList();
//   if(choose_list[index]["id"]!=items_list[index]["id"]){
//     print(items_list[index]["id"]);
//   }
// }
// checkid(items_list[index]["id"]);


 if(mybox.get(1)!=null){
      setState(() {
        choose_list=mybox.get(1);
      });
      int j = choose_list.length;
      int count=0;
      for(int i=0;i<=j;i++){
        if(items_list[index]["id"]==choose_list[count]["id"]){
          print("same");
        }else{
          setState(() {
            choose_list.add(items_list[index]["id"]);
          });
              mybox.put(1, choose_list);
        }
        count++;
      }
      print(choose_list);
    }else{
      setState(() {
            choose_list.add(items_list[index]["id"]);
          });
              mybox.put(1, choose_list);
print(choose_list);
    }





                                //  if(mybox.get(1)!=null){
                                //   print("bleach");
                                //   takeToList();
                                //   if(items_list[index]["id"]==choose_list[index]["id"]){
                                //     showDialog(context: context, builder: (context) {
                                //       return AlertDialog(
                                //         title: Text("OOPS!!!"),
                                //         content: Text("Item Already In Cart"),
                                //       );
                                //     },);
                                //   }
                                //   else{
                                //     print("naruto");
                                //     setState(() {   
                                // choose_list.add(items_list[index]);
                                // });
                                //   addtocart();
                                //   }
                                //  }else{
                                  
                                //     setState(() {   
                                // choose_list.add(items_list[index]);
                                // });
                                // addtocart();
                                //  }
                                // print(choose_list);
                                
                              }, child: Text("To cart",style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],
                          ),
                        )
                    ],),
                  );
                },),
              )
 ],
                ),
              ),
          ],
         ),
      ),
    );
  }
}