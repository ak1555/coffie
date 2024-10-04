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

  bool is_check =true;
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

        void is_checking(){
          if(itemslist.length==0){
            is_check=true;
          }else{
            is_check=false;
          }
        }


        @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print_list();
    is_checking();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color:  const Color.fromARGB(255, 109, 29, 2),
      padding: EdgeInsets.only(left: 0,right: 0,top: 15),
      child: is_check? Column(
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
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(children: [
                  // Lottie.network("https://lottie.host/7786243e-5488-4a6d-8e21-38f0ad882e11/dhHDkDNLr4.json",height: 130),
                  Container(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Enjoy Premium Brew ",style: TextStyle(color: Colors.brown,
                       shadows: [Shadow(color: Colors.black,blurRadius: 2,offset: Offset(1, 1))],
                       letterSpacing: 1,wordSpacing: 1,
                       fontSize: 16,
                       fontFamily:"Edu"
                       ),),

                      Text("With the Coolest of Flavours",style: TextStyle(color: Colors.brown,
                       shadows: [Shadow(color: Colors.black,blurRadius: 2,offset: Offset(1, 1))],
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
                  //  navigatebottombar(0);
                  // Navigator.pop(context);
                }, child: Text("Shop Now",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                  ),))
              ],
            ),
          )
        ],
      )
      // ?????????????????????????????????????????????????????????????????????????????????
      // ?????????????????????????????????????????????????????????????????????????????????
      :
      // ?????????????????????????????????????????????????????????????????????????????????
      // ?????????????????????????????????????????????????????????????????????????????????

          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.grey[200],
            child: Column(
              children: [
                Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(left: 15,right: 15),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter, colors: [Colors.brown,Colors.grey.shade400,Colors.grey.shade200])
            ),
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
                    Icon(Icons.location_on,color: Colors.grey[800],),
                    Text("Kerala",style: TextStyle(color: Colors.grey[800],fontSize: 17),),
                     Text(".",style: TextStyle(color: Colors.grey[800]),),
                     Text("india",style: TextStyle(color: Colors.grey[800],fontSize: 17),),
                  ],
                )),

                Icon(Icons.notification_add_outlined,color: Colors.grey[800],)
              ],
            ),
          ),
                Expanded(
                    child:  ListView.builder(
                        itemCount: itemslist.length,
                        itemBuilder: (context, index) {
                        return Container(
                          height: 170,
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 18,left: 5,right: 0),
                          padding: EdgeInsets.only(left: 10,right: 10),
                          decoration: BoxDecoration(
                          
                            boxShadow: [BoxShadow(
                              color: const Color.fromARGB(255, 173, 164, 161),
                              blurRadius: 1,spreadRadius: 1,
                              offset: Offset(0,5)
                            )],
                            border: Border.all(width: 1,color: const Color.fromARGB(255, 156, 8, 8)),
                            borderRadius: BorderRadius.circular(18),
                            // color:  const Color.fromARGB(255, 247, 230, 216)
                            color: Colors.white
                          ),
                          child: Row(
                            children: [
                            Container(
                              height: 140,
                              width: 115,
                              padding: EdgeInsets.all(1.9),
                              decoration: BoxDecoration(
                                boxShadow: [BoxShadow(color: Colors.brown,spreadRadius: 2,blurRadius: 2),],
                                // color: const Color.fromARGB(255, 143, 118, 109),
                                color: Colors.grey[100],
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(15)),
                              child:ClipRRect(borderRadius: BorderRadius.circular(15),
                                child: Image.asset("./images/${itemslist[index]["image"]}",fit: BoxFit.cover,),),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 150,
                              width: 205,
                              // color: Colors.amber,
                              child: Column(
                                children: [
                                  SizedBox(height: 5,),
                                  Container(
                                    height: 30,
                                  width: double.infinity,
                                  child: Text("${itemslist[index]["name"].toString()}",
                                  style: TextStyle(
                                    // color: const Color.fromARGB(255, 109, 29, 2),
                                    fontSize: 19,
                                    letterSpacing: 1,
                                    wordSpacing: 1,
                                    shadows: [Shadow(color: Colors.brown.shade200,blurRadius: 2,
                                    offset: Offset(1, 1))],
                                    fontWeight: FontWeight.bold
                                  ),),),
                                        SizedBox(height: 8,),
                                   Container(
                                      // height: 35,
                                      // width: 125,
                                      // margin: EdgeInsets.only(left: 15,right: 15,top: 6,bottom: 0),
                                      child:  Row(
                                    children: [
                                      SizedBox(width: 5,),
                                      Container(
                                        height: 20,
                                        width: 20,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(100),
                                          child: Image.asset("./images/rupees.jpg"),)),
                                      Text(itemslist[index]["price"].toString(),
                                      style: TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: 18),),
                                      SizedBox(width: 33,),
                                      Icon(Icons.coffee_maker_outlined,color: const Color.fromARGB(255, 150, 50, 13),size: 18,)
                                    ],
                                  ),),
                                  Container(
                                    height: 20,
                                    width: double.infinity,
                                    // child:Text("we make you the most beautiful drink") ,
                                  ),
                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text("QTY:",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14 ,color: const Color.fromARGB(255, 150, 50, 13)
                                      ),),
                                      Container(height: 50,
                                      width: 172,
                                      child:  Container(
                                        height: 45,
                                        width: 115,
                                        margin: EdgeInsets.only(left: 60),
                                        decoration: BoxDecoration(
                                          border: Border.all( color: const Color.fromARGB(255, 150, 50, 13)),
                                          borderRadius: BorderRadius.circular(75)
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(style: IconButton.styleFrom(
                                              padding: EdgeInsets.all(.0)
                                            ),
                                              onPressed: () {
                                              setState(() {
                                                   if( itemslist[index]["quantity"]>1){
                                                     itemslist[index]["quantity"] --;
                                                      // itemslist[index]["price"]=itemslist[index]["price"] / itemslist[index]["quantity"];
                                                   }
                                                  });
                                            }, icon: Text("-",style: TextStyle(
                                              fontWeight: FontWeight.bold ,color: const Color.fromARGB(255, 150, 50, 13)
                                            ),)),
                                                      
                                              Text(itemslist[index]["quantity"].toString(),
                                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                                      
                                             IconButton(style: IconButton.styleFrom(
                                              padding: EdgeInsets.all(.0)
                                            ),
                                              onPressed: () {
                                               setState(() {
                                                itemslist[index]["quantity"] ++;
                                                // itemslist[index]["price"] *itemslist[index]["quantity"];
                                                  print(itemslist[index]["quantity"]);
                                                });
                                            }, icon: Text("+",style: TextStyle(
                                              fontWeight: FontWeight.bold
                                              ,color: const Color.fromARGB(255, 150, 50, 13)
                                            ),)),
                                          ],
                                        ),
                                       ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                            // Container(
                            //   height: 110,
                            //   width: 110,
                            //   // color: Colors.amber,
                            //   child: Column(
                            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //     children: [
                            //       Text("${itemslist[index]["name"].toString()}",
                            //       style: TextStyle(
                            //         // color: const Color.fromARGB(255, 109, 29, 2),
                            //         fontSize: 15,
                            //         letterSpacing: 1,
                            //         wordSpacing: 1,
                            //         shadows: [Shadow(color: Colors.brown.shade200,blurRadius: 2,offset: Offset(1, 1))],
                            //         fontWeight: FontWeight.bold
                            //       ),),
                
                            //       SizedBox(height: 10,),
                            //     ],
                            //   )),
                              // Container(
                              //   height: 110,
                              //   width: 108,
                              //   // color: const Color.fromARGB(255, 77, 69, 45),
                              //   child: Column(
                              //     mainAxisAlignment: MainAxisAlignment.center,
                              //     children: [
                              //       Container(
                              //         height: 35,
                              //         width: 125,
                              //         margin: EdgeInsets.only(left: 15,right: 15,top: 6,bottom: 0),
                              //         child:  Row(
                              //       children: [
                              //         SizedBox(width: 15,),
                              //         Container(
                              //           height: 20,
                              //           width: 20,
                              //           child: ClipRRect(
                              //             borderRadius: BorderRadius.circular(100),
                              //             child: Image.asset("./images/rupees.jpg"),)),
                              //         Text(itemslist[index]["price"].toString(),
                              //         style: TextStyle(fontWeight: FontWeight.bold),),
                              //         // SizedBox(width: 33,),
                              //         // Icon(Icons.coffee_maker_outlined,color: const Color.fromARGB(255, 150, 50, 13),size: 18,)
                              //       ],
                              //     ),
                              //         // ======================row
                              //       ),
                              //       SizedBox(height: 8,),
                              //      Container(
                              //       height: 45,
                              //       width: 125,
                              //       padding: EdgeInsets.all(0.0),
                              //       decoration: BoxDecoration(
                              //         border: Border.all(),
                              //         borderRadius: BorderRadius.circular(75)
                              //       ),
                              //       child: Row(
                              //         children: [
                              //           IconButton(style: IconButton.styleFrom(
                              //             padding: EdgeInsets.all(.0)
                              //           ),
                              //             onPressed: () {
                              //             setState(() {
                              //                  if( itemslist[index]["quantity"]>1){
                              //                    itemslist[index]["quantity"] --;
                              //                  }
                              //                 });
                              //           }, icon: Text("-",style: TextStyle(
                              //             fontWeight: FontWeight.bold
                              //           ),)),
                
                              //             Text(itemslist[index]["quantity"].toString(),
                              //             style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                
                              //            IconButton(style: IconButton.styleFrom(
                              //             padding: EdgeInsets.all(.0)
                              //           ),
                              //             onPressed: () {
                              //              setState(() {
                              //               itemslist[index]["quantity"] ++;
                              //                 print(itemslist[index]["quantity"]);
                              //               });
                              //           }, icon: Text("+",style: TextStyle(
                              //             fontWeight: FontWeight.bold
                              //           ),)),
                              //         ],
                              //       ),
                              //      )
                              //     ],
                              //   ),
                              // )
                          ],),
                        );
                      },),
                    ),
              ],
            ),
          )
            ,
          
        
    );
  }
}