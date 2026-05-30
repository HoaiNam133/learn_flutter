import 'package:flutter/material.dart';
class Bottombar extends StatelessWidget {
  const Bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Colors.red,//khi chon se hien thi chu mau do
        items: [ //items phai >=2
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home,color: Colors.white,fontWeight: FontWeight.bold)),
          BottomNavigationBarItem(label: "Favorite", icon: Icon(Icons.favorite,color: Colors.white,fontWeight: FontWeight.bold)),
          BottomNavigationBarItem(label: "About", icon: Icon(Icons.account_box_outlined,color: Colors.white,fontWeight: FontWeight.bold))
        ],backgroundColor: Colors.green);
  }
}
