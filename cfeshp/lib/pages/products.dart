import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List items_list=[
    {"name":"Green Tea",
    "price":50,
    "image":""}
  ];
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
              color: Colors.brown[900],
              fontWeight: FontWeight.bold,
              fontSize: 20,shadows: [Shadow(color: Colors.white,blurRadius: 5,offset: Offset(3, 3))],
              letterSpacing: 1),
              ),
              ),
              Container(
                height: 210,
                width: double.infinity,
                margin: EdgeInsets.only(left: 15,right: 15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 109, 29, 2),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(children: [
                  Lottie.network("https://lottie.host/7786243e-5488-4a6d-8e21-38f0ad882e11/dhHDkDNLr4.json"),
                  Container(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("enjoy premium brew ",style: TextStyle(color: Colors.white),),
                      Text("with the coolest of flavours",style: TextStyle(color: Colors.white))
                    ],
                  ))
                ],),
              ),
              SizedBox(height:5,),
              Container(
                height: 350,
                width: double.infinity,
                padding: EdgeInsets.only(left: 15,right: 15),
                child: ListView.builder(
                  itemCount: items_list.length,
                  itemBuilder: (context, index) {
                  return Container(
                    height: 130,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 15,right: 15),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2,color: const Color.fromARGB(255, 156, 8, 8)),
                      borderRadius: BorderRadius.circular(15),
                      // color:  const Color.fromARGB(247, 177, 118, 101)
                    ),
                    child: Row(children: [
                      Container(
                        height: 110,
                        width: 125,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 143, 118, 109),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 110,
                        width: 160,
                        color: Colors.amber,
                        child: Text("name: ${items_list[index]["name"].toString()}",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 109, 29, 2),
                          fontWeight: FontWeight.bold
                        ),)),
                        Container(
                          height: 110,
                          width: 150,
                          color: const Color.fromARGB(255, 77, 69, 45),
                        )
                    ],),
                  );
                },),
              )

          ],
         ),
      ),
    );
  }
}