import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_menu/database/auth/service.dart';
import 'package:flutter_menu/routes/routes.dart';
import 'package:flutter_menu/themes/themeDark.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyA9MNLMhkL197kQIEQsmvqdgIWE08apPJU',
        appId: '1:659190874430:android:f51372c963780d545a6c6f',
        messagingSenderId: '659190874430',
        projectId: 'flutter-menu322',
        storageBucket: 'flutter-menu322.appspot.com'),
  );
  runApp(const ThemeAppMenu());
}

class ThemeAppMenu extends StatelessWidget {
  const ThemeAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      initialData: null,
      value: AuthService().currentUser,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themes,
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}
