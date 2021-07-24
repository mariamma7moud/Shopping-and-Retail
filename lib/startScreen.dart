
import 'package:flutter/material.dart';
import 'package:shopping/categories.dart';
import 'package:shopping/home.dart';
import 'package:shopping/menu.dart';
import 'package:shopping/myCart.dart';

class StartScreen extends StatefulWidget {
  //const StartScreen({Key key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int _currentIndex= 0;
  List<Text> title=[
    Text('Home'),
    Text('Categories'),
    Text('My Cart'),
    Text('Menu'),
  ];
  List<Widget> screens= [Home(), Categories(), MyCart(), Menu() ];
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //Icon(Icons.home),
          title: title[_currentIndex],
          backgroundColor: Colors.red,
          //backgroundColor: Colors.green,
        ),
        body: Center(
          child: screens[_currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle: TextStyle(color: Colors.black),
          backgroundColor: Colors.white,
          selectedIconTheme: IconThemeData(color: Colors.red),
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          iconSize: 45,

          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: const<BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: 'Categories'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded),
                label: 'My Cart'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Menu'
            ),
          ],
        ),
      ),
    );
  }
}
