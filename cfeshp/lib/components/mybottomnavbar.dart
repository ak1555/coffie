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
        onTabChange: (value) {
          return onTabChange!(value);
        },
        tabs: [
        GButton(icon: Icons.home,
        text: "Home ",)
      ,
      GButton(icon: Icons.shop,
      text: "Cart ",)
      ]),
      
    );
  }
}