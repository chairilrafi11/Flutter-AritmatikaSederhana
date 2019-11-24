import 'package:flutter/material.dart';
import 'package:aritmatika/beranda/kelipatanPage.dart';
import 'package:aritmatika/beranda/primaPage.dart';
import 'package:aritmatika/beranda/fibonacciPage.dart';
import 'package:aritmatika/beranda/ganjilGenapPage.dart';

void main() {
  runApp(MaterialApp(
    title: "Aritmatika",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new BerandaPage(),
    new FaktorPage(),
    new TambahPage(),
    new BagiPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: _buildBottomNavigation());
  }

  Widget _buildBottomNavigation() {
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.apps,
            color: Colors.cyan,
          ),
          icon: new Icon(
            Icons.apps,
            color: Colors.grey,
          ),
          title: new Text(
            'Ganjil Genap',
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.format_list_numbered,
            color: Colors.cyan,
          ),
          icon: new Icon(
            Icons.format_list_numbered,
            color: Colors.grey,
          ),
          title: new Text('Prima'),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.all_inclusive,
            color: Colors.cyan,
          ),
          icon: new Icon(
            Icons.all_inclusive,
            color: Colors.grey,
          ),
          title: new Text('Fibonacci'),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.clear,
            color: Colors.cyan,
          ),
          icon: new Icon(
            Icons.clear,
            color: Colors.grey,
          ),
          title: new Text('Kelipatan'),
        ),
      ],
    );
  }
}
