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
    {"name":"Green Tea",
    "price":50,
    "quantity":1,
    "image":"greentea.jpg"},
     {"name":"BRU Coffee",
    "price":80,
    "quantity":1,
    "image":"greentea.jpg"}
  ];

  List choose_list=[];
  void addtocart(){
    if(mybox.get(1)!=null){
      List ls=mybox.get(1);
      ls.add(choose_list);
      mybox.put(1, ls);
    }else{
      mybox.put(1, choose_list);

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
                      Text("Enjoy Premium Brew ",style: TextStyle(color: Colors.white,
                       shadows: [Shadow(color: Colors.white,blurRadius: 2,offset: Offset(1, 1))],
                       letterSpacing: 1,wordSpacing: 1,
                       fontSize: 20,
                       fontFamily:"Edu"
                       ),),

                      Text("With the Coolest of Flavours",style: TextStyle(color: Colors.white,
                       shadows: [Shadow(color: Colors.white,blurRadius: 2,offset: Offset(1, 1))],
                       letterSpacing: 1,wordSpacing: 1,
                       fontSize: 18,
                        fontFamily:"Edu"
                       ))
                    ],
                  ))
                ],),
              ),
              SizedBox(height:10,),
              Container(
                height: 50,
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
               SizedBox(height:10,),
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
                    margin: EdgeInsets.only(top: 18),
                    padding: EdgeInsets.only(left: 15,right: 15),
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.brown.shade200,
                        blurRadius: 5,spreadRadius: 4,
                        offset: Offset(0,5)
                      )],
                      border: Border.all(width: 1,color: const Color.fromARGB(255, 156, 8, 8)),
                      borderRadius: BorderRadius.circular(15),
                      color:  Colors.white
                    ),
                    child: Row(children: [
                      Container(
                        height: 110,
                        width: 125,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 143, 118, 109),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                        child:ClipRRect(borderRadius: BorderRadius.circular(10),
                          child: Image.asset("./images/${items_list[index]["image"]}",fit: BoxFit.cover,),),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 110,
                        width: 150,
                        // color: Colors.amber,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${items_list[index]["name"].toString()}",
                            style: TextStyle(
                              // color: const Color.fromARGB(255, 109, 29, 2),
                              fontSize: 20,
                              letterSpacing: 1,
                              wordSpacing: 1,
                              shadows: [Shadow(color: Colors.brown.shade200,blurRadius: 2,offset: Offset(1, 1))],
                              fontWeight: FontWeight.bold
                            ),),

                            SizedBox(height: 10,),
                            Row(
                              children: [
                                SizedBox(width: 15,),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset("./images/rupees.jpg"),)),
                                Text(items_list[index]["price"].toString(),
                                style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(width: 63,),
                                Icon(Icons.coffee_maker_outlined,color: const Color.fromARGB(255, 150, 50, 13),size: 18,)
                              ],
                            )
                          ],
                        )),
                        Container(
                          height: 110,
                          width: 150,
                          // color: const Color.fromARGB(255, 77, 69, 45),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(alignment: Alignment.topCenter,
                                    onPressed: () {
                                      setState(() {
                                       if( items_list[index]["quantity"]>1){
                                         items_list[index]["quantity"] --;
                                       }
                                      });
                                    
                                  }, icon: Icon(Icons.minimize)),
                                  SizedBox(width: 8,),
                                  Text(items_list[index]["quantity"].toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold),),
                                  SizedBox(width: 8,),
                                    IconButton(onPressed: () {
                                    setState(() {
                                    items_list[index]["quantity"] ++;
                                      print(items_list[index]["quantity"]);
                                    });
                                  }, icon: Icon(Icons.add)),
                                ],
                              ),
                              SizedBox(height: 8,),
                              TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: const Color.fromARGB(255, 109, 29, 2),
                                  backgroundColor: Colors.amberAccent[200],
                                  
                                  // foregroundColor: Colors.white
                                ),
                                onPressed: () {
                                  setState(() {
                                choose_list.add(items_list[index]);
                                });
                                print(choose_list);
                                addtocart();
                              }, child: Text("Add to cart",style: TextStyle(fontWeight: FontWeight.bold),)),
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
    );
  }
}