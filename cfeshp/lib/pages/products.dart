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
      "name":"Cappiccino",
    "price":350,
    "quantity":1,
    "image":"capic.jpeg"},

     {"id":222,
      "name":"BRU Coffee",
    "price":60,
    "quantity":1,
    "image":"bru.jpg"},

     {"id":333,
      "name":"Horlicks Coffee",
    "price":75,
    "quantity":1,
    "image":"horlicks.jpg"},

     {"id":444,
      "name":"Beaten Coffee",
    "price":197,
    "quantity":1,
    "image":"beatencoff.jpg"},

     {"id":555,
      "name":"Green Tea",
    "price":215,
    "quantity":1,
    "image":"greentea.jpg"},

     {"id":666,
      "name":" Lattee",
    "price":75,
    "quantity":1,
    "image":"lattee.jpg"},

    {"id":777,
      "name":" Hungyan",
    "price":375,
    "quantity":1,
    "image":"hungyan.jpg"}
    ,
     {"id":555,
      "name":"Green Tea",
    "price":215,
    "quantity":1,
    "image":"greentea.jpg"},

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

  void checkid( a, b){
    if(mybox.get(1)!=null){
      setState(() {
        choose_list=mybox.get(1);
      });
      int j = choose_list.length;
      int count=0;
      for(int i=0;i<=j;i++){
        if(a==choose_list[count]["id"]){
          print("same");
          break;
        }else{
              choose_list.add(b);
              mybox.put(1, choose_list);
              break;
        }
      }
    }
    else{
        choose_list.add(b);
              mybox.put(1, choose_list);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey.shade100,
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
            colors:[Colors.brown.shade600,
            Colors.white,
            Colors.white,
            Colors.white,
            Colors.white,
            Colors.white,
            Colors.white,
            ])
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
              SizedBox(height:10,),
              Container(
                // color: Colors.amber,
                margin: EdgeInsets.only(left: 8,right: 8),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
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
                //  [[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
                // [[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
                // [[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
              Container(
                height: 515,
                width: double.infinity,
                padding: EdgeInsets.only(left: 5,right: 5),
                child: 
                GridView.builder(
                  
                  itemCount: items_list.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2
                  ,childAspectRatio: 2.5/4.2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 10
                  ),
                 itemBuilder: (context, index) {
                   return Container(
                    // margin: EdgeInsets.only(left: 2.5,right: 2.5),
                    width: 210,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown.shade300),
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
                                height: 100,width: 100,
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
                                  child: Image.asset("./images/${items_list[index]["image"]}",fit: BoxFit.cover,),),
                              ),
                              SizedBox(height: 10,),
                              // =============================================== NAME
                              Container(
                                height: 25,
                                width: double.infinity,
                                // alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 20),
                                child: Text("${items_list[index]["name"]}", style: TextStyle(
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
                                  TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: const Color.fromARGB(255, 109, 29, 2),
                                  backgroundColor: const Color.fromARGB(255, 247, 184, 49),
                                  
                                  // foregroundColor: Colors.white
                                ),
                                onPressed: () {

checkid(items_list[index]["id"],items_list[index]);


                                
                              }, child: Text("To cart",style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],
                          ),
                    );
                 },)
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