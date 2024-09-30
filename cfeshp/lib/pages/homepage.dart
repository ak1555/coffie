import 'package:cfeshp/components/mybottomnavbar.dart';
import 'package:cfeshp/pages/cartpage.dart';
import 'package:cfeshp/pages/products.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  int selectedpage =0;

  final List<Widget>pages=[
    Products(),CartPage()
    ];
    
    void navigatebottombar(int index){
      setState(() {
        selectedpage=index;
      });
    }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.brown.shade100,
      bottomNavigationBar: Mybottomnavbar(
        onTabChange: (index) => navigatebottombar(index),
      ),
      body: pages[selectedpage],
    );
  }
}