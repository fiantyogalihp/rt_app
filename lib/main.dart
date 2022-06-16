// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

// import 'main_pages/home.dart';
// import 'main_pages/broadcast.dart';
// import 'main_pages/shops.dart';
// import 'main_pages/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RT & RW',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavLocator(),
    );
  }
}

//* Navbar Locator //
class NavLocator extends StatefulWidget {
  const NavLocator({Key? key}) : super(key: key);
  @override
  State<NavLocator> createState() => _NavLocatorState();
}

class _NavLocatorState extends State<NavLocator> {
  int activePage = 0;
  final pages = [
    // const Home(),
    // const Broadcast(),
    // const Shops(),
    // const Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        onTap: (index) {
          setState(() => activePage = index);
        },
        currentIndex: activePage,
        items: [
          SalomonBottomBarItem(
            activeIcon: Icon(Iconsax.home4),
            icon: Icon(Iconsax.home),
            title: Text("Home"),
          ),
          SalomonBottomBarItem(
            activeIcon: Icon(Iconsax.radar),
            icon: Icon(Iconsax.radar4),
            title: Text("Broadcast"),
          ),
          SalomonBottomBarItem(
            activeIcon: Icon(Iconsax.shop),
            icon: Icon(Iconsax.shop4),
            title: Text("Shop"),
          ),
          SalomonBottomBarItem(
            activeIcon: Icon(Iconsax.setting),
            icon: Icon(Iconsax.setting4),
            title: Text("Settings"),
          ),
        ],
        // selectedItemColor: ,
        // unselectedItemColor: ,
      ),
      body: pages[activePage],
    );
  }
}
