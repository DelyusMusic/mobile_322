// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_menu/database/auth/service.dart';
import 'package:flutter_menu/pages/bottom_pages/menu.dart';
import 'package:flutter_menu/pages/bottom_pages/order.dart';
import 'package:flutter_menu/pages/bottom_pages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AuthService authService = AuthService();
  String title = "Меню";
  int index = 0;
  final pages = [
    const MenuPage(),
    const OrderPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              await authService.logOut();
              Navigator.popAndPushNamed(context, '/');
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: pages.elementAt(index),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Меню',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Заказы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
            if (index == 0) {
              title = "Меню";
            }
            if (index == 1) {
              title = "История заказов";
            }
            if (index == 2) {
              title = "Профиль";
            }
          });
        },
      ),
    );
  }
}
