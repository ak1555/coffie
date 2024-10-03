// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

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
          SizedBox(height: 15,),
            // ===================================================================================================================================
          Container(
            height: 350,
            padding: EdgeInsets.only(top: 25,bottom: 25),
            width: double.infinity,
            // color: Colors.brown,
            child: Expanded(
              // child: GridView.builder(itemCount: itemslist.length,
              // scrollDirection: Axis.horizontal,
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1), 
              //   itemBuilder: (context, index) {
              //    return Container(
              //     height:250,
              //     width: 250,
              //     color: Colors.red,
              //     );
              //   },),
              child: Expanded(
                child: ListView.builder(
                  itemCount: itemslist.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                   return Container(
                    margin: EdgeInsets.only(left: 20,right: 10),
                    width: 210,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      gradient: LinearGradient(begin: Alignment.topLeft,
                       colors: [Colors.white,Colors.brown,Colors.white,Colors.white,const Color.fromARGB(255, 204, 164, 149),Colors.white,Colors.white,Colors.white,Colors.brown.shade100,Colors.brown.shade200],),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade100,
                          spreadRadius: 2,blurRadius: 2,
                          offset: Offset(1, 1)
                        )
                      ]
                    ),
                          child: Column(
                            children: [
                              // =========================== IMAGE
                              SizedBox(height: 5,),
                              Container(
                                height: 94,width: 94,
                                padding: EdgeInsets.all(1.5),
                                
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                                 boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade800,
                          spreadRadius: 2,blurRadius: 2,
                          offset: Offset(1, 1)
                        )
                      ],
                                color: Colors.white),
                                child:
                                 ClipRRect(borderRadius: BorderRadius.circular(100),
                                  child: Image.asset("./images/${itemslist[index]["image"]}",fit: BoxFit.cover,),),
                              ),
                              SizedBox(height: 10,),
                              // =============================================== NAME
                              Container(
                                height: 25,
                                width: double.infinity,
                                // alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 20),
                                child: Text("${itemslist[index]["name"]}", style: TextStyle(
                              // color: const Color.fromARGB(255, 109, 29, 2),
                              fontSize: 20,
                              letterSpacing: 1,
                              wordSpacing: 1,
                              shadows: [Shadow(color: Colors.brown.shade200,blurRadius: 2,offset: Offset(1, 1))],
                              fontWeight: FontWeight.bold
                            ), ),
                              ),
                              // =============================================== RATING
                              SizedBox(height: 10,),
                              Container(
                                height: 25,
                                width: double.infinity,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(left: 20),
                                child: Container(
                                  height: 38,width: 55,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 201, 185, 185),
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(width: 0,color: Colors.grey)
                                  ),
                                  child: Row(children: [
                                    SizedBox(width: 3,),
                                    Icon(Icons.star,color: Colors.white,size: 20,),
                                    SizedBox(width: 3,),
                                    Text("5.5",style: TextStyle(color: Colors.white),)
                                  ],),
                                  ),
                              ),
                                // =============================================== VOLUME
                                SizedBox(height: 13,),
                                Container(height: 20,width: double.infinity,
                                padding: EdgeInsets.only(left: 20),
                                child: Row(children: [
                                  Text("Volume: ",style: TextStyle(fontSize: 14,letterSpacing: 0,fontWeight: FontWeight.w600,color: Colors.brown[300]),),
                                  Text("160ml",style: TextStyle(fontSize: 14,letterSpacing: 0,fontWeight: FontWeight.w600,color: Colors.brown[500]))
                                  ,
                                  // Image.asset("./images/c.jpg")
                                  SizedBox(width: 25,),
                                  Icon(Icons.local_drink_outlined,color: Colors.brown,size: 17,)
                                  
                                  ],),),
                                // =============================================== QUANTITY
                                SizedBox(height: 18,),
                                Container(
                                  height: 50,
                                  width:double.infinity,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                         IconButton(
                                          style: IconButton.styleFrom(
                                            backgroundColor: Colors.grey.shade300,
                                            shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(4))
                                          ),
                                          onPressed: () {
                                        setState(() {
                                           if( itemslist[index]["quantity"]>1){
                                             itemslist[index]["quantity"] --;
                                           }
                                          });
                                      }, icon: Icon(Icons.exposure_minus_1,color: Colors.brown,)),

                                      SizedBox(width: 1,),

                                      IconButton(
                                          style: IconButton.styleFrom(
                                            backgroundColor: Colors.grey.shade300,
                                            shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(4))
                                          ),
                                          onPressed: () {
                                        setState(() {
                                        itemslist[index]["quantity"] ++;
                                          print(itemslist[index]["quantity"]);
                                        });
                                      }, icon: Icon(Icons.exposure_plus_1,color: Colors.brown,)),

                                        SizedBox(width: 17,),
                                    Container(
                                      height: 40,
                                      width: 65,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.brown),
                                        borderRadius: BorderRadius.circular(100)
                                      ),
                                      child: Row(
                                        children: [
                                          
                                          SizedBox(width: 5,),
                                          Text("Qty: ",style: TextStyle(color: Colors.brown,
                                            fontSize: 14,letterSpacing: 0,fontWeight: FontWeight.w600,),),
                                          Text(itemslist[index]["quantity"].toString(),style: TextStyle(fontSize: 14,letterSpacing: 0,fontWeight: FontWeight.w600,)),
                                        ],
                                      ),
                                    ),
                                  ],),
                                ) 
                            ],
                          ),
                    );
                },),
              ),
            ),
          ),
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