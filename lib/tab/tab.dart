import 'dart:ffi';

import 'package:crypto_ex_chain/Screen/Home.dart';
import 'package:crypto_ex_chain/Screen/cart.dart';
import 'package:crypto_ex_chain/Screen/CryptoScreen/crypto.dart';
import 'package:crypto_ex_chain/Screen/search.dart';
import 'package:crypto_ex_chain/Screen/shop.dart';
import 'package:crypto_ex_chain/Screen/user.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  TabScreen({Key key}) : super(key: key);
  static const routeName = '/TabScreen';

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Map<String, Object>> _pages;
  int _selectIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': HomeScreen(),
      },
      {
        'page': CryptoScreen(),
      },
      {
        'page': SearchScreen(),
      },
      {
        'page': ShopScreen(),
      },
      {
        'page': CartScreen(),
      },
      {
        'page': UserScreen(),
      }
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 0.5,
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        child: Container(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border(
                  top: BorderSide(
                color: Colors.black,
                width: 3,
              )),
            ),
            child: BottomNavigationBar(
              onTap: _selectPage,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              backgroundColor: Colors.purple,
              currentIndex: _selectIndex,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.bar_chart), label: 'Crypto'),
                BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: 'Cart'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'User'),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: Colors.purple,
          hoverElevation: 10,
          splashColor: Colors.grey,
          tooltip: 'Search',
          elevation: 4,
          child: Icon(Icons.search),
          onPressed: () => setState(() {
            _selectIndex = 2;
          }),
        ),
      ),
    );
  }
}
