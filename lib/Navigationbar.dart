import 'package:ecommersapp2/Bag.dart';
import 'package:ecommersapp2/Categories.dart';
import 'package:ecommersapp2/Favourite.dart';
import 'package:ecommersapp2/homepage.dart';
import 'package:ecommersapp2/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int selectedindex=0;
  static List Safwidgwts=[
    Homepage(),
    Categories(),
    Bag(),
    Fav(),
    Profile(),

  ];
  void onitemTapped(int index){
    setState(() {
      selectedindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Safwidgwts.elementAt(selectedindex),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home',activeIcon: Icon(Icons.home)),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: 'Shop',activeIcon: Icon(Icons.shopping_cart)),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: 'Bag',activeIcon: Icon(Icons.shopping_bag_rounded)),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),label: 'Favorites',activeIcon: Icon(Icons.favorite)),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.person),label: 'Profile',activeIcon: Icon(Icons.person)),
      ],type: BottomNavigationBarType.fixed,
      currentIndex: selectedindex,
      iconSize: 20,
      onTap: onitemTapped,
      elevation: 5,
      selectedItemColor: Colors.red,),
    );
  }
}
