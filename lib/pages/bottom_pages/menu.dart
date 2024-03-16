import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Блюдо"),
                ],
              ),
              subtitle: const Column(
                children: [
                  Text('Описание'),
                  Text('200 грамм')
                ],
              ),
              leading: Image.asset('images/logo.png'),
            ),
          ),
           Card(
            child: ListTile(
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Блюдо"),
                ],
              ),
              subtitle: const Column(
                children: [
                  Text('Описание'),
                  Text('200 грамм')
                ],
              ),
              leading: Image.asset('images/logo.png'),
            ),
          ),
           Card(
            child: ListTile(
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Блюдо"),
                ],
              ),
              subtitle: const Column(
                children: [
                  Text('Описание'),
                  Text('200 грамм')
                ],
              ),
              leading: Image.asset('images/logo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
