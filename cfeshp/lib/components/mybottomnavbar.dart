import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Mybottomnavbar extends StatelessWidget {
  void Function(int)? onTabChange;
   Mybottomnavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25,right: 25),
      child: GNav(
         tabActiveBorder: Border.all(color: Colors.brown.shade400, width: 1),
         activeColor: const Color.fromARGB(255, 109, 29, 2),
         color: Colors.black38,
        onTabChange: (value) {
          return onTabChange!(value);
        },
        tabs: [
        GButton(
          rippleColor: Colors.grey[200],
          // hoverColor: Colors.red,
          icon: Icons.home,
        text: "Home ",)
      ,
      GButton(
        rippleColor: Colors.grey[200],
        icon: Icons.shopify_rounded,
      text: "Cart ",)
      ]),
      
    );
  }
}